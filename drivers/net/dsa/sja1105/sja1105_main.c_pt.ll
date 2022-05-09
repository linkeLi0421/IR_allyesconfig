; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_main.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sja1105_l2_lookup_params_entry = type { [11 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_l2_forwarding_params_entry = type { i64, [8 x i64] }
%struct.sja1105_l2_lookup_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.172 }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type { i64, i64, i64, i64, i64, i64 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_mac_config_entry = type { [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dw_xpcs = type { ptr, ptr, %struct.phylink_pcs }
%struct.phylink_pcs = type { ptr, i8 }
%struct.sja1105_cbs_entry = type { i64, i64, i64, i64, i64, i64 }
%struct.sja1105_rule = type { %struct.list_head, i32, i32, %struct.sja1105_key, i32, %union.anon.178 }
%struct.sja1105_key = type { i32, %union.anon.175 }
%union.anon.175 = type { %struct.anon.177 }
%struct.anon.177 = type { i64, i16, i16 }
%union.anon.178 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, i32, i32, i32, i32, i64, i64, i32, ptr, %struct.flow_stats }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.sja1105_general_params_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.sja1105_vlan_lookup_entry = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.sja1105_tagger_data = type { ptr, ptr, ptr, ptr }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }
%struct.sja1105_xmii_params_entry = type { [11 x i64], [11 x i64], [11 x i64] }
%struct.sja1105_l2_forwarding_entry = type { i64, i64, i64, [11 x i64], i8 }
%struct.sja1105_l2_policing_entry = type { i64, i64, i64, i64, i64 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.dsa_mall_policer_tc_entry = type { i32, i64 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.sja1105_mgmt_entry = type { i64, i64, i64, i64, i64, i64 }
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
%struct.sja1105_avb_params_entry = type { i64, i64, i64 }
%struct.sja1110_pcp_remapping_entry = type { [8 x i64] }

@sja1105et_fdb_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Warning, FDB bin %d full while adding entry for %pM. Evicting entry %u.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sja1105et_fdb_add\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/dsa/sja1105/sja1105_main.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105et_fdb_add._entry_ptr = internal global ptr @sja1105et_fdb_add._entry, section ".printk_index", align 4
@sja1105pqrs_fdb_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1738, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FDB is full, cannot add entry.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sja1105pqrs_fdb_add\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sja1105pqrs_fdb_add._entry_ptr = internal global ptr @sja1105pqrs_fdb_add._entry, section ".printk_index", align 4
@sja1105pqrs_fdb_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 1770, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"port %d failed to read back entry for %pM vid %d: %pe\0A\00", [41 x i8] zeroinitializer }, align 32
@sja1105pqrs_fdb_add._entry_ptr.10 = internal global ptr @sja1105pqrs_fdb_add._entry.8, section ".printk_index", align 4
@sja1105_static_config_reload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2284, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Reset switch and programmed static config. Reason: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sja1105_static_config_reload\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sja1105_static_config_reload._entry_ptr = internal global ptr @sja1105_static_config_reload._entry, section ".printk_index", align 4
@sja1105_reset_reasons = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [40 x i8] zeroinitializer }, align 32
@sja1105_vlan_filtering.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sja1105: Cannot change VLAN filtering with active VL rules\00", [37 x i8] zeroinitializer }, align 32
@sja1105_vlan_filtering.__msg.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sja1105: Failed to change VLAN Ethertype\00", [55 x i8] zeroinitializer }, align 32
@__initcall__kmod_sja1105__520_3401_sja1105_driver_init6 = internal global ptr @sja1105_driver_init, section ".initcall6.init", align 4
@sja1105_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @sja1105_probe, ptr @sja1105_remove, ptr @sja1105_shutdown, %struct.device_driver { ptr @.str.26, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sja1105_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sja1105_driver_exit = internal global ptr @sja1105_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author521 = internal constant [51 x i8] c"sja1105.author=Vladimir Oltean <olteanv@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author522 = internal constant [61 x i8] c"sja1105.author=Georg Waibel <georg.waibel@sensor-technik.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description523 = internal constant [35 x i8] c"sja1105.description=SJA1105 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file524 = internal constant [45 x i8] c"sja1105.file=drivers/net/dsa/sja1105/sja1105\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [23 x i8] c"sja1105.license=GPL v2\00", section ".modinfo", align 1
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VLAN filtering\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX timestamping\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ageing time\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Time-aware scheduling\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Best-effort policing\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Virtual links\00", [18 x i8] zeroinitializer }, align 32
@sja1105_adjust_port_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1323, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid speed %iMbps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sja1105_adjust_port_config\00", [37 x i8] zeroinitializer }, align 32
@sja1105_adjust_port_config._entry_ptr = internal global ptr @sja1105_adjust_port_config._entry, section ".printk_index", align 4
@sja1105_adjust_port_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1345, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write MAC config: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sja1105_adjust_port_config._entry_ptr.25 = internal global ptr @sja1105_adjust_port_config._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@sja1105_dt_ids = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105e_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105t_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105p_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105q_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105r_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1105s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1105s_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1110a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1110a_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1110b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1110b_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1110c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1110c_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1110d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sja1110d_info }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@sja1105_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 3253, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No DTS bindings for SJA1105 driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sja1105_probe\00", [18 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr = internal global ptr @sja1105_probe._entry, section ".printk_index", align 4
@sja1105_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 3275, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not init SPI\0A\00", [44 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr.31 = internal global ptr @sja1105_probe._entry.29, section ".printk_index", align 4
@sja1105_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 3296, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SPI master cannot send large enough buffers, aborting\0A\00", [41 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr.34 = internal global ptr @sja1105_probe._entry.32, section ".printk_index", align 4
@sja1105_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 3311, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device ID check failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr.37 = internal global ptr @sja1105_probe._entry.35, section ".printk_index", align 4
@sja1105_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 3315, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Probed switch chip: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr.40 = internal global ptr @sja1105_probe._entry.38, section ".printk_index", align 4
@sja1105_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @sja1105_get_tag_protocol, ptr null, ptr @sja1105_connect_tag_protocol, ptr @sja1105_setup, ptr @sja1105_teardown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_phylink_validate, ptr null, ptr @sja1105_mac_config, ptr null, ptr @sja1105_mac_link_down, ptr @sja1105_mac_link_up, ptr null, ptr @sja1105_get_strings, ptr @sja1105_get_ethtool_stats, ptr @sja1105_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_prechangeupper, ptr @sja1105_set_ageing_time, ptr @sja1105_bridge_join, ptr @sja1105_bridge_leave, ptr @sja1105_bridge_stp_state_set, ptr @sja1105_fast_age, ptr @sja1105_port_pre_bridge_flags, ptr @sja1105_port_bridge_flags, ptr @sja1105_vlan_filtering, ptr @sja1105_bridge_vlan_add, ptr @sja1105_bridge_vlan_del, ptr @sja1105_fdb_add, ptr @sja1105_fdb_del, ptr @sja1105_fdb_dump, ptr @sja1105_mdb_add, ptr @sja1105_mdb_del, ptr null, ptr null, ptr @sja1105_cls_flower_add, ptr @sja1105_cls_flower_del, ptr @sja1105_cls_flower_stats, ptr @sja1105_mirror_add, ptr @sja1105_mirror_del, ptr @sja1105_port_policer_add, ptr @sja1105_port_policer_del, ptr @sja1105_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_hwtstamp_get, ptr @sja1105_hwtstamp_set, ptr @sja1105_port_txtstamp, ptr @sja1105_port_rxtstamp, ptr null, ptr null, ptr @sja1105_devlink_info_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_change_mtu, ptr @sja1105_get_max_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sja1105_dsa_8021q_vlan_add, ptr @sja1105_dsa_8021q_vlan_del }, [96 x i8] zeroinitializer }, align 32
@sja1105_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->ptp_data.lock\00", [43 x i8] zeroinitializer }, align 32
@sja1105_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->dynamic_config_lock\00", [37 x i8] zeroinitializer }, align 32
@sja1105_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->mgmt_lock\00", [47 x i8] zeroinitializer }, align 32
@sja1105_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->ts_id_lock\00", [46 x i8] zeroinitializer }, align 32
@sja1105_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.28, ptr @.str.2, i32 3334, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to parse DT: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sja1105_probe._entry_ptr.50 = internal global ptr @sja1105_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sja1105_check_device_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 3230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device tree specifies chip %s but found %s, please fix it!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sja1105_check_device_id\00", [40 x i8] zeroinitializer }, align 32
@sja1105_check_device_id._entry_ptr = internal global ptr @sja1105_check_device_id._entry, section ".printk_index", align 4
@sja1105_check_device_id._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 3239, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unexpected {device ID, part number}: 0x%x 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@sja1105_check_device_id._entry_ptr.56 = internal global ptr @sja1105_check_device_id._entry.54, section ".printk_index", align 4
@sja1105_mgmt_xmit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sja1105_mgmt_xmit = private unnamed_addr constant [18 x i8] c"sja1105_mgmt_xmit\00", align 1
@sja1105_mgmt_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.sja1105_mgmt_xmit, ptr @.str.2, i32 2653, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to poll for mgmt route\0A\00", [33 x i8] zeroinitializer }, align 32
@sja1105_mgmt_xmit._entry_ptr = internal global ptr @sja1105_mgmt_xmit._entry, section ".printk_index", align 4
@sja1105_mgmt_xmit._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sja1105_mgmt_xmit._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.sja1105_mgmt_xmit, ptr @.str.2, i32 2672, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xmit timed out\0A\00", [16 x i8] zeroinitializer }, align 32
@sja1105_mgmt_xmit._entry_ptr.62 = internal global ptr @sja1105_mgmt_xmit._entry.60, section ".printk_index", align 4
@sja1105_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 3046, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable microcontroller: %pe\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sja1105_setup\00", [18 x i8] zeroinitializer }, align 32
@sja1105_setup._entry_ptr = internal global ptr @sja1105_setup._entry, section ".printk_index", align 4
@sja1105_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 3054, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load static config: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sja1105_setup._entry_ptr.67 = internal global ptr @sja1105_setup._entry.65, section ".printk_index", align 4
@sja1105_setup._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 3064, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to configure MII clocking: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@sja1105_setup._entry_ptr.70 = internal global ptr @sja1105_setup._entry.68, section ".printk_index", align 4
@sja1105_setup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.2, i32 3074, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register PTP clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sja1105_setup._entry_ptr.73 = internal global ptr @sja1105_setup._entry.71, section ".printk_index", align 4
@sja1105_setup._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.2, i32 3081, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register MDIO bus: %pe\0A\00", [62 x i8] zeroinitializer }, align 32
@sja1105_setup._entry_ptr.76 = internal global ptr @sja1105_setup._entry.74, section ".printk_index", align 4
@constinit = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 63, i64 127, i64 191, i64 255, i64 319, i64 383, i64 447, i64 511], [32 x i8] zeroinitializer }, align 32
@constinit.77 = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448], [32 x i8] zeroinitializer }, align 32
@constinit.78 = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], [32 x i8] zeroinitializer }, align 32
@sja1105_init_mii_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 334, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported PHY mode %s on port %d!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sja1105_init_mii_settings\00", [38 x i8] zeroinitializer }, align 32
@sja1105_init_mii_settings._entry_ptr = internal global ptr @sja1105_init_mii_settings._entry, section ".printk_index", align 4
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__const.sja1105_init_l2_lookup_params.default_l2_lookup_params = private unnamed_addr constant %struct.sja1105_l2_lookup_params_entry { [11 x i64] zeroinitializer, i64 0, i64 1, i64 1, i64 1, i64 0, i64 30000, i64 4, i64 151, i64 1, i64 0, i64 1 }, align 8
@sja1105_init_l2_forwarding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"H topology detected, cutting RX from DSA link %d to CPU port %d to prevent TX packet loops\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sja1105_init_l2_forwarding\00", [37 x i8] zeroinitializer }, align 32
@sja1105_init_l2_forwarding._entry_ptr = internal global ptr @sja1105_init_l2_forwarding._entry, section ".printk_index", align 4
@sja1105_init_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 831, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Port %llu is already a host port, configuring %d as one too is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sja1105_init_topology\00", [42 x i8] zeroinitializer }, align 32
@sja1105_init_topology._entry_ptr = internal global ptr @sja1105_init_topology._entry, section ".printk_index", align 4
@sja1105_init_topology._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 845, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Port %llu is already a cascade port, configuring %d as one too is not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@sja1105_init_topology._entry_ptr.118 = internal global ptr @sja1105_init_topology._entry.116, section ".printk_index", align 4
@sja1105_init_topology._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.2, i32 852, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No host port configured\0A\00", [39 x i8] zeroinitializer }, align 32
@sja1105_init_topology._entry_ptr.121 = internal global ptr @sja1105_init_topology._entry.119, section ".printk_index", align 4
@sja1105_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1384, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Changing PHY mode to %s not supported!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sja1105_mac_config\00", [45 x i8] zeroinitializer }, align 32
@sja1105_mac_config._entry_ptr = internal global ptr @sja1105_mac_config._entry, section ".printk_index", align 4
@sja1105_prechangeupper.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sja1105: 8021q uppers are not supported\00", [56 x i8] zeroinitializer }, align 32
@sja1105_prechangeupper.__msg.124 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sja1105: Only one VLAN-aware bridge is supported\00", [47 x i8] zeroinitializer }, align 32
@sja1105_bridge_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 2068, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid STP state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sja1105_bridge_stp_state_set\00", [35 x i8] zeroinitializer }, align 32
@sja1105_bridge_stp_state_set._entry_ptr = internal global ptr @sja1105_bridge_stp_state_set._entry, section ".printk_index", align 4
@sja1105_fast_age._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1903, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read FDB: %pe\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1105_fast_age\00", [47 x i8] zeroinitializer }, align 32
@sja1105_fast_age._entry_ptr = internal global ptr @sja1105_fast_age._entry, section ".printk_index", align 4
@sja1105_fast_age._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1920, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to delete FDB entry %pM vid %lld: %pe\0A\00", [50 x i8] zeroinitializer }, align 32
@sja1105_fast_age._entry_ptr.131 = internal global ptr @sja1105_fast_age._entry.129, section ".printk_index", align 4
@sja1105_port_pre_bridge_flags.__msg = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"sja1105: This chip cannot configure multicast flooding independently of unicast\00", [48 x i8] zeroinitializer }, align 32
@sja1105_port_mcast_flood.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sja1105: Could not find FDB entry for unknown multicast\00", [40 x i8] zeroinitializer }, align 32
@sja1105_bridge_vlan_add.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sja1105: Range 1024-3071 reserved for dsa_8021q operation\00", [38 x i8] zeroinitializer }, align 32
@sja1105_fdb_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1856, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to dump FDB: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1105_fdb_dump\00", [47 x i8] zeroinitializer }, align 32
@sja1105_fdb_dump._entry_ptr = internal global ptr @sja1105_fdb_dump._entry, section ".printk_index", align 4
@sja1105_mirror_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 2813, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Delete mirroring rules towards port %llu first\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sja1105_mirror_apply\00", [43 x i8] zeroinitializer }, align 32
@sja1105_mirror_apply._entry_ptr = internal global ptr @sja1105_mirror_apply._entry, section ".printk_index", align 4
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@sja1105_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 1257, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Incorrect bindings: absent \22ports\22 node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1105_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@sja1105_parse_dt._entry_ptr = internal global ptr @sja1105_parse_dt._entry, section ".printk_index", align 4
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sja1105_parse_ports_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1203, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Port number not defined in device tree (property \22reg\22)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sja1105_parse_ports_node\00", [39 x i8] zeroinitializer }, align 32
@sja1105_parse_ports_node._entry_ptr = internal global ptr @sja1105_parse_ports_node._entry, section ".printk_index", align 4
@sja1105_parse_ports_node._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 1213, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to read phy-mode or phy-interface-type property for port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sja1105_parse_ports_node._entry_ptr.145 = internal global ptr @sja1105_parse_ports_node._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@sja1105_parse_ports_node._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.142, ptr @.str.2, i32 1222, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"phy-handle or fixed-link properties missing!\0A\00", [50 x i8] zeroinitializer }, align 32
@sja1105_parse_ports_node._entry_ptr.149 = internal global ptr @sja1105_parse_ports_node._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@sja1105_parse_rgmii_delays._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"Port %d interpreting RGMII delay settings based on \22phy-mode\22 property, please update device tree to specify \22rx-internal-delay-ps\22 and \22tx-internal-delay-ps\22\00", [33 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sja1105_parse_rgmii_delays\00", [37 x i8] zeroinitializer }, align 32
@sja1105_parse_rgmii_delays._entry_ptr = internal global ptr @sja1105_parse_rgmii_delays._entry, section ".printk_index", align 4
@sja1105_parse_rgmii_delays._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 1168, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chip cannot apply RGMII delays\0A\00", [32 x i8] zeroinitializer }, align 32
@sja1105_parse_rgmii_delays._entry_ptr.156 = internal global ptr @sja1105_parse_rgmii_delays._entry.154, section ".printk_index", align 4
@sja1105_parse_rgmii_delays._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.2, i32 1178, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"port %d RGMII delay values out of range, must be between %d and %d ps\0A\00", [57 x i8] zeroinitializer }, align 32
@sja1105_parse_rgmii_delays._entry_ptr.159 = internal global ptr @sja1105_parse_rgmii_delays._entry.157, section ".printk_index", align 4
@sja1105e_info = external dso_local constant %struct.sja1105_info, align 8
@sja1105t_info = external dso_local constant %struct.sja1105_info, align 8
@sja1105p_info = external dso_local constant %struct.sja1105_info, align 8
@sja1105q_info = external dso_local constant %struct.sja1105_info, align 8
@sja1105r_info = external dso_local constant %struct.sja1105_info, align 8
@sja1105s_info = external dso_local constant %struct.sja1105_info, align 8
@sja1110a_info = external dso_local constant %struct.sja1105_info, align 8
@sja1110b_info = external dso_local constant %struct.sja1105_info, align 8
@sja1110c_info = external dso_local constant %struct.sja1105_info, align 8
@sja1110d_info = external dso_local constant %struct.sja1105_info, align 8
@switch.table.sja1105_setup = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.110, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [40 x i8] zeroinitializer }, align 32
@switch.table.sja1105_mac_config = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.110, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.160 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 4294967295]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.164 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 22]
@__sancov_gen_cov_switch_values.165 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 13]
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1616, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1738, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1768, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2282, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"sja1105_reset_reasons\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2196, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2370, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2431, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"sja1105_driver\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3390, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2197, i32 29 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2198, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2199, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2200, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2201, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2202, i32 28 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1323, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1345, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3392, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant [15 x i8] c"sja1105_dt_ids\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3375, i32 34 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3253, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3275, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3296, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3311, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3315, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"sja1105_switch_ops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3147, i32 36 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3327, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3328, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3329, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3330, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3334, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 36, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3229, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3238, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2652, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2672, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3044, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3054, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3062, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3074, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3080, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [10 x i8] c"constinit\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [13 x i8] c"constinit.77\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [13 x i8] c"constinit.78\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 333, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 211, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 213, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 215, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 217, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 219, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 221, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 223, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 225, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 227, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 229, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 231, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 233, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 235, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 237, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 239, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 241, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 243, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 245, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 247, i32 10 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 249, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 251, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 253, i32 10 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 255, i32 10 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 257, i32 10 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 259, i32 10 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 261, i32 10 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 263, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 265, i32 10 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 267, i32 10 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 269, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 271, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 606, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 829, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 843, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 852, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1383, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2601, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2610, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2068, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1902, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1918, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2980, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2948, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2527, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1856, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2811, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1253, i32 49 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1255, i32 50 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1257, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1201, i32 35 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1202, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1211, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1218, i32 38 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1221, i32 5 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1143, i32 32 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1144, i32 32 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1147, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1168, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.674 = private constant [42 x i8] c"../drivers/net/dsa/sja1105/sja1105_main.c\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1176, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant [27 x i8] c"switch.table.sja1105_setup\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [32 x i8] c"switch.table.sja1105_mac_config\00", align 1
@llvm.compiler.used = appending global [220 x ptr] [ptr @__UNIQUE_ID_author521, ptr @__UNIQUE_ID_author522, ptr @__UNIQUE_ID_description523, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__exitcall_sja1105_driver_exit, ptr @__initcall__kmod_sja1105__520_3401_sja1105_driver_init6, ptr @sja1105_adjust_port_config._entry, ptr @sja1105_adjust_port_config._entry.23, ptr @sja1105_adjust_port_config._entry_ptr, ptr @sja1105_adjust_port_config._entry_ptr.25, ptr @sja1105_bridge_stp_state_set._entry, ptr @sja1105_bridge_stp_state_set._entry_ptr, ptr @sja1105_check_device_id._entry, ptr @sja1105_check_device_id._entry.54, ptr @sja1105_check_device_id._entry_ptr, ptr @sja1105_check_device_id._entry_ptr.56, ptr @sja1105_driver_exit, ptr @sja1105_fast_age._entry, ptr @sja1105_fast_age._entry.129, ptr @sja1105_fast_age._entry_ptr, ptr @sja1105_fast_age._entry_ptr.131, ptr @sja1105_fdb_dump._entry, ptr @sja1105_fdb_dump._entry_ptr, ptr @sja1105_init_l2_forwarding._entry, ptr @sja1105_init_l2_forwarding._entry_ptr, ptr @sja1105_init_mii_settings._entry, ptr @sja1105_init_mii_settings._entry_ptr, ptr @sja1105_init_topology._entry, ptr @sja1105_init_topology._entry.116, ptr @sja1105_init_topology._entry.119, ptr @sja1105_init_topology._entry_ptr, ptr @sja1105_init_topology._entry_ptr.118, ptr @sja1105_init_topology._entry_ptr.121, ptr @sja1105_mac_config._entry, ptr @sja1105_mac_config._entry_ptr, ptr @sja1105_mgmt_xmit._entry, ptr @sja1105_mgmt_xmit._entry.60, ptr @sja1105_mgmt_xmit._entry_ptr, ptr @sja1105_mgmt_xmit._entry_ptr.62, ptr @sja1105_mirror_apply._entry, ptr @sja1105_mirror_apply._entry_ptr, ptr @sja1105_parse_dt._entry, ptr @sja1105_parse_dt._entry_ptr, ptr @sja1105_parse_ports_node._entry, ptr @sja1105_parse_ports_node._entry.143, ptr @sja1105_parse_ports_node._entry.147, ptr @sja1105_parse_ports_node._entry_ptr, ptr @sja1105_parse_ports_node._entry_ptr.145, ptr @sja1105_parse_ports_node._entry_ptr.149, ptr @sja1105_parse_rgmii_delays._entry, ptr @sja1105_parse_rgmii_delays._entry.154, ptr @sja1105_parse_rgmii_delays._entry.157, ptr @sja1105_parse_rgmii_delays._entry_ptr, ptr @sja1105_parse_rgmii_delays._entry_ptr.156, ptr @sja1105_parse_rgmii_delays._entry_ptr.159, ptr @sja1105_probe._entry, ptr @sja1105_probe._entry.29, ptr @sja1105_probe._entry.32, ptr @sja1105_probe._entry.35, ptr @sja1105_probe._entry.38, ptr @sja1105_probe._entry.48, ptr @sja1105_probe._entry_ptr, ptr @sja1105_probe._entry_ptr.31, ptr @sja1105_probe._entry_ptr.34, ptr @sja1105_probe._entry_ptr.37, ptr @sja1105_probe._entry_ptr.40, ptr @sja1105_probe._entry_ptr.50, ptr @sja1105_setup._entry, ptr @sja1105_setup._entry.65, ptr @sja1105_setup._entry.68, ptr @sja1105_setup._entry.71, ptr @sja1105_setup._entry.74, ptr @sja1105_setup._entry_ptr, ptr @sja1105_setup._entry_ptr.67, ptr @sja1105_setup._entry_ptr.70, ptr @sja1105_setup._entry_ptr.73, ptr @sja1105_setup._entry_ptr.76, ptr @sja1105_static_config_reload._entry, ptr @sja1105_static_config_reload._entry_ptr, ptr @sja1105et_fdb_add._entry, ptr @sja1105et_fdb_add._entry_ptr, ptr @sja1105pqrs_fdb_add._entry, ptr @sja1105pqrs_fdb_add._entry.8, ptr @sja1105pqrs_fdb_add._entry_ptr, ptr @sja1105pqrs_fdb_add._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @sja1105_reset_reasons, ptr @sja1105_vlan_filtering.__msg, ptr @sja1105_vlan_filtering.__msg.14, ptr @sja1105_driver, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @sja1105_dt_ids, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @sja1105_switch_ops, ptr @sja1105_probe.__key, ptr @.str.41, ptr @sja1105_probe.__key.42, ptr @.str.43, ptr @sja1105_probe.__key.44, ptr @.str.45, ptr @sja1105_probe.__key.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @sja1105_mgmt_xmit._rs, ptr @.str.57, ptr @.str.58, ptr @sja1105_mgmt_xmit._rs.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @constinit, ptr @constinit.77, ptr @constinit.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @sja1105_prechangeupper.__msg, ptr @sja1105_prechangeupper.__msg.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @sja1105_port_pre_bridge_flags.__msg, ptr @sja1105_port_mcast_flood.__msg, ptr @sja1105_bridge_vlan_add.__msg, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @switch.table.sja1105_setup, ptr @switch.table.sja1105_mac_config], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105et_fdb_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105pqrs_fdb_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105pqrs_fdb_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_reload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_reset_reasons to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vlan_filtering.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vlan_filtering.__msg.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_adjust_port_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_adjust_port_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_dt_ids to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_check_device_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_check_device_id._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mgmt_xmit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mgmt_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mgmt_xmit._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mgmt_xmit._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_setup._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constinit to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constinit.77 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constinit.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_mii_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_l2_forwarding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_topology._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_topology._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_prechangeupper.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_prechangeupper.__msg.124 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_bridge_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_fast_age._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_fast_age._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_port_pre_bridge_flags.__msg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_port_mcast_flood.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_bridge_vlan_add.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_fdb_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_mirror_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_ports_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_ports_node._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_ports_node._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_rgmii_delays._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_rgmii_delays._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_parse_rgmii_delays._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sja1105_setup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sja1105_mac_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sja1105_frame_memory_partitioning(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 14, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %part_spc = getelementptr inbounds %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %part_spc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 929, ptr %part_spc, align 8
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4, i32 1
  %3 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %entries8 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 12, i32 2
  %5 = ptrtoint ptr %entries8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries8, align 4
  %7 = ptrtoint ptr %part_spc to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 829, ptr %part_spc, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 100, ptr %6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105et_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %l2_lookup.i = alloca %struct.sja1105_l2_lookup_entry, align 8
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  %tmp = alloca %struct.sja1105_l2_lookup_entry, align 8
  %way = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %0 = getelementptr inbounds i8, ptr %l2_lookup, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp) #10
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 144)
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %5 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %way) #10
  %call = tail call zeroext i8 @sja1105et_fdb_hash(ptr noundef %4, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %conv = zext i8 %call to i32
  %mul.i.i = shl nuw nsw i32 %conv, 2
  %macaddr.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup.i, i32 0, i32 1
  %arrayidx.1.i.i = getelementptr i8, ptr %addr, i32 1
  %arrayidx.2.i.i = getelementptr i8, ptr %addr, i32 2
  %arrayidx.3.i.i = getelementptr i8, ptr %addr, i32 3
  %arrayidx.4.i.i = getelementptr i8, ptr %addr, i32 4
  %arrayidx.5.i.i = getelementptr i8, ptr %addr, i32 5
  %conv.i = zext i16 %vid to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %last_unused.0 = phi i32 [ -1, %entry ], [ %last_unused.1, %for.inc.i.for.body.i_crit_edge ]
  %way.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %7 = call ptr @memset(ptr %l2_lookup.i, i32 0, i32 144)
  %add.i.i = add nuw nsw i32 %way.026.i, %mul.i.i
  %call1.i = call i32 @sja1105_dynamic_config_read(ptr noundef %4, i32 noundef 5, i32 noundef %add.i.i, ptr noundef nonnull %l2_lookup.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %8 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %macaddr.i, align 8
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %conv.i.i = zext i8 %11 to i64
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %13 to i64
  %14 = shl nuw nsw i64 %conv.i.i, 16
  %15 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %15, %14
  %16 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %17 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %18 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %19 to i64
  %20 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %21 to i64
  %22 = shl nuw nsw i64 %or.2.i.i, 24
  %23 = shl nuw nsw i64 %conv.3.i.i, 16
  %24 = shl nuw nsw i64 %conv.4.i.i, 8
  %25 = or i64 %24, %23
  %shl.5.i.i = or i64 %25, %22
  %26 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %27 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %or.5.i.i)
  %cmp6.i = icmp eq i64 %9, %or.5.i.i
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %28 = ptrtoint ptr %l2_lookup.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %l2_lookup.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv.i)
  %cmp7.i = icmp eq i64 %29, %conv.i
  br i1 %cmp7.i, label %sja1105et_is_fdb_entry_in_bin.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %last_unused.1 = phi i32 [ %last_unused.0, %land.lhs.true.i.for.inc.i_crit_edge ], [ %last_unused.0, %if.end4.i.for.inc.i_crit_edge ], [ %way.026.i, %for.body.i.for.inc.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %inc.i = add nuw nsw i32 %way.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %sja1105et_is_fdb_entry_in_bin.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sja1105et_is_fdb_entry_in_bin.exit.thread:        ; preds = %for.inc.i
  %30 = ptrtoint ptr %way to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %way, align 4
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %addr, align 1
  %conv.i103 = zext i8 %32 to i64
  %33 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i = zext i8 %34 to i64
  %35 = shl nuw nsw i64 %conv.i103, 16
  %36 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %36, %35
  %37 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i = zext i8 %38 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %39 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i = zext i8 %40 to i64
  %41 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i = zext i8 %42 to i64
  %43 = shl nuw nsw i64 %or.2.i, 24
  %44 = shl nuw nsw i64 %conv.3.i, 16
  %45 = shl nuw nsw i64 %conv.4.i, 8
  %46 = or i64 %44, %45
  %shl.5.i = or i64 %43, %46
  %47 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i = zext i8 %48 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  %49 = ptrtoint ptr %macaddr to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or.5.i, ptr %macaddr, align 8
  %shl13 = shl nuw i32 1, %port
  %conv14 = zext i32 %shl13 to i64
  %destports15 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %50 = ptrtoint ptr %destports15 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv14, ptr %destports15, align 8
  %51 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i, ptr %l2_lookup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_unused.1)
  %cmp17 = icmp sgt i32 %last_unused.1, -1
  br i1 %cmp17, label %if.then19, label %if.else20

sja1105et_is_fdb_entry_in_bin.exit:               ; preds = %land.lhs.true.i
  %52 = call ptr @memcpy(ptr %l2_lookup, ptr %l2_lookup.i, i32 144)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %53 = ptrtoint ptr %way to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %way.026.i, ptr %way, align 4
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %54 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %destports, align 8
  %shl = shl nuw i32 1, %port
  %conv5 = zext i32 %shl to i64
  %and = and i64 %55, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sja1105et_is_fdb_entry_in_bin.exit.if.end_crit_edge, label %land.lhs.true

sja1105et_is_fdb_entry_in_bin.exit.if.end_crit_edge: ; preds = %sja1105et_is_fdb_entry_in_bin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sja1105et_is_fdb_entry_in_bin.exit
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 11
  %56 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool6.not = icmp eq i64 %57, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sja1105et_is_fdb_entry_in_bin.exit.if.end_crit_edge
  %or = or i64 %55, %conv5
  %58 = ptrtoint ptr %destports to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or, ptr %destports, align 8
  br label %if.end23

if.then19:                                        ; preds = %sja1105et_is_fdb_entry_in_bin.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %way to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %last_unused.1, ptr %way, align 4
  br label %if.end23

if.else20:                                        ; preds = %sja1105et_is_fdb_entry_in_bin.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %mul.i.i, -1
  call void @get_random_bytes(ptr noundef nonnull %way, i32 noundef 1) #10
  %60 = ptrtoint ptr %way to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %way, align 4
  %rem = srem i32 %61, 4
  store i32 %rem, ptr %way, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %conv, ptr noundef %addr, i32 noundef %rem) #13
  %call21 = call i32 @sja1105_dynamic_config_write(ptr noundef %4, i32 noundef 5, i32 noundef %add.i, ptr noundef null, i1 noundef zeroext false) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then19, %if.end
  %lockeds24 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 11
  %62 = ptrtoint ptr %lockeds24 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1, ptr %lockeds24, align 8
  %63 = ptrtoint ptr %way to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %way, align 4
  %add.i105 = add i32 %64, %mul.i.i
  %conv26 = sext i32 %add.i105 to i64
  %index27 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 4
  %65 = ptrtoint ptr %index27 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv26, ptr %index27, align 8
  %call30 = call i32 @sja1105_dynamic_config_write(ptr noundef %4, i32 noundef 5, i32 noundef %add.i105, ptr noundef nonnull %l2_lookup, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end23.cleanup_crit_edge, label %if.end34

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %66 = ptrtoint ptr %way to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %way, align 4
  %add.i108 = add i32 %67, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %add.i108)
  %cmp37140 = icmp slt i32 %mul.i.i, %add.i108
  br i1 %cmp37140, label %for.body.lr.ph, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end34
  %macaddr47 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %tmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ %mul.i.i, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call39 = call i32 @sja1105_dynamic_config_read(ptr noundef %4, i32 noundef 5, i32 noundef %i.0141, ptr noundef nonnull %tmp) #10
  %68 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call39, label %for.body.cleanup_crit_edge [
    i32 -2, label %for.body.for.inc_crit_edge
    i32 0, label %if.end46
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %for.body
  %69 = ptrtoint ptr %macaddr47 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %macaddr47, align 8
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %addr, align 1
  %conv.i109 = zext i8 %72 to i64
  %73 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i111 = zext i8 %74 to i64
  %75 = shl nuw nsw i64 %conv.i109, 16
  %76 = shl nuw nsw i64 %conv.1.i111, 8
  %shl.2.i112 = or i64 %76, %75
  %77 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i114 = zext i8 %78 to i64
  %or.2.i115 = or i64 %shl.2.i112, %conv.2.i114
  %79 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i117 = zext i8 %80 to i64
  %81 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i120 = zext i8 %82 to i64
  %83 = shl nuw nsw i64 %or.2.i115, 24
  %84 = shl nuw nsw i64 %conv.3.i117, 16
  %85 = shl nuw nsw i64 %conv.4.i120, 8
  %86 = or i64 %84, %85
  %shl.5.i122 = or i64 %83, %86
  %87 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i124 = zext i8 %88 to i64
  %or.5.i125 = or i64 %shl.5.i122, %conv.5.i124
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %or.5.i125)
  %cmp49.not = icmp eq i64 %70, %or.5.i125
  br i1 %cmp49.not, label %lor.lhs.false, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end46
  %89 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %tmp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %conv.i)
  %cmp53.not = icmp eq i64 %90, %conv.i
  br i1 %cmp53.not, label %if.end56, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end56:                                         ; preds = %lor.lhs.false
  %call57 = call i32 @sja1105_dynamic_config_write(ptr noundef %4, i32 noundef 5, i32 noundef %i.0141, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end56.for.end_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %add.i108
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end56.for.end_crit_edge, %if.end34.for.end_crit_edge
  %arrayidx.i = getelementptr %struct.sja1105_static_config, ptr %4, i32 0, i32 1, i32 5
  %entries.i.i = getelementptr %struct.sja1105_static_config, ptr %4, i32 0, i32 1, i32 5, i32 2
  %91 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %entries.i.i, align 4
  %entry_count.i.i = getelementptr %struct.sja1105_static_config, ptr %4, i32 0, i32 1, i32 5, i32 1
  %93 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %entry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp20.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp20.not.i.i, label %for.end.if.then.i127_crit_edge, label %for.body.lr.ph.i.i

for.end.if.then.i127_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i127

for.body.lr.ph.i.i:                               ; preds = %for.end
  %macaddr2.i.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  %95 = ptrtoint ptr %macaddr2.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %macaddr2.i.i, align 8
  %shl.i.i = shl nuw i32 1, %port
  %conv.i.i126 = zext i32 %shl.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %macaddr.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %92, i32 %i.021.i.i, i32 1
  %97 = ptrtoint ptr %macaddr.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %macaddr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %96)
  %cmp3.i.i = icmp eq i64 %98, %96
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx1.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %92, i32 %i.021.i.i
  %99 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx1.i.i, align 8
  %101 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %l2_lookup, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %102)
  %cmp6.i.i = icmp eq i64 %100, %102
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %destports.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %92, i32 %i.021.i.i, i32 2
  %103 = ptrtoint ptr %destports.i.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %destports.i.i, align 8
  %and.i.i = and i64 %104, %conv.i.i126
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %sja1105_find_static_fdb_entry.exit.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %94
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then.i127_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then.i127_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i127

sja1105_find_static_fdb_entry.exit.i:             ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i.i)
  %cmp.i = icmp slt i32 %i.021.i.i, 0
  br i1 %cmp.i, label %sja1105_find_static_fdb_entry.exit.i.if.then.i127_crit_edge, label %sja1105_find_static_fdb_entry.exit.i.if.then9.i129_crit_edge

sja1105_find_static_fdb_entry.exit.i.if.then9.i129_crit_edge: ; preds = %sja1105_find_static_fdb_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i129

sja1105_find_static_fdb_entry.exit.i.if.then.i127_crit_edge: ; preds = %sja1105_find_static_fdb_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i127

if.then.i127:                                     ; preds = %sja1105_find_static_fdb_entry.exit.i.if.then.i127_crit_edge, %for.inc.i.i.if.then.i127_crit_edge, %for.end.if.then.i127_crit_edge
  %add.i128 = add i32 %94, 1
  %call2.i = call i32 @sja1105_table_resize(ptr noundef %arrayidx.i, i32 noundef %add.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end7.thread.i, label %if.then.i127.cleanup_crit_edge

if.then.i127.cleanup_crit_edge:                   ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.thread.i:                                 ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %entry_count.i.i, align 4
  %sub.i = add i32 %106, -1
  %107 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %entries.i.i, align 4
  br label %if.then9.i129

if.then9.i129:                                    ; preds = %if.end7.thread.i, %sja1105_find_static_fdb_entry.exit.i.if.then9.i129_crit_edge
  %109 = phi ptr [ %108, %if.end7.thread.i ], [ %92, %sja1105_find_static_fdb_entry.exit.i.if.then9.i129_crit_edge ]
  %match.039.i = phi i32 [ %sub.i, %if.end7.thread.i ], [ %i.021.i.i, %sja1105_find_static_fdb_entry.exit.i.if.then9.i129_crit_edge ]
  %arrayidx10.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %109, i32 %match.039.i
  %110 = call ptr @memcpy(ptr %arrayidx10.i, ptr %l2_lookup, i32 144)
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i129, %if.then.i127.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call30, %if.end23.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ 0, %if.then9.i129 ], [ %call2.i, %if.then.i127.cleanup_crit_edge ], [ %call39, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %way) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sja1105et_fdb_hash(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_dynamic_config_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_dynamic_config_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_static_fdb_change(ptr noundef %priv, i32 noundef %port, ptr nocapture noundef readonly %requested, i1 noundef zeroext %keep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 5
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 5, i32 2
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries.i, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 5, i32 1
  %2 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not.i = icmp eq i32 %3, 0
  br i1 %cmp20.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %macaddr2.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %requested, i32 0, i32 1
  %4 = ptrtoint ptr %macaddr2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %macaddr2.i, align 8
  %shl.i = shl nuw i32 1, %port
  %conv.i = zext i32 %shl.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %macaddr.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %1, i32 %i.021.i, i32 1
  %6 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %macaddr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp3.i = icmp eq i64 %7, %5
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx1.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %1, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1.i, align 8
  %10 = ptrtoint ptr %requested to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %requested, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp6.i = icmp eq i64 %9, %11
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %destports.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %1, i32 %i.021.i, i32 2
  %12 = ptrtoint ptr %destports.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %destports.i, align 8
  %and.i = and i64 %13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true7.i.for.inc.i_crit_edge, label %sja1105_find_static_fdb_entry.exit

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sja1105_find_static_fdb_entry.exit:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i)
  %cmp = icmp slt i32 %i.021.i, 0
  br i1 %cmp, label %sja1105_find_static_fdb_entry.exit.if.then_crit_edge, label %if.end7

sja1105_find_static_fdb_entry.exit.if.then_crit_edge: ; preds = %sja1105_find_static_fdb_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %sja1105_find_static_fdb_entry.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 %keep, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add = add i32 %3, 1
  %call2 = tail call i32 @sja1105_table_resize(ptr noundef %arrayidx, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7.thread, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_count.i, align 4
  %sub = add i32 %15, -1
  %16 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries.i, align 4
  br label %if.then9

if.end7:                                          ; preds = %sja1105_find_static_fdb_entry.exit
  %18 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i, align 4
  br i1 %keep, label %if.end7.if.then9_crit_edge, label %if.end11

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.end7.thread
  %20 = phi ptr [ %17, %if.end7.thread ], [ %19, %if.end7.if.then9_crit_edge ]
  %match.039 = phi i32 [ %sub, %if.end7.thread ], [ %i.021.i, %if.end7.if.then9_crit_edge ]
  %arrayidx10 = getelementptr %struct.sja1105_l2_lookup_entry, ptr %20, i32 %match.039
  %21 = call ptr @memcpy(ptr %arrayidx10, ptr %requested, i32 144)
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %i.021.i
  %22 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entry_count.i, align 4
  %sub14 = add i32 %23, -1
  %arrayidx15 = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %sub14
  %24 = call ptr @memcpy(ptr %arrayidx12, ptr %arrayidx15, i32 144)
  %25 = load i32, ptr %entry_count.i, align 4
  %sub17 = add i32 %25, -1
  %call18 = tail call i32 @sja1105_table_resize(ptr noundef %arrayidx, i32 noundef %sub17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %call18, %if.end11 ], [ 0, %if.then.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105et_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %l2_lookup.i = alloca %struct.sja1105_l2_lookup_entry, align 8
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call zeroext i8 @sja1105et_fdb_hash(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %conv = zext i8 %call to i32
  %mul.i.i = shl nuw nsw i32 %conv, 2
  %macaddr.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup.i, i32 0, i32 1
  %arrayidx.1.i.i = getelementptr i8, ptr %addr, i32 1
  %arrayidx.2.i.i = getelementptr i8, ptr %addr, i32 2
  %arrayidx.3.i.i = getelementptr i8, ptr %addr, i32 3
  %arrayidx.4.i.i = getelementptr i8, ptr %addr, i32 4
  %arrayidx.5.i.i = getelementptr i8, ptr %addr, i32 5
  %conv.i = zext i16 %vid to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %way.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %2 = call ptr @memset(ptr %l2_lookup.i, i32 0, i32 144)
  %add.i.i = add nuw i32 %way.026.i, %mul.i.i
  %call1.i = call i32 @sja1105_dynamic_config_read(ptr noundef %1, i32 noundef 5, i32 noundef %add.i.i, ptr noundef nonnull %l2_lookup.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %3 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %macaddr.i, align 8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 1
  %conv.i.i = zext i8 %6 to i64
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %8 to i64
  %9 = shl nuw nsw i64 %conv.i.i, 16
  %10 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %10, %9
  %11 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %12 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %13 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %14 to i64
  %15 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %16 to i64
  %17 = shl nuw nsw i64 %or.2.i.i, 24
  %18 = shl nuw nsw i64 %conv.3.i.i, 16
  %19 = shl nuw nsw i64 %conv.4.i.i, 8
  %20 = or i64 %19, %18
  %shl.5.i.i = or i64 %20, %17
  %21 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %22 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %or.5.i.i)
  %cmp6.i = icmp eq i64 %4, %or.5.i.i
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %23 = ptrtoint ptr %l2_lookup.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %l2_lookup.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv.i)
  %cmp7.i = icmp eq i64 %24, %conv.i
  br i1 %cmp7.i, label %sja1105et_is_fdb_entry_in_bin.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %inc.i = add nuw nsw i32 %way.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sja1105et_is_fdb_entry_in_bin.exit:               ; preds = %land.lhs.true.i
  %25 = call ptr @memcpy(ptr %l2_lookup, ptr %l2_lookup.i, i32 144)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup.i) #10
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %conv5 = zext i32 %neg to i64
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %26 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %destports, align 8
  %and = and i64 %27, %conv5
  store i64 %and, ptr %destports, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %call10 = call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 5, i32 noundef %add.i.i, ptr noundef nonnull %l2_lookup, i1 noundef zeroext %tobool.not) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %sja1105et_is_fdb_entry_in_bin.exit.cleanup_crit_edge, label %if.end14

sja1105et_is_fdb_entry_in_bin.exit.cleanup_crit_edge: ; preds = %sja1105et_is_fdb_entry_in_bin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %sja1105et_is_fdb_entry_in_bin.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call fastcc i32 @sja1105_static_fdb_change(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %l2_lookup, i1 noundef zeroext %tobool.not)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sja1105et_is_fdb_entry_in_bin.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ %call10, %sja1105et_is_fdb_entry_in_bin.exit.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  %tmp = alloca %struct.sja1105_l2_lookup_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %0 = getelementptr inbounds i8, ptr %l2_lookup, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp) #10
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %conv.i = zext i8 %5 to i64
  %arrayidx.1.i = getelementptr i8, ptr %addr, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %7 to i64
  %8 = shl nuw nsw i64 %conv.i, 16
  %9 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %9, %8
  %arrayidx.2.i = getelementptr i8, ptr %addr, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %11 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr i8, ptr %addr, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %13 to i64
  %arrayidx.4.i = getelementptr i8, ptr %addr, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %15 to i64
  %16 = shl nuw nsw i64 %or.2.i, 24
  %17 = shl nuw nsw i64 %conv.3.i, 16
  %18 = shl nuw nsw i64 %conv.4.i, 8
  %19 = or i64 %17, %18
  %shl.5.i = or i64 %16, %19
  %arrayidx.5.i = getelementptr i8, ptr %addr, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %21 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  %22 = ptrtoint ptr %macaddr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or.5.i, ptr %macaddr, align 8
  %conv = zext i16 %vid to i64
  %23 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %l2_lookup, align 8
  %mask_macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 7
  %24 = ptrtoint ptr %mask_macaddr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 281474976710655, ptr %mask_macaddr, align 8
  %mask_vlanid = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 6
  %25 = ptrtoint ptr %mask_vlanid to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4095, ptr %mask_vlanid, align 8
  %shl = shl nuw i32 1, %port
  %conv2 = zext i32 %shl to i64
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %26 = ptrtoint ptr %destports to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv2, ptr %destports, align 8
  %27 = call ptr @memcpy(ptr %tmp, ptr %l2_lookup, i32 144)
  %call3 = call i32 @sja1105_dynamic_config_read(ptr noundef %3, i32 noundef 5, i32 noundef -1, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %tmp, i32 0, i32 4
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %29)
  %cmp5.not = icmp eq i64 %29, 1023
  br i1 %cmp5.not, label %land.lhs.true.for.body.preheader_crit_edge, label %if.then

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then:                                          ; preds = %land.lhs.true
  %destports7 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %tmp, i32 0, i32 2
  %30 = ptrtoint ptr %destports7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %destports7, align 8
  %and = and i64 %31, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true10:                                  ; preds = %if.then
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %tmp, i32 0, i32 11
  %32 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool11.not = icmp eq i64 %33, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %if.then.if.end_crit_edge
  %34 = call ptr @memcpy(ptr %l2_lookup, ptr %tmp, i32 144)
  %35 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %destports, align 8
  %or = or i64 %36, %conv2
  store i64 %or, ptr %destports, align 8
  br label %skip_finding_an_index

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call19 = call i32 @sja1105_dynamic_config_read(ptr noundef %3, i32 noundef 5, i32 noundef %i.096, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end27, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv28 = zext i32 %i.096 to i64
  %index29 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 4
  %39 = ptrtoint ptr %index29 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv28, ptr %index29, align 8
  br label %skip_finding_an_index

skip_finding_an_index:                            ; preds = %if.end27, %if.end
  %lockeds30 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 11
  %40 = ptrtoint ptr %lockeds30 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %lockeds30, align 8
  %index31 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 4
  %41 = ptrtoint ptr %index31 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %index31, align 8
  %conv32 = trunc i64 %42 to i32
  %call33 = call i32 @sja1105_dynamic_config_write(ptr noundef %3, i32 noundef 5, i32 noundef %conv32, ptr noundef nonnull %l2_lookup, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %skip_finding_an_index.cleanup_crit_edge, label %if.end37

skip_finding_an_index.cleanup_crit_edge:          ; preds = %skip_finding_an_index
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %skip_finding_an_index
  %43 = call ptr @memcpy(ptr %tmp, ptr %l2_lookup, i32 144)
  %call38 = call i32 @sja1105_dynamic_config_read(ptr noundef %3, i32 noundef 5, i32 noundef -1, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds, align 4
  %conv46 = zext i16 %vid to i32
  %46 = inttoptr i32 %call38 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.9, i32 noundef %port, ptr noundef %addr, i32 noundef %conv46, ptr noundef nonnull %46) #13
  br label %cleanup

if.end48:                                         ; preds = %if.end37
  %index49 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %tmp, i32 0, i32 4
  %47 = ptrtoint ptr %index49 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %index49, align 8
  %49 = ptrtoint ptr %index31 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %index31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp51 = icmp ult i64 %48, %50
  br i1 %cmp51, label %if.then53, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then53:                                        ; preds = %if.end48
  %conv55 = trunc i64 %48 to i32
  %call56 = call i32 @sja1105_dynamic_config_write(ptr noundef %3, i32 noundef 5, i32 noundef %conv55, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then53.cleanup_crit_edge, label %if.then53.if.end61_crit_edge

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.then53.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %arrayidx.i = getelementptr %struct.sja1105_static_config, ptr %3, i32 0, i32 1, i32 5
  %entries.i.i = getelementptr %struct.sja1105_static_config, ptr %3, i32 0, i32 1, i32 5, i32 2
  %51 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entries.i.i, align 4
  %entry_count.i.i = getelementptr %struct.sja1105_static_config, ptr %3, i32 0, i32 1, i32 5, i32 1
  %53 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %entry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp20.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp20.not.i.i, label %if.end61.if.then.i_crit_edge, label %for.body.lr.ph.i.i

if.end61.if.then.i_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.body.lr.ph.i.i:                               ; preds = %if.end61
  %55 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %macaddr, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %macaddr.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %52, i32 %i.021.i.i, i32 1
  %57 = ptrtoint ptr %macaddr.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %macaddr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %56)
  %cmp3.i.i = icmp eq i64 %58, %56
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx1.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %52, i32 %i.021.i.i
  %59 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx1.i.i, align 8
  %61 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %l2_lookup, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp6.i.i = icmp eq i64 %60, %62
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %destports.i.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %52, i32 %i.021.i.i, i32 2
  %63 = ptrtoint ptr %destports.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %destports.i.i, align 8
  %and.i.i = and i64 %64, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %sja1105_find_static_fdb_entry.exit.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %54
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sja1105_find_static_fdb_entry.exit.i:             ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i.i)
  %cmp.i = icmp slt i32 %i.021.i.i, 0
  br i1 %cmp.i, label %sja1105_find_static_fdb_entry.exit.i.if.then.i_crit_edge, label %sja1105_find_static_fdb_entry.exit.i.if.then9.i_crit_edge

sja1105_find_static_fdb_entry.exit.i.if.then9.i_crit_edge: ; preds = %sja1105_find_static_fdb_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

sja1105_find_static_fdb_entry.exit.i.if.then.i_crit_edge: ; preds = %sja1105_find_static_fdb_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %sja1105_find_static_fdb_entry.exit.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge, %if.end61.if.then.i_crit_edge
  %add.i = add i32 %54, 1
  %call2.i = call i32 @sja1105_table_resize(ptr noundef %arrayidx.i, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end7.thread.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %entry_count.i.i, align 4
  %sub.i = add i32 %66, -1
  %67 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %entries.i.i, align 4
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.thread.i, %sja1105_find_static_fdb_entry.exit.i.if.then9.i_crit_edge
  %69 = phi ptr [ %68, %if.end7.thread.i ], [ %52, %sja1105_find_static_fdb_entry.exit.i.if.then9.i_crit_edge ]
  %match.039.i = phi i32 [ %sub.i, %if.end7.thread.i ], [ %i.021.i.i, %sja1105_find_static_fdb_entry.exit.i.if.then9.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %69, i32 %match.039.i
  %70 = call ptr @memcpy(ptr %arrayidx10.i, ptr %l2_lookup, i32 144)
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.then.i.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end44, %skip_finding_an_index.cleanup_crit_edge, %do.end, %land.lhs.true10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %do.end44 ], [ -22, %do.end ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ %call33, %skip_finding_an_index.cleanup_crit_edge ], [ %call56, %if.then53.cleanup_crit_edge ], [ 0, %if.then9.i ], [ %call2.i, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %0 = getelementptr inbounds i8, ptr %l2_lookup, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %conv.i = zext i8 %5 to i64
  %arrayidx.1.i = getelementptr i8, ptr %addr, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %7 to i64
  %8 = shl nuw nsw i64 %conv.i, 16
  %9 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %9, %8
  %arrayidx.2.i = getelementptr i8, ptr %addr, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %11 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr i8, ptr %addr, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %13 to i64
  %arrayidx.4.i = getelementptr i8, ptr %addr, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %15 to i64
  %16 = shl nuw nsw i64 %or.2.i, 24
  %17 = shl nuw nsw i64 %conv.3.i, 16
  %18 = shl nuw nsw i64 %conv.4.i, 8
  %19 = or i64 %17, %18
  %shl.5.i = or i64 %16, %19
  %arrayidx.5.i = getelementptr i8, ptr %addr, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %21 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  %22 = ptrtoint ptr %macaddr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or.5.i, ptr %macaddr, align 8
  %conv = zext i16 %vid to i64
  %23 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %l2_lookup, align 8
  %mask_macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 7
  %24 = ptrtoint ptr %mask_macaddr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 281474976710655, ptr %mask_macaddr, align 8
  %mask_vlanid = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 6
  %25 = ptrtoint ptr %mask_vlanid to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4095, ptr %mask_vlanid, align 8
  %shl = shl nuw i32 1, %port
  %conv2 = zext i32 %shl to i64
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %26 = ptrtoint ptr %destports to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv2, ptr %destports, align 8
  %call3 = call i32 @sja1105_dynamic_config_read(ptr noundef %3, i32 noundef 5, i32 noundef -1, ptr noundef nonnull %l2_lookup) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %shl, -1
  %conv6 = zext i32 %neg to i64
  %27 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %destports, align 8
  %and = and i64 %28, %conv6
  store i64 %and, ptr %destports, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %index = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 4
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %index, align 8
  %conv11 = trunc i64 %30 to i32
  %call13 = call i32 @sja1105_dynamic_config_write(ptr noundef %3, i32 noundef 5, i32 noundef %conv11, ptr noundef nonnull %l2_lookup, i1 noundef zeroext %tobool.not) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call fastcc i32 @sja1105_static_fdb_change(ptr noundef %3, i32 noundef %port, ptr noundef nonnull %l2_lookup, i1 noundef zeroext %tobool.not)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_static_config_reload(ptr noundef %priv, i32 noundef %reason) local_unnamed_addr #2 align 64 {
entry:
  %ptp_sts_before = alloca %struct.ptp_system_timestamp, align 8
  %ptp_sts_after = alloca %struct.ptp_system_timestamp, align 8
  %speed_mbps = alloca [11 x i32], align 4
  %bmcr = alloca [11 x i16], align 2
  %now = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptp_sts_before) #10
  %0 = call ptr @memset(ptr %ptp_sts_before, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptp_sts_after) #10
  %1 = call ptr @memset(ptr %ptp_sts_after, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %speed_mbps) #10
  %2 = call ptr @memset(ptr %speed_mbps, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %bmcr) #10
  %3 = call ptr @memset(ptr %bmcr, i32 0, i32 22)
  %ds1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #10
  %6 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %now, align 8, !annotation !328
  %mgmt_lock = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mgmt_lock, i32 noundef 0) #10
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 9, i32 2
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entries, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 18
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp242.not = icmp eq i32 %10, 0
  br i1 %cmp242.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %mdio_pcs = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %speed = getelementptr %struct.sja1105_mac_config_entry, ptr %8, i32 %i.0243, i32 4
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %speed, align 8
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.sja1105_info, ptr %14, i32 0, i32 31, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %12)
  %cmp.i = icmp eq i64 %16, %12
  br i1 %cmp.i, label %for.body.sja1105_port_speed_to_ethtool.exit_crit_edge, label %if.end.i

for.body.sja1105_port_speed_to_ethtool.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_port_speed_to_ethtool.exit

if.end.i:                                         ; preds = %for.body
  %arrayidx3.i = getelementptr %struct.sja1105_info, ptr %14, i32 0, i32 31, i32 2
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %12)
  %cmp4.i = icmp eq i64 %18, %12
  br i1 %cmp4.i, label %if.end.i.sja1105_port_speed_to_ethtool.exit_crit_edge, label %if.end6.i

if.end.i.sja1105_port_speed_to_ethtool.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_port_speed_to_ethtool.exit

if.end6.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr %struct.sja1105_info, ptr %14, i32 0, i32 31, i32 3
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %12)
  %cmp10.i = icmp eq i64 %20, %12
  br i1 %cmp10.i, label %if.end6.i.sja1105_port_speed_to_ethtool.exit_crit_edge, label %if.end12.i

if.end6.i.sja1105_port_speed_to_ethtool.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_port_speed_to_ethtool.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.i = getelementptr %struct.sja1105_info, ptr %14, i32 0, i32 31, i32 4
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx15.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %12)
  %cmp16.i = icmp eq i64 %22, %12
  %..i = select i1 %cmp16.i, i32 2500, i32 -1
  br label %sja1105_port_speed_to_ethtool.exit

sja1105_port_speed_to_ethtool.exit:               ; preds = %if.end12.i, %if.end6.i.sja1105_port_speed_to_ethtool.exit_crit_edge, %if.end.i.sja1105_port_speed_to_ethtool.exit_crit_edge, %for.body.sja1105_port_speed_to_ethtool.exit_crit_edge
  %retval.0.i = phi i32 [ 10, %for.body.sja1105_port_speed_to_ethtool.exit_crit_edge ], [ 100, %if.end.i.sja1105_port_speed_to_ethtool.exit_crit_edge ], [ 1000, %if.end6.i.sja1105_port_speed_to_ethtool.exit_crit_edge ], [ %..i, %if.end12.i ]
  %arrayidx4 = getelementptr [11 x i32], ptr %speed_mbps, i32 0, i32 %i.0243
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %arrayidx4, align 4
  %port_speed = getelementptr inbounds %struct.sja1105_info, ptr %14, i32 0, i32 31
  %24 = ptrtoint ptr %port_speed to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %port_speed, align 8
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %speed, align 8
  %arrayidx8 = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 24, i32 %i.0243
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %sja1105_port_speed_to_ethtool.exit.if.end_crit_edge, label %if.then

sja1105_port_speed_to_ethtool.exit.if.end_crit_edge: ; preds = %sja1105_port_speed_to_ethtool.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sja1105_port_speed_to_ethtool.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %mdio_pcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio_pcs, align 4
  %call9 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %i.0243, i32 noundef 1075773440) #10
  %conv = trunc i32 %call9 to i16
  %arrayidx10 = getelementptr [11 x i16], ptr %bmcr, i32 0, i32 %i.0243
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %arrayidx10, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sja1105_port_speed_to_ethtool.exit.if.end_crit_edge
  %inc = add nuw i32 %i.0243, 1
  %32 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %lock = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 25, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call11 = call i32 @__sja1105_ptp_gettimex(ptr noundef %5, ptr noundef nonnull %now, ptr noundef nonnull %ptp_sts_before) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup129

if.end17:                                         ; preds = %for.end
  %call18 = call i32 @sja1105_static_config_upload(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup129

if.end24:                                         ; preds = %if.end17
  %call25 = call i32 @__sja1105_ptp_settime(ptr noundef %5, i64 noundef 0, ptr noundef nonnull %ptp_sts_after) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup129

if.end31:                                         ; preds = %if.end24
  %34 = ptrtoint ptr %ptp_sts_before to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ptp_sts_before, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %35)
  %cmp.i206 = icmp sgt i64 %35, 9223372035
  br i1 %cmp.i206, label %if.end31.timespec64_to_ns.exit_crit_edge, label %if.end.i207

if.end31.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end.i207:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %35)
  %cmp2.i = icmp slt i64 %35, -9223372035
  br i1 %cmp2.i, label %if.end.i207.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i207.timespec64_to_ns.exit_crit_edge:      ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul nsw i64 %35, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ptp_sts_before, i32 0, i32 1
  %36 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %37 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i207.timespec64_to_ns.exit_crit_edge, %if.end31.timespec64_to_ns.exit_crit_edge
  %retval.0.i208 = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end31.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i207.timespec64_to_ns.exit_crit_edge ]
  %post_ts = getelementptr inbounds %struct.ptp_system_timestamp, ptr %ptp_sts_before, i32 0, i32 1
  %38 = ptrtoint ptr %post_ts to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %post_ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %39)
  %cmp.i209 = icmp sgt i64 %39, 9223372035
  br i1 %cmp.i209, label %timespec64_to_ns.exit.timespec64_to_ns.exit218_crit_edge, label %if.end.i211

timespec64_to_ns.exit.timespec64_to_ns.exit218_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit218

if.end.i211:                                      ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %39)
  %cmp2.i210 = icmp slt i64 %39, -9223372035
  br i1 %cmp2.i210, label %if.end.i211.timespec64_to_ns.exit218_crit_edge, label %if.end4.i216

if.end.i211.timespec64_to_ns.exit218_crit_edge:   ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit218

if.end4.i216:                                     ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i212 = mul nsw i64 %39, 1000000000
  %tv_nsec.i213 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %ptp_sts_before, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %tv_nsec.i213 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i213, align 8
  %conv.i214 = sext i32 %41 to i64
  %add.i215 = add i64 %mul.i212, %conv.i214
  br label %timespec64_to_ns.exit218

timespec64_to_ns.exit218:                         ; preds = %if.end4.i216, %if.end.i211.timespec64_to_ns.exit218_crit_edge, %timespec64_to_ns.exit.timespec64_to_ns.exit218_crit_edge
  %retval.0.i217 = phi i64 [ %add.i215, %if.end4.i216 ], [ 9223372036854775807, %timespec64_to_ns.exit.timespec64_to_ns.exit218_crit_edge ], [ -9223372036854775808, %if.end.i211.timespec64_to_ns.exit218_crit_edge ]
  %42 = ptrtoint ptr %ptp_sts_after to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptp_sts_after, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %43)
  %cmp.i219 = icmp sgt i64 %43, 9223372035
  br i1 %cmp.i219, label %timespec64_to_ns.exit218.timespec64_to_ns.exit228_crit_edge, label %if.end.i221

timespec64_to_ns.exit218.timespec64_to_ns.exit228_crit_edge: ; preds = %timespec64_to_ns.exit218
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit228

if.end.i221:                                      ; preds = %timespec64_to_ns.exit218
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %43)
  %cmp2.i220 = icmp slt i64 %43, -9223372035
  br i1 %cmp2.i220, label %if.end.i221.timespec64_to_ns.exit228_crit_edge, label %if.end4.i226

if.end.i221.timespec64_to_ns.exit228_crit_edge:   ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit228

if.end4.i226:                                     ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i222 = mul nsw i64 %43, 1000000000
  %tv_nsec.i223 = getelementptr inbounds %struct.timespec64, ptr %ptp_sts_after, i32 0, i32 1
  %44 = ptrtoint ptr %tv_nsec.i223 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tv_nsec.i223, align 8
  %conv.i224 = sext i32 %45 to i64
  %add.i225 = add i64 %mul.i222, %conv.i224
  br label %timespec64_to_ns.exit228

timespec64_to_ns.exit228:                         ; preds = %if.end4.i226, %if.end.i221.timespec64_to_ns.exit228_crit_edge, %timespec64_to_ns.exit218.timespec64_to_ns.exit228_crit_edge
  %retval.0.i227 = phi i64 [ %add.i225, %if.end4.i226 ], [ 9223372036854775807, %timespec64_to_ns.exit218.timespec64_to_ns.exit228_crit_edge ], [ -9223372036854775808, %if.end.i221.timespec64_to_ns.exit228_crit_edge ]
  %post_ts36 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %ptp_sts_after, i32 0, i32 1
  %46 = ptrtoint ptr %post_ts36 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %post_ts36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %47)
  %cmp.i229 = icmp sgt i64 %47, 9223372035
  br i1 %cmp.i229, label %timespec64_to_ns.exit228.timespec64_to_ns.exit238_crit_edge, label %if.end.i231

timespec64_to_ns.exit228.timespec64_to_ns.exit238_crit_edge: ; preds = %timespec64_to_ns.exit228
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit238

if.end.i231:                                      ; preds = %timespec64_to_ns.exit228
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %47)
  %cmp2.i230 = icmp slt i64 %47, -9223372035
  br i1 %cmp2.i230, label %if.end.i231.timespec64_to_ns.exit238_crit_edge, label %if.end4.i236

if.end.i231.timespec64_to_ns.exit238_crit_edge:   ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit238

if.end4.i236:                                     ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i232 = mul nsw i64 %47, 1000000000
  %tv_nsec.i233 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %ptp_sts_after, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %tv_nsec.i233 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tv_nsec.i233, align 8
  %conv.i234 = sext i32 %49 to i64
  %add.i235 = add i64 %mul.i232, %conv.i234
  br label %timespec64_to_ns.exit238

timespec64_to_ns.exit238:                         ; preds = %if.end4.i236, %if.end.i231.timespec64_to_ns.exit238_crit_edge, %timespec64_to_ns.exit228.timespec64_to_ns.exit238_crit_edge
  %retval.0.i237 = phi i64 [ %add.i235, %if.end4.i236 ], [ 9223372036854775807, %timespec64_to_ns.exit228.timespec64_to_ns.exit238_crit_edge ], [ -9223372036854775808, %if.end.i231.timespec64_to_ns.exit238_crit_edge ]
  %sub = sub i64 %retval.0.i217, %retval.0.i208
  %div.neg248 = sdiv i64 %sub, -2
  %sub38 = sub i64 %retval.0.i237, %retval.0.i227
  %div39 = sdiv i64 %sub38, 2
  %add.neg = sub i64 %div.neg248, %retval.0.i208
  %50 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %now, align 8
  %add40 = add i64 %add.neg, %retval.0.i227
  %sub41 = add i64 %add40, %51
  %add42 = add i64 %sub41, %div39
  store i64 %add42, ptr %now, align 8
  %call43 = call i32 @__sja1105_ptp_adjtime(ptr noundef %5, i64 noundef %add42) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  %52 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ds1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx47 = getelementptr [6 x ptr], ptr @sja1105_reset_reasons, i32 0, i32 %reason
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx47, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.11, ptr noundef %57) #13
  %info48 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %58 = ptrtoint ptr %info48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info48, align 4
  %clocking_setup = getelementptr inbounds %struct.sja1105_info, ptr %59, i32 0, i32 20
  %60 = ptrtoint ptr %clocking_setup to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clocking_setup, align 8
  %tobool49.not = icmp eq ptr %61, null
  br i1 %tobool49.not, label %timespec64_to_ns.exit238.if.end58_crit_edge, label %if.then50

timespec64_to_ns.exit238.if.end58_crit_edge:      ; preds = %timespec64_to_ns.exit238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then50:                                        ; preds = %timespec64_to_ns.exit238
  %call53 = call i32 %61(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then50.cleanup129_crit_edge, label %if.then50.if.end58_crit_edge

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then50.cleanup129_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end58:                                         ; preds = %if.then50.if.end58_crit_edge, %timespec64_to_ns.exit238.if.end58_crit_edge
  %62 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp61245.not = icmp eq i32 %63, 0
  br i1 %cmp61245.not, label %if.end58.for.end122_crit_edge, label %if.end58.for.body63_crit_edge

if.end58.for.body63_crit_edge:                    ; preds = %if.end58
  br label %for.body63

if.end58.for.end122_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end122

for.body63:                                       ; preds = %for.inc120.for.body63_crit_edge, %if.end58.for.body63_crit_edge
  %i.1246 = phi i32 [ %inc121, %for.inc120.for.body63_crit_edge ], [ 0, %if.end58.for.body63_crit_edge ]
  %arrayidx66 = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 24, i32 %i.1246
  %64 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr [11 x i32], ptr %speed_mbps, i32 0, i32 %i.1246
  %66 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx67, align 4
  %call68 = call fastcc i32 @sja1105_adjust_port_config(ptr noundef %priv, i32 noundef %i.1246, i32 noundef %67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %for.body63.cleanup129_crit_edge, label %if.end72

for.body63.cleanup129_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end72:                                         ; preds = %for.body63
  %tobool73.not = icmp eq ptr %65, null
  br i1 %tobool73.not, label %if.end72.for.inc120_crit_edge, label %if.end75

if.end72.for.inc120_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

if.end75:                                         ; preds = %if.end72
  %arrayidx76 = getelementptr [11 x i16], ptr %bmcr, i32 0, i32 %i.1246
  %68 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx76, align 2
  %70 = and i16 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool78.not = icmp eq i16 %70, 0
  br i1 %tobool78.not, label %if.else, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx80 = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 4, i32 %i.1246
  %71 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx80, align 1, !range !329
  %73 = zext i8 %72 to i32
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.end75.if.end85_crit_edge
  %mode.0 = phi i32 [ 2, %if.end75.if.end85_crit_edge ], [ %73, %if.else ]
  %arrayidx86 = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 %i.1246
  %74 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx86, align 4
  %call87 = call i32 @xpcs_do_config(ptr noundef nonnull %65, i32 noundef %75, i32 noundef %mode.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end85.cleanup129_crit_edge, label %if.end91

if.end85.cleanup129_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0)
  %cmp.i239 = icmp eq i32 %mode.0, 2
  br i1 %cmp.i239, label %if.end91.for.inc120_crit_edge, label %if.then93

if.end91.for.inc120_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

if.then93:                                        ; preds = %if.end91
  %76 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %77)
  %cmp97 = icmp eq i32 %77, 22
  br i1 %cmp97, label %if.then93.if.end115_crit_edge, label %if.else100

if.then93.if.end115_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.else100:                                       ; preds = %if.then93
  %conv102 = zext i16 %69 to i32
  %and103 = and i32 %conv102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else106, label %if.else100.if.end115_crit_edge

if.else100.if.end115_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.else106:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  %and109 = and i32 %conv102, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %.205 = select i1 %tobool110.not, i32 10, i32 100
  br label %if.end115

if.end115:                                        ; preds = %if.else106, %if.else100.if.end115_crit_edge, %if.then93.if.end115_crit_edge
  %speed94.0 = phi i32 [ 2500, %if.then93.if.end115_crit_edge ], [ 1000, %if.else100.if.end115_crit_edge ], [ %.205, %if.else106 ]
  %pcs = getelementptr inbounds %struct.dw_xpcs, ptr %65, i32 0, i32 2
  call void @xpcs_link_up(ptr noundef %pcs, i32 noundef %mode.0, i32 noundef %77, i32 noundef %speed94.0, i32 noundef 1) #10
  br label %for.inc120

for.inc120:                                       ; preds = %if.end115, %if.end91.for.inc120_crit_edge, %if.end72.for.inc120_crit_edge
  %inc121 = add nuw i32 %i.1246, 1
  %78 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_ports, align 4
  %cmp61 = icmp ult i32 %inc121, %79
  br i1 %cmp61, label %for.inc120.for.body63_crit_edge, label %for.inc120.for.end122_crit_edge

for.inc120.for.end122_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end122

for.inc120.for.body63_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.end122:                                       ; preds = %for.inc120.for.end122_crit_edge, %if.end58.for.end122_crit_edge
  %call123 = call fastcc i32 @sja1105_reload_cbs(ptr noundef %priv)
  br label %cleanup129

cleanup129:                                       ; preds = %for.end122, %if.end85.cleanup129_crit_edge, %for.body63.cleanup129_crit_edge, %if.then50.cleanup129_crit_edge, %if.then28, %if.then21, %if.then14
  %rc.1 = phi i32 [ %call11, %if.then14 ], [ %call18, %if.then21 ], [ %call25, %if.then28 ], [ %call53, %if.then50.cleanup129_crit_edge ], [ %call123, %for.end122 ], [ %call87, %if.end85.cleanup129_crit_edge ], [ %call68, %for.body63.cleanup129_crit_edge ]
  call void @mutex_unlock(ptr noundef %mgmt_lock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #10
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %bmcr) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %speed_mbps) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptp_sts_after) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptp_sts_before) #10
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sja1105_ptp_gettimex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_upload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sja1105_ptp_settime(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sja1105_ptp_adjtime(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_adjust_port_config(ptr noundef %priv, i32 noundef %port, i32 noundef %speed_mbps) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 9, i32 2
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %6 = zext i32 %speed_mbps to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %speed_mbps, label %do.end [
    i32 -1, label %sw.bb
    i32 10, label %sw.bb3
    i32 100, label %sw.bb7
    i32 1000, label %sw.bb11
    i32 2500, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %port_speed = getelementptr inbounds %struct.sja1105_info, ptr %8, i32 0, i32 31
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %info4 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %info4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info4, align 4
  %arrayidx6 = getelementptr %struct.sja1105_info, ptr %10, i32 0, i32 31, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %info8 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info8, align 4
  %arrayidx10 = getelementptr %struct.sja1105_info, ptr %12, i32 0, i32 31, i32 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %info12 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %13 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info12, align 4
  %arrayidx14 = getelementptr %struct.sja1105_info, ptr %14, i32 0, i32 31, i32 3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %info16 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %15 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info16, align 4
  %arrayidx18 = getelementptr %struct.sja1105_info, ptr %16, i32 0, i32 31, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %speed_mbps) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb
  %speed.0.in = phi ptr [ %arrayidx18, %sw.bb15 ], [ %arrayidx14, %sw.bb11 ], [ %arrayidx10, %sw.bb7 ], [ %arrayidx6, %sw.bb3 ], [ %port_speed, %sw.bb ]
  %arrayidx19 = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 %port
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %18, label %sw.epilog.if.end37_crit_edge [
    i32 4, label %if.then
    i32 22, label %if.then28
  ]

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %info20 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %20 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info20, align 4
  %arrayidx22 = getelementptr %struct.sja1105_info, ptr %21, i32 0, i32 31, i32 3
  br label %if.end37

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %info29 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %22 = ptrtoint ptr %info29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info29, align 4
  %arrayidx31 = getelementptr %struct.sja1105_info, ptr %23, i32 0, i32 31, i32 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.then, %sw.epilog.if.end37_crit_edge
  %arrayidx31.sink = phi ptr [ %arrayidx31, %if.then28 ], [ %arrayidx22, %if.then ], [ %speed.0.in, %sw.epilog.if.end37_crit_edge ]
  %24 = ptrtoint ptr %arrayidx31.sink to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx31.sink, align 8
  %speed33 = getelementptr %struct.sja1105_mac_config_entry, ptr %5, i32 %port, i32 4
  %26 = ptrtoint ptr %speed33 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %speed33, align 8
  %arrayidx38 = getelementptr %struct.sja1105_mac_config_entry, ptr %5, i32 %port
  %call = tail call i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx38, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp39 = icmp slt i32 %call, 0
  br i1 %cmp39, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19, align 4
  %29 = add i32 %28, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %if.end49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 @sja1105_clocking_setup_port(ptr noundef %priv, i32 noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end44.cleanup_crit_edge, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end43 ], [ %call50, %if.end49 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_do_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpcs_link_up(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_reload_cbs(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cbs = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %for.cond.preheader

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.cond.preheader:                               ; preds = %entry
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %num_cbs_shapers26 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_cbs_shapers26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cbs_shapers26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27 = icmp sgt i32 %5, 0
  br i1 %cmp27, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup10_crit_edge

for.cond.preheader.cleanup10_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cbs, align 8
  %arrayidx = getelementptr %struct.sja1105_cbs_entry, ptr %7, i32 %i.029
  %idle_slope = getelementptr %struct.sja1105_cbs_entry, ptr %7, i32 %i.029, i32 5
  %8 = ptrtoint ptr %idle_slope to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %idle_slope, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool3.not = icmp eq i64 %9, 0
  br i1 %tobool3.not, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %send_slope = getelementptr %struct.sja1105_cbs_entry, ptr %7, i32 %i.029, i32 4
  %10 = ptrtoint ptr %send_slope to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %send_slope, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool4.not = icmp eq i64 %11, 0
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call = tail call i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef 18, i32 noundef %i.029, ptr noundef %arrayidx, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.not = icmp eq i32 %call, 0
  br i1 %tobool7.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup10_crit_edge

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %num_cbs_shapers = getelementptr inbounds %struct.sja1105_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_cbs_shapers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cbs_shapers, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup10_crit_edge

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %cleanup.cleanup10_crit_edge, %for.cond.preheader.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ 0, %for.cond.preheader.cleanup10_crit_edge ], [ %call, %cleanup.cleanup10_crit_edge ], [ 0, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vlan_filtering(ptr noundef %ds, i32 %port, i1 noundef zeroext %enabled, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %flow_block, %entry ], [ %rule.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %rule.0 = load ptr, ptr %rule.0.in, align 8
  %cmp.not = icmp eq ptr %rule.0, %flow_block
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body:                                          ; preds = %for.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vlan_filtering.__msg) #10
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 16, i32 2
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries, align 4
  %conv = select i1 %enabled, i64 33024, i64 56027
  %tpid15 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %tpid15 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %tpid15, align 8
  %conv16 = select i1 %enabled, i64 34984, i64 56027
  %tpid217 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %6, i32 0, i32 19
  %8 = ptrtoint ptr %tpid217 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv16, ptr %tpid217, align 8
  %conv19 = zext i1 %enabled to i64
  %incl_srcpt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %incl_srcpt1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv19, ptr %incl_srcpt1, align 8
  %incl_srcpt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %6, i32 0, i32 9
  %10 = ptrtoint ptr %incl_srcpt0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv19, ptr %incl_srcpt0, align 8
  %entries25 = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 2
  %11 = ptrtoint ptr %entries25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entries25, align 4
  %lnot27 = xor i1 %enabled, true
  %13 = zext i1 %lnot27 to i64
  %shared_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %12, i32 0, i32 9
  %14 = ptrtoint ptr %shared_learn to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %shared_learn, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3087.not = icmp eq i32 %16, 0
  br i1 %cmp3087.not, label %for.end.for.end40_crit_edge, label %for.body32.lr.ph

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body32.lr.ph:                                 ; preds = %for.end
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body32

for.body32:                                       ; preds = %for.inc39.for.body32_crit_edge, %for.body32.lr.ph
  %port.addr.088 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc, %for.inc39.for.body32_crit_edge ]
  %17 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body32.dsa_is_unused_port.exit_crit_edge, label %for.body32.for.body.i.i_crit_edge

for.body32.for.body.i.i_crit_edge:                ; preds = %for.body32
  br label %for.body.i.i

for.body32.dsa_is_unused_port.exit_crit_edge:     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body32.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body32.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %20 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %21, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %port.addr.088)
  %cmp5.i.i = icmp eq i32 %23, %port.addr.088
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %24 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body32.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body32.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %dsa_is_unused_port.exit.for.inc39_crit_edge, label %if.end34

dsa_is_unused_port.exit.for.inc39_crit_edge:      ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.end34:                                         ; preds = %dsa_is_unused_port.exit
  %call35 = tail call fastcc i32 @sja1105_commit_pvid(ptr noundef %ds, i32 noundef %port.addr.088)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.for.inc39_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.for.inc39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

for.inc39:                                        ; preds = %if.end34.for.inc39_crit_edge, %dsa_is_unused_port.exit.for.inc39_crit_edge
  %inc = add nuw i32 %port.addr.088, 1
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  %cmp30 = icmp ult i32 %inc, %28
  br i1 %cmp30, label %for.inc39.for.body32_crit_edge, label %for.inc39.for.end40_crit_edge

for.inc39.for.end40_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.inc39.for.body32_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.end40:                                        ; preds = %for.inc39.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %call41 = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.end40.cleanup_crit_edge, label %do.body44

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body44:                                        ; preds = %for.end40
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vlan_filtering.__msg.14) #10
  %tobool46.not = icmp eq ptr %extack, null
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %do.body44.cleanup.sink.split_crit_edge

do.body44.cleanup.sink.split_crit_edge:           ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body44.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %sja1105_vlan_filtering.__msg.14.sink = phi ptr [ @sja1105_vlan_filtering.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @sja1105_vlan_filtering.__msg.14, %do.body44.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -16, %do.body.cleanup.sink.split_crit_edge ], [ %call41, %do.body44.cleanup.sink.split_crit_edge ]
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sja1105_vlan_filtering.__msg.14.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body44.cleanup_crit_edge, %for.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.body.cleanup_crit_edge ], [ %call41, %do.body44.cleanup_crit_edge ], [ 0, %for.end40.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call35, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_commit_pvid(ptr noundef readonly %ds, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.thread, label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit.thread:              ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %priv297 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %10 = ptrtoint ptr %priv297 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv297, align 4
  br label %if.else

dsa_port_bridge_dev_get.exit:                     ; preds = %dsa_to_port.exit
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %14 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.if.else_crit_edge, label %land.lhs.true

dsa_port_bridge_dev_get.exit.if.else_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %dsa_port_bridge_dev_get.exit
  %call3 = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %13) #10
  br i1 %call3, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.sja1105_private, ptr %15, i32 0, i32 12, i32 %port
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dsa_port_bridge_dev_get.exit.if.else_crit_edge, %dsa_port_bridge_dev_get.exit.thread
  %16 = phi ptr [ %11, %dsa_port_bridge_dev_get.exit.thread ], [ %15, %land.lhs.true.if.else_crit_edge ], [ %15, %dsa_port_bridge_dev_get.exit.if.else_crit_edge ]
  %priv2100 = phi ptr [ %priv297, %dsa_port_bridge_dev_get.exit.thread ], [ %priv2, %land.lhs.true.if.else_crit_edge ], [ %priv2, %dsa_port_bridge_dev_get.exit.if.else_crit_edge ]
  %arrayidx4 = getelementptr %struct.sja1105_private, ptr %16, i32 0, i32 13, i32 %port
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = phi ptr [ %15, %if.then ], [ %16, %if.else ]
  %priv299 = phi ptr [ %priv2, %if.then ], [ %priv2100, %if.else ]
  %pvid.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx4, %if.else ]
  %18 = ptrtoint ptr %pvid.0.in to i32
  call void @__asan_load2_noabort(i32 %18)
  %pvid.0 = load i16, ptr %pvid.0.in, align 2
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %17, i32 0, i32 1, i32 9, i32 2
  %19 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entries.i, align 4
  %vlanid.i = getelementptr %struct.sja1105_mac_config_entry, ptr %20, i32 %port, i32 9
  %21 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vlanid.i, align 8
  %conv.i = zext i16 %pvid.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv.i)
  %cmp.i = icmp eq i64 %22, %conv.i
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %sja1105_pvid_apply.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

sja1105_pvid_apply.exit:                          ; preds = %if.end
  %arrayidx1.i = getelementptr %struct.sja1105_mac_config_entry, ptr %20, i32 %port
  %23 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.i, ptr %vlanid.i, align 8
  %call.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %17, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx1.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %sja1105_pvid_apply.exit.if.end8_crit_edge, label %sja1105_pvid_apply.exit.cleanup_crit_edge

sja1105_pvid_apply.exit.cleanup_crit_edge:        ; preds = %sja1105_pvid_apply.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sja1105_pvid_apply.exit.if.end8_crit_edge:        ; preds = %sja1105_pvid_apply.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %sja1105_pvid_apply.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %arrayidx10 = getelementptr %struct.sja1105_private, ptr %17, i32 0, i32 12, i32 %port
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %pvid.0, i16 %25)
  %cmp = icmp eq i16 %pvid.0, %25
  br i1 %cmp, label %if.then13, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %if.end8
  %entries = getelementptr %struct.sja1105_static_config, ptr %17, i32 0, i32 1, i32 7, i32 2
  %26 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entries, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %17, i32 0, i32 1, i32 7, i32 1
  %28 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp13.i = icmp sgt i32 %29, 0
  br i1 %cmp13.i, label %if.then13.for.body.i67_crit_edge, label %if.then13.if.then21_crit_edge

if.then13.if.then21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then13.for.body.i67_crit_edge:                 ; preds = %if.then13
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i68.for.body.i67_crit_edge, %if.then13.for.body.i67_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i68.for.body.i67_crit_edge ], [ 0, %if.then13.for.body.i67_crit_edge ]
  %vlanid.i65 = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %27, i32 %i.014.i, i32 5
  %30 = ptrtoint ptr %vlanid.i65 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vlanid.i65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv.i)
  %cmp5.i66 = icmp eq i64 %31, %conv.i
  br i1 %cmp5.i66, label %lor.lhs.false, label %for.inc.i68

for.inc.i68:                                      ; preds = %for.body.i67
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.inc.i68.if.then21_crit_edge, label %for.inc.i68.for.body.i67_crit_edge

for.inc.i68.for.body.i67_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i67

for.inc.i68.if.then21_crit_edge:                  ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %for.body.i67
  %vmemb_port = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %27, i32 %i.014.i, i32 2
  %32 = ptrtoint ptr %vmemb_port to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vmemb_port, align 8
  %shl = shl nuw i32 1, %port
  %conv19 = zext i32 %shl to i64
  %and = and i64 %33, %conv19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %for.inc.i68.if.then21_crit_edge, %if.then13.if.then21_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.lhs.false.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %drop_untagged.0.off0 = phi i1 [ true, %if.then21 ], [ false, %lor.lhs.false.if.end23_crit_edge ], [ false, %if.end8.if.end23_crit_edge ]
  %34 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst1.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %if.end23.for.body.i.i_crit_edge

if.end23.for.body.i.i_crit_edge:                  ; preds = %if.end23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end23.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end23.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %37 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %38, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %39 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %port)
  %cmp5.i.i = icmp eq i32 %40, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %41 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i70 = icmp eq i32 %43, 1
  br i1 %cmp.i70, label %dsa_is_cpu_port.exit.if.then29_crit_edge, label %dsa_is_cpu_port.exit.for.body.i.i78_crit_edge

dsa_is_cpu_port.exit.for.body.i.i78_crit_edge:    ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i.i78

dsa_is_cpu_port.exit.if.then29_crit_edge:         ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

dsa_is_cpu_port.exit.thread:                      ; preds = %if.end23
  call void @__asan_load4_noabort(i32 24)
  %44 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i70107 = icmp eq i32 %44, 1
  br i1 %cmp.i70107, label %dsa_is_cpu_port.exit.thread.if.then29_crit_edge, label %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge

dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

dsa_is_cpu_port.exit.thread.if.then29_crit_edge:  ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

for.body.i.i78:                                   ; preds = %for.inc.i.i84.for.body.i.i78_crit_edge, %dsa_is_cpu_port.exit.for.body.i.i78_crit_edge
  %.pn22.i.i75 = phi ptr [ %.pn.i.i82, %for.inc.i.i84.for.body.i.i78_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i.i78_crit_edge ]
  %ds3.i.i76 = getelementptr i8, ptr %.pn22.i.i75, i32 -432
  %45 = ptrtoint ptr %ds3.i.i76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ds3.i.i76, align 4
  %cmp4.i.i77 = icmp eq ptr %46, %ds
  br i1 %cmp4.i.i77, label %land.lhs.true.i.i81, label %for.body.i.i78.for.inc.i.i84_crit_edge

for.body.i.i78.for.inc.i.i84_crit_edge:           ; preds = %for.body.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i84

land.lhs.true.i.i81:                              ; preds = %for.body.i.i78
  %index.i.i79 = getelementptr i8, ptr %.pn22.i.i75, i32 -428
  %47 = ptrtoint ptr %index.i.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index.i.i79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %port)
  %cmp5.i.i80 = icmp eq i32 %48, %port
  br i1 %cmp5.i.i80, label %cleanup.split.loop.exit18.i.i86, label %land.lhs.true.i.i81.for.inc.i.i84_crit_edge

land.lhs.true.i.i81.for.inc.i.i84_crit_edge:      ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i84

for.inc.i.i84:                                    ; preds = %land.lhs.true.i.i81.for.inc.i.i84_crit_edge, %for.body.i.i78.for.inc.i.i84_crit_edge
  %49 = ptrtoint ptr %.pn22.i.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i.i82 = load ptr, ptr %.pn22.i.i75, align 4
  %cmp.not.i.i83 = icmp eq ptr %.pn.i.i82, %ports.i.i
  br i1 %cmp.not.i.i83, label %for.inc.i.i84.dsa_is_dsa_port.exit_crit_edge, label %for.inc.i.i84.for.body.i.i78_crit_edge

for.inc.i.i84.for.body.i.i78_crit_edge:           ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i78

for.inc.i.i84.dsa_is_dsa_port.exit_crit_edge:     ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

cleanup.split.loop.exit18.i.i86:                  ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i85 = getelementptr i8, ptr %.pn22.i.i75, i32 -448
  br label %dsa_is_dsa_port.exit

dsa_is_dsa_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i86, %for.inc.i.i84.dsa_is_dsa_port.exit_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge
  %retval.0.i.i87 = phi ptr [ %dp.0.le.i.i85, %cleanup.split.loop.exit18.i.i86 ], [ null, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge ], [ null, %for.inc.i.i84.dsa_is_dsa_port.exit_crit_edge ]
  %type.i88 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i87, i32 0, i32 6
  %50 = ptrtoint ptr %type.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp.i89 = icmp eq i32 %51, 2
  br i1 %cmp.i89, label %dsa_is_dsa_port.exit.if.then29_crit_edge, label %dsa_is_dsa_port.exit.if.end30_crit_edge

dsa_is_dsa_port.exit.if.end30_crit_edge:          ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

dsa_is_dsa_port.exit.if.then29_crit_edge:         ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %dsa_is_dsa_port.exit.if.then29_crit_edge, %dsa_is_cpu_port.exit.thread.if.then29_crit_edge, %dsa_is_cpu_port.exit.if.then29_crit_edge
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %dsa_is_dsa_port.exit.if.end30_crit_edge
  %drop_untagged.1.off0 = phi i1 [ true, %if.then29 ], [ %drop_untagged.0.off0, %dsa_is_dsa_port.exit.if.end30_crit_edge ]
  %52 = ptrtoint ptr %priv299 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv299, align 4
  %entries.i90 = getelementptr %struct.sja1105_static_config, ptr %53, i32 0, i32 1, i32 9, i32 2
  %54 = ptrtoint ptr %entries.i90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries.i90, align 4
  %drpuntag.i = getelementptr %struct.sja1105_mac_config_entry, ptr %55, i32 %port, i32 14
  %56 = ptrtoint ptr %drpuntag.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %drpuntag.i, align 8
  %conv.i91 = zext i1 %drop_untagged.1.off0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv.i91)
  %cmp.i92 = icmp eq i64 %57, %conv.i91
  br i1 %cmp.i92, label %if.end30.cleanup_crit_edge, label %if.end.i94

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i94:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i = getelementptr %struct.sja1105_mac_config_entry, ptr %55, i32 %port
  %58 = ptrtoint ptr %drpuntag.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv.i91, ptr %drpuntag.i, align 8
  %call.i93 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %53, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx2.i, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i94, %if.end30.cleanup_crit_edge, %sja1105_pvid_apply.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sja1105_pvid_apply.exit.cleanup_crit_edge ], [ %call.i93, %if.end.i94 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sja1105_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sja1105_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_table_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_clocking_setup_port(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.51, i32 noundef 7) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sja1105_hw_reset.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end4_crit_edge, label %if.end4.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 1) #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 1) #10
  tail call void @gpiod_put(ptr noundef nonnull %call.i) #10
  br label %if.end4

sja1105_hw_reset.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end4.i, %if.end.i.if.end4_crit_edge
  %call.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1504, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i147, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 10
  %3 = ptrtoint ptr %spidev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spidev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i147, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %bits_per_word, align 1
  %call9 = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %6 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller.i, align 8
  %max_message_size.i.i = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %max_message_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %max_message_size.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end14.spi_max_message_size.exit.i_crit_edge, label %if.end.i.i

if.end14.spi_max_message_size.exit.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_max_message_size.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %9(ptr noundef %spi) #10
  br label %spi_max_message_size.exit.i

spi_max_message_size.exit.i:                      ; preds = %if.end.i.i, %if.end14.spi_max_message_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.i ], [ -1, %if.end14.spi_max_message_size.exit.i_crit_edge ]
  %max_transfer_size.i = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %max_transfer_size.i, align 8
  %tobool.not.i148 = icmp eq ptr %11, null
  br i1 %tobool.not.i148, label %spi_max_message_size.exit.i.spi_max_transfer_size.exit_crit_edge, label %if.then.i149

spi_max_message_size.exit.i.spi_max_transfer_size.exit_crit_edge: ; preds = %spi_max_message_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_max_transfer_size.exit

if.then.i149:                                     ; preds = %spi_max_message_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 %11(ptr noundef %spi) #10
  br label %spi_max_transfer_size.exit

spi_max_transfer_size.exit:                       ; preds = %if.then.i149, %spi_max_message_size.exit.i.spi_max_transfer_size.exit_crit_edge
  %tr_max.0.i = phi i32 [ %call2.i, %if.then.i149 ], [ -1, %spi_max_message_size.exit.i.spi_max_transfer_size.exit_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %tr_max.0.i, i32 %retval.0.i.i) #10
  %13 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller.i, align 8
  %max_message_size.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %max_message_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %max_message_size.i, align 4
  %tobool.not.i152 = icmp eq ptr %16, null
  br i1 %tobool.not.i152, label %spi_max_transfer_size.exit.if.end22_crit_edge, label %spi_max_message_size.exit

spi_max_transfer_size.exit.if.end22_crit_edge:    ; preds = %spi_max_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

spi_max_message_size.exit:                        ; preds = %spi_max_transfer_size.exit
  %call.i153 = tail call i32 %16(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i153)
  %cmp17 = icmp ult i32 %call.i153, 12
  br i1 %cmp17, label %do.end21, label %spi_max_message_size.exit.if.end22_crit_edge

spi_max_message_size.exit.if.end22_crit_edge:     ; preds = %spi_max_message_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end21:                                         ; preds = %spi_max_message_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end22:                                         ; preds = %spi_max_message_size.exit.if.end22_crit_edge, %spi_max_transfer_size.exit.if.end22_crit_edge
  %retval.0.i155163 = phi i32 [ %call.i153, %spi_max_message_size.exit.if.end22_crit_edge ], [ -1, %spi_max_transfer_size.exit.if.end22_crit_edge ]
  %max_xfer_len = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 9
  %sub = add i32 %retval.0.i155163, -4
  %17 = tail call i32 @llvm.umin.i32(i32 %12, i32 %sub)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 256)
  %19 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_xfer_len, align 8
  %call34 = tail call ptr @of_device_get_match_data(ptr noundef %spi) #10
  %info = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 8
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call34, ptr %info, align 4
  %call35 = tail call fastcc i32 @sja1105_check_device_id(ptr noundef nonnull %call.i147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %do.end44

do.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.36, i32 noundef %call35) #13
  br label %cleanup

do.end44:                                         ; preds = %if.end22
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %name = getelementptr inbounds %struct.sja1105_info, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.39, ptr noundef %24) #13
  %call.i156 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 84, i32 noundef 3520) #10
  %tobool47.not = icmp eq ptr %call.i156, null
  br i1 %tobool47.not, label %do.end44.cleanup_crit_edge, label %if.end49

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %do.end44
  %25 = ptrtoint ptr %call.i156 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spi, ptr %call.i156, align 4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %num_ports = getelementptr inbounds %struct.sja1105_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_ports, align 8
  %num_ports52 = getelementptr inbounds %struct.dsa_switch, ptr %call.i156, i32 0, i32 18
  %30 = ptrtoint ptr %num_ports52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_ports52, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call.i156, i32 0, i32 8
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sja1105_switch_ops, ptr %ops, align 4
  %priv53 = getelementptr inbounds %struct.dsa_switch, ptr %call.i156, i32 0, i32 5
  %32 = ptrtoint ptr %priv53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i147, ptr %priv53, align 4
  %ds54 = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 11
  %33 = ptrtoint ptr %ds54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i156, ptr %ds54, align 8
  %lock = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 25, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @sja1105_probe.__key) #10
  %dynamic_config_lock = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %dynamic_config_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @sja1105_probe.__key.42) #10
  %mgmt_lock = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %mgmt_lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @sja1105_probe.__key.44) #10
  %ts_id_lock = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %ts_id_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @sja1105_probe.__key.46, i16 noundef signext 3) #10
  %call68 = tail call fastcc i32 @sja1105_parse_dt(ptr noundef nonnull %call.i147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call.i156 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i156, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef %call68) #13
  br label %cleanup

if.end75:                                         ; preds = %if.end49
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %num_cbs_shapers = getelementptr inbounds %struct.sja1105_info, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %num_cbs_shapers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_cbs_shapers, align 8
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 48) #10
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !330

devm_kcalloc.exit.thread:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %cbs165 = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 20
  %42 = ptrtoint ptr %cbs165 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cbs165, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end75
  %43 = extractvalue { i32, i1 } %40, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %43, i32 noundef 3520) #10
  %cbs = getelementptr inbounds %struct.sja1105_private, ptr %call.i147, i32 0, i32 20
  %44 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i, ptr %cbs, align 8
  %tobool79.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool79.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end81

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end81:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %ds54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ds54, align 8
  %call83 = tail call i32 @dsa_register_switch(ptr noundef %46) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end73, %do.end44.cleanup_crit_edge, %do.end40, %do.end21, %do.end13, %if.end4.cleanup_crit_edge, %sja1105_hw_reset.exit, %do.end
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ -22, %do.end21 ], [ %call35, %do.end40 ], [ %call68, %do.end73 ], [ %call83, %if.end81 ], [ -22, %do.end ], [ %2, %sja1105_hw_reset.exit ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %do.end44.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_remove(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 8
  tail call void @dsa_unregister_switch(ptr noundef %3) #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_shutdown(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 8
  tail call void @dsa_switch_shutdown(ptr noundef %3) #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_check_device_id(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %prod_id = alloca [4 x i8], align 4
  %device_id = alloca i32, align 4
  %part_no = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prod_id) #10
  %4 = ptrtoint ptr %prod_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prod_id, align 4
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 10
  %5 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spidev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id) #10
  %7 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %device_id, align 4, !annotation !328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %part_no) #10
  %8 = ptrtoint ptr %part_no to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %part_no, align 8, !annotation !328
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %3, align 8
  %call = call i32 @sja1105_xfer_u32(ptr noundef %priv, i32 noundef 0, i64 noundef %10, ptr noundef nonnull %device_id, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

if.end:                                           ; preds = %entry
  %prod_id4 = getelementptr inbounds %struct.sja1105_regs, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prod_id4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %prod_id4, align 8
  %call5 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 0, i64 noundef %12, ptr noundef nonnull %prod_id, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup37_crit_edge, label %if.end8

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

if.end8:                                          ; preds = %if.end
  call void @sja1105_unpack(ptr noundef nonnull %prod_id, ptr noundef nonnull %part_no, i32 noundef 19, i32 noundef 4, i32 noundef 4) #10
  %13 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_id, align 4
  %conv = zext i32 %14 to i64
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105e_info to i32))
  %15 = load i64, ptr @sja1105e_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp12.not = icmp eq i64 %15, %conv
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105e_info, i32 0, i32 1) to i32))
  %16 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105e_info, i32 0, i32 1), align 8
  %17 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp15.not = icmp eq i64 %16, %18
  br i1 %cmp15.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false.9.if.end18_crit_edge, %lor.lhs.false.8.if.end18_crit_edge, %lor.lhs.false.7.if.end18_crit_edge, %lor.lhs.false.6.if.end18_crit_edge, %lor.lhs.false.5.if.end18_crit_edge, %lor.lhs.false.4.if.end18_crit_edge, %lor.lhs.false.3.if.end18_crit_edge, %lor.lhs.false.2.if.end18_crit_edge, %lor.lhs.false.1.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %.lcssa64 = phi ptr [ @sja1105e_info, %lor.lhs.false.if.end18_crit_edge ], [ @sja1105t_info, %lor.lhs.false.1.if.end18_crit_edge ], [ @sja1105p_info, %lor.lhs.false.2.if.end18_crit_edge ], [ @sja1105q_info, %lor.lhs.false.3.if.end18_crit_edge ], [ @sja1105r_info, %lor.lhs.false.4.if.end18_crit_edge ], [ @sja1105s_info, %lor.lhs.false.5.if.end18_crit_edge ], [ @sja1110a_info, %lor.lhs.false.6.if.end18_crit_edge ], [ @sja1110b_info, %lor.lhs.false.7.if.end18_crit_edge ], [ @sja1110c_info, %lor.lhs.false.8.if.end18_crit_edge ], [ @sja1110d_info, %lor.lhs.false.9.if.end18_crit_edge ]
  %.lcssa = phi i64 [ %16, %lor.lhs.false.if.end18_crit_edge ], [ %31, %lor.lhs.false.1.if.end18_crit_edge ], [ %35, %lor.lhs.false.2.if.end18_crit_edge ], [ %39, %lor.lhs.false.3.if.end18_crit_edge ], [ %43, %lor.lhs.false.4.if.end18_crit_edge ], [ %47, %lor.lhs.false.5.if.end18_crit_edge ], [ %51, %lor.lhs.false.6.if.end18_crit_edge ], [ %55, %lor.lhs.false.7.if.end18_crit_edge ], [ %59, %lor.lhs.false.8.if.end18_crit_edge ], [ %63, %lor.lhs.false.9.if.end18_crit_edge ]
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv)
  %cmp22.not = icmp eq i64 %22, %conv
  br i1 %cmp22.not, label %lor.lhs.false24, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false24:                                  ; preds = %if.end18
  %part_no26 = getelementptr inbounds %struct.sja1105_info, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %part_no26 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %part_no26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %.lcssa)
  %cmp27.not = icmp eq i64 %24, %.lcssa
  br i1 %cmp27.not, label %lor.lhs.false24.cleanup37_crit_edge, label %lor.lhs.false24.do.end_crit_edge

lor.lhs.false24.do.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false24.cleanup37_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

do.end:                                           ; preds = %lor.lhs.false24.do.end_crit_edge, %if.end18.do.end_crit_edge
  %name = getelementptr inbounds %struct.sja1105_info, ptr %20, i32 0, i32 24
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  %name31 = getelementptr inbounds %struct.sja1105_info, ptr %.lcssa64, i32 0, i32 24
  %27 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name31, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.52, ptr noundef %26, ptr noundef %28) #13
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.lcssa64, ptr %info, align 4
  br label %cleanup37

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.end8.for.inc_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105t_info to i32))
  %30 = load i64, ptr @sja1105t_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv)
  %cmp12.not.1 = icmp eq i64 %30, %conv
  br i1 %cmp12.not.1, label %lor.lhs.false.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105t_info, i32 0, i32 1) to i32))
  %31 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105t_info, i32 0, i32 1), align 8
  %32 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp15.not.1 = icmp eq i64 %31, %33
  br i1 %cmp15.not.1, label %lor.lhs.false.1.if.end18_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

lor.lhs.false.1.if.end18_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.1:                                        ; preds = %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105p_info to i32))
  %34 = load i64, ptr @sja1105p_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv)
  %cmp12.not.2 = icmp eq i64 %34, %conv
  br i1 %cmp12.not.2, label %lor.lhs.false.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105p_info, i32 0, i32 1) to i32))
  %35 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105p_info, i32 0, i32 1), align 8
  %36 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp15.not.2 = icmp eq i64 %35, %37
  br i1 %cmp15.not.2, label %lor.lhs.false.2.if.end18_crit_edge, label %lor.lhs.false.2.for.inc.2_crit_edge

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

lor.lhs.false.2.if.end18_crit_edge:               ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.2:                                        ; preds = %lor.lhs.false.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105q_info to i32))
  %38 = load i64, ptr @sja1105q_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %conv)
  %cmp12.not.3 = icmp eq i64 %38, %conv
  br i1 %cmp12.not.3, label %lor.lhs.false.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105q_info, i32 0, i32 1) to i32))
  %39 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105q_info, i32 0, i32 1), align 8
  %40 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp15.not.3 = icmp eq i64 %39, %41
  br i1 %cmp15.not.3, label %lor.lhs.false.3.if.end18_crit_edge, label %lor.lhs.false.3.for.inc.3_crit_edge

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

lor.lhs.false.3.if.end18_crit_edge:               ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.3:                                        ; preds = %lor.lhs.false.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105r_info to i32))
  %42 = load i64, ptr @sja1105r_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv)
  %cmp12.not.4 = icmp eq i64 %42, %conv
  br i1 %cmp12.not.4, label %lor.lhs.false.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105r_info, i32 0, i32 1) to i32))
  %43 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105r_info, i32 0, i32 1), align 8
  %44 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp15.not.4 = icmp eq i64 %43, %45
  br i1 %cmp15.not.4, label %lor.lhs.false.4.if.end18_crit_edge, label %lor.lhs.false.4.for.inc.4_crit_edge

lor.lhs.false.4.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

lor.lhs.false.4.if.end18_crit_edge:               ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.4:                                        ; preds = %lor.lhs.false.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1105s_info to i32))
  %46 = load i64, ptr @sja1105s_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %conv)
  %cmp12.not.5 = icmp eq i64 %46, %conv
  br i1 %cmp12.not.5, label %lor.lhs.false.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

lor.lhs.false.5:                                  ; preds = %for.inc.4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105s_info, i32 0, i32 1) to i32))
  %47 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1105s_info, i32 0, i32 1), align 8
  %48 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp15.not.5 = icmp eq i64 %47, %49
  br i1 %cmp15.not.5, label %lor.lhs.false.5.if.end18_crit_edge, label %lor.lhs.false.5.for.inc.5_crit_edge

lor.lhs.false.5.for.inc.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

lor.lhs.false.5.if.end18_crit_edge:               ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.5:                                        ; preds = %lor.lhs.false.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1110a_info to i32))
  %50 = load i64, ptr @sja1110a_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv)
  %cmp12.not.6 = icmp eq i64 %50, %conv
  br i1 %cmp12.not.6, label %lor.lhs.false.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

lor.lhs.false.6:                                  ; preds = %for.inc.5
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110a_info, i32 0, i32 1) to i32))
  %51 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110a_info, i32 0, i32 1), align 8
  %52 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %53)
  %cmp15.not.6 = icmp eq i64 %51, %53
  br i1 %cmp15.not.6, label %lor.lhs.false.6.if.end18_crit_edge, label %lor.lhs.false.6.for.inc.6_crit_edge

lor.lhs.false.6.for.inc.6_crit_edge:              ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

lor.lhs.false.6.if.end18_crit_edge:               ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.6:                                        ; preds = %lor.lhs.false.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1110b_info to i32))
  %54 = load i64, ptr @sja1110b_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %conv)
  %cmp12.not.7 = icmp eq i64 %54, %conv
  br i1 %cmp12.not.7, label %lor.lhs.false.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

lor.lhs.false.7:                                  ; preds = %for.inc.6
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110b_info, i32 0, i32 1) to i32))
  %55 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110b_info, i32 0, i32 1), align 8
  %56 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %57)
  %cmp15.not.7 = icmp eq i64 %55, %57
  br i1 %cmp15.not.7, label %lor.lhs.false.7.if.end18_crit_edge, label %lor.lhs.false.7.for.inc.7_crit_edge

lor.lhs.false.7.for.inc.7_crit_edge:              ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

lor.lhs.false.7.if.end18_crit_edge:               ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.7:                                        ; preds = %lor.lhs.false.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1110c_info to i32))
  %58 = load i64, ptr @sja1110c_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %conv)
  %cmp12.not.8 = icmp eq i64 %58, %conv
  br i1 %cmp12.not.8, label %lor.lhs.false.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

lor.lhs.false.8:                                  ; preds = %for.inc.7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110c_info, i32 0, i32 1) to i32))
  %59 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110c_info, i32 0, i32 1), align 8
  %60 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %61)
  %cmp15.not.8 = icmp eq i64 %59, %61
  br i1 %cmp15.not.8, label %lor.lhs.false.8.if.end18_crit_edge, label %lor.lhs.false.8.for.inc.8_crit_edge

lor.lhs.false.8.for.inc.8_crit_edge:              ; preds = %lor.lhs.false.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

lor.lhs.false.8.if.end18_crit_edge:               ; preds = %lor.lhs.false.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.8:                                        ; preds = %lor.lhs.false.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @sja1110d_info to i32))
  %62 = load i64, ptr @sja1110d_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv)
  %cmp12.not.9 = icmp eq i64 %62, %conv
  br i1 %cmp12.not.9, label %lor.lhs.false.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9

lor.lhs.false.9:                                  ; preds = %for.inc.8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110d_info, i32 0, i32 1) to i32))
  %63 = load i64, ptr getelementptr inbounds (%struct.sja1105_info, ptr @sja1110d_info, i32 0, i32 1), align 8
  %64 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %part_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %65)
  %cmp15.not.9 = icmp eq i64 %63, %65
  br i1 %cmp15.not.9, label %lor.lhs.false.9.if.end18_crit_edge, label %lor.lhs.false.9.for.inc.9_crit_edge

lor.lhs.false.9.for.inc.9_crit_edge:              ; preds = %lor.lhs.false.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9

lor.lhs.false.9.if.end18_crit_edge:               ; preds = %lor.lhs.false.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.inc.9:                                        ; preds = %lor.lhs.false.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %66 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_id, align 4
  %68 = ptrtoint ptr %part_no to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %part_no, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.55, i32 noundef %67, i64 noundef %69) #13
  br label %cleanup37

cleanup37:                                        ; preds = %for.inc.9, %do.end, %lor.lhs.false24.cleanup37_crit_edge, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ -19, %for.inc.9 ], [ %call, %entry.cleanup37_crit_edge ], [ %call5, %if.end.cleanup37_crit_edge ], [ 0, %lor.lhs.false24.cleanup37_crit_edge ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %part_no) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prod_id) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_parse_dt(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %rx_delay.i.i = alloca i32, align 4
  %tx_delay.i.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %phy_mode.i = alloca i32, align 4
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spidev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.136) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.137) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.138) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ports_node.018 = phi ptr [ %call2, %if.end.if.end5_crit_edge ], [ %call, %entry.if.end5_crit_edge ]
  %4 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spidev, align 4
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %ports_node.018, ptr noundef null) #10
  %cmp.not70.i = icmp eq ptr %call.i, null
  br i1 %cmp.not70.i, label %if.end5.sja1105_parse_ports_node.exit_crit_edge, label %for.body.lr.ph.i

if.end5.sja1105_parse_ports_node.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_parse_ports_node.exit

for.body.lr.ph.i:                                 ; preds = %if.end5
  %info.i.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.071.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call29.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode.i) #10
  %6 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %phy_mode.i, align 4, !annotation !328
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #10
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %index.i, align 4, !annotation !328
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.071.i, ptr noundef nonnull @.str.140, ptr noundef nonnull %index.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.141) #13
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %for.body.i
  %call4.i = call i32 @of_get_phy_mode(ptr noundef nonnull %child.071.i, ptr noundef nonnull %phy_mode.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.144, i32 noundef %9) #13
  br label %cleanup.thread.i

if.end9.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %10 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.071.i, ptr noundef nonnull @.str.146, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  br label %if.then12.i

of_parse_phandle.exit.i:                          ; preds = %if.end9.i
  %11 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  %tobool11.not.i = icmp eq ptr %12, null
  br i1 %tobool11.not.i, label %of_parse_phandle.exit.i.if.then12.i_crit_edge, label %if.else.i

of_parse_phandle.exit.i.if.then12.i_crit_edge:    ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %of_parse_phandle.exit.i.if.then12.i_crit_edge, %of_parse_phandle.exit.thread.i
  %call13.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %child.071.i) #10
  br i1 %call13.i, label %if.end18.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.148) #13
  br label %cleanup.thread.i

if.end18.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 4, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.i, align 1
  br label %if.end19.i

if.else.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %12) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.end18.i
  %16 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_mode.i, align 4
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %arrayidx21.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %arrayidx21.i, align 4
  %21 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spidev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_delay.i.i) #10
  %23 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %rx_delay.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_delay.i.i) #10
  %24 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %tx_delay.i.i, align 4
  %25 = add i32 %17, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %if.end.i51.i, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i51.i:                                     ; preds = %if.end19.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.071.i, ptr noundef nonnull @.str.150, ptr noundef nonnull %rx_delay.i.i, i32 noundef 1, i32 noundef 0) #10
  %call.i.i77.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.071.i, ptr noundef nonnull @.str.151, ptr noundef nonnull %tx_delay.i.i, i32 noundef 1, i32 noundef 0) #10
  %27 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.i = icmp eq i32 %28, -1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i51.i.if.end18.i.i_crit_edge

if.end.i51.i.if.end18.i.i_crit_edge:              ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i51.i
  %29 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp5.i.i = icmp eq i32 %30, -1
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.then20.i.i_crit_edge

land.lhs.true.i.i.if.then20.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx7.i.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 4, i32 %19
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i52.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i52.i, label %land.lhs.true6.i.i.if.end18thread-pre-split.i.i_crit_edge, label %do.end.i.i

land.lhs.true6.i.i.if.end18thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18thread-pre-split.i.i

do.end.i.i:                                       ; preds = %land.lhs.true6.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.152, i32 noundef %19) #13
  %33 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %17, label %do.end.i.i.if.end18thread-pre-split.i.i_crit_edge [
    i32 11, label %do.end.i.i.if.then11.i.i_crit_edge
    i32 10, label %do.end.i.i.if.then11.i.i_crit_edge91
    i32 12, label %do.end.i.i.if.then16.i.i_crit_edge
  ]

do.end.i.i.if.then16.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i.i

do.end.i.i.if.then11.i.i_crit_edge91:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

do.end.i.i.if.then11.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

do.end.i.i.if.end18thread-pre-split.i.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18thread-pre-split.i.i

if.then11.i.i:                                    ; preds = %do.end.i.i.if.then11.i.i_crit_edge, %do.end.i.i.if.then11.i.i_crit_edge91
  %34 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2000, ptr %rx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cond.i.i = icmp eq i32 %17, 10
  br i1 %cond.i.i, label %if.then11.i.i.if.then16.i.i_crit_edge, label %if.then11.i.i.if.end21.i.i_crit_edge

if.then11.i.i.if.end21.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i.i

if.then11.i.i.if.then16.i.i_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.then11.i.i.if.then16.i.i_crit_edge, %do.end.i.i.if.then16.i.i_crit_edge
  %35 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2000, ptr %tx_delay.i.i, align 4
  br label %if.end18thread-pre-split.i.i

if.end18thread-pre-split.i.i:                     ; preds = %if.then16.i.i, %do.end.i.i.if.end18thread-pre-split.i.i_crit_edge, %land.lhs.true6.i.i.if.end18thread-pre-split.i.i_crit_edge
  %36 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i.i = load i32, ptr %rx_delay.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end18thread-pre-split.i.i, %if.end.i51.i.if.end18.i.i_crit_edge
  %37 = phi i32 [ %.pr.i.i, %if.end18thread-pre-split.i.i ], [ %28, %if.end.i51.i.if.end18.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp19.i.i = icmp slt i32 %37, 0
  br i1 %cmp19.i.i, label %if.end18.i.i.if.then20.i.i_crit_edge, label %if.end18.i.i.if.end21.i.i_crit_edge

if.end18.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i.i

if.end18.i.i.if.then20.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.end18.i.i.if.then20.i.i_crit_edge, %land.lhs.true.i.i.if.then20.i.i_crit_edge
  %38 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rx_delay.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then20.i.i, %if.end18.i.i.if.end21.i.i_crit_edge, %if.then11.i.i.if.end21.i.i_crit_edge
  %39 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp22.i.i = icmp slt i32 %40, 0
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.end21.i.i.if.end24.i.i_crit_edge

if.end21.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tx_delay.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then23.i.i, %if.end21.i.i.if.end24.i.i_crit_edge
  %42 = ptrtoint ptr %rx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool25.not.i.i, label %lor.lhs.false26.i.i, label %if.end24.i.i.land.lhs.true28.i.i_crit_edge

if.end24.i.i.land.lhs.true28.i.i_crit_edge:       ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true28.i.i

lor.lhs.false26.i.i:                              ; preds = %if.end24.i.i
  %44 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool27.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false26.i.i.if.end50.i.i_crit_edge, label %lor.lhs.false26.i.i.land.lhs.true28.i.i_crit_edge

lor.lhs.false26.i.i.land.lhs.true28.i.i_crit_edge: ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true28.i.i

lor.lhs.false26.i.i.if.end50.i.i_crit_edge:       ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i.i

land.lhs.true28.i.i:                              ; preds = %lor.lhs.false26.i.i.land.lhs.true28.i.i_crit_edge, %if.end24.i.i.land.lhs.true28.i.i_crit_edge
  %46 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info.i.i, align 4
  %setup_rgmii_delay.i.i = getelementptr inbounds %struct.sja1105_info, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %setup_rgmii_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %setup_rgmii_delay.i.i, align 8
  %tobool29.not.i.i = icmp eq ptr %49, null
  br i1 %tobool29.not.i.i, label %do.end33.i.i, label %if.end34.i.i

do.end33.i.i:                                     ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.155) #13
  br label %if.then24.i

if.end34.i.i:                                     ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not.i.i = icmp ne i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1640, i32 %43)
  %cmp37.i.i = icmp slt i32 %43, 1640
  %or.cond.i.i = and i1 %tobool35.not.i.i, %cmp37.i.i
  br i1 %or.cond.i.i, label %if.end34.i.i.do.end49.i.i_crit_edge, label %lor.lhs.false38.i.i

if.end34.i.i.do.end49.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49.i.i

lor.lhs.false38.i.i:                              ; preds = %if.end34.i.i
  %50 = ptrtoint ptr %tx_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool39.not.i.i = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1640, i32 %51)
  %cmp41.i.i = icmp slt i32 %51, 1640
  %or.cond76.i.i = and i1 %tobool39.not.i.i, %cmp41.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2260, i32 %43)
  %cmp43.i.i = icmp ugt i32 %43, 2260
  %or.cond88.i.i = select i1 %or.cond76.i.i, i1 true, i1 %cmp43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2260, i32 %51)
  %cmp45.i.i = icmp ugt i32 %51, 2260
  %or.cond.i = select i1 %or.cond88.i.i, i1 true, i1 %cmp45.i.i
  br i1 %or.cond.i, label %lor.lhs.false38.i.i.do.end49.i.i_crit_edge, label %lor.lhs.false38.i.i.if.end50.i.i_crit_edge

lor.lhs.false38.i.i.if.end50.i.i_crit_edge:       ; preds = %lor.lhs.false38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i.i

lor.lhs.false38.i.i.do.end49.i.i_crit_edge:       ; preds = %lor.lhs.false38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %lor.lhs.false38.i.i.do.end49.i.i_crit_edge, %if.end34.i.i.do.end49.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.158, i32 noundef %19, i32 noundef 1640, i32 noundef 2260) #13
  br label %if.then24.i

if.end50.i.i:                                     ; preds = %lor.lhs.false38.i.i.if.end50.i.i_crit_edge, %lor.lhs.false26.i.i.if.end50.i.i_crit_edge
  %52 = phi i32 [ 0, %lor.lhs.false26.i.i.if.end50.i.i_crit_edge ], [ %51, %lor.lhs.false38.i.i.if.end50.i.i_crit_edge ]
  %arrayidx51.i.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 1, i32 %19
  %53 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %43, ptr %arrayidx51.i.i, align 4
  %arrayidx52.i.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 2, i32 %19
  %54 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %arrayidx52.i.i, align 4
  br label %for.inc.i

if.then24.i:                                      ; preds = %do.end49.i.i, %do.end33.i.i
  %retval.0.i53.i = phi i32 [ -34, %do.end49.i.i ], [ -22, %do.end33.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay.i.i) #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then24.i, %do.end17.i, %do.end8.i, %do.end.i
  %retval.1.ph.i = phi i32 [ -19, %do.end.i ], [ -19, %do.end8.i ], [ %retval.0.i53.i, %if.then24.i ], [ -19, %do.end17.i ]
  call void @of_node_put(ptr noundef nonnull %child.071.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #10
  br label %sja1105_parse_ports_node.exit

for.inc.i:                                        ; preds = %if.end50.i.i, %if.end19.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #10
  %call29.i = call ptr @of_get_next_available_child(ptr noundef %ports_node.018, ptr noundef nonnull %child.071.i) #10
  %cmp.not.i = icmp eq ptr %call29.i, null
  br i1 %cmp.not.i, label %for.inc.i.sja1105_parse_ports_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.sja1105_parse_ports_node.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_parse_ports_node.exit

sja1105_parse_ports_node.exit:                    ; preds = %for.inc.i.sja1105_parse_ports_node.exit_crit_edge, %cleanup.thread.i, %if.end5.sja1105_parse_ports_node.exit_crit_edge
  %retval.2.i = phi i32 [ %retval.1.ph.i, %cleanup.thread.i ], [ 0, %if.end5.sja1105_parse_ports_node.exit_crit_edge ], [ 0, %for.inc.i.sja1105_parse_ports_node.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %ports_node.018) #10
  br label %cleanup

cleanup:                                          ; preds = %sja1105_parse_ports_node.exit, %do.end
  %retval.0 = phi i32 [ %retval.2.i, %sja1105_parse_ports_node.exit ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u32(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sja1105_get_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tag_proto = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag_proto, align 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_connect_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %proto) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tag_proto = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag_proto, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %proto)
  %cmp.not = icmp eq i32 %5, %proto
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proto.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %11, label %do.body6.i [
    i32 23, label %if.end.sja1105_tagger_data.exit_crit_edge
    i32 13, label %if.end.sja1105_tagger_data.exit_crit_edge5
  ]

if.end.sja1105_tagger_data.exit_crit_edge5:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit

if.end.sja1105_tagger_data.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit

do.body6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #10, !srcloc !331
  unreachable

sja1105_tagger_data.exit:                         ; preds = %if.end.sja1105_tagger_data.exit_crit_edge, %if.end.sja1105_tagger_data.exit_crit_edge5
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %13 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tagger_data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sja1105_port_deferred_xmit, ptr %14, align 4
  %meta_tstamp_handler = getelementptr inbounds %struct.sja1105_tagger_data, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %meta_tstamp_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sja1110_process_meta_tstamp, ptr %meta_tstamp_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %sja1105_tagger_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sja1105_tagger_data.exit ], [ -93, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_setup(ptr noundef %ds) #2 align 64 {
entry:
  %default_l2_lookup_params.i.i = alloca %struct.sja1105_l2_lookup_params_entry, align 8
  %default_mac.sroa.0.i.i = alloca { [8 x i64], [8 x i64], [8 x i64] }, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %disable_microcontroller = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %disable_microcontroller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_microcontroller, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds, align 4
  %8 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull %8) #13
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @sja1105_static_config_free(ptr noundef %1) #10
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %static_ops.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %static_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %static_ops.i, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  %call.i = tail call i32 @sja1105_static_config_init(ptr noundef %1, ptr noundef %12, i64 noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.sja1105_static_config_load.exit_crit_edge

if.end6.sja1105_static_config_load.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_static_config_load.exit

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %default_mac.sroa.0.i.i)
  %15 = call ptr @memcpy(ptr %default_mac.sroa.0.i.i, ptr @constinit, i32 64)
  %default_mac.sroa.0.64.base.sroa_idx.i.i = getelementptr inbounds i8, ptr %default_mac.sroa.0.i.i, i32 64
  %16 = call ptr @memcpy(ptr %default_mac.sroa.0.64.base.sroa_idx.i.i, ptr @constinit.77, i32 64)
  %default_mac.sroa.0.128.enabled.sroa_idx.i.i = getelementptr inbounds i8, ptr %default_mac.sroa.0.i.i, i32 128
  %17 = call ptr @memcpy(ptr %default_mac.sroa.0.128.enabled.sroa_idx.i.i, ptr @constinit.78, i32 64)
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %port_speed.i.i = getelementptr inbounds %struct.sja1105_info, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %port_speed.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port_speed.i.i, align 8
  %ds3.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds3.i.i, align 8
  %arrayidx4.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9
  %entry_count.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 1
  %24 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %26 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entries.i.i, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %entry_count.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4.i.i, align 4
  %max_entry_count.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %max_entry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_entry_count.i.i, align 4
  %unpacked_entry_size.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %unpacked_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %unpacked_entry_size.i.i, align 4
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 %34) #10
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !330

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries769.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %37 = ptrtoint ptr %entries769.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %entries769.i.i, align 4
  br label %sja1105_init_mac_settings.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %38 = extractvalue { i32, i1 } %35, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #14
  %entries7.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %39 = ptrtoint ptr %entries7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i.i.i, ptr %entries7.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.end7.i.i.i.i.sja1105_init_mac_settings.exit.thread.i_crit_edge, label %if.end11.i.i

if.end7.i.i.i.i.sja1105_init_mac_settings.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_init_mac_settings.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end7.i.i.i.i
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.i.i, align 4
  %max_entry_count13.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %max_entry_count13.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_entry_count13.i.i, align 4
  %44 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %entry_count.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.dsa_switch, ptr %23, i32 0, i32 1
  %45 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn76.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not78.i.i = icmp eq ptr %.pn76.i.i, %ports.i.i
  br i1 %cmp.not78.i.i, label %if.end11.i.i.if.end5.i_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  br label %for.body.i.i

if.end11.i.i.if.end5.i_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i.i.for.body.i.i_crit_edge
  %.pn79.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn76.i.i, %if.end11.i.i.for.body.i.i_crit_edge ]
  %ds18.i.i = getelementptr i8, ptr %.pn79.i.i, i32 -432
  %48 = ptrtoint ptr %ds18.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ds18.i.i, align 4
  %cmp19.not.i.i = icmp eq ptr %49, %23
  br i1 %cmp19.not.i.i, label %if.end21.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end21.i.i:                                     ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn79.i.i, i32 -428
  %50 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i, align 4
  %arrayidx22.i.i = getelementptr %struct.sja1105_mac_config_entry, ptr %call8.i.i.i.i, i32 %51
  %52 = call ptr @memcpy(ptr %arrayidx22.i.i, ptr %default_mac.sroa.0.i.i, i32 192)
  %default_mac.sroa.7.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 192
  %53 = ptrtoint ptr %default_mac.sroa.7.0.arrayidx22.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %default_mac.sroa.7.0.arrayidx22.sroa_idx.i.i, align 64
  %default_mac.sroa.8.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 200
  %54 = ptrtoint ptr %default_mac.sroa.8.0.arrayidx22.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %21, ptr %default_mac.sroa.8.0.arrayidx22.sroa_idx.i.i, align 8
  %default_mac.sroa.9.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 208
  %default_mac.sroa.11.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 224
  %55 = call ptr @memset(ptr %default_mac.sroa.9.0.arrayidx22.sroa_idx.i.i, i32 0, i32 16)
  %56 = ptrtoint ptr %default_mac.sroa.11.0.arrayidx22.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 255, ptr %default_mac.sroa.11.0.arrayidx22.sroa_idx.i.i, align 32
  %default_mac.sroa.12.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 232
  %57 = ptrtoint ptr %default_mac.sroa.12.0.arrayidx22.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %default_mac.sroa.12.0.arrayidx22.sroa_idx.i.i, align 8
  %default_mac.sroa.13.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 240
  %58 = ptrtoint ptr %default_mac.sroa.13.0.arrayidx22.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1, ptr %default_mac.sroa.13.0.arrayidx22.sroa_idx.i.i, align 16
  %default_mac.sroa.14.0.arrayidx22.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i.i, i32 248
  %type.i.i.i = getelementptr i8, ptr %.pn79.i.i, i32 -424
  %59 = call ptr @memset(ptr %default_mac.sroa.14.0.arrayidx22.sroa_idx.i.i, i32 0, i32 72)
  %60 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i.i.i = icmp eq i32 %61, 2
  br i1 %cmp.i.i.i, label %if.end25.i.thread.i, label %if.end25.i.i

if.end25.i.thread.i:                              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %learning.i.i = getelementptr i8, ptr %.pn79.i.i, i32 -405
  %62 = ptrtoint ptr %learning.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i = load i8, ptr %learning.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %learning.i.i, align 1
  br label %if.then28.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  %.off.i.i = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.end25.i.i.if.then28.i.i_crit_edge, label %if.end25.i.i.for.inc.i.i_crit_edge

if.end25.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end25.i.i.if.then28.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i.if.then28.i.i_crit_edge, %if.end25.i.thread.i
  %63 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i.i, align 4
  %drpuntag31.i.i = getelementptr %struct.sja1105_mac_config_entry, ptr %call8.i.i.i.i, i32 %64, i32 14
  %65 = ptrtoint ptr %drpuntag31.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1, ptr %drpuntag31.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then28.i.i, %if.end25.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %66 = ptrtoint ptr %.pn79.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i.i = load ptr, ptr %.pn79.i.i, align 4
  %67 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dst.i.i, align 4
  %ports17.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %68, i32 0, i32 1
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports17.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end5.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end5.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

sja1105_init_mac_settings.exit.thread.i:          ; preds = %if.end7.i.i.i.i.sja1105_init_mac_settings.exit.thread.i_crit_edge, %kcalloc.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %default_mac.sroa.0.i.i)
  br label %do.end12

if.end5.i:                                        ; preds = %for.inc.i.i.if.end5.i_crit_edge, %if.end11.i.i.if.end5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %default_mac.sroa.0.i.i)
  %spidev.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %spidev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spidev.i.i, align 4
  %71 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ds3.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 19
  %entry_count.i85.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 19, i32 1
  %73 = ptrtoint ptr %entry_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %entry_count.i85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i86.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i86.i, label %if.end5.i.if.end.i91.i_crit_edge, label %if.then.i88.i

if.end5.i.if.end.i91.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i91.i

if.then.i88.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i87.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 19, i32 2
  %75 = ptrtoint ptr %entries.i87.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entries.i87.i, align 4
  tail call void @kfree(ptr noundef %76) #10
  %77 = ptrtoint ptr %entry_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %entry_count.i85.i, align 4
  br label %if.end.i91.i

if.end.i91.i:                                     ; preds = %if.then.i88.i, %if.end5.i.if.end.i91.i_crit_edge
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i, align 4
  %max_entry_count.i89.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %max_entry_count.i89.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_entry_count.i89.i, align 4
  %unpacked_entry_size.i90.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %unpacked_entry_size.i90.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %unpacked_entry_size.i90.i, align 4
  %84 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %81, i32 %83) #10
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %kcalloc.exit.thread.i92.i, label %if.end7.i.i.i124.i, !prof !330

kcalloc.exit.thread.i92.i:                        ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries5141.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 19, i32 2
  %86 = ptrtoint ptr %entries5141.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %entries5141.i.i, align 4
  br label %do.end12

if.end7.i.i.i124.i:                               ; preds = %if.end.i91.i
  %87 = extractvalue { i32, i1 } %84, 0
  %call8.i.i.i123.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %87, i32 noundef 3520) #14
  %entries5.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 19, i32 2
  %88 = ptrtoint ptr %entries5.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call8.i.i.i123.i, ptr %entries5.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call8.i.i.i123.i, null
  br i1 %tobool7.not.i.i, label %if.end7.i.i.i124.i.do.end12_crit_edge, label %if.end9.i.i

if.end7.i.i.i124.i.do.end12_crit_edge:            ; preds = %if.end7.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end9.i.i:                                      ; preds = %if.end7.i.i.i124.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  %max_entry_count11.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %max_entry_count11.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_entry_count11.i.i, align 4
  %93 = ptrtoint ptr %entry_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %entry_count.i85.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.dsa_switch, ptr %72, i32 0, i32 18
  %94 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp163.not.i.i = icmp eq i32 %95, 0
  br i1 %cmp163.not.i.i, label %if.end9.i.i.if.end9.i_crit_edge, label %if.end9.i.i.for.body.i127.i_crit_edge

if.end9.i.i.for.body.i127.i_crit_edge:            ; preds = %if.end9.i.i
  br label %for.body.i127.i

if.end9.i.i.if.end9.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.body.i127.i:                                  ; preds = %for.inc.i131.i.for.body.i127.i_crit_edge, %if.end9.i.i.for.body.i127.i_crit_edge
  %i.0164.i.i = phi i32 [ %inc.i.i, %for.inc.i131.i.for.body.i127.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i127.i_crit_edge ]
  %96 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ds3.i.i, align 8
  %dst1.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %dst1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dst1.i.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not21.i.i.i.i, label %for.body.i127.i.dsa_is_unused_port.exit.i.i_crit_edge, label %for.body.i127.i.for.body.i.i.i.i_crit_edge

for.body.i127.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.body.i127.i
  br label %for.body.i.i.i.i

for.body.i127.i.dsa_is_unused_port.exit.i.i_crit_edge: ; preds = %for.body.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i127.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %for.body.i127.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %101 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %102, %97
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i138.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i138.i.i:                         ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %103 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %i.0164.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %104, %i.0164.i.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i138.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i138.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i138.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %105 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i.i

dsa_is_unused_port.exit.i.i:                      ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge, %for.body.i127.i.dsa_is_unused_port.exit.i.i_crit_edge
  %retval.0.i.i139.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %for.body.i127.i.dsa_is_unused_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge ]
  %type.i.i128.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i139.i.i, i32 0, i32 6
  %106 = ptrtoint ptr %type.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i.i128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i.i129.i = icmp eq i32 %107, 0
  br i1 %cmp.i.i129.i, label %dsa_is_unused_port.exit.i.i.for.inc.i131.i_crit_edge, label %if.end17.i.i

dsa_is_unused_port.exit.i.i.for.inc.i131.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i131.i

if.end17.i.i:                                     ; preds = %dsa_is_unused_port.exit.i.i
  %arrayidx18.i.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 3, i32 %i.0164.i.i
  %108 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx18.i.i, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %109, label %if.end17.i.i.do.end.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 6, label %sw.bb31.i.i
    i32 2, label %if.end17.i.i.sw.bb32.i.i_crit_edge
    i32 8, label %sw.bb40.i.i
    i32 7, label %if.end17.i.i.sw.bb41.i.i_crit_edge
    i32 9, label %if.end17.i.i.sw.bb49.i.i_crit_edge
    i32 10, label %if.end17.i.i.sw.bb49.i.i_crit_edge364
    i32 11, label %if.end17.i.i.sw.bb49.i.i_crit_edge365
    i32 12, label %if.end17.i.i.sw.bb49.i.i_crit_edge366
    i32 4, label %sw.bb57.i.i
    i32 22, label %sw.bb67.i.i
  ]

if.end17.i.i.sw.bb49.i.i_crit_edge366:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49.i.i

if.end17.i.i.sw.bb49.i.i_crit_edge365:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49.i.i

if.end17.i.i.sw.bb49.i.i_crit_edge364:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49.i.i

if.end17.i.i.sw.bb49.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49.i.i

if.end17.i.i.sw.bb41.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

if.end17.i.i.sw.bb32.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32.i.i

if.end17.i.i.do.end.i.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

sw.bb.i.i:                                        ; preds = %if.end17.i.i
  %111 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info, align 4
  %arrayidx19.i.i = getelementptr %struct.sja1105_info, ptr %112, i32 0, i32 30, i32 %i.0164.i.i
  %113 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp20.i.i = icmp eq i32 %114, 0
  br i1 %cmp20.i.i, label %sw.bb.i.i.cleanup.i.i_crit_edge, label %if.end22.i.i

sw.bb.i.i.cleanup.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end22.i.i:                                     ; preds = %sw.bb.i.i
  %arrayidx23.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %115 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %arrayidx23.i.i, align 8
  %116 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %info, align 4
  %arrayidx26.i.i = getelementptr %struct.sja1105_info, ptr %117, i32 0, i32 30, i32 %i.0164.i.i
  %118 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp27.i.i = icmp eq i32 %119, 1
  br i1 %cmp27.i.i, label %if.then28.i130.i, label %if.end22.i.i.sw.epilog.i.i_crit_edge

if.end22.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.then28.i130.i:                                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 2, i32 %i.0164.i.i
  %120 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 1, ptr %arrayidx29.i.i, align 8
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32.i.i

sw.bb32.i.i:                                      ; preds = %sw.bb31.i.i, %if.end17.i.i.sw.bb32.i.i_crit_edge
  %role.0.i.i = phi i32 [ 0, %if.end17.i.i.sw.bb32.i.i_crit_edge ], [ 1, %sw.bb31.i.i ]
  %121 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %info, align 4
  %arrayidx34.i.i = getelementptr %struct.sja1105_info, ptr %122, i32 0, i32 25, i32 %i.0164.i.i
  %123 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx34.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool35.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool35.not.i.i, label %sw.bb32.i.i.do.end.i.i_crit_edge, label %if.end37.i.i

sw.bb32.i.i.do.end.i.i_crit_edge:                 ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.end37.i.i:                                     ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx39.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %125 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 0, ptr %arrayidx39.i.i, align 8
  br label %sw.epilog.i.i

sw.bb40.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

sw.bb41.i.i:                                      ; preds = %sw.bb40.i.i, %if.end17.i.i.sw.bb41.i.i_crit_edge
  %role.1.i.i = phi i32 [ 0, %if.end17.i.i.sw.bb41.i.i_crit_edge ], [ 1, %sw.bb40.i.i ]
  %126 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %info, align 4
  %arrayidx43.i.i = getelementptr %struct.sja1105_info, ptr %127, i32 0, i32 26, i32 %i.0164.i.i
  %128 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx43.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool44.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool44.not.i.i, label %sw.bb41.i.i.do.end.i.i_crit_edge, label %if.end46.i.i

sw.bb41.i.i.do.end.i.i_crit_edge:                 ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.end46.i.i:                                     ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx48.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %130 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 1, ptr %arrayidx48.i.i, align 8
  br label %sw.epilog.i.i

sw.bb49.i.i:                                      ; preds = %if.end17.i.i.sw.bb49.i.i_crit_edge, %if.end17.i.i.sw.bb49.i.i_crit_edge364, %if.end17.i.i.sw.bb49.i.i_crit_edge365, %if.end17.i.i.sw.bb49.i.i_crit_edge366
  %131 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %info, align 4
  %arrayidx51.i.i = getelementptr %struct.sja1105_info, ptr %132, i32 0, i32 27, i32 %i.0164.i.i
  %133 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx51.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool52.not.i.i = icmp eq i8 %134, 0
  br i1 %tobool52.not.i.i, label %sw.bb49.i.i.do.end.i.i_crit_edge, label %if.end54.i.i

sw.bb49.i.i.do.end.i.i_crit_edge:                 ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.end54.i.i:                                     ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx56.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %135 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 2, ptr %arrayidx56.i.i, align 8
  br label %sw.epilog.i.i

sw.bb57.i.i:                                      ; preds = %if.end17.i.i
  %136 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %info, align 4
  %arrayidx59.i.i = getelementptr %struct.sja1105_info, ptr %137, i32 0, i32 28, i32 %i.0164.i.i
  %138 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx59.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool60.not.i.i = icmp eq i8 %139, 0
  br i1 %tobool60.not.i.i, label %sw.bb57.i.i.cleanup.i.i_crit_edge, label %if.end62.i.i

sw.bb57.i.i.cleanup.i.i_crit_edge:                ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end62.i.i:                                     ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx64.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %140 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 3, ptr %arrayidx64.i.i, align 8
  %arrayidx66.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 2, i32 %i.0164.i.i
  %141 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 1, ptr %arrayidx66.i.i, align 8
  br label %sw.epilog.i.i

sw.bb67.i.i:                                      ; preds = %if.end17.i.i
  %142 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %info, align 4
  %arrayidx69.i.i = getelementptr %struct.sja1105_info, ptr %143, i32 0, i32 29, i32 %i.0164.i.i
  %144 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx69.i.i, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool70.not.i.i = icmp eq i8 %145, 0
  br i1 %tobool70.not.i.i, label %sw.bb67.i.i.cleanup.i.i_crit_edge, label %if.end72.i.i

sw.bb67.i.i.cleanup.i.i_crit_edge:                ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end72.i.i:                                     ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx74.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 1, i32 %i.0164.i.i
  %146 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 3, ptr %arrayidx74.i.i, align 8
  %arrayidx76.i.i = getelementptr %struct.sja1105_xmii_params_entry, ptr %call8.i.i.i123.i, i32 0, i32 2, i32 %i.0164.i.i
  %147 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 1, ptr %arrayidx76.i.i, align 8
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %sw.bb49.i.i.do.end.i.i_crit_edge, %sw.bb41.i.i.do.end.i.i_crit_edge, %sw.bb32.i.i.do.end.i.i_crit_edge, %if.end17.i.i.do.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %109)
  %148 = icmp ult i32 %109, 30
  br i1 %148, label %switch.lookup, label %do.end.i.i.cleanup.i.i_crit_edge

do.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

sw.epilog.i.i:                                    ; preds = %if.end72.i.i, %if.end62.i.i, %if.end54.i.i, %if.end46.i.i, %if.end37.i.i, %if.then28.i130.i, %if.end22.i.i.sw.epilog.i.i_crit_edge
  %role.2.i.i = phi i32 [ 0, %if.end72.i.i ], [ 0, %if.end62.i.i ], [ 0, %if.end54.i.i ], [ %role.1.i.i, %if.end46.i.i ], [ %role.0.i.i, %if.end37.i.i ], [ 0, %if.then28.i130.i ], [ 0, %if.end22.i.i.sw.epilog.i.i_crit_edge ]
  %conv.i.i = zext i32 %role.2.i.i to i64
  %arrayidx80.i.i = getelementptr [11 x i64], ptr %call8.i.i.i123.i, i32 0, i32 %i.0164.i.i
  %149 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %conv.i.i, ptr %arrayidx80.i.i, align 8
  br label %for.inc.i131.i

switch.lookup:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.sja1105_setup, i32 0, i32 %109
  %150 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %150)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %switch.lookup, %do.end.i.i.cleanup.i.i_crit_edge, %sw.bb67.i.i.cleanup.i.i_crit_edge, %sw.bb57.i.i.cleanup.i.i_crit_edge, %sw.bb.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.111, %do.end.i.i.cleanup.i.i_crit_edge ], [ @.str.102, %sw.bb67.i.i.cleanup.i.i_crit_edge ], [ @.str.85, %sw.bb57.i.i.cleanup.i.i_crit_edge ], [ @.str.82, %sw.bb.i.i.cleanup.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.79, ptr noundef nonnull %retval.0.i.i.i, i32 noundef %i.0164.i.i) #13
  br label %do.end12

for.inc.i131.i:                                   ; preds = %sw.epilog.i.i, %dsa_is_unused_port.exit.i.i.for.inc.i131.i_crit_edge
  %inc.i.i = add nuw i32 %i.0164.i.i, 1
  %151 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_ports.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %152
  br i1 %cmp.i.i, label %for.inc.i131.i.for.body.i127.i_crit_edge, label %for.inc.i131.i.if.end9.i_crit_edge

for.inc.i131.i.if.end9.i_crit_edge:               ; preds = %for.inc.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.i131.i.for.body.i127.i_crit_edge:         ; preds = %for.inc.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i127.i

if.end9.i:                                        ; preds = %for.inc.i131.i.if.end9.i_crit_edge, %if.end9.i.i.if.end9.i_crit_edge
  %arrayidx.i132.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5
  %entry_count.i133.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5, i32 1
  %153 = ptrtoint ptr %entry_count.i133.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %entry_count.i133.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i134.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i134.i, label %if.end9.i.if.end.i138.i_crit_edge, label %if.then.i136.i

if.end9.i.if.end.i138.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i138.i

if.then.i136.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i135.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5, i32 2
  %155 = ptrtoint ptr %entries.i135.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %entries.i135.i, align 4
  tail call void @kfree(ptr noundef %156) #10
  %157 = ptrtoint ptr %entry_count.i133.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %entry_count.i133.i, align 4
  br label %if.end.i138.i

if.end.i138.i:                                    ; preds = %if.then.i136.i, %if.end9.i.if.end.i138.i_crit_edge
  %158 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %info, align 4
  %can_limit_mcast_flood.i.i = getelementptr inbounds %struct.sja1105_info, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %can_limit_mcast_flood.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %can_limit_mcast_flood.i.i, align 8, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool2.not.i.i = icmp eq i8 %161, 0
  br i1 %tobool2.not.i.i, label %if.end.i138.i.if.end13.i_crit_edge, label %if.end7.i.i.i166.i

if.end.i138.i.if.end13.i_crit_edge:               ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end7.i.i.i166.i:                               ; preds = %if.end.i138.i
  %162 = ptrtoint ptr %arrayidx.i132.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i132.i, align 4
  %unpacked_entry_size.i139.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %unpacked_entry_size.i139.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %unpacked_entry_size.i139.i, align 4
  %call8.i.i.i165.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %165, i32 noundef 3520) #14
  %entries5.i168.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5, i32 2
  %166 = ptrtoint ptr %entries5.i168.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call8.i.i.i165.i, ptr %entries5.i168.i, align 4
  %tobool7.not.i169.i = icmp eq ptr %call8.i.i.i165.i, null
  br i1 %tobool7.not.i169.i, label %if.end7.i.i.i166.i.do.end12_crit_edge, label %if.end9.i172.i

if.end7.i.i.i166.i.do.end12_crit_edge:            ; preds = %if.end7.i.i.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end9.i172.i:                                   ; preds = %if.end7.i.i.i166.i
  %167 = ptrtoint ptr %entry_count.i133.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %entry_count.i133.i, align 4
  %macaddr.i.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %call8.i.i.i165.i, i32 0, i32 1
  %168 = ptrtoint ptr %macaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 1099511627776, ptr %macaddr.i.i, align 8
  %mask_macaddr.i.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %call8.i.i.i165.i, i32 0, i32 7
  %169 = ptrtoint ptr %mask_macaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 1099511627776, ptr %mask_macaddr.i.i, align 8
  %lockeds.i.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %call8.i.i.i165.i, i32 0, i32 11
  %170 = ptrtoint ptr %lockeds.i.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 1, ptr %lockeds.i.i, align 8
  %index.i171.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %call8.i.i.i165.i, i32 0, i32 4
  %171 = ptrtoint ptr %index.i171.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 1023, ptr %index.i171.i, align 32
  %172 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ds3.i.i, align 8
  %num_ports50.i.i = getelementptr inbounds %struct.dsa_switch, ptr %173, i32 0, i32 18
  %174 = ptrtoint ptr %num_ports50.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_ports50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp51.not.i.i = icmp eq i32 %175, 0
  br i1 %cmp51.not.i.i, label %if.end9.i172.i.if.end13.i_crit_edge, label %for.body.lr.ph.i173.i

if.end9.i172.i.if.end13.i_crit_edge:              ; preds = %if.end9.i172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

for.body.lr.ph.i173.i:                            ; preds = %if.end9.i172.i
  %destports.i.i = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %call8.i.i.i165.i, i32 0, i32 2
  br label %for.body.i178.i

for.body.i178.i:                                  ; preds = %for.inc.i198.i.for.body.i178.i_crit_edge, %for.body.lr.ph.i173.i
  %176 = phi ptr [ %173, %for.body.lr.ph.i173.i ], [ %190, %for.inc.i198.i.for.body.i178.i_crit_edge ]
  %port.052.i.i = phi i32 [ 0, %for.body.lr.ph.i173.i ], [ %inc.i195.i, %for.inc.i198.i.for.body.i178.i_crit_edge ]
  %dst1.i.i.i174.i = getelementptr inbounds %struct.dsa_switch, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %dst1.i.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dst1.i.i.i174.i, align 4
  %ports.i.i.i175.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %ports.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %.pn20.i.i.i176.i = load ptr, ptr %ports.i.i.i175.i, align 4
  %cmp.not21.i.i.i177.i = icmp eq ptr %.pn20.i.i.i176.i, %ports.i.i.i175.i
  br i1 %cmp.not21.i.i.i177.i, label %for.body.i178.i.dsa_is_unused_port.exit.i193.i_crit_edge, label %for.body.i178.i.for.body.i.i.i182.i_crit_edge

for.body.i178.i.for.body.i.i.i182.i_crit_edge:    ; preds = %for.body.i178.i
  br label %for.body.i.i.i182.i

for.body.i178.i.dsa_is_unused_port.exit.i193.i_crit_edge: ; preds = %for.body.i178.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i193.i

for.body.i.i.i182.i:                              ; preds = %for.inc.i.i.i188.i.for.body.i.i.i182.i_crit_edge, %for.body.i178.i.for.body.i.i.i182.i_crit_edge
  %.pn22.i.i.i179.i = phi ptr [ %.pn.i.i.i186.i, %for.inc.i.i.i188.i.for.body.i.i.i182.i_crit_edge ], [ %.pn20.i.i.i176.i, %for.body.i178.i.for.body.i.i.i182.i_crit_edge ]
  %ds3.i.i.i180.i = getelementptr i8, ptr %.pn22.i.i.i179.i, i32 -432
  %180 = ptrtoint ptr %ds3.i.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ds3.i.i.i180.i, align 4
  %cmp4.i.i.i181.i = icmp eq ptr %181, %176
  br i1 %cmp4.i.i.i181.i, label %land.lhs.true.i.i.i185.i, label %for.body.i.i.i182.i.for.inc.i.i.i188.i_crit_edge

for.body.i.i.i182.i.for.inc.i.i.i188.i_crit_edge: ; preds = %for.body.i.i.i182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i188.i

land.lhs.true.i.i.i185.i:                         ; preds = %for.body.i.i.i182.i
  %index.i.i.i183.i = getelementptr i8, ptr %.pn22.i.i.i179.i, i32 -428
  %182 = ptrtoint ptr %index.i.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %index.i.i.i183.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %port.052.i.i)
  %cmp5.i.i.i184.i = icmp eq i32 %183, %port.052.i.i
  br i1 %cmp5.i.i.i184.i, label %cleanup.split.loop.exit18.i.i.i190.i, label %land.lhs.true.i.i.i185.i.for.inc.i.i.i188.i_crit_edge

land.lhs.true.i.i.i185.i.for.inc.i.i.i188.i_crit_edge: ; preds = %land.lhs.true.i.i.i185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i188.i

for.inc.i.i.i188.i:                               ; preds = %land.lhs.true.i.i.i185.i.for.inc.i.i.i188.i_crit_edge, %for.body.i.i.i182.i.for.inc.i.i.i188.i_crit_edge
  %184 = ptrtoint ptr %.pn22.i.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pn.i.i.i186.i = load ptr, ptr %.pn22.i.i.i179.i, align 4
  %cmp.not.i.i.i187.i = icmp eq ptr %.pn.i.i.i186.i, %ports.i.i.i175.i
  br i1 %cmp.not.i.i.i187.i, label %for.inc.i.i.i188.i.dsa_is_unused_port.exit.i193.i_crit_edge, label %for.inc.i.i.i188.i.for.body.i.i.i182.i_crit_edge

for.inc.i.i.i188.i.for.body.i.i.i182.i_crit_edge: ; preds = %for.inc.i.i.i188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i182.i

for.inc.i.i.i188.i.dsa_is_unused_port.exit.i193.i_crit_edge: ; preds = %for.inc.i.i.i188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i193.i

cleanup.split.loop.exit18.i.i.i190.i:             ; preds = %land.lhs.true.i.i.i185.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i189.i = getelementptr i8, ptr %.pn22.i.i.i179.i, i32 -448
  br label %dsa_is_unused_port.exit.i193.i

dsa_is_unused_port.exit.i193.i:                   ; preds = %cleanup.split.loop.exit18.i.i.i190.i, %for.inc.i.i.i188.i.dsa_is_unused_port.exit.i193.i_crit_edge, %for.body.i178.i.dsa_is_unused_port.exit.i193.i_crit_edge
  %retval.0.i.i40.i.i = phi ptr [ %dp.0.le.i.i.i189.i, %cleanup.split.loop.exit18.i.i.i190.i ], [ null, %for.body.i178.i.dsa_is_unused_port.exit.i193.i_crit_edge ], [ null, %for.inc.i.i.i188.i.dsa_is_unused_port.exit.i193.i_crit_edge ]
  %type.i.i191.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i40.i.i, i32 0, i32 6
  %185 = ptrtoint ptr %type.i.i191.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %type.i.i191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i192.i = icmp eq i32 %186, 0
  br i1 %cmp.i.i192.i, label %dsa_is_unused_port.exit.i193.i.for.inc.i198.i_crit_edge, label %if.then18.i.i

dsa_is_unused_port.exit.i193.i.for.inc.i198.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i198.i

if.then18.i.i:                                    ; preds = %dsa_is_unused_port.exit.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl nuw i32 1, %port.052.i.i
  %conv.i194.i = zext i32 %shl.i.i to i64
  %187 = ptrtoint ptr %destports.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %destports.i.i, align 16
  %or.i.i = or i64 %188, %conv.i194.i
  store i64 %or.i.i, ptr %destports.i.i, align 16
  br label %for.inc.i198.i

for.inc.i198.i:                                   ; preds = %if.then18.i.i, %dsa_is_unused_port.exit.i193.i.for.inc.i198.i_crit_edge
  %inc.i195.i = add nuw i32 %port.052.i.i, 1
  %189 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ds3.i.i, align 8
  %num_ports.i196.i = getelementptr inbounds %struct.dsa_switch, ptr %190, i32 0, i32 18
  %191 = ptrtoint ptr %num_ports.i196.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_ports.i196.i, align 4
  %cmp.i197.i = icmp ult i32 %inc.i195.i, %192
  br i1 %cmp.i197.i, label %for.inc.i198.i.for.body.i178.i_crit_edge, label %for.inc.i198.i.if.end13.i_crit_edge

for.inc.i198.i.if.end13.i_crit_edge:              ; preds = %for.inc.i198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

for.inc.i198.i.for.body.i178.i_crit_edge:         ; preds = %for.inc.i198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i178.i

if.end13.i:                                       ; preds = %for.inc.i198.i.if.end13.i_crit_edge, %if.end9.i172.i.if.end13.i_crit_edge, %if.end.i138.i.if.end13.i_crit_edge
  %193 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ds3.i.i, align 8
  %arrayidx.i201.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 7
  %entry_count.i202.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 7, i32 1
  %195 = ptrtoint ptr %entry_count.i202.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %entry_count.i202.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i203.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i203.i, label %if.end13.i.if.end8.i.i.i.i_crit_edge, label %if.then.i205.i

if.end13.i.if.end8.i.i.i.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i.i

if.then.i205.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i204.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 7, i32 2
  %197 = ptrtoint ptr %entries.i204.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %entries.i204.i, align 4
  tail call void @kfree(ptr noundef %198) #10
  %199 = ptrtoint ptr %entry_count.i202.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %entry_count.i202.i, align 4
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i205.i, %if.end13.i.if.end8.i.i.i.i_crit_edge
  %200 = ptrtoint ptr %arrayidx.i201.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i201.i, align 4
  %unpacked_entry_size.i206.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %unpacked_entry_size.i206.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %unpacked_entry_size.i206.i, align 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %203, i32 noundef 3520) #14
  %entries3.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 7, i32 2
  %204 = ptrtoint ptr %entries3.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call9.i.i.i.i, ptr %entries3.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end8.i.i.i.i.do.end12_crit_edge, label %if.end7.i.i

if.end8.i.i.i.i.do.end12_crit_edge:               ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end7.i.i:                                      ; preds = %if.end8.i.i.i.i
  %205 = ptrtoint ptr %entry_count.i202.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %entry_count.i202.i, align 4
  %num_ports.i212.i = getelementptr inbounds %struct.dsa_switch, ptr %194, i32 0, i32 18
  %206 = ptrtoint ptr %num_ports.i212.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_ports.i212.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp110.not.i.i = icmp eq i32 %207, 0
  br i1 %cmp110.not.i.i, label %if.end7.i.i.if.end17.i_crit_edge, label %for.body.lr.ph.i214.i

if.end7.i.i.if.end17.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

for.body.lr.ph.i214.i:                            ; preds = %if.end7.i.i
  %dst1.i.i.i213.i = getelementptr inbounds %struct.dsa_switch, ptr %194, i32 0, i32 1
  br label %for.body.i218.i

for.body.i218.i:                                  ; preds = %for.inc.i239.i.for.body.i218.i_crit_edge, %for.body.lr.ph.i214.i
  %port.0113.i.i = phi i32 [ 0, %for.body.lr.ph.i214.i ], [ %inc.i237.i, %for.inc.i239.i.for.body.i218.i_crit_edge ]
  %pvid.sroa.6.0112.i.i = phi i64 [ 0, %for.body.lr.ph.i214.i ], [ %pvid.sroa.6.1.i.i, %for.inc.i239.i.for.body.i218.i_crit_edge ]
  %pvid.sroa.4.0111.i.i = phi i64 [ 0, %for.body.lr.ph.i214.i ], [ %pvid.sroa.4.1.i.i, %for.inc.i239.i.for.body.i218.i_crit_edge ]
  %208 = ptrtoint ptr %dst1.i.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dst1.i.i.i213.i, align 4
  %ports.i.i.i215.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ports.i.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pn20.i.i.i216.i = load ptr, ptr %ports.i.i.i215.i, align 4
  %cmp.not21.i.i.i217.i = icmp eq ptr %.pn20.i.i.i216.i, %ports.i.i.i215.i
  br i1 %cmp.not21.i.i.i217.i, label %dsa_is_unused_port.exit.thread.i.i, label %for.body.i218.i.for.body.i.i.i222.i_crit_edge

for.body.i218.i.for.body.i.i.i222.i_crit_edge:    ; preds = %for.body.i218.i
  br label %for.body.i.i.i222.i

for.body.i.i.i222.i:                              ; preds = %for.inc.i.i.i228.i.for.body.i.i.i222.i_crit_edge, %for.body.i218.i.for.body.i.i.i222.i_crit_edge
  %.pn22.i.i.i219.i = phi ptr [ %.pn.i.i.i226.i, %for.inc.i.i.i228.i.for.body.i.i.i222.i_crit_edge ], [ %.pn20.i.i.i216.i, %for.body.i218.i.for.body.i.i.i222.i_crit_edge ]
  %ds3.i.i.i220.i = getelementptr i8, ptr %.pn22.i.i.i219.i, i32 -432
  %211 = ptrtoint ptr %ds3.i.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ds3.i.i.i220.i, align 4
  %cmp4.i.i.i221.i = icmp eq ptr %212, %194
  br i1 %cmp4.i.i.i221.i, label %land.lhs.true.i.i.i225.i, label %for.body.i.i.i222.i.for.inc.i.i.i228.i_crit_edge

for.body.i.i.i222.i.for.inc.i.i.i228.i_crit_edge: ; preds = %for.body.i.i.i222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i228.i

land.lhs.true.i.i.i225.i:                         ; preds = %for.body.i.i.i222.i
  %index.i.i.i223.i = getelementptr i8, ptr %.pn22.i.i.i219.i, i32 -428
  %213 = ptrtoint ptr %index.i.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %index.i.i.i223.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %port.0113.i.i)
  %cmp5.i.i.i224.i = icmp eq i32 %214, %port.0113.i.i
  br i1 %cmp5.i.i.i224.i, label %cleanup.split.loop.exit18.i.i.i230.i, label %land.lhs.true.i.i.i225.i.for.inc.i.i.i228.i_crit_edge

land.lhs.true.i.i.i225.i.for.inc.i.i.i228.i_crit_edge: ; preds = %land.lhs.true.i.i.i225.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i228.i

for.inc.i.i.i228.i:                               ; preds = %land.lhs.true.i.i.i225.i.for.inc.i.i.i228.i_crit_edge, %for.body.i.i.i222.i.for.inc.i.i.i228.i_crit_edge
  %215 = ptrtoint ptr %.pn22.i.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pn.i.i.i226.i = load ptr, ptr %.pn22.i.i.i219.i, align 4
  %cmp.not.i.i.i227.i = icmp eq ptr %.pn.i.i.i226.i, %ports.i.i.i215.i
  br i1 %cmp.not.i.i.i227.i, label %for.inc.i.i.i228.i.dsa_is_unused_port.exit.i234.i_crit_edge, label %for.inc.i.i.i228.i.for.body.i.i.i222.i_crit_edge

for.inc.i.i.i228.i.for.body.i.i.i222.i_crit_edge: ; preds = %for.inc.i.i.i228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i222.i

for.inc.i.i.i228.i.dsa_is_unused_port.exit.i234.i_crit_edge: ; preds = %for.inc.i.i.i228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i234.i

cleanup.split.loop.exit18.i.i.i230.i:             ; preds = %land.lhs.true.i.i.i225.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i229.i = getelementptr i8, ptr %.pn22.i.i.i219.i, i32 -448
  br label %dsa_is_unused_port.exit.i234.i

dsa_is_unused_port.exit.i234.i:                   ; preds = %cleanup.split.loop.exit18.i.i.i230.i, %for.inc.i.i.i228.i.dsa_is_unused_port.exit.i234.i_crit_edge
  %retval.0.i.i.i231.i = phi ptr [ %dp.0.le.i.i.i229.i, %cleanup.split.loop.exit18.i.i.i230.i ], [ null, %for.inc.i.i.i228.i.dsa_is_unused_port.exit.i234.i_crit_edge ]
  %type.i.i232.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i231.i, i32 0, i32 6
  %216 = ptrtoint ptr %type.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %type.i.i232.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i.i233.i = icmp eq i32 %217, 0
  br i1 %cmp.i.i233.i, label %dsa_is_unused_port.exit.i234.i.for.inc.i239.i_crit_edge, label %dsa_is_unused_port.exit.i234.i.for.body.i.i62.i.i_crit_edge

dsa_is_unused_port.exit.i234.i.for.body.i.i62.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i234.i
  br label %for.body.i.i62.i.i

dsa_is_unused_port.exit.i234.i.for.inc.i239.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i239.i

dsa_is_unused_port.exit.thread.i.i:               ; preds = %for.body.i218.i
  call void @__asan_load4_noabort(i32 24)
  %218 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp.i99.i.i = icmp eq i32 %218, 0
  br i1 %cmp.i99.i.i, label %dsa_is_unused_port.exit.thread.i.i.for.inc.i239.i_crit_edge, label %dsa_is_cpu_port.exit.thread.i.i

dsa_is_unused_port.exit.thread.i.i.for.inc.i239.i_crit_edge: ; preds = %dsa_is_unused_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i239.i

for.body.i.i62.i.i:                               ; preds = %for.inc.i.i68.i.i.for.body.i.i62.i.i_crit_edge, %dsa_is_unused_port.exit.i234.i.for.body.i.i62.i.i_crit_edge
  %.pn22.i.i59.i.i = phi ptr [ %.pn.i.i66.i.i, %for.inc.i.i68.i.i.for.body.i.i62.i.i_crit_edge ], [ %.pn20.i.i.i216.i, %dsa_is_unused_port.exit.i234.i.for.body.i.i62.i.i_crit_edge ]
  %ds3.i.i60.i.i = getelementptr i8, ptr %.pn22.i.i59.i.i, i32 -432
  %219 = ptrtoint ptr %ds3.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ds3.i.i60.i.i, align 4
  %cmp4.i.i61.i.i = icmp eq ptr %220, %194
  br i1 %cmp4.i.i61.i.i, label %land.lhs.true.i.i65.i.i, label %for.body.i.i62.i.i.for.inc.i.i68.i.i_crit_edge

for.body.i.i62.i.i.for.inc.i.i68.i.i_crit_edge:   ; preds = %for.body.i.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i68.i.i

land.lhs.true.i.i65.i.i:                          ; preds = %for.body.i.i62.i.i
  %index.i.i63.i.i = getelementptr i8, ptr %.pn22.i.i59.i.i, i32 -428
  %221 = ptrtoint ptr %index.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %index.i.i63.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %port.0113.i.i)
  %cmp5.i.i64.i.i = icmp eq i32 %222, %port.0113.i.i
  br i1 %cmp5.i.i64.i.i, label %cleanup.split.loop.exit18.i.i70.i.i, label %land.lhs.true.i.i65.i.i.for.inc.i.i68.i.i_crit_edge

land.lhs.true.i.i65.i.i.for.inc.i.i68.i.i_crit_edge: ; preds = %land.lhs.true.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i68.i.i

for.inc.i.i68.i.i:                                ; preds = %land.lhs.true.i.i65.i.i.for.inc.i.i68.i.i_crit_edge, %for.body.i.i62.i.i.for.inc.i.i68.i.i_crit_edge
  %223 = ptrtoint ptr %.pn22.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %.pn.i.i66.i.i = load ptr, ptr %.pn22.i.i59.i.i, align 4
  %cmp.not.i.i67.i.i = icmp eq ptr %.pn.i.i66.i.i, %ports.i.i.i215.i
  br i1 %cmp.not.i.i67.i.i, label %for.inc.i.i68.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.inc.i.i68.i.i.for.body.i.i62.i.i_crit_edge

for.inc.i.i68.i.i.for.body.i.i62.i.i_crit_edge:   ; preds = %for.inc.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i62.i.i

for.inc.i.i68.i.i.dsa_is_cpu_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit.i.i

cleanup.split.loop.exit18.i.i70.i.i:              ; preds = %land.lhs.true.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i69.i.i = getelementptr i8, ptr %.pn22.i.i59.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i.i

dsa_is_cpu_port.exit.i.i:                         ; preds = %cleanup.split.loop.exit18.i.i70.i.i, %for.inc.i.i68.i.i.dsa_is_cpu_port.exit.i.i_crit_edge
  %retval.0.i.i71.i.i = phi ptr [ %dp.0.le.i.i69.i.i, %cleanup.split.loop.exit18.i.i70.i.i ], [ null, %for.inc.i.i68.i.i.dsa_is_cpu_port.exit.i.i_crit_edge ]
  %conv.pn.in.i.i = shl nuw i32 1, %port.0113.i.i
  %conv.pn.i.i = zext i32 %conv.pn.in.i.i to i64
  %or104.i.i = or i64 %pvid.sroa.4.0111.i.i, %conv.pn.i.i
  %or14105.i.i = or i64 %pvid.sroa.6.0112.i.i, %conv.pn.i.i
  %type.i72.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i71.i.i, i32 0, i32 6
  %224 = ptrtoint ptr %type.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %type.i72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp.i73.i.i = icmp eq i32 %225, 1
  br i1 %cmp.i73.i.i, label %dsa_is_cpu_port.exit.i.i.if.then21.i.i_crit_edge, label %dsa_is_cpu_port.exit.i.i.for.body.i.i81.i.i_crit_edge

dsa_is_cpu_port.exit.i.i.for.body.i.i81.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i.i
  br label %for.body.i.i81.i.i

dsa_is_cpu_port.exit.i.i.if.then21.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i.i

dsa_is_cpu_port.exit.thread.i.i:                  ; preds = %dsa_is_unused_port.exit.thread.i.i
  %conv.pn.in122.i.i = shl nuw i32 1, %port.0113.i.i
  %conv.pn123.i.i = zext i32 %conv.pn.in122.i.i to i64
  %or104124.i.i = or i64 %pvid.sroa.4.0111.i.i, %conv.pn123.i.i
  %or14105125.i.i = or i64 %pvid.sroa.6.0112.i.i, %conv.pn123.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp.i73127.i.i = icmp eq i32 %218, 1
  br i1 %cmp.i73127.i.i, label %dsa_is_cpu_port.exit.thread.i.i.if.then21.i.i_crit_edge, label %dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge

dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i.i

dsa_is_cpu_port.exit.thread.i.i.if.then21.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i.i

for.body.i.i81.i.i:                               ; preds = %for.inc.i.i87.i.i.for.body.i.i81.i.i_crit_edge, %dsa_is_cpu_port.exit.i.i.for.body.i.i81.i.i_crit_edge
  %.pn22.i.i78.i.i = phi ptr [ %.pn.i.i85.i.i, %for.inc.i.i87.i.i.for.body.i.i81.i.i_crit_edge ], [ %.pn20.i.i.i216.i, %dsa_is_cpu_port.exit.i.i.for.body.i.i81.i.i_crit_edge ]
  %ds3.i.i79.i.i = getelementptr i8, ptr %.pn22.i.i78.i.i, i32 -432
  %226 = ptrtoint ptr %ds3.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ds3.i.i79.i.i, align 4
  %cmp4.i.i80.i.i = icmp eq ptr %227, %194
  br i1 %cmp4.i.i80.i.i, label %land.lhs.true.i.i84.i.i, label %for.body.i.i81.i.i.for.inc.i.i87.i.i_crit_edge

for.body.i.i81.i.i.for.inc.i.i87.i.i_crit_edge:   ; preds = %for.body.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i87.i.i

land.lhs.true.i.i84.i.i:                          ; preds = %for.body.i.i81.i.i
  %index.i.i82.i.i = getelementptr i8, ptr %.pn22.i.i78.i.i, i32 -428
  %228 = ptrtoint ptr %index.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %index.i.i82.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %port.0113.i.i)
  %cmp5.i.i83.i.i = icmp eq i32 %229, %port.0113.i.i
  br i1 %cmp5.i.i83.i.i, label %cleanup.split.loop.exit18.i.i89.i.i, label %land.lhs.true.i.i84.i.i.for.inc.i.i87.i.i_crit_edge

land.lhs.true.i.i84.i.i.for.inc.i.i87.i.i_crit_edge: ; preds = %land.lhs.true.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i87.i.i

for.inc.i.i87.i.i:                                ; preds = %land.lhs.true.i.i84.i.i.for.inc.i.i87.i.i_crit_edge, %for.body.i.i81.i.i.for.inc.i.i87.i.i_crit_edge
  %230 = ptrtoint ptr %.pn22.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %.pn.i.i85.i.i = load ptr, ptr %.pn22.i.i78.i.i, align 4
  %cmp.not.i.i86.i.i = icmp eq ptr %.pn.i.i85.i.i, %ports.i.i.i215.i
  br i1 %cmp.not.i.i86.i.i, label %for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge, label %for.inc.i.i87.i.i.for.body.i.i81.i.i_crit_edge

for.inc.i.i87.i.i.for.body.i.i81.i.i_crit_edge:   ; preds = %for.inc.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i81.i.i

for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i.i

cleanup.split.loop.exit18.i.i89.i.i:              ; preds = %land.lhs.true.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i88.i.i = getelementptr i8, ptr %.pn22.i.i78.i.i, i32 -448
  br label %dsa_is_dsa_port.exit.i.i

dsa_is_dsa_port.exit.i.i:                         ; preds = %cleanup.split.loop.exit18.i.i89.i.i, %for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge
  %or104128135.i.i = phi i64 [ %or104.i.i, %cleanup.split.loop.exit18.i.i89.i.i ], [ %or104124.i.i, %dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ], [ %or104.i.i, %for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ]
  %or14105130134.i.i = phi i64 [ %or14105.i.i, %cleanup.split.loop.exit18.i.i89.i.i ], [ %or14105125.i.i, %dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ], [ %or14105.i.i, %for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ]
  %retval.0.i.i90.i.i = phi ptr [ %dp.0.le.i.i88.i.i, %cleanup.split.loop.exit18.i.i89.i.i ], [ null, %dsa_is_cpu_port.exit.thread.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i87.i.i.dsa_is_dsa_port.exit.i.i_crit_edge ]
  %type.i91.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i90.i.i, i32 0, i32 6
  %231 = ptrtoint ptr %type.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %type.i91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %232)
  %cmp.i92.i.i = icmp eq i32 %232, 2
  br i1 %cmp.i92.i.i, label %dsa_is_dsa_port.exit.i.i.if.then21.i.i_crit_edge, label %dsa_is_dsa_port.exit.i.i.for.inc.i239.i_crit_edge

dsa_is_dsa_port.exit.i.i.for.inc.i239.i_crit_edge: ; preds = %dsa_is_dsa_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i239.i

dsa_is_dsa_port.exit.i.i.if.then21.i.i_crit_edge: ; preds = %dsa_is_dsa_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %dsa_is_dsa_port.exit.i.i.if.then21.i.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.i.if.then21.i.i_crit_edge, %dsa_is_cpu_port.exit.i.i.if.then21.i.i_crit_edge
  %or14105131.i.i = phi i64 [ %or14105125.i.i, %dsa_is_cpu_port.exit.thread.i.i.if.then21.i.i_crit_edge ], [ %or14105130134.i.i, %dsa_is_dsa_port.exit.i.i.if.then21.i.i_crit_edge ], [ %or14105.i.i, %dsa_is_cpu_port.exit.i.i.if.then21.i.i_crit_edge ]
  %or104129.i.i = phi i64 [ %or104124.i.i, %dsa_is_cpu_port.exit.thread.i.i.if.then21.i.i_crit_edge ], [ %or104128135.i.i, %dsa_is_dsa_port.exit.i.i.if.then21.i.i_crit_edge ], [ %or104.i.i, %dsa_is_cpu_port.exit.i.i.if.then21.i.i_crit_edge ]
  %arrayidx22.i235.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 13, i32 %port.0113.i.i
  %233 = ptrtoint ptr %arrayidx22.i235.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 4095, ptr %arrayidx22.i235.i, align 2
  %arrayidx23.i236.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 12, i32 %port.0113.i.i
  %234 = ptrtoint ptr %arrayidx23.i236.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 4095, ptr %arrayidx23.i236.i, align 2
  br label %for.inc.i239.i

for.inc.i239.i:                                   ; preds = %if.then21.i.i, %dsa_is_dsa_port.exit.i.i.for.inc.i239.i_crit_edge, %dsa_is_unused_port.exit.thread.i.i.for.inc.i239.i_crit_edge, %dsa_is_unused_port.exit.i234.i.for.inc.i239.i_crit_edge
  %pvid.sroa.4.1.i.i = phi i64 [ %pvid.sroa.4.0111.i.i, %dsa_is_unused_port.exit.i234.i.for.inc.i239.i_crit_edge ], [ %or104129.i.i, %if.then21.i.i ], [ %or104128135.i.i, %dsa_is_dsa_port.exit.i.i.for.inc.i239.i_crit_edge ], [ %pvid.sroa.4.0111.i.i, %dsa_is_unused_port.exit.thread.i.i.for.inc.i239.i_crit_edge ]
  %pvid.sroa.6.1.i.i = phi i64 [ %pvid.sroa.6.0112.i.i, %dsa_is_unused_port.exit.i234.i.for.inc.i239.i_crit_edge ], [ %or14105131.i.i, %if.then21.i.i ], [ %or14105130134.i.i, %dsa_is_dsa_port.exit.i.i.for.inc.i239.i_crit_edge ], [ %pvid.sroa.6.0112.i.i, %dsa_is_unused_port.exit.thread.i.i.for.inc.i239.i_crit_edge ]
  %inc.i237.i = add nuw i32 %port.0113.i.i, 1
  %235 = ptrtoint ptr %num_ports.i212.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %num_ports.i212.i, align 4
  %cmp.i238.i = icmp ult i32 %inc.i237.i, %236
  br i1 %cmp.i238.i, label %for.inc.i239.i.for.body.i218.i_crit_edge, label %for.inc.i239.i.if.end17.i_crit_edge

for.inc.i239.i.if.end17.i_crit_edge:              ; preds = %for.inc.i239.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

for.inc.i239.i.for.body.i218.i_crit_edge:         ; preds = %for.inc.i239.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i218.i

if.end17.i:                                       ; preds = %for.inc.i239.i.if.end17.i_crit_edge, %if.end7.i.i.if.end17.i_crit_edge
  %pvid.sroa.4.0.lcssa.i.i = phi i64 [ 0, %if.end7.i.i.if.end17.i_crit_edge ], [ %pvid.sroa.4.1.i.i, %for.inc.i239.i.if.end17.i_crit_edge ]
  %pvid.sroa.6.0.lcssa.i.i = phi i64 [ 0, %if.end7.i.i.if.end17.i_crit_edge ], [ %pvid.sroa.6.1.i.i, %for.inc.i239.i.if.end17.i_crit_edge ]
  %237 = ptrtoint ptr %entries3.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %entries3.i.i, align 4
  %239 = call ptr @memset(ptr %238, i32 0, i32 16)
  %pvid.sroa.4.0.arrayidx26.sroa_idx.i.i = getelementptr inbounds i8, ptr %238, i32 16
  %240 = ptrtoint ptr %pvid.sroa.4.0.arrayidx26.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %pvid.sroa.4.0.lcssa.i.i, ptr %pvid.sroa.4.0.arrayidx26.sroa_idx.i.i, align 8
  %pvid.sroa.6.0.arrayidx26.sroa_idx.i.i = getelementptr inbounds i8, ptr %238, i32 24
  %241 = ptrtoint ptr %pvid.sroa.6.0.arrayidx26.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %pvid.sroa.6.0.lcssa.i.i, ptr %pvid.sroa.6.0.arrayidx26.sroa_idx.i.i, align 8
  %pvid.sroa.8.0.arrayidx26.sroa_idx.i.i = getelementptr inbounds i8, ptr %238, i32 32
  %242 = ptrtoint ptr %pvid.sroa.8.0.arrayidx26.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 0, ptr %pvid.sroa.8.0.arrayidx26.sroa_idx.i.i, align 8
  %pvid.sroa.10.0.arrayidx26.sroa_idx.i.i = getelementptr inbounds i8, ptr %238, i32 40
  %243 = ptrtoint ptr %pvid.sroa.10.0.arrayidx26.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 4095, ptr %pvid.sroa.10.0.arrayidx26.sroa_idx.i.i, align 8
  %pvid.sroa.11.0.arrayidx26.sroa_idx.i.i = getelementptr inbounds i8, ptr %238, i32 48
  %244 = ptrtoint ptr %pvid.sroa.11.0.arrayidx26.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 3, ptr %pvid.sroa.11.0.arrayidx26.sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %default_l2_lookup_params.i.i) #10
  %245 = call ptr @memcpy(ptr %default_l2_lookup_params.i.i, ptr @__const.sja1105_init_l2_lookup_params.default_l2_lookup_params, i32 176)
  %246 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ds3.i.i, align 8
  %num_ports.i243.i = getelementptr inbounds %struct.dsa_switch, ptr %247, i32 0, i32 18
  %248 = ptrtoint ptr %num_ports.i243.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %num_ports.i243.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp87.not.i.i = icmp eq i32 %249, 0
  br i1 %cmp87.not.i.i, label %if.end17.i.for.end13.i.i_crit_edge, label %for.body.lr.ph.i248.i

if.end17.i.for.end13.i.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13.i.i

for.body.lr.ph.i248.i:                            ; preds = %if.end17.i
  %dst1.i.i.i244.i = getelementptr inbounds %struct.dsa_switch, ptr %247, i32 0, i32 1
  %250 = ptrtoint ptr %dst1.i.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dst1.i.i.i244.i, align 4
  %ports.i.i.i245.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %ports.i.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %.pn20.i.i.i246.i = load ptr, ptr %ports.i.i.i245.i, align 4
  %cmp.not21.i.i.i247.i = icmp eq ptr %.pn20.i.i.i246.i, %ports.i.i.i245.i
  br label %for.body.i249.i

for.body.i249.i:                                  ; preds = %dsa_is_unused_port.exit.i266.i.for.body.i249.i_crit_edge, %for.body.lr.ph.i248.i
  %num_used_ports.090.i.i = phi i32 [ 0, %for.body.lr.ph.i248.i ], [ %spec.select.i.i, %dsa_is_unused_port.exit.i266.i.for.body.i249.i_crit_edge ]
  %port.088.i.i = phi i32 [ 0, %for.body.lr.ph.i248.i ], [ %inc2.i.i, %dsa_is_unused_port.exit.i266.i.for.body.i249.i_crit_edge ]
  br i1 %cmp.not21.i.i.i247.i, label %for.body.i249.i.dsa_is_unused_port.exit.i266.i_crit_edge, label %for.body.i249.i.for.body.i.i.i253.i_crit_edge

for.body.i249.i.for.body.i.i.i253.i_crit_edge:    ; preds = %for.body.i249.i
  br label %for.body.i.i.i253.i

for.body.i249.i.dsa_is_unused_port.exit.i266.i_crit_edge: ; preds = %for.body.i249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i266.i

for.body.i.i.i253.i:                              ; preds = %for.inc.i.i.i259.i.for.body.i.i.i253.i_crit_edge, %for.body.i249.i.for.body.i.i.i253.i_crit_edge
  %.pn22.i.i.i250.i = phi ptr [ %.pn.i.i.i257.i, %for.inc.i.i.i259.i.for.body.i.i.i253.i_crit_edge ], [ %.pn20.i.i.i246.i, %for.body.i249.i.for.body.i.i.i253.i_crit_edge ]
  %ds3.i.i.i251.i = getelementptr i8, ptr %.pn22.i.i.i250.i, i32 -432
  %253 = ptrtoint ptr %ds3.i.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ds3.i.i.i251.i, align 4
  %cmp4.i.i.i252.i = icmp eq ptr %254, %247
  br i1 %cmp4.i.i.i252.i, label %land.lhs.true.i.i.i256.i, label %for.body.i.i.i253.i.for.inc.i.i.i259.i_crit_edge

for.body.i.i.i253.i.for.inc.i.i.i259.i_crit_edge: ; preds = %for.body.i.i.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i259.i

land.lhs.true.i.i.i256.i:                         ; preds = %for.body.i.i.i253.i
  %index.i.i.i254.i = getelementptr i8, ptr %.pn22.i.i.i250.i, i32 -428
  %255 = ptrtoint ptr %index.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %index.i.i.i254.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %port.088.i.i)
  %cmp5.i.i.i255.i = icmp eq i32 %256, %port.088.i.i
  br i1 %cmp5.i.i.i255.i, label %cleanup.split.loop.exit18.i.i.i261.i, label %land.lhs.true.i.i.i256.i.for.inc.i.i.i259.i_crit_edge

land.lhs.true.i.i.i256.i.for.inc.i.i.i259.i_crit_edge: ; preds = %land.lhs.true.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i259.i

for.inc.i.i.i259.i:                               ; preds = %land.lhs.true.i.i.i256.i.for.inc.i.i.i259.i_crit_edge, %for.body.i.i.i253.i.for.inc.i.i.i259.i_crit_edge
  %257 = ptrtoint ptr %.pn22.i.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %.pn.i.i.i257.i = load ptr, ptr %.pn22.i.i.i250.i, align 4
  %cmp.not.i.i.i258.i = icmp eq ptr %.pn.i.i.i257.i, %ports.i.i.i245.i
  br i1 %cmp.not.i.i.i258.i, label %for.inc.i.i.i259.i.dsa_is_unused_port.exit.i266.i_crit_edge, label %for.inc.i.i.i259.i.for.body.i.i.i253.i_crit_edge

for.inc.i.i.i259.i.for.body.i.i.i253.i_crit_edge: ; preds = %for.inc.i.i.i259.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i253.i

for.inc.i.i.i259.i.dsa_is_unused_port.exit.i266.i_crit_edge: ; preds = %for.inc.i.i.i259.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i266.i

cleanup.split.loop.exit18.i.i.i261.i:             ; preds = %land.lhs.true.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i260.i = getelementptr i8, ptr %.pn22.i.i.i250.i, i32 -448
  br label %dsa_is_unused_port.exit.i266.i

dsa_is_unused_port.exit.i266.i:                   ; preds = %cleanup.split.loop.exit18.i.i.i261.i, %for.inc.i.i.i259.i.dsa_is_unused_port.exit.i266.i_crit_edge, %for.body.i249.i.dsa_is_unused_port.exit.i266.i_crit_edge
  %retval.0.i.i.i262.i = phi ptr [ %dp.0.le.i.i.i260.i, %cleanup.split.loop.exit18.i.i.i261.i ], [ null, %for.body.i249.i.dsa_is_unused_port.exit.i266.i_crit_edge ], [ null, %for.inc.i.i.i259.i.dsa_is_unused_port.exit.i266.i_crit_edge ]
  %type.i.i263.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i262.i, i32 0, i32 6
  %258 = ptrtoint ptr %type.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %type.i.i263.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp.i.i264.i = icmp ne i32 %259, 0
  %inc.i265.i = zext i1 %cmp.i.i264.i to i32
  %spec.select.i.i = add i32 %num_used_ports.090.i.i, %inc.i265.i
  %inc2.i.i = add nuw i32 %port.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc2.i.i, %249
  br i1 %exitcond.not.i.i, label %for.body7.lr.ph.i.i, label %dsa_is_unused_port.exit.i266.i.for.body.i249.i_crit_edge

dsa_is_unused_port.exit.i266.i.for.body.i249.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i249.i

for.body7.lr.ph.i.i:                              ; preds = %dsa_is_unused_port.exit.i266.i
  %div.i.i = sdiv i32 1024, %spec.select.i.i
  %conv.i267.i = sext i32 %div.i.i to i64
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.inc11.i.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %port.193.i.i = phi i32 [ 0, %for.body7.lr.ph.i.i ], [ %inc12.i.i, %for.inc11.i.i.for.body7.i.i_crit_edge ]
  br i1 %cmp.not21.i.i.i247.i, label %for.body7.i.i.dsa_is_unused_port.exit74.i.i_crit_edge, label %for.body7.i.i.for.body.i.i62.i272.i_crit_edge

for.body7.i.i.for.body.i.i62.i272.i_crit_edge:    ; preds = %for.body7.i.i
  br label %for.body.i.i62.i272.i

for.body7.i.i.dsa_is_unused_port.exit74.i.i_crit_edge: ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit74.i.i

for.body.i.i62.i272.i:                            ; preds = %for.inc.i.i68.i278.i.for.body.i.i62.i272.i_crit_edge, %for.body7.i.i.for.body.i.i62.i272.i_crit_edge
  %.pn22.i.i59.i269.i = phi ptr [ %.pn.i.i66.i276.i, %for.inc.i.i68.i278.i.for.body.i.i62.i272.i_crit_edge ], [ %.pn20.i.i.i246.i, %for.body7.i.i.for.body.i.i62.i272.i_crit_edge ]
  %ds3.i.i60.i270.i = getelementptr i8, ptr %.pn22.i.i59.i269.i, i32 -432
  %260 = ptrtoint ptr %ds3.i.i60.i270.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ds3.i.i60.i270.i, align 4
  %cmp4.i.i61.i271.i = icmp eq ptr %261, %247
  br i1 %cmp4.i.i61.i271.i, label %land.lhs.true.i.i65.i275.i, label %for.body.i.i62.i272.i.for.inc.i.i68.i278.i_crit_edge

for.body.i.i62.i272.i.for.inc.i.i68.i278.i_crit_edge: ; preds = %for.body.i.i62.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i68.i278.i

land.lhs.true.i.i65.i275.i:                       ; preds = %for.body.i.i62.i272.i
  %index.i.i63.i273.i = getelementptr i8, ptr %.pn22.i.i59.i269.i, i32 -428
  %262 = ptrtoint ptr %index.i.i63.i273.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %index.i.i63.i273.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %port.193.i.i)
  %cmp5.i.i64.i274.i = icmp eq i32 %263, %port.193.i.i
  br i1 %cmp5.i.i64.i274.i, label %cleanup.split.loop.exit18.i.i70.i280.i, label %land.lhs.true.i.i65.i275.i.for.inc.i.i68.i278.i_crit_edge

land.lhs.true.i.i65.i275.i.for.inc.i.i68.i278.i_crit_edge: ; preds = %land.lhs.true.i.i65.i275.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i68.i278.i

for.inc.i.i68.i278.i:                             ; preds = %land.lhs.true.i.i65.i275.i.for.inc.i.i68.i278.i_crit_edge, %for.body.i.i62.i272.i.for.inc.i.i68.i278.i_crit_edge
  %264 = ptrtoint ptr %.pn22.i.i59.i269.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %.pn.i.i66.i276.i = load ptr, ptr %.pn22.i.i59.i269.i, align 4
  %cmp.not.i.i67.i277.i = icmp eq ptr %.pn.i.i66.i276.i, %ports.i.i.i245.i
  br i1 %cmp.not.i.i67.i277.i, label %for.inc.i.i68.i278.i.dsa_is_unused_port.exit74.i.i_crit_edge, label %for.inc.i.i68.i278.i.for.body.i.i62.i272.i_crit_edge

for.inc.i.i68.i278.i.for.body.i.i62.i272.i_crit_edge: ; preds = %for.inc.i.i68.i278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i62.i272.i

for.inc.i.i68.i278.i.dsa_is_unused_port.exit74.i.i_crit_edge: ; preds = %for.inc.i.i68.i278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit74.i.i

cleanup.split.loop.exit18.i.i70.i280.i:           ; preds = %land.lhs.true.i.i65.i275.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i69.i279.i = getelementptr i8, ptr %.pn22.i.i59.i269.i, i32 -448
  br label %dsa_is_unused_port.exit74.i.i

dsa_is_unused_port.exit74.i.i:                    ; preds = %cleanup.split.loop.exit18.i.i70.i280.i, %for.inc.i.i68.i278.i.dsa_is_unused_port.exit74.i.i_crit_edge, %for.body7.i.i.dsa_is_unused_port.exit74.i.i_crit_edge
  %retval.0.i.i71.i281.i = phi ptr [ %dp.0.le.i.i69.i279.i, %cleanup.split.loop.exit18.i.i70.i280.i ], [ null, %for.body7.i.i.dsa_is_unused_port.exit74.i.i_crit_edge ], [ null, %for.inc.i.i68.i278.i.dsa_is_unused_port.exit74.i.i_crit_edge ]
  %type.i72.i282.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i71.i281.i, i32 0, i32 6
  %265 = ptrtoint ptr %type.i72.i282.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %type.i72.i282.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp.i73.i283.i = icmp eq i32 %266, 0
  br i1 %cmp.i73.i283.i, label %dsa_is_unused_port.exit74.i.i.for.inc11.i.i_crit_edge, label %if.end10.i.i

dsa_is_unused_port.exit74.i.i.for.inc11.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc11.i.i

if.end10.i.i:                                     ; preds = %dsa_is_unused_port.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i284.i = getelementptr [11 x i64], ptr %default_l2_lookup_params.i.i, i32 0, i32 %port.193.i.i
  %267 = ptrtoint ptr %arrayidx.i284.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %conv.i267.i, ptr %arrayidx.i284.i, align 8
  br label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %if.end10.i.i, %dsa_is_unused_port.exit74.i.i.for.inc11.i.i_crit_edge
  %inc12.i.i = add nuw i32 %port.193.i.i, 1
  %exitcond97.not.i.i = icmp eq i32 %inc12.i.i, %249
  br i1 %exitcond97.not.i.i, label %for.inc11.i.i.for.end13.i.i_crit_edge, label %for.inc11.i.i.for.body7.i.i_crit_edge

for.inc11.i.i.for.body7.i.i_crit_edge:            ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.i

for.inc11.i.i.for.end13.i.i_crit_edge:            ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13.i.i

for.end13.i.i:                                    ; preds = %for.inc11.i.i.for.end13.i.i_crit_edge, %if.end17.i.for.end13.i.i_crit_edge
  %arrayidx14.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13
  %entry_count.i285.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 1
  %268 = ptrtoint ptr %entry_count.i285.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %entry_count.i285.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i286.i = icmp eq i32 %269, 0
  br i1 %tobool.not.i286.i, label %for.end13.i.i.if.end17.i290.i_crit_edge, label %if.then15.i.i

for.end13.i.i.if.end17.i290.i_crit_edge:          ; preds = %for.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i290.i

if.then15.i.i:                                    ; preds = %for.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i287.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 2
  %270 = ptrtoint ptr %entries.i287.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %entries.i287.i, align 4
  tail call void @kfree(ptr noundef %271) #10
  %272 = ptrtoint ptr %entry_count.i285.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %entry_count.i285.i, align 4
  br label %if.end17.i290.i

if.end17.i290.i:                                  ; preds = %if.then15.i.i, %for.end13.i.i.if.end17.i290.i_crit_edge
  %273 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx14.i.i, align 4
  %max_entry_count.i288.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %274, i32 0, i32 3
  %275 = ptrtoint ptr %max_entry_count.i288.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %max_entry_count.i288.i, align 4
  %unpacked_entry_size.i289.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %274, i32 0, i32 1
  %277 = ptrtoint ptr %unpacked_entry_size.i289.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %unpacked_entry_size.i289.i, align 4
  %279 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %276, i32 %278) #10
  %280 = extractvalue { i32, i1 } %279, 1
  br i1 %280, label %kcalloc.exit.thread.i291.i, label %if.end7.i.i.i322.i, !prof !330

kcalloc.exit.thread.i291.i:                       ; preds = %if.end17.i290.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries2078.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 2
  %281 = ptrtoint ptr %entries2078.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr null, ptr %entries2078.i.i, align 4
  br label %sja1105_init_l2_lookup_params.exit.thread.i

if.end7.i.i.i322.i:                               ; preds = %if.end17.i290.i
  %282 = extractvalue { i32, i1 } %279, 0
  %call8.i.i.i321.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %282, i32 noundef 3520) #14
  %entries20.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 2
  %283 = ptrtoint ptr %entries20.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call8.i.i.i321.i, ptr %entries20.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call8.i.i.i321.i, null
  br i1 %tobool22.not.i.i, label %if.end7.i.i.i322.i.sja1105_init_l2_lookup_params.exit.thread.i_crit_edge, label %if.end21.i

if.end7.i.i.i322.i.sja1105_init_l2_lookup_params.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i322.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_init_l2_lookup_params.exit.thread.i

sja1105_init_l2_lookup_params.exit.thread.i:      ; preds = %if.end7.i.i.i322.i.sja1105_init_l2_lookup_params.exit.thread.i_crit_edge, %kcalloc.exit.thread.i291.i
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %default_l2_lookup_params.i.i) #10
  br label %do.end12

if.end21.i:                                       ; preds = %if.end7.i.i.i322.i
  %284 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx14.i.i, align 4
  %max_entry_count26.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %285, i32 0, i32 3
  %286 = ptrtoint ptr %max_entry_count26.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %max_entry_count26.i.i, align 4
  %288 = ptrtoint ptr %entry_count.i285.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %entry_count.i285.i, align 4
  %289 = call ptr @memcpy(ptr %call8.i.i.i321.i, ptr %default_l2_lookup_params.i.i, i32 176)
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %default_l2_lookup_params.i.i) #10
  %290 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ds3.i.i, align 8
  %arrayidx.i327.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 8
  %entry_count.i328.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 8, i32 1
  %292 = ptrtoint ptr %entry_count.i328.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %entry_count.i328.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool.not.i329.i = icmp eq i32 %293, 0
  br i1 %tobool.not.i329.i, label %if.end21.i.if.end.i334.i_crit_edge, label %if.then.i331.i

if.end21.i.if.end.i334.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i334.i

if.then.i331.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i330.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 8, i32 2
  %294 = ptrtoint ptr %entries.i330.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %entries.i330.i, align 4
  tail call void @kfree(ptr noundef %295) #10
  %296 = ptrtoint ptr %entry_count.i328.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %entry_count.i328.i, align 4
  br label %if.end.i334.i

if.end.i334.i:                                    ; preds = %if.then.i331.i, %if.end21.i.if.end.i334.i_crit_edge
  %297 = ptrtoint ptr %arrayidx.i327.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx.i327.i, align 4
  %max_entry_count.i332.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %max_entry_count.i332.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %max_entry_count.i332.i, align 4
  %unpacked_entry_size.i333.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %298, i32 0, i32 1
  %301 = ptrtoint ptr %unpacked_entry_size.i333.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %unpacked_entry_size.i333.i, align 4
  %303 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %300, i32 %302) #10
  %304 = extractvalue { i32, i1 } %303, 1
  br i1 %304, label %kcalloc.exit.thread.i335.i, label %if.end7.i.i.i367.i, !prof !330

kcalloc.exit.thread.i335.i:                       ; preds = %if.end.i334.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries4466.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 8, i32 2
  %305 = ptrtoint ptr %entries4466.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr null, ptr %entries4466.i.i, align 4
  br label %do.end12

if.end7.i.i.i367.i:                               ; preds = %if.end.i334.i
  %306 = extractvalue { i32, i1 } %303, 0
  %call8.i.i.i366.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %306, i32 noundef 3520) #14
  %entries4.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 8, i32 2
  %307 = ptrtoint ptr %entries4.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call8.i.i.i366.i, ptr %entries4.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i366.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i367.i.do.end12_crit_edge, label %if.end8.i.i

if.end7.i.i.i367.i.do.end12_crit_edge:            ; preds = %if.end7.i.i.i367.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end8.i.i:                                      ; preds = %if.end7.i.i.i367.i
  %308 = ptrtoint ptr %arrayidx.i327.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx.i327.i, align 4
  %max_entry_count10.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %309, i32 0, i32 3
  %310 = ptrtoint ptr %max_entry_count10.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %max_entry_count10.i.i, align 4
  %312 = ptrtoint ptr %entry_count.i328.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %entry_count.i328.i, align 4
  %num_ports.i370.i = getelementptr inbounds %struct.dsa_switch, ptr %291, i32 0, i32 18
  %313 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %num_ports.i370.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %cmp492.not.i.i = icmp eq i32 %314, 0
  br i1 %cmp492.not.i.i, label %if.end8.i.i.for.end90.i.i_crit_edge, label %for.body.lr.ph.i372.i

if.end8.i.i.for.end90.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90.i.i

for.body.lr.ph.i372.i:                            ; preds = %if.end8.i.i
  %dst1.i.i.i371.i = getelementptr inbounds %struct.dsa_switch, ptr %291, i32 0, i32 1
  br label %for.body.i376.i

for.cond24.preheader.i.i:                         ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %cmp26501.not.i.i = icmp eq i32 %334, 0
  br i1 %cmp26501.not.i.i, label %for.cond24.preheader.i.i.for.end90.i.i_crit_edge, label %for.cond24.preheader.i.i.for.body28.i.i_crit_edge

for.cond24.preheader.i.i.for.body28.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  br label %for.body28.i.i

for.cond24.preheader.i.i.for.end90.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90.i.i

for.body.i376.i:                                  ; preds = %for.inc21.i.i.for.body.i376.i_crit_edge, %for.body.lr.ph.i372.i
  %port.0493.i.i = phi i32 [ 0, %for.body.lr.ph.i372.i ], [ %inc22.i.i, %for.inc21.i.i.for.body.i376.i_crit_edge ]
  %315 = ptrtoint ptr %dst1.i.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dst1.i.i.i371.i, align 4
  %ports.i.i.i373.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %ports.i.i.i373.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %.pn20.i.i.i374.i = load ptr, ptr %ports.i.i.i373.i, align 4
  %cmp.not21.i.i.i375.i = icmp eq ptr %.pn20.i.i.i374.i, %ports.i.i.i373.i
  br i1 %cmp.not21.i.i.i375.i, label %for.body.i376.i.dsa_is_unused_port.exit.i390.i_crit_edge, label %for.body.i376.i.for.body.i.i.i380.i_crit_edge

for.body.i376.i.for.body.i.i.i380.i_crit_edge:    ; preds = %for.body.i376.i
  br label %for.body.i.i.i380.i

for.body.i376.i.dsa_is_unused_port.exit.i390.i_crit_edge: ; preds = %for.body.i376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i390.i

for.body.i.i.i380.i:                              ; preds = %for.inc.i.i.i385.i.for.body.i.i.i380.i_crit_edge, %for.body.i376.i.for.body.i.i.i380.i_crit_edge
  %.pn22.i.i.i377.i = phi ptr [ %.pn.i.i.i383.i, %for.inc.i.i.i385.i.for.body.i.i.i380.i_crit_edge ], [ %.pn20.i.i.i374.i, %for.body.i376.i.for.body.i.i.i380.i_crit_edge ]
  %ds3.i.i.i378.i = getelementptr i8, ptr %.pn22.i.i.i377.i, i32 -432
  %318 = ptrtoint ptr %ds3.i.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ds3.i.i.i378.i, align 4
  %cmp4.i.i.i379.i = icmp eq ptr %319, %291
  br i1 %cmp4.i.i.i379.i, label %land.lhs.true.i.i280.i.i, label %for.body.i.i.i380.i.for.inc.i.i.i385.i_crit_edge

for.body.i.i.i380.i.for.inc.i.i.i385.i_crit_edge: ; preds = %for.body.i.i.i380.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i385.i

land.lhs.true.i.i280.i.i:                         ; preds = %for.body.i.i.i380.i
  %index.i.i.i381.i = getelementptr i8, ptr %.pn22.i.i.i377.i, i32 -428
  %320 = ptrtoint ptr %index.i.i.i381.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %index.i.i.i381.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %321, i32 %port.0493.i.i)
  %cmp5.i.i.i382.i = icmp eq i32 %321, %port.0493.i.i
  br i1 %cmp5.i.i.i382.i, label %cleanup.split.loop.exit18.i.i.i387.i, label %land.lhs.true.i.i280.i.i.for.inc.i.i.i385.i_crit_edge

land.lhs.true.i.i280.i.i.for.inc.i.i.i385.i_crit_edge: ; preds = %land.lhs.true.i.i280.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i385.i

for.inc.i.i.i385.i:                               ; preds = %land.lhs.true.i.i280.i.i.for.inc.i.i.i385.i_crit_edge, %for.body.i.i.i380.i.for.inc.i.i.i385.i_crit_edge
  %322 = ptrtoint ptr %.pn22.i.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %.pn.i.i.i383.i = load ptr, ptr %.pn22.i.i.i377.i, align 4
  %cmp.not.i.i.i384.i = icmp eq ptr %.pn.i.i.i383.i, %ports.i.i.i373.i
  br i1 %cmp.not.i.i.i384.i, label %for.inc.i.i.i385.i.dsa_is_unused_port.exit.i390.i_crit_edge, label %for.inc.i.i.i385.i.for.body.i.i.i380.i_crit_edge

for.inc.i.i.i385.i.for.body.i.i.i380.i_crit_edge: ; preds = %for.inc.i.i.i385.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i380.i

for.inc.i.i.i385.i.dsa_is_unused_port.exit.i390.i_crit_edge: ; preds = %for.inc.i.i.i385.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i390.i

cleanup.split.loop.exit18.i.i.i387.i:             ; preds = %land.lhs.true.i.i280.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i386.i = getelementptr i8, ptr %.pn22.i.i.i377.i, i32 -448
  br label %dsa_is_unused_port.exit.i390.i

dsa_is_unused_port.exit.i390.i:                   ; preds = %cleanup.split.loop.exit18.i.i.i387.i, %for.inc.i.i.i385.i.dsa_is_unused_port.exit.i390.i_crit_edge, %for.body.i376.i.dsa_is_unused_port.exit.i390.i_crit_edge
  %retval.0.i.i281.i.i = phi ptr [ %dp.0.le.i.i.i386.i, %cleanup.split.loop.exit18.i.i.i387.i ], [ null, %for.body.i376.i.dsa_is_unused_port.exit.i390.i_crit_edge ], [ null, %for.inc.i.i.i385.i.dsa_is_unused_port.exit.i390.i_crit_edge ]
  %type.i.i388.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i281.i.i, i32 0, i32 6
  %323 = ptrtoint ptr %type.i.i388.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %type.i.i388.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %cmp.i.i389.i = icmp eq i32 %324, 0
  br i1 %cmp.i.i389.i, label %dsa_is_unused_port.exit.i390.i.for.inc21.i.i_crit_edge, label %for.body18.preheader.i.i

dsa_is_unused_port.exit.i390.i.for.inc21.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i390.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i.i

for.body18.preheader.i.i:                         ; preds = %dsa_is_unused_port.exit.i390.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 0
  %325 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 0, ptr %arrayidx20.i.i, align 8
  %arrayidx20.1.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 1
  %326 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 1, ptr %arrayidx20.1.i.i, align 8
  %arrayidx20.2.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 2
  %327 = ptrtoint ptr %arrayidx20.2.i.i to i32
  call void @__asan_store8_noabort(i32 %327)
  store i64 2, ptr %arrayidx20.2.i.i, align 8
  %arrayidx20.3.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 3
  %328 = ptrtoint ptr %arrayidx20.3.i.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 3, ptr %arrayidx20.3.i.i, align 8
  %arrayidx20.4.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 4
  %329 = ptrtoint ptr %arrayidx20.4.i.i to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 4, ptr %arrayidx20.4.i.i, align 8
  %arrayidx20.5.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 5
  %330 = ptrtoint ptr %arrayidx20.5.i.i to i32
  call void @__asan_store8_noabort(i32 %330)
  store i64 5, ptr %arrayidx20.5.i.i, align 8
  %arrayidx20.6.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 6
  %331 = ptrtoint ptr %arrayidx20.6.i.i to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 6, ptr %arrayidx20.6.i.i, align 8
  %arrayidx20.7.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %port.0493.i.i, i32 3, i32 7
  %332 = ptrtoint ptr %arrayidx20.7.i.i to i32
  call void @__asan_store8_noabort(i32 %332)
  store i64 7, ptr %arrayidx20.7.i.i, align 8
  br label %for.inc21.i.i

for.inc21.i.i:                                    ; preds = %for.body18.preheader.i.i, %dsa_is_unused_port.exit.i390.i.for.inc21.i.i_crit_edge
  %inc22.i.i = add nuw i32 %port.0493.i.i, 1
  %333 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %num_ports.i370.i, align 4
  %cmp.i391.i = icmp ult i32 %inc22.i.i, %334
  br i1 %cmp.i391.i, label %for.inc21.i.i.for.body.i376.i_crit_edge, label %for.cond24.preheader.i.i

for.inc21.i.i.for.body.i376.i_crit_edge:          ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i376.i

for.cond53.preheader.i.i:                         ; preds = %for.inc50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %cmp55509.not.i.i = icmp eq i32 %373, 0
  br i1 %cmp55509.not.i.i, label %for.cond53.preheader.i.i.for.end90.i.i_crit_edge, label %for.cond53.preheader.i.i.for.body57.i.i_crit_edge

for.cond53.preheader.i.i.for.body57.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i
  br label %for.body57.i.i

for.cond53.preheader.i.i.for.end90.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90.i.i

for.body28.i.i:                                   ; preds = %for.inc50.i.i.for.body28.i.i_crit_edge, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge
  %from.0502.i.i = phi i32 [ %inc51.i.i, %for.inc50.i.i.for.body28.i.i_crit_edge ], [ 0, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge ]
  %335 = ptrtoint ptr %dst1.i.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dst1.i.i.i371.i, align 4
  %ports.i.i283.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %ports.i.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %.pn20.i.i284.i.i = load ptr, ptr %ports.i.i283.i.i, align 4
  %cmp.not21.i.i285.i.i = icmp eq ptr %.pn20.i.i284.i.i, %ports.i.i283.i.i
  br i1 %cmp.not21.i.i285.i.i, label %for.body28.i.i.dsa_is_user_port.exit.i.i_crit_edge, label %for.body28.i.i.for.body.i.i289.i.i_crit_edge

for.body28.i.i.for.body.i.i289.i.i_crit_edge:     ; preds = %for.body28.i.i
  br label %for.body.i.i289.i.i

for.body28.i.i.dsa_is_user_port.exit.i.i_crit_edge: ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_user_port.exit.i.i

for.body.i.i289.i.i:                              ; preds = %for.inc.i.i295.i.i.for.body.i.i289.i.i_crit_edge, %for.body28.i.i.for.body.i.i289.i.i_crit_edge
  %.pn22.i.i286.i.i = phi ptr [ %.pn.i.i293.i.i, %for.inc.i.i295.i.i.for.body.i.i289.i.i_crit_edge ], [ %.pn20.i.i284.i.i, %for.body28.i.i.for.body.i.i289.i.i_crit_edge ]
  %ds3.i.i287.i.i = getelementptr i8, ptr %.pn22.i.i286.i.i, i32 -432
  %338 = ptrtoint ptr %ds3.i.i287.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ds3.i.i287.i.i, align 4
  %cmp4.i.i288.i.i = icmp eq ptr %339, %291
  br i1 %cmp4.i.i288.i.i, label %land.lhs.true.i.i292.i.i, label %for.body.i.i289.i.i.for.inc.i.i295.i.i_crit_edge

for.body.i.i289.i.i.for.inc.i.i295.i.i_crit_edge: ; preds = %for.body.i.i289.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i295.i.i

land.lhs.true.i.i292.i.i:                         ; preds = %for.body.i.i289.i.i
  %index.i.i290.i.i = getelementptr i8, ptr %.pn22.i.i286.i.i, i32 -428
  %340 = ptrtoint ptr %index.i.i290.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %index.i.i290.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %341, i32 %from.0502.i.i)
  %cmp5.i.i291.i.i = icmp eq i32 %341, %from.0502.i.i
  br i1 %cmp5.i.i291.i.i, label %cleanup.split.loop.exit18.i.i297.i.i, label %land.lhs.true.i.i292.i.i.for.inc.i.i295.i.i_crit_edge

land.lhs.true.i.i292.i.i.for.inc.i.i295.i.i_crit_edge: ; preds = %land.lhs.true.i.i292.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i295.i.i

for.inc.i.i295.i.i:                               ; preds = %land.lhs.true.i.i292.i.i.for.inc.i.i295.i.i_crit_edge, %for.body.i.i289.i.i.for.inc.i.i295.i.i_crit_edge
  %342 = ptrtoint ptr %.pn22.i.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pn.i.i293.i.i = load ptr, ptr %.pn22.i.i286.i.i, align 4
  %cmp.not.i.i294.i.i = icmp eq ptr %.pn.i.i293.i.i, %ports.i.i283.i.i
  br i1 %cmp.not.i.i294.i.i, label %for.inc.i.i295.i.i.dsa_is_user_port.exit.i.i_crit_edge, label %for.inc.i.i295.i.i.for.body.i.i289.i.i_crit_edge

for.inc.i.i295.i.i.for.body.i.i289.i.i_crit_edge: ; preds = %for.inc.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i289.i.i

for.inc.i.i295.i.i.dsa_is_user_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_user_port.exit.i.i

cleanup.split.loop.exit18.i.i297.i.i:             ; preds = %land.lhs.true.i.i292.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i296.i.i = getelementptr i8, ptr %.pn22.i.i286.i.i, i32 -448
  br label %dsa_is_user_port.exit.i.i

dsa_is_user_port.exit.i.i:                        ; preds = %cleanup.split.loop.exit18.i.i297.i.i, %for.inc.i.i295.i.i.dsa_is_user_port.exit.i.i_crit_edge, %for.body28.i.i.dsa_is_user_port.exit.i.i_crit_edge
  %retval.0.i.i298.i.i = phi ptr [ %dp.0.le.i.i296.i.i, %cleanup.split.loop.exit18.i.i297.i.i ], [ null, %for.body28.i.i.dsa_is_user_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i295.i.i.dsa_is_user_port.exit.i.i_crit_edge ]
  %type.i299.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i298.i.i, i32 0, i32 6
  %343 = ptrtoint ptr %type.i299.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %type.i299.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %344)
  %cmp.i300.i.i = icmp eq i32 %344, 3
  %345 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %num_ports.i370.i, align 4
  br i1 %cmp.i300.i.i, label %for.cond32.preheader.i.i, label %dsa_is_user_port.exit.i.i.for.inc50.i.i_crit_edge

dsa_is_user_port.exit.i.i.for.inc50.i.i_crit_edge: ; preds = %dsa_is_user_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.i.i

for.cond32.preheader.i.i:                         ; preds = %dsa_is_user_port.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp34496.not.i.i = icmp eq i32 %346, 0
  br i1 %cmp34496.not.i.i, label %for.cond32.preheader.i.i.for.end90.i.i_crit_edge, label %for.body36.lr.ph.i.i

for.cond32.preheader.i.i.for.end90.i.i_crit_edge: ; preds = %for.cond32.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90.i.i

for.body36.lr.ph.i.i:                             ; preds = %for.cond32.preheader.i.i
  %arrayidx42.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.0502.i.i
  %fl_domain.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.0502.i.i, i32 2
  %reach_port.i.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.0502.i.i, i32 1
  br label %for.body36.i.i

for.body36.i.i:                                   ; preds = %for.inc47.i.i.for.body36.i.i_crit_edge, %for.body36.lr.ph.i.i
  %to.0497.i.i = phi i32 [ 0, %for.body36.lr.ph.i.i ], [ %inc48.i.i, %for.inc47.i.i.for.body36.i.i_crit_edge ]
  %347 = ptrtoint ptr %dst1.i.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dst1.i.i.i371.i, align 4
  %ports.i.i302.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %ports.i.i302.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %.pn20.i.i303.i.i = load ptr, ptr %ports.i.i302.i.i, align 4
  %cmp.not21.i.i304.i.i = icmp eq ptr %.pn20.i.i303.i.i, %ports.i.i302.i.i
  br i1 %cmp.not21.i.i304.i.i, label %dsa_is_cpu_port.exit.thread.i393.i, label %for.body36.i.i.for.body.i.i308.i.i_crit_edge

for.body36.i.i.for.body.i.i308.i.i_crit_edge:     ; preds = %for.body36.i.i
  br label %for.body.i.i308.i.i

for.body.i.i308.i.i:                              ; preds = %for.inc.i.i314.i.i.for.body.i.i308.i.i_crit_edge, %for.body36.i.i.for.body.i.i308.i.i_crit_edge
  %.pn22.i.i305.i.i = phi ptr [ %.pn.i.i312.i.i, %for.inc.i.i314.i.i.for.body.i.i308.i.i_crit_edge ], [ %.pn20.i.i303.i.i, %for.body36.i.i.for.body.i.i308.i.i_crit_edge ]
  %ds3.i.i306.i.i = getelementptr i8, ptr %.pn22.i.i305.i.i, i32 -432
  %350 = ptrtoint ptr %ds3.i.i306.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ds3.i.i306.i.i, align 4
  %cmp4.i.i307.i.i = icmp eq ptr %351, %291
  br i1 %cmp4.i.i307.i.i, label %land.lhs.true.i.i311.i.i, label %for.body.i.i308.i.i.for.inc.i.i314.i.i_crit_edge

for.body.i.i308.i.i.for.inc.i.i314.i.i_crit_edge: ; preds = %for.body.i.i308.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i314.i.i

land.lhs.true.i.i311.i.i:                         ; preds = %for.body.i.i308.i.i
  %index.i.i309.i.i = getelementptr i8, ptr %.pn22.i.i305.i.i, i32 -428
  %352 = ptrtoint ptr %index.i.i309.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %index.i.i309.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %353, i32 %to.0497.i.i)
  %cmp5.i.i310.i.i = icmp eq i32 %353, %to.0497.i.i
  br i1 %cmp5.i.i310.i.i, label %cleanup.split.loop.exit18.i.i316.i.i, label %land.lhs.true.i.i311.i.i.for.inc.i.i314.i.i_crit_edge

land.lhs.true.i.i311.i.i.for.inc.i.i314.i.i_crit_edge: ; preds = %land.lhs.true.i.i311.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i314.i.i

for.inc.i.i314.i.i:                               ; preds = %land.lhs.true.i.i311.i.i.for.inc.i.i314.i.i_crit_edge, %for.body.i.i308.i.i.for.inc.i.i314.i.i_crit_edge
  %354 = ptrtoint ptr %.pn22.i.i305.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %.pn.i.i312.i.i = load ptr, ptr %.pn22.i.i305.i.i, align 4
  %cmp.not.i.i313.i.i = icmp eq ptr %.pn.i.i312.i.i, %ports.i.i302.i.i
  br i1 %cmp.not.i.i313.i.i, label %for.inc.i.i314.i.i.dsa_is_cpu_port.exit.i392.i_crit_edge, label %for.inc.i.i314.i.i.for.body.i.i308.i.i_crit_edge

for.inc.i.i314.i.i.for.body.i.i308.i.i_crit_edge: ; preds = %for.inc.i.i314.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i308.i.i

for.inc.i.i314.i.i.dsa_is_cpu_port.exit.i392.i_crit_edge: ; preds = %for.inc.i.i314.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit.i392.i

cleanup.split.loop.exit18.i.i316.i.i:             ; preds = %land.lhs.true.i.i311.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i315.i.i = getelementptr i8, ptr %.pn22.i.i305.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i392.i

dsa_is_cpu_port.exit.i392.i:                      ; preds = %cleanup.split.loop.exit18.i.i316.i.i, %for.inc.i.i314.i.i.dsa_is_cpu_port.exit.i392.i_crit_edge
  %retval.0.i.i317.i.i = phi ptr [ %dp.0.le.i.i315.i.i, %cleanup.split.loop.exit18.i.i316.i.i ], [ null, %for.inc.i.i314.i.i.dsa_is_cpu_port.exit.i392.i_crit_edge ]
  %type.i318.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i317.i.i, i32 0, i32 6
  %355 = ptrtoint ptr %type.i318.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %type.i318.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %356)
  %cmp.i319.i.i = icmp eq i32 %356, 1
  br i1 %cmp.i319.i.i, label %dsa_is_cpu_port.exit.i392.i.if.end40.i.i_crit_edge, label %dsa_is_cpu_port.exit.i392.i.for.body.i.i327.i.i_crit_edge

dsa_is_cpu_port.exit.i392.i.for.body.i.i327.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i392.i
  br label %for.body.i.i327.i.i

dsa_is_cpu_port.exit.i392.i.if.end40.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i392.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

dsa_is_cpu_port.exit.thread.i393.i:               ; preds = %for.body36.i.i
  call void @__asan_load4_noabort(i32 24)
  %357 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %357)
  %cmp.i319475.i.i = icmp eq i32 %357, 1
  br i1 %cmp.i319475.i.i, label %dsa_is_cpu_port.exit.thread.i393.i.if.end40.i.i_crit_edge, label %dsa_is_cpu_port.exit.thread.i393.i.dsa_is_dsa_port.exit.i394.i_crit_edge

dsa_is_cpu_port.exit.thread.i393.i.dsa_is_dsa_port.exit.i394.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i393.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i394.i

dsa_is_cpu_port.exit.thread.i393.i.if.end40.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i393.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

for.body.i.i327.i.i:                              ; preds = %for.inc.i.i333.i.i.for.body.i.i327.i.i_crit_edge, %dsa_is_cpu_port.exit.i392.i.for.body.i.i327.i.i_crit_edge
  %.pn22.i.i324.i.i = phi ptr [ %.pn.i.i331.i.i, %for.inc.i.i333.i.i.for.body.i.i327.i.i_crit_edge ], [ %.pn20.i.i303.i.i, %dsa_is_cpu_port.exit.i392.i.for.body.i.i327.i.i_crit_edge ]
  %ds3.i.i325.i.i = getelementptr i8, ptr %.pn22.i.i324.i.i, i32 -432
  %358 = ptrtoint ptr %ds3.i.i325.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ds3.i.i325.i.i, align 4
  %cmp4.i.i326.i.i = icmp eq ptr %359, %291
  br i1 %cmp4.i.i326.i.i, label %land.lhs.true.i.i330.i.i, label %for.body.i.i327.i.i.for.inc.i.i333.i.i_crit_edge

for.body.i.i327.i.i.for.inc.i.i333.i.i_crit_edge: ; preds = %for.body.i.i327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i333.i.i

land.lhs.true.i.i330.i.i:                         ; preds = %for.body.i.i327.i.i
  %index.i.i328.i.i = getelementptr i8, ptr %.pn22.i.i324.i.i, i32 -428
  %360 = ptrtoint ptr %index.i.i328.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %index.i.i328.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %361, i32 %to.0497.i.i)
  %cmp5.i.i329.i.i = icmp eq i32 %361, %to.0497.i.i
  br i1 %cmp5.i.i329.i.i, label %cleanup.split.loop.exit18.i.i335.i.i, label %land.lhs.true.i.i330.i.i.for.inc.i.i333.i.i_crit_edge

land.lhs.true.i.i330.i.i.for.inc.i.i333.i.i_crit_edge: ; preds = %land.lhs.true.i.i330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i333.i.i

for.inc.i.i333.i.i:                               ; preds = %land.lhs.true.i.i330.i.i.for.inc.i.i333.i.i_crit_edge, %for.body.i.i327.i.i.for.inc.i.i333.i.i_crit_edge
  %362 = ptrtoint ptr %.pn22.i.i324.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %.pn.i.i331.i.i = load ptr, ptr %.pn22.i.i324.i.i, align 4
  %cmp.not.i.i332.i.i = icmp eq ptr %.pn.i.i331.i.i, %ports.i.i302.i.i
  br i1 %cmp.not.i.i332.i.i, label %for.inc.i.i333.i.i.dsa_is_dsa_port.exit.i394.i_crit_edge, label %for.inc.i.i333.i.i.for.body.i.i327.i.i_crit_edge

for.inc.i.i333.i.i.for.body.i.i327.i.i_crit_edge: ; preds = %for.inc.i.i333.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i327.i.i

for.inc.i.i333.i.i.dsa_is_dsa_port.exit.i394.i_crit_edge: ; preds = %for.inc.i.i333.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i394.i

cleanup.split.loop.exit18.i.i335.i.i:             ; preds = %land.lhs.true.i.i330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i334.i.i = getelementptr i8, ptr %.pn22.i.i324.i.i, i32 -448
  br label %dsa_is_dsa_port.exit.i394.i

dsa_is_dsa_port.exit.i394.i:                      ; preds = %cleanup.split.loop.exit18.i.i335.i.i, %for.inc.i.i333.i.i.dsa_is_dsa_port.exit.i394.i_crit_edge, %dsa_is_cpu_port.exit.thread.i393.i.dsa_is_dsa_port.exit.i394.i_crit_edge
  %retval.0.i.i336.i.i = phi ptr [ %dp.0.le.i.i334.i.i, %cleanup.split.loop.exit18.i.i335.i.i ], [ null, %dsa_is_cpu_port.exit.thread.i393.i.dsa_is_dsa_port.exit.i394.i_crit_edge ], [ null, %for.inc.i.i333.i.i.dsa_is_dsa_port.exit.i394.i_crit_edge ]
  %type.i337.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i336.i.i, i32 0, i32 6
  %363 = ptrtoint ptr %type.i337.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %type.i337.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %364)
  %cmp.i338.i.i = icmp eq i32 %364, 2
  br i1 %cmp.i338.i.i, label %dsa_is_dsa_port.exit.i394.i.if.end40.i.i_crit_edge, label %dsa_is_dsa_port.exit.i394.i.for.inc47.i.i_crit_edge

dsa_is_dsa_port.exit.i394.i.for.inc47.i.i_crit_edge: ; preds = %dsa_is_dsa_port.exit.i394.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i.i

dsa_is_dsa_port.exit.i394.i.if.end40.i.i_crit_edge: ; preds = %dsa_is_dsa_port.exit.i394.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %dsa_is_dsa_port.exit.i394.i.if.end40.i.i_crit_edge, %dsa_is_cpu_port.exit.thread.i393.i.if.end40.i.i_crit_edge, %dsa_is_cpu_port.exit.i392.i.if.end40.i.i_crit_edge
  %shl.i395.i = shl nuw i32 1, %to.0497.i.i
  %conv41.i.i = zext i32 %shl.i395.i to i64
  %365 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %arrayidx42.i.i, align 8
  %or.i396.i = or i64 %366, %conv41.i.i
  store i64 %or.i396.i, ptr %arrayidx42.i.i, align 8
  %367 = ptrtoint ptr %fl_domain.i.i to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %fl_domain.i.i, align 8
  %or46.i.i = or i64 %368, %conv41.i.i
  store i64 %or46.i.i, ptr %fl_domain.i.i, align 8
  %369 = ptrtoint ptr %reach_port.i.i.i to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %reach_port.i.i.i, align 8
  %or.i.i.i = or i64 %370, %conv41.i.i
  store i64 %or.i.i.i, ptr %reach_port.i.i.i, align 8
  br label %for.inc47.i.i

for.inc47.i.i:                                    ; preds = %if.end40.i.i, %dsa_is_dsa_port.exit.i394.i.for.inc47.i.i_crit_edge
  %inc48.i.i = add nuw i32 %to.0497.i.i, 1
  %371 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %num_ports.i370.i, align 4
  %cmp34.i.i = icmp ult i32 %inc48.i.i, %372
  br i1 %cmp34.i.i, label %for.inc47.i.i.for.body36.i.i_crit_edge, label %for.inc47.i.i.for.inc50.i.i_crit_edge

for.inc47.i.i.for.inc50.i.i_crit_edge:            ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.i.i

for.inc47.i.i.for.body36.i.i_crit_edge:           ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36.i.i

for.inc50.i.i:                                    ; preds = %for.inc47.i.i.for.inc50.i.i_crit_edge, %dsa_is_user_port.exit.i.i.for.inc50.i.i_crit_edge
  %373 = phi i32 [ %346, %dsa_is_user_port.exit.i.i.for.inc50.i.i_crit_edge ], [ %372, %for.inc47.i.i.for.inc50.i.i_crit_edge ]
  %inc51.i.i = add nuw i32 %from.0502.i.i, 1
  %cmp26.i.i = icmp ult i32 %inc51.i.i, %373
  br i1 %cmp26.i.i, label %for.inc50.i.i.for.body28.i.i_crit_edge, label %for.cond53.preheader.i.i

for.inc50.i.i.for.body28.i.i_crit_edge:           ; preds = %for.inc50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i.i

for.body57.i.i:                                   ; preds = %for.inc88.i.i.for.body57.i.i_crit_edge, %for.cond53.preheader.i.i.for.body57.i.i_crit_edge
  %from.1510.i.i = phi i32 [ %inc89.i.i, %for.inc88.i.i.for.body57.i.i_crit_edge ], [ 0, %for.cond53.preheader.i.i.for.body57.i.i_crit_edge ]
  %374 = ptrtoint ptr %dst1.i.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dst1.i.i.i371.i, align 4
  %ports.i.i340.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %ports.i.i340.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %.pn20.i.i341.i.i = load ptr, ptr %ports.i.i340.i.i, align 4
  %cmp.not21.i.i342.i.i = icmp eq ptr %.pn20.i.i341.i.i, %ports.i.i340.i.i
  br i1 %cmp.not21.i.i342.i.i, label %dsa_is_cpu_port.exit358.thread.i.i, label %for.body57.i.i.for.body.i.i346.i.i_crit_edge

for.body57.i.i.for.body.i.i346.i.i_crit_edge:     ; preds = %for.body57.i.i
  br label %for.body.i.i346.i.i

for.body.i.i346.i.i:                              ; preds = %for.inc.i.i352.i.i.for.body.i.i346.i.i_crit_edge, %for.body57.i.i.for.body.i.i346.i.i_crit_edge
  %.pn22.i.i343.i.i = phi ptr [ %.pn.i.i350.i.i, %for.inc.i.i352.i.i.for.body.i.i346.i.i_crit_edge ], [ %.pn20.i.i341.i.i, %for.body57.i.i.for.body.i.i346.i.i_crit_edge ]
  %ds3.i.i344.i.i = getelementptr i8, ptr %.pn22.i.i343.i.i, i32 -432
  %377 = ptrtoint ptr %ds3.i.i344.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ds3.i.i344.i.i, align 4
  %cmp4.i.i345.i.i = icmp eq ptr %378, %291
  br i1 %cmp4.i.i345.i.i, label %land.lhs.true.i.i349.i.i, label %for.body.i.i346.i.i.for.inc.i.i352.i.i_crit_edge

for.body.i.i346.i.i.for.inc.i.i352.i.i_crit_edge: ; preds = %for.body.i.i346.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i352.i.i

land.lhs.true.i.i349.i.i:                         ; preds = %for.body.i.i346.i.i
  %index.i.i347.i.i = getelementptr i8, ptr %.pn22.i.i343.i.i, i32 -428
  %379 = ptrtoint ptr %index.i.i347.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %index.i.i347.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %380, i32 %from.1510.i.i)
  %cmp5.i.i348.i.i = icmp eq i32 %380, %from.1510.i.i
  br i1 %cmp5.i.i348.i.i, label %cleanup.split.loop.exit18.i.i354.i.i, label %land.lhs.true.i.i349.i.i.for.inc.i.i352.i.i_crit_edge

land.lhs.true.i.i349.i.i.for.inc.i.i352.i.i_crit_edge: ; preds = %land.lhs.true.i.i349.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i352.i.i

for.inc.i.i352.i.i:                               ; preds = %land.lhs.true.i.i349.i.i.for.inc.i.i352.i.i_crit_edge, %for.body.i.i346.i.i.for.inc.i.i352.i.i_crit_edge
  %381 = ptrtoint ptr %.pn22.i.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %.pn.i.i350.i.i = load ptr, ptr %.pn22.i.i343.i.i, align 4
  %cmp.not.i.i351.i.i = icmp eq ptr %.pn.i.i350.i.i, %ports.i.i340.i.i
  br i1 %cmp.not.i.i351.i.i, label %for.inc.i.i352.i.i.dsa_is_cpu_port.exit358.i.i_crit_edge, label %for.inc.i.i352.i.i.for.body.i.i346.i.i_crit_edge

for.inc.i.i352.i.i.for.body.i.i346.i.i_crit_edge: ; preds = %for.inc.i.i352.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i346.i.i

for.inc.i.i352.i.i.dsa_is_cpu_port.exit358.i.i_crit_edge: ; preds = %for.inc.i.i352.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit358.i.i

cleanup.split.loop.exit18.i.i354.i.i:             ; preds = %land.lhs.true.i.i349.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i353.i.i = getelementptr i8, ptr %.pn22.i.i343.i.i, i32 -448
  br label %dsa_is_cpu_port.exit358.i.i

dsa_is_cpu_port.exit358.i.i:                      ; preds = %cleanup.split.loop.exit18.i.i354.i.i, %for.inc.i.i352.i.i.dsa_is_cpu_port.exit358.i.i_crit_edge
  %retval.0.i.i355.i.i = phi ptr [ %dp.0.le.i.i353.i.i, %cleanup.split.loop.exit18.i.i354.i.i ], [ null, %for.inc.i.i352.i.i.dsa_is_cpu_port.exit358.i.i_crit_edge ]
  %type.i356.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i355.i.i, i32 0, i32 6
  %382 = ptrtoint ptr %type.i356.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %type.i356.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %383)
  %cmp.i357.i.i = icmp eq i32 %383, 1
  br i1 %cmp.i357.i.i, label %dsa_is_cpu_port.exit358.i.i.if.end62.i397.i_crit_edge, label %dsa_is_cpu_port.exit358.i.i.for.body.i.i366.i.i_crit_edge

dsa_is_cpu_port.exit358.i.i.for.body.i.i366.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit358.i.i
  br label %for.body.i.i366.i.i

dsa_is_cpu_port.exit358.i.i.if.end62.i397.i_crit_edge: ; preds = %dsa_is_cpu_port.exit358.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i397.i

dsa_is_cpu_port.exit358.thread.i.i:               ; preds = %for.body57.i.i
  call void @__asan_load4_noabort(i32 24)
  %384 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %384)
  %cmp.i357478.i.i = icmp eq i32 %384, 1
  br i1 %cmp.i357478.i.i, label %dsa_is_cpu_port.exit358.thread.i.i.if.end62.i397.i_crit_edge, label %dsa_is_cpu_port.exit358.thread.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge

dsa_is_cpu_port.exit358.thread.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit358.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit378.i.i

dsa_is_cpu_port.exit358.thread.i.i.if.end62.i397.i_crit_edge: ; preds = %dsa_is_cpu_port.exit358.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i397.i

for.body.i.i366.i.i:                              ; preds = %for.inc.i.i372.i.i.for.body.i.i366.i.i_crit_edge, %dsa_is_cpu_port.exit358.i.i.for.body.i.i366.i.i_crit_edge
  %.pn22.i.i363.i.i = phi ptr [ %.pn.i.i370.i.i, %for.inc.i.i372.i.i.for.body.i.i366.i.i_crit_edge ], [ %.pn20.i.i341.i.i, %dsa_is_cpu_port.exit358.i.i.for.body.i.i366.i.i_crit_edge ]
  %ds3.i.i364.i.i = getelementptr i8, ptr %.pn22.i.i363.i.i, i32 -432
  %385 = ptrtoint ptr %ds3.i.i364.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %ds3.i.i364.i.i, align 4
  %cmp4.i.i365.i.i = icmp eq ptr %386, %291
  br i1 %cmp4.i.i365.i.i, label %land.lhs.true.i.i369.i.i, label %for.body.i.i366.i.i.for.inc.i.i372.i.i_crit_edge

for.body.i.i366.i.i.for.inc.i.i372.i.i_crit_edge: ; preds = %for.body.i.i366.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i372.i.i

land.lhs.true.i.i369.i.i:                         ; preds = %for.body.i.i366.i.i
  %index.i.i367.i.i = getelementptr i8, ptr %.pn22.i.i363.i.i, i32 -428
  %387 = ptrtoint ptr %index.i.i367.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %index.i.i367.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %from.1510.i.i)
  %cmp5.i.i368.i.i = icmp eq i32 %388, %from.1510.i.i
  br i1 %cmp5.i.i368.i.i, label %cleanup.split.loop.exit18.i.i374.i.i, label %land.lhs.true.i.i369.i.i.for.inc.i.i372.i.i_crit_edge

land.lhs.true.i.i369.i.i.for.inc.i.i372.i.i_crit_edge: ; preds = %land.lhs.true.i.i369.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i372.i.i

for.inc.i.i372.i.i:                               ; preds = %land.lhs.true.i.i369.i.i.for.inc.i.i372.i.i_crit_edge, %for.body.i.i366.i.i.for.inc.i.i372.i.i_crit_edge
  %389 = ptrtoint ptr %.pn22.i.i363.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %.pn.i.i370.i.i = load ptr, ptr %.pn22.i.i363.i.i, align 4
  %cmp.not.i.i371.i.i = icmp eq ptr %.pn.i.i370.i.i, %ports.i.i340.i.i
  br i1 %cmp.not.i.i371.i.i, label %for.inc.i.i372.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge, label %for.inc.i.i372.i.i.for.body.i.i366.i.i_crit_edge

for.inc.i.i372.i.i.for.body.i.i366.i.i_crit_edge: ; preds = %for.inc.i.i372.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i366.i.i

for.inc.i.i372.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge: ; preds = %for.inc.i.i372.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit378.i.i

cleanup.split.loop.exit18.i.i374.i.i:             ; preds = %land.lhs.true.i.i369.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i373.i.i = getelementptr i8, ptr %.pn22.i.i363.i.i, i32 -448
  br label %dsa_is_dsa_port.exit378.i.i

dsa_is_dsa_port.exit378.i.i:                      ; preds = %cleanup.split.loop.exit18.i.i374.i.i, %for.inc.i.i372.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge, %dsa_is_cpu_port.exit358.thread.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge
  %retval.0.i.i375.i.i = phi ptr [ %dp.0.le.i.i373.i.i, %cleanup.split.loop.exit18.i.i374.i.i ], [ null, %dsa_is_cpu_port.exit358.thread.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge ], [ null, %for.inc.i.i372.i.i.dsa_is_dsa_port.exit378.i.i_crit_edge ]
  %type.i376.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i375.i.i, i32 0, i32 6
  %390 = ptrtoint ptr %type.i376.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %type.i376.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %391)
  %cmp.i377.i.i = icmp eq i32 %391, 2
  br i1 %cmp.i377.i.i, label %dsa_is_dsa_port.exit378.i.i.if.end62.i397.i_crit_edge, label %dsa_is_dsa_port.exit378.i.i.for.inc88.i.i_crit_edge

dsa_is_dsa_port.exit378.i.i.for.inc88.i.i_crit_edge: ; preds = %dsa_is_dsa_port.exit378.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc88.i.i

dsa_is_dsa_port.exit378.i.i.if.end62.i397.i_crit_edge: ; preds = %dsa_is_dsa_port.exit378.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i397.i

if.end62.i397.i:                                  ; preds = %dsa_is_dsa_port.exit378.i.i.if.end62.i397.i_crit_edge, %dsa_is_cpu_port.exit358.thread.i.i.if.end62.i397.i_crit_edge, %dsa_is_cpu_port.exit358.i.i.if.end62.i397.i_crit_edge
  %392 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %num_ports.i370.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp65505.not.i.i = icmp eq i32 %393, 0
  br i1 %cmp65505.not.i.i, label %if.end62.i397.i.for.inc88.i.i_crit_edge, label %for.body67.lr.ph.i.i

if.end62.i397.i.for.inc88.i.i_crit_edge:          ; preds = %if.end62.i397.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc88.i.i

for.body67.lr.ph.i.i:                             ; preds = %if.end62.i397.i
  %arrayidx77.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.1510.i.i
  %fl_domain83.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.1510.i.i, i32 2
  %reach_port.i401.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %from.1510.i.i, i32 1
  br label %for.body67.i.i

for.body67.i.i:                                   ; preds = %for.inc85.i.i.for.body67.i.i_crit_edge, %for.body67.lr.ph.i.i
  %to.1506.i.i = phi i32 [ 0, %for.body67.lr.ph.i.i ], [ %inc86.i.i, %for.inc85.i.i.for.body67.i.i_crit_edge ]
  %394 = ptrtoint ptr %dst1.i.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dst1.i.i.i371.i, align 4
  %ports.i.i380.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %ports.i.i380.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %.pn20.i.i381.i.i = load ptr, ptr %ports.i.i380.i.i, align 4
  %cmp.not21.i.i382.i.i = icmp eq ptr %.pn20.i.i381.i.i, %ports.i.i380.i.i
  br i1 %cmp.not21.i.i382.i.i, label %for.body67.i.i.dsa_is_unused_port.exit398.i.i_crit_edge, label %for.body67.i.i.for.body.i.i386.i.i_crit_edge

for.body67.i.i.for.body.i.i386.i.i_crit_edge:     ; preds = %for.body67.i.i
  br label %for.body.i.i386.i.i

for.body67.i.i.dsa_is_unused_port.exit398.i.i_crit_edge: ; preds = %for.body67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit398.i.i

for.body.i.i386.i.i:                              ; preds = %for.inc.i.i392.i.i.for.body.i.i386.i.i_crit_edge, %for.body67.i.i.for.body.i.i386.i.i_crit_edge
  %.pn22.i.i383.i.i = phi ptr [ %.pn.i.i390.i.i, %for.inc.i.i392.i.i.for.body.i.i386.i.i_crit_edge ], [ %.pn20.i.i381.i.i, %for.body67.i.i.for.body.i.i386.i.i_crit_edge ]
  %ds3.i.i384.i.i = getelementptr i8, ptr %.pn22.i.i383.i.i, i32 -432
  %397 = ptrtoint ptr %ds3.i.i384.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ds3.i.i384.i.i, align 4
  %cmp4.i.i385.i.i = icmp eq ptr %398, %291
  br i1 %cmp4.i.i385.i.i, label %land.lhs.true.i.i389.i.i, label %for.body.i.i386.i.i.for.inc.i.i392.i.i_crit_edge

for.body.i.i386.i.i.for.inc.i.i392.i.i_crit_edge: ; preds = %for.body.i.i386.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i392.i.i

land.lhs.true.i.i389.i.i:                         ; preds = %for.body.i.i386.i.i
  %index.i.i387.i.i = getelementptr i8, ptr %.pn22.i.i383.i.i, i32 -428
  %399 = ptrtoint ptr %index.i.i387.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %index.i.i387.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %400, i32 %to.1506.i.i)
  %cmp5.i.i388.i.i = icmp eq i32 %400, %to.1506.i.i
  br i1 %cmp5.i.i388.i.i, label %cleanup.split.loop.exit18.i.i394.i.i, label %land.lhs.true.i.i389.i.i.for.inc.i.i392.i.i_crit_edge

land.lhs.true.i.i389.i.i.for.inc.i.i392.i.i_crit_edge: ; preds = %land.lhs.true.i.i389.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i392.i.i

for.inc.i.i392.i.i:                               ; preds = %land.lhs.true.i.i389.i.i.for.inc.i.i392.i.i_crit_edge, %for.body.i.i386.i.i.for.inc.i.i392.i.i_crit_edge
  %401 = ptrtoint ptr %.pn22.i.i383.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %.pn.i.i390.i.i = load ptr, ptr %.pn22.i.i383.i.i, align 4
  %cmp.not.i.i391.i.i = icmp eq ptr %.pn.i.i390.i.i, %ports.i.i380.i.i
  br i1 %cmp.not.i.i391.i.i, label %for.inc.i.i392.i.i.dsa_is_unused_port.exit398.i.i_crit_edge, label %for.inc.i.i392.i.i.for.body.i.i386.i.i_crit_edge

for.inc.i.i392.i.i.for.body.i.i386.i.i_crit_edge: ; preds = %for.inc.i.i392.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i386.i.i

for.inc.i.i392.i.i.dsa_is_unused_port.exit398.i.i_crit_edge: ; preds = %for.inc.i.i392.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit398.i.i

cleanup.split.loop.exit18.i.i394.i.i:             ; preds = %land.lhs.true.i.i389.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i393.i.i = getelementptr i8, ptr %.pn22.i.i383.i.i, i32 -448
  br label %dsa_is_unused_port.exit398.i.i

dsa_is_unused_port.exit398.i.i:                   ; preds = %cleanup.split.loop.exit18.i.i394.i.i, %for.inc.i.i392.i.i.dsa_is_unused_port.exit398.i.i_crit_edge, %for.body67.i.i.dsa_is_unused_port.exit398.i.i_crit_edge
  %retval.0.i.i395.i.i = phi ptr [ %dp.0.le.i.i393.i.i, %cleanup.split.loop.exit18.i.i394.i.i ], [ null, %for.body67.i.i.dsa_is_unused_port.exit398.i.i_crit_edge ], [ null, %for.inc.i.i392.i.i.dsa_is_unused_port.exit398.i.i_crit_edge ]
  %type.i396.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i395.i.i, i32 0, i32 6
  %402 = ptrtoint ptr %type.i396.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %type.i396.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %cmp.i397.i.i = icmp eq i32 %403, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %from.1510.i.i, i32 %to.1506.i.i)
  %cmp71.i.i = icmp eq i32 %from.1510.i.i, %to.1506.i.i
  %or.cond.i.i = select i1 %cmp.i397.i.i, i1 true, i1 %cmp71.i.i
  br i1 %or.cond.i.i, label %dsa_is_unused_port.exit398.i.i.for.inc85.i.i_crit_edge, label %if.end74.i.i

dsa_is_unused_port.exit398.i.i.for.inc85.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit398.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i.i

if.end74.i.i:                                     ; preds = %dsa_is_unused_port.exit398.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl75.i.i = shl nuw i32 1, %to.1506.i.i
  %conv76.i.i = zext i32 %shl75.i.i to i64
  %404 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %arrayidx77.i.i, align 8
  %or79.i.i = or i64 %405, %conv76.i.i
  store i64 %or79.i.i, ptr %arrayidx77.i.i, align 8
  %406 = ptrtoint ptr %fl_domain83.i.i to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %fl_domain83.i.i, align 8
  %or84.i.i = or i64 %407, %conv76.i.i
  store i64 %or84.i.i, ptr %fl_domain83.i.i, align 8
  %408 = ptrtoint ptr %reach_port.i401.i.i to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %reach_port.i401.i.i, align 8
  %or.i402.i.i = or i64 %409, %conv76.i.i
  store i64 %or.i402.i.i, ptr %reach_port.i401.i.i, align 8
  br label %for.inc85.i.i

for.inc85.i.i:                                    ; preds = %if.end74.i.i, %dsa_is_unused_port.exit398.i.i.for.inc85.i.i_crit_edge
  %inc86.i.i = add nuw i32 %to.1506.i.i, 1
  %410 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %num_ports.i370.i, align 4
  %cmp65.i.i = icmp ult i32 %inc86.i.i, %411
  br i1 %cmp65.i.i, label %for.inc85.i.i.for.body67.i.i_crit_edge, label %for.inc85.i.i.for.inc88.i.i_crit_edge

for.inc85.i.i.for.inc88.i.i_crit_edge:            ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc88.i.i

for.inc85.i.i.for.body67.i.i_crit_edge:           ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67.i.i

for.inc88.i.i:                                    ; preds = %for.inc85.i.i.for.inc88.i.i_crit_edge, %if.end62.i397.i.for.inc88.i.i_crit_edge, %dsa_is_dsa_port.exit378.i.i.for.inc88.i.i_crit_edge
  %inc89.i.i = add nuw i32 %from.1510.i.i, 1
  %412 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %num_ports.i370.i, align 4
  %cmp55.i.i = icmp ult i32 %inc89.i.i, %413
  br i1 %cmp55.i.i, label %for.inc88.i.i.for.body57.i.i_crit_edge, label %for.inc88.i.i.for.end90.i.i_crit_edge

for.inc88.i.i.for.end90.i.i_crit_edge:            ; preds = %for.inc88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90.i.i

for.inc88.i.i.for.body57.i.i_crit_edge:           ; preds = %for.inc88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57.i.i

for.end90.i.i:                                    ; preds = %for.inc88.i.i.for.end90.i.i_crit_edge, %for.cond32.preheader.i.i.for.end90.i.i_crit_edge, %for.cond53.preheader.i.i.for.end90.i.i_crit_edge, %for.cond24.preheader.i.i.for.end90.i.i_crit_edge, %if.end8.i.i.for.end90.i.i_crit_edge
  %dst91.i.i = getelementptr inbounds %struct.dsa_switch, ptr %291, i32 0, i32 1
  %414 = ptrtoint ptr %dst91.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %dst91.i.i, align 4
  %rtable.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %415, i32 0, i32 10
  %416 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %.pn513.i.i = load ptr, ptr %rtable.i.i, align 4
  %cmp94.not514.i.i = icmp eq ptr %.pn513.i.i, %rtable.i.i
  br i1 %cmp94.not514.i.i, label %for.end90.i.i.for.cond125.preheader.i.i_crit_edge, label %for.body96.lr.ph.i.i

for.end90.i.i.for.cond125.preheader.i.i_crit_edge: ; preds = %for.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond125.preheader.i.i

for.body96.lr.ph.i.i:                             ; preds = %for.end90.i.i
  %index.i10.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %291, i32 0, i32 2
  br label %for.body96.i.i

for.cond125.preheader.i.i:                        ; preds = %for.inc118.i.i.for.cond125.preheader.i.i_crit_edge, %for.end90.i.i.for.cond125.preheader.i.i_crit_edge
  %417 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %num_ports.i370.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %cmp127516.not.i.i = icmp eq i32 %418, 0
  br i1 %cmp127516.not.i.i, label %for.cond125.preheader.i.i.for.cond144.preheader.i.i.preheader_crit_edge, label %for.body129.lr.ph.i.i

for.cond125.preheader.i.i.for.cond144.preheader.i.i.preheader_crit_edge: ; preds = %for.cond125.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond144.preheader.i.i.preheader

for.body129.lr.ph.i.i:                            ; preds = %for.cond125.preheader.i.i
  %ucast_egress_floods.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 5
  %bcast_egress_floods.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 6
  br label %for.body129.i.i

for.body96.i.i:                                   ; preds = %for.inc118.i.i.for.body96.i.i_crit_edge, %for.body96.lr.ph.i.i
  %.pn515.i.i = phi ptr [ %.pn513.i.i, %for.body96.lr.ph.i.i ], [ %.pn.i402.i, %for.inc118.i.i.for.body96.i.i_crit_edge ]
  %dl.0.i.i = getelementptr i8, ptr %.pn515.i.i, i32 -8
  %419 = ptrtoint ptr %dl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dl.0.i.i, align 4
  %ds97.i.i = getelementptr inbounds %struct.dsa_port, ptr %420, i32 0, i32 4
  %421 = ptrtoint ptr %ds97.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ds97.i.i, align 4
  %cmp98.not.i.i = icmp eq ptr %422, %291
  br i1 %cmp98.not.i.i, label %lor.lhs.false.i398.i, label %for.body96.i.i.for.inc118.i.i_crit_edge

for.body96.i.i.for.inc118.i.i_crit_edge:          ; preds = %for.body96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc118.i.i

lor.lhs.false.i398.i:                             ; preds = %for.body96.i.i
  %link_dp.i.i = getelementptr i8, ptr %.pn515.i.i, i32 -4
  %423 = ptrtoint ptr %link_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %link_dp.i.i, align 4
  %cpu_dp.i.i = getelementptr inbounds %struct.dsa_port, ptr %424, i32 0, i32 8
  %425 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %cpu_dp.i.i, align 4
  %cpu_dp101.i.i = getelementptr inbounds %struct.dsa_port, ptr %420, i32 0, i32 8
  %427 = ptrtoint ptr %cpu_dp101.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %cpu_dp101.i.i, align 4
  %cmp102.i.i = icmp eq ptr %426, %428
  br i1 %cmp102.i.i, label %lor.lhs.false.i398.i.for.inc118.i.i_crit_edge, label %if.end105.i.i

lor.lhs.false.i398.i.for.inc118.i.i_crit_edge:    ; preds = %lor.lhs.false.i398.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc118.i.i

if.end105.i.i:                                    ; preds = %lor.lhs.false.i398.i
  %index.i399.i = getelementptr inbounds %struct.dsa_port, ptr %420, i32 0, i32 5
  %429 = ptrtoint ptr %index.i399.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %index.i399.i, align 4
  %431 = ptrtoint ptr %dst91.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %dst91.i.i, align 4
  %ports.i.i404.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %ports.i.i404.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %.pn20.i.i405.i.i = load ptr, ptr %ports.i.i404.i.i, align 4
  %cmp.not21.i.i406.i.i = icmp eq ptr %.pn20.i.i405.i.i, %ports.i.i404.i.i
  br i1 %cmp.not21.i.i406.i.i, label %if.end105.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %if.end105.i.i.for.body.i.i410.i.i_crit_edge

if.end105.i.i.for.body.i.i410.i.i_crit_edge:      ; preds = %if.end105.i.i
  br label %for.body.i.i410.i.i

if.end105.i.i.dsa_to_port.exit.i.i.i_crit_edge:   ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i.i.i

for.body.i.i410.i.i:                              ; preds = %for.inc.i.i416.i.i.for.body.i.i410.i.i_crit_edge, %if.end105.i.i.for.body.i.i410.i.i_crit_edge
  %.pn22.i.i407.i.i = phi ptr [ %.pn.i.i414.i.i, %for.inc.i.i416.i.i.for.body.i.i410.i.i_crit_edge ], [ %.pn20.i.i405.i.i, %if.end105.i.i.for.body.i.i410.i.i_crit_edge ]
  %ds3.i.i408.i.i = getelementptr i8, ptr %.pn22.i.i407.i.i, i32 -432
  %434 = ptrtoint ptr %ds3.i.i408.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %ds3.i.i408.i.i, align 4
  %cmp4.i.i409.i.i = icmp eq ptr %435, %291
  br i1 %cmp4.i.i409.i.i, label %land.lhs.true.i.i413.i.i, label %for.body.i.i410.i.i.for.inc.i.i416.i.i_crit_edge

for.body.i.i410.i.i.for.inc.i.i416.i.i_crit_edge: ; preds = %for.body.i.i410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i416.i.i

land.lhs.true.i.i413.i.i:                         ; preds = %for.body.i.i410.i.i
  %index.i.i411.i.i = getelementptr i8, ptr %.pn22.i.i407.i.i, i32 -428
  %436 = ptrtoint ptr %index.i.i411.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %index.i.i411.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %437, i32 %430)
  %cmp5.i.i412.i.i = icmp eq i32 %437, %430
  br i1 %cmp5.i.i412.i.i, label %cleanup.split.loop.exit18.i.i418.i.i, label %land.lhs.true.i.i413.i.i.for.inc.i.i416.i.i_crit_edge

land.lhs.true.i.i413.i.i.for.inc.i.i416.i.i_crit_edge: ; preds = %land.lhs.true.i.i413.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i416.i.i

for.inc.i.i416.i.i:                               ; preds = %land.lhs.true.i.i413.i.i.for.inc.i.i416.i.i_crit_edge, %for.body.i.i410.i.i.for.inc.i.i416.i.i_crit_edge
  %438 = ptrtoint ptr %.pn22.i.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %.pn.i.i414.i.i = load ptr, ptr %.pn22.i.i407.i.i, align 4
  %cmp.not.i.i415.i.i = icmp eq ptr %.pn.i.i414.i.i, %ports.i.i404.i.i
  br i1 %cmp.not.i.i415.i.i, label %for.inc.i.i416.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %for.inc.i.i416.i.i.for.body.i.i410.i.i_crit_edge

for.inc.i.i416.i.i.for.body.i.i410.i.i_crit_edge: ; preds = %for.inc.i.i416.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i410.i.i

for.inc.i.i416.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i416.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i.i.i

cleanup.split.loop.exit18.i.i418.i.i:             ; preds = %land.lhs.true.i.i413.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i417.i.i = getelementptr i8, ptr %.pn22.i.i407.i.i, i32 -448
  br label %dsa_to_port.exit.i.i.i

dsa_to_port.exit.i.i.i:                           ; preds = %cleanup.split.loop.exit18.i.i418.i.i, %for.inc.i.i416.i.i.dsa_to_port.exit.i.i.i_crit_edge, %if.end105.i.i.dsa_to_port.exit.i.i.i_crit_edge
  %retval.0.i.i419.i.i = phi ptr [ %dp.0.le.i.i417.i.i, %cleanup.split.loop.exit18.i.i418.i.i ], [ null, %if.end105.i.i.dsa_to_port.exit.i.i.i_crit_edge ], [ null, %for.inc.i.i416.i.i.dsa_to_port.exit.i.i.i_crit_edge ]
  %cpu_dp1.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i419.i.i, i32 0, i32 8
  %439 = ptrtoint ptr %cpu_dp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %cpu_dp1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %440, null
  br i1 %tobool.not.i.i.i, label %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, label %if.end.i.i.i

dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge: ; preds = %dsa_to_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_upstream_port.exit.i.i

if.end.i.i.i:                                     ; preds = %dsa_to_port.exit.i.i.i
  %ds2.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %440, i32 0, i32 4
  %441 = ptrtoint ptr %ds2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %ds2.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %442, i32 0, i32 2
  %443 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %index.i.i.i, align 4
  %index3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %440, i32 0, i32 5
  %445 = ptrtoint ptr %index3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %index3.i.i.i, align 4
  %447 = ptrtoint ptr %index.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %index.i10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %448, i32 %444)
  %cmp.i.i.i400.i = icmp eq i32 %448, %444
  br i1 %cmp.i.i.i400.i, label %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_upstream_port.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %rtable.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %432, i32 0, i32 10
  %449 = ptrtoint ptr %rtable.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %.pn22.i.i.i.i.i = load ptr, ptr %rtable.i.i.i.i.i, align 4
  %cmp.not23.i.i.i.i.i = icmp eq ptr %.pn22.i.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not23.i.i.i.i.i, label %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, label %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge:     ; preds = %if.else.i.i.i.i
  br label %for.body.i.i.i.i.i

if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_routing_port.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %.pn24.i.i.i.i.i = phi ptr [ %.pn.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %.pn22.i.i.i.i.i, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -8
  %450 = ptrtoint ptr %dl.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dl.0.i.i.i.i.i, align 4
  %ds3.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %451, i32 0, i32 4
  %452 = ptrtoint ptr %ds3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %ds3.i.i.i.i.i, align 4
  %cmp4.i.i.i.i.i = icmp eq ptr %453, %291
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %link_dp.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -4
  %454 = ptrtoint ptr %link_dp.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %link_dp.i.i.i.i.i, align 4
  %ds5.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %455, i32 0, i32 4
  %456 = ptrtoint ptr %ds5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ds5.i.i.i.i.i, align 4
  %index.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %457, i32 0, i32 2
  %458 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %index.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %459, i32 %444)
  %cmp6.i.i.i.i.i = icmp eq i32 %459, %444
  br i1 %cmp6.i.i.i.i.i, label %if.then.i.i.i420.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

if.then.i.i.i420.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %index8.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %451, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %460 = ptrtoint ptr %.pn24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %.pn.i.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_routing_port.exit.i.i.i.i

dsa_routing_port.exit.i.i.i.i:                    ; preds = %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, %if.then.i.i.i420.i.i, %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge
  %retval.0.in.i.i.i.i.i = phi ptr [ %index8.i.i.i.i.i, %if.then.i.i.i420.i.i ], [ %num_ports.i370.i, %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge ], [ %num_ports.i370.i, %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge ]
  %461 = ptrtoint ptr %retval.0.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %retval.0.i.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i.i, align 4
  br label %dsa_upstream_port.exit.i.i

dsa_upstream_port.exit.i.i:                       ; preds = %dsa_routing_port.exit.i.i.i.i, %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge
  %retval.0.i.i401.i = phi i32 [ %430, %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge ], [ %retval.0.i.i.i.i.i, %dsa_routing_port.exit.i.i.i.i ], [ %446, %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge ]
  %462 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %291, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %463, ptr noundef nonnull @.str.112, i32 noundef %430, i32 noundef %retval.0.i.i401.i) #13
  %shl.i421.i.i = shl nuw i32 1, %retval.0.i.i401.i
  %neg.i.i.i = xor i32 %shl.i421.i.i, -1
  %conv2.i.i.i = zext i32 %neg.i.i.i to i64
  %reach_port4.i.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %430, i32 1
  %464 = ptrtoint ptr %reach_port4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %reach_port4.i.i.i, align 8
  %and.i.i.i = and i64 %465, %conv2.i.i.i
  store i64 %and.i.i.i, ptr %reach_port4.i.i.i, align 8
  %arrayidx110.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %430
  %466 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %arrayidx110.i.i, align 8
  %and.i.i = and i64 %467, %conv2.i.i.i
  store i64 %and.i.i, ptr %arrayidx110.i.i, align 8
  %fl_domain116.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %430, i32 2
  %468 = ptrtoint ptr %fl_domain116.i.i to i32
  call void @__asan_load8_noabort(i32 %468)
  %469 = load i64, ptr %fl_domain116.i.i, align 8
  %and117.i.i = and i64 %469, %conv2.i.i.i
  store i64 %and117.i.i, ptr %fl_domain116.i.i, align 8
  br label %for.inc118.i.i

for.inc118.i.i:                                   ; preds = %dsa_upstream_port.exit.i.i, %lor.lhs.false.i398.i.for.inc118.i.i_crit_edge, %for.body96.i.i.for.inc118.i.i_crit_edge
  %470 = ptrtoint ptr %.pn515.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %.pn.i402.i = load ptr, ptr %.pn515.i.i, align 4
  %cmp94.not.i.i = icmp eq ptr %.pn.i402.i, %rtable.i.i
  br i1 %cmp94.not.i.i, label %for.inc118.i.i.for.cond125.preheader.i.i_crit_edge, label %for.inc118.i.i.for.body96.i.i_crit_edge

for.inc118.i.i.for.body96.i.i_crit_edge:          ; preds = %for.inc118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body96.i.i

for.inc118.i.i.for.cond125.preheader.i.i_crit_edge: ; preds = %for.inc118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond125.preheader.i.i

for.body129.i.i:                                  ; preds = %for.inc137.i.i.for.body129.i.i_crit_edge, %for.body129.lr.ph.i.i
  %port.1517.i.i = phi i32 [ 0, %for.body129.lr.ph.i.i ], [ %inc138.i.i, %for.inc137.i.i.for.body129.i.i_crit_edge ]
  %471 = ptrtoint ptr %dst91.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %dst91.i.i, align 4
  %ports.i.i424.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %472, i32 0, i32 1
  %473 = ptrtoint ptr %ports.i.i424.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %.pn20.i.i425.i.i = load ptr, ptr %ports.i.i424.i.i, align 4
  %cmp.not21.i.i426.i.i = icmp eq ptr %.pn20.i.i425.i.i, %ports.i.i424.i.i
  br i1 %cmp.not21.i.i426.i.i, label %for.body129.i.i.dsa_is_unused_port.exit443.i.i_crit_edge, label %for.body129.i.i.for.body.i.i430.i.i_crit_edge

for.body129.i.i.for.body.i.i430.i.i_crit_edge:    ; preds = %for.body129.i.i
  br label %for.body.i.i430.i.i

for.body129.i.i.dsa_is_unused_port.exit443.i.i_crit_edge: ; preds = %for.body129.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit443.i.i

for.body.i.i430.i.i:                              ; preds = %for.inc.i.i436.i.i.for.body.i.i430.i.i_crit_edge, %for.body129.i.i.for.body.i.i430.i.i_crit_edge
  %.pn22.i.i427.i.i = phi ptr [ %.pn.i.i434.i.i, %for.inc.i.i436.i.i.for.body.i.i430.i.i_crit_edge ], [ %.pn20.i.i425.i.i, %for.body129.i.i.for.body.i.i430.i.i_crit_edge ]
  %ds3.i.i428.i.i = getelementptr i8, ptr %.pn22.i.i427.i.i, i32 -432
  %474 = ptrtoint ptr %ds3.i.i428.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %ds3.i.i428.i.i, align 4
  %cmp4.i.i429.i.i = icmp eq ptr %475, %291
  br i1 %cmp4.i.i429.i.i, label %land.lhs.true.i.i433.i.i, label %for.body.i.i430.i.i.for.inc.i.i436.i.i_crit_edge

for.body.i.i430.i.i.for.inc.i.i436.i.i_crit_edge: ; preds = %for.body.i.i430.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i436.i.i

land.lhs.true.i.i433.i.i:                         ; preds = %for.body.i.i430.i.i
  %index.i.i431.i.i = getelementptr i8, ptr %.pn22.i.i427.i.i, i32 -428
  %476 = ptrtoint ptr %index.i.i431.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %index.i.i431.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %477, i32 %port.1517.i.i)
  %cmp5.i.i432.i.i = icmp eq i32 %477, %port.1517.i.i
  br i1 %cmp5.i.i432.i.i, label %cleanup.split.loop.exit18.i.i438.i.i, label %land.lhs.true.i.i433.i.i.for.inc.i.i436.i.i_crit_edge

land.lhs.true.i.i433.i.i.for.inc.i.i436.i.i_crit_edge: ; preds = %land.lhs.true.i.i433.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i436.i.i

for.inc.i.i436.i.i:                               ; preds = %land.lhs.true.i.i433.i.i.for.inc.i.i436.i.i_crit_edge, %for.body.i.i430.i.i.for.inc.i.i436.i.i_crit_edge
  %478 = ptrtoint ptr %.pn22.i.i427.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %.pn.i.i434.i.i = load ptr, ptr %.pn22.i.i427.i.i, align 4
  %cmp.not.i.i435.i.i = icmp eq ptr %.pn.i.i434.i.i, %ports.i.i424.i.i
  br i1 %cmp.not.i.i435.i.i, label %for.inc.i.i436.i.i.dsa_is_unused_port.exit443.i.i_crit_edge, label %for.inc.i.i436.i.i.for.body.i.i430.i.i_crit_edge

for.inc.i.i436.i.i.for.body.i.i430.i.i_crit_edge: ; preds = %for.inc.i.i436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i430.i.i

for.inc.i.i436.i.i.dsa_is_unused_port.exit443.i.i_crit_edge: ; preds = %for.inc.i.i436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit443.i.i

cleanup.split.loop.exit18.i.i438.i.i:             ; preds = %land.lhs.true.i.i433.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i437.i.i = getelementptr i8, ptr %.pn22.i.i427.i.i, i32 -448
  br label %dsa_is_unused_port.exit443.i.i

dsa_is_unused_port.exit443.i.i:                   ; preds = %cleanup.split.loop.exit18.i.i438.i.i, %for.inc.i.i436.i.i.dsa_is_unused_port.exit443.i.i_crit_edge, %for.body129.i.i.dsa_is_unused_port.exit443.i.i_crit_edge
  %retval.0.i.i439.i.i = phi ptr [ %dp.0.le.i.i437.i.i, %cleanup.split.loop.exit18.i.i438.i.i ], [ null, %for.body129.i.i.dsa_is_unused_port.exit443.i.i_crit_edge ], [ null, %for.inc.i.i436.i.i.dsa_is_unused_port.exit443.i.i_crit_edge ]
  %type.i440.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i439.i.i, i32 0, i32 6
  %479 = ptrtoint ptr %type.i440.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %type.i440.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %cmp.i441.i.i = icmp eq i32 %480, 0
  br i1 %cmp.i441.i.i, label %dsa_is_unused_port.exit443.i.i.for.inc137.i.i_crit_edge, label %if.end132.i.i

dsa_is_unused_port.exit443.i.i.for.inc137.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit443.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc137.i.i

if.end132.i.i:                                    ; preds = %dsa_is_unused_port.exit443.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl133.i.i = shl nuw i32 1, %port.1517.i.i
  %481 = ptrtoint ptr %ucast_egress_floods.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %ucast_egress_floods.i.i, align 8
  %or134.i.i = or i32 %482, %shl133.i.i
  store i32 %or134.i.i, ptr %ucast_egress_floods.i.i, align 8
  %483 = ptrtoint ptr %bcast_egress_floods.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %bcast_egress_floods.i.i, align 4
  %or136.i.i = or i32 %484, %shl133.i.i
  store i32 %or136.i.i, ptr %bcast_egress_floods.i.i, align 4
  br label %for.inc137.i.i

for.inc137.i.i:                                   ; preds = %if.end132.i.i, %dsa_is_unused_port.exit443.i.i.for.inc137.i.i_crit_edge
  %inc138.i.i = add nuw i32 %port.1517.i.i, 1
  %485 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %num_ports.i370.i, align 4
  %cmp127.i.i = icmp ult i32 %inc138.i.i, %486
  br i1 %cmp127.i.i, label %for.inc137.i.i.for.body129.i.i_crit_edge, label %for.inc137.i.i.for.cond144.preheader.i.i.preheader_crit_edge

for.inc137.i.i.for.cond144.preheader.i.i.preheader_crit_edge: ; preds = %for.inc137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond144.preheader.i.i.preheader

for.inc137.i.i.for.body129.i.i_crit_edge:         ; preds = %for.inc137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129.i.i

for.cond144.preheader.i.i.preheader:              ; preds = %for.inc137.i.i.for.cond144.preheader.i.i.preheader_crit_edge, %for.cond125.preheader.i.i.for.cond144.preheader.i.i.preheader_crit_edge
  br label %for.cond144.preheader.i.i

for.cond144.preheader.i.i:                        ; preds = %for.end159.i.i.for.cond144.preheader.i.i_crit_edge, %for.cond144.preheader.i.i.preheader
  %tc.1523.i.i = phi i32 [ %inc164.i.i, %for.end159.i.i.for.cond144.preheader.i.i_crit_edge ], [ 0, %for.cond144.preheader.i.i.preheader ]
  %487 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %num_ports.i370.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %cmp146519.not.i.i = icmp eq i32 %488, 0
  br i1 %cmp146519.not.i.i, label %for.cond144.preheader.i.i.for.end159.i.i_crit_edge, label %for.body148.lr.ph.i.i

for.cond144.preheader.i.i.for.end159.i.i_crit_edge: ; preds = %for.cond144.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end159.i.i

for.body148.lr.ph.i.i:                            ; preds = %for.cond144.preheader.i.i
  %conv152.i.i = zext i32 %tc.1523.i.i to i64
  br label %for.body148.i.i

for.body148.i.i:                                  ; preds = %for.inc157.i.i.for.body148.i.i_crit_edge, %for.body148.lr.ph.i.i
  %489 = phi i32 [ %488, %for.body148.lr.ph.i.i ], [ %502, %for.inc157.i.i.for.body148.i.i_crit_edge ]
  %port.2520.i.i = phi i32 [ 0, %for.body148.lr.ph.i.i ], [ %inc158.i.i, %for.inc157.i.i.for.body148.i.i_crit_edge ]
  %490 = ptrtoint ptr %dst91.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dst91.i.i, align 4
  %ports.i.i445.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %ports.i.i445.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %.pn20.i.i446.i.i = load ptr, ptr %ports.i.i445.i.i, align 4
  %cmp.not21.i.i447.i.i = icmp eq ptr %.pn20.i.i446.i.i, %ports.i.i445.i.i
  br i1 %cmp.not21.i.i447.i.i, label %for.body148.i.i.dsa_is_unused_port.exit464.i.i_crit_edge, label %for.body148.i.i.for.body.i.i451.i.i_crit_edge

for.body148.i.i.for.body.i.i451.i.i_crit_edge:    ; preds = %for.body148.i.i
  br label %for.body.i.i451.i.i

for.body148.i.i.dsa_is_unused_port.exit464.i.i_crit_edge: ; preds = %for.body148.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit464.i.i

for.body.i.i451.i.i:                              ; preds = %for.inc.i.i457.i.i.for.body.i.i451.i.i_crit_edge, %for.body148.i.i.for.body.i.i451.i.i_crit_edge
  %.pn22.i.i448.i.i = phi ptr [ %.pn.i.i455.i.i, %for.inc.i.i457.i.i.for.body.i.i451.i.i_crit_edge ], [ %.pn20.i.i446.i.i, %for.body148.i.i.for.body.i.i451.i.i_crit_edge ]
  %ds3.i.i449.i.i = getelementptr i8, ptr %.pn22.i.i448.i.i, i32 -432
  %493 = ptrtoint ptr %ds3.i.i449.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %ds3.i.i449.i.i, align 4
  %cmp4.i.i450.i.i = icmp eq ptr %494, %291
  br i1 %cmp4.i.i450.i.i, label %land.lhs.true.i.i454.i.i, label %for.body.i.i451.i.i.for.inc.i.i457.i.i_crit_edge

for.body.i.i451.i.i.for.inc.i.i457.i.i_crit_edge: ; preds = %for.body.i.i451.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i457.i.i

land.lhs.true.i.i454.i.i:                         ; preds = %for.body.i.i451.i.i
  %index.i.i452.i.i = getelementptr i8, ptr %.pn22.i.i448.i.i, i32 -428
  %495 = ptrtoint ptr %index.i.i452.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %index.i.i452.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %496, i32 %port.2520.i.i)
  %cmp5.i.i453.i.i = icmp eq i32 %496, %port.2520.i.i
  br i1 %cmp5.i.i453.i.i, label %cleanup.split.loop.exit18.i.i459.i.i, label %land.lhs.true.i.i454.i.i.for.inc.i.i457.i.i_crit_edge

land.lhs.true.i.i454.i.i.for.inc.i.i457.i.i_crit_edge: ; preds = %land.lhs.true.i.i454.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i457.i.i

for.inc.i.i457.i.i:                               ; preds = %land.lhs.true.i.i454.i.i.for.inc.i.i457.i.i_crit_edge, %for.body.i.i451.i.i.for.inc.i.i457.i.i_crit_edge
  %497 = ptrtoint ptr %.pn22.i.i448.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %.pn.i.i455.i.i = load ptr, ptr %.pn22.i.i448.i.i, align 4
  %cmp.not.i.i456.i.i = icmp eq ptr %.pn.i.i455.i.i, %ports.i.i445.i.i
  br i1 %cmp.not.i.i456.i.i, label %for.inc.i.i457.i.i.dsa_is_unused_port.exit464.i.i_crit_edge, label %for.inc.i.i457.i.i.for.body.i.i451.i.i_crit_edge

for.inc.i.i457.i.i.for.body.i.i451.i.i_crit_edge: ; preds = %for.inc.i.i457.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i451.i.i

for.inc.i.i457.i.i.dsa_is_unused_port.exit464.i.i_crit_edge: ; preds = %for.inc.i.i457.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit464.i.i

cleanup.split.loop.exit18.i.i459.i.i:             ; preds = %land.lhs.true.i.i454.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i458.i.i = getelementptr i8, ptr %.pn22.i.i448.i.i, i32 -448
  br label %dsa_is_unused_port.exit464.i.i

dsa_is_unused_port.exit464.i.i:                   ; preds = %cleanup.split.loop.exit18.i.i459.i.i, %for.inc.i.i457.i.i.dsa_is_unused_port.exit464.i.i_crit_edge, %for.body148.i.i.dsa_is_unused_port.exit464.i.i_crit_edge
  %retval.0.i.i460.i.i = phi ptr [ %dp.0.le.i.i458.i.i, %cleanup.split.loop.exit18.i.i459.i.i ], [ null, %for.body148.i.i.dsa_is_unused_port.exit464.i.i_crit_edge ], [ null, %for.inc.i.i457.i.i.dsa_is_unused_port.exit464.i.i_crit_edge ]
  %type.i461.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i460.i.i, i32 0, i32 6
  %498 = ptrtoint ptr %type.i461.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %type.i461.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %cmp.i462.i.i = icmp eq i32 %499, 0
  br i1 %cmp.i462.i.i, label %dsa_is_unused_port.exit464.i.i.for.inc157.i.i_crit_edge, label %if.end151.i.i

dsa_is_unused_port.exit464.i.i.for.inc157.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc157.i.i

if.end151.i.i:                                    ; preds = %dsa_is_unused_port.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i32 %489, %tc.1523.i.i
  %arrayidx156.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %add.i.i, i32 3, i32 %port.2520.i.i
  %500 = ptrtoint ptr %arrayidx156.i.i to i32
  call void @__asan_store8_noabort(i32 %500)
  store i64 %conv152.i.i, ptr %arrayidx156.i.i, align 8
  br label %for.inc157.i.i

for.inc157.i.i:                                   ; preds = %if.end151.i.i, %dsa_is_unused_port.exit464.i.i.for.inc157.i.i_crit_edge
  %inc158.i.i = add nuw i32 %port.2520.i.i, 1
  %501 = ptrtoint ptr %num_ports.i370.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %num_ports.i370.i, align 4
  %cmp146.i.i = icmp ult i32 %inc158.i.i, %502
  br i1 %cmp146.i.i, label %for.inc157.i.i.for.body148.i.i_crit_edge, label %for.inc157.i.i.for.end159.i.i_crit_edge

for.inc157.i.i.for.end159.i.i_crit_edge:          ; preds = %for.inc157.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end159.i.i

for.inc157.i.i.for.body148.i.i_crit_edge:         ; preds = %for.inc157.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body148.i.i

for.end159.i.i:                                   ; preds = %for.inc157.i.i.for.end159.i.i_crit_edge, %for.cond144.preheader.i.i.for.end159.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %for.cond144.preheader.i.i.for.end159.i.i_crit_edge ], [ %502, %for.inc157.i.i.for.end159.i.i_crit_edge ]
  %add161.i.i = add i32 %.lcssa.i.i, %tc.1523.i.i
  %type_egrpcp2outputq.i.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %call8.i.i.i366.i, i32 %add161.i.i, i32 4
  %503 = ptrtoint ptr %type_egrpcp2outputq.i.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 1, ptr %type_egrpcp2outputq.i.i, align 8
  %inc164.i.i = add nuw nsw i32 %tc.1523.i.i, 1
  %exitcond.not.i403.i = icmp eq i32 %inc164.i.i, 8
  br i1 %exitcond.not.i403.i, label %if.end25.i, label %for.end159.i.i.for.cond144.preheader.i.i_crit_edge

for.end159.i.i.for.cond144.preheader.i.i_crit_edge: ; preds = %for.end159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond144.preheader.i.i

if.end25.i:                                       ; preds = %for.end159.i.i
  %arrayidx.i406.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 14
  %entry_count.i407.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 14, i32 1
  %504 = ptrtoint ptr %entry_count.i407.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %entry_count.i407.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool.not.i408.i = icmp eq i32 %505, 0
  br i1 %tobool.not.i408.i, label %if.end25.i.if.end.i413.i_crit_edge, label %if.then.i410.i

if.end25.i.if.end.i413.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i413.i

if.then.i410.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i409.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 14, i32 2
  %506 = ptrtoint ptr %entries.i409.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %entries.i409.i, align 4
  tail call void @kfree(ptr noundef %507) #10
  %508 = ptrtoint ptr %entry_count.i407.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 0, ptr %entry_count.i407.i, align 4
  br label %if.end.i413.i

if.end.i413.i:                                    ; preds = %if.then.i410.i, %if.end25.i.if.end.i413.i_crit_edge
  %509 = ptrtoint ptr %arrayidx.i406.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %arrayidx.i406.i, align 4
  %max_entry_count.i411.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %510, i32 0, i32 3
  %511 = ptrtoint ptr %max_entry_count.i411.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %max_entry_count.i411.i, align 4
  %unpacked_entry_size.i412.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %510, i32 0, i32 1
  %513 = ptrtoint ptr %unpacked_entry_size.i412.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %unpacked_entry_size.i412.i, align 4
  %515 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %512, i32 %514) #10
  %516 = extractvalue { i32, i1 } %515, 1
  br i1 %516, label %kcalloc.exit.thread.i414.i, label %if.end7.i.i.i446.i, !prof !330

kcalloc.exit.thread.i414.i:                       ; preds = %if.end.i413.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries326.i.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 14, i32 2
  %517 = ptrtoint ptr %entries326.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr null, ptr %entries326.i.i, align 4
  br label %do.end12

if.end7.i.i.i446.i:                               ; preds = %if.end.i413.i
  %518 = extractvalue { i32, i1 } %515, 0
  %call8.i.i.i445.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %518, i32 noundef 3520) #14
  %entries3.i448.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 14, i32 2
  %519 = ptrtoint ptr %entries3.i448.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %call8.i.i.i445.i, ptr %entries3.i448.i, align 4
  %tobool5.not.i449.i = icmp eq ptr %call8.i.i.i445.i, null
  br i1 %tobool5.not.i449.i, label %if.end7.i.i.i446.i.do.end12_crit_edge, label %if.end29.i

if.end7.i.i.i446.i.do.end12_crit_edge:            ; preds = %if.end7.i.i.i446.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end29.i:                                       ; preds = %if.end7.i.i.i446.i
  %520 = ptrtoint ptr %arrayidx.i406.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %arrayidx.i406.i, align 4
  %max_entry_count9.i.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %521, i32 0, i32 3
  %522 = ptrtoint ptr %max_entry_count9.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %max_entry_count9.i.i, align 4
  %524 = ptrtoint ptr %entry_count.i407.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 %523, ptr %entry_count.i407.i, align 4
  %525 = ptrtoint ptr %call8.i.i.i445.i to i32
  call void @__asan_store8_noabort(i32 %525)
  store i64 0, ptr %call8.i.i.i445.i, align 128
  %526 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %info, align 4
  %max_frame_mem.i.i = getelementptr inbounds %struct.sja1105_info, ptr %527, i32 0, i32 5
  %528 = ptrtoint ptr %max_frame_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %max_frame_mem.i.i, align 4
  %conv.i452.i = sext i32 %529 to i64
  %part_spc.i.i = getelementptr inbounds %struct.sja1105_l2_forwarding_params_entry, ptr %call8.i.i.i445.i, i32 0, i32 1
  %530 = ptrtoint ptr %part_spc.i.i to i32
  call void @__asan_store8_noabort(i32 %530)
  store i64 %conv.i452.i, ptr %part_spc.i.i, align 8
  %531 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %ds3.i.i, align 8
  %arrayidx.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 1
  %533 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %534)
  %tobool.not.i109 = icmp eq i32 %534, 0
  br i1 %tobool.not.i109, label %if.end29.i.if.end.i110_crit_edge, label %if.then.i

if.end29.i.if.end.i110_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i110

if.then.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %535 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %entries.i, align 4
  tail call void @kfree(ptr noundef %536) #10
  %537 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 0, ptr %entry_count.i, align 4
  br label %if.end.i110

if.end.i110:                                      ; preds = %if.then.i, %if.end29.i.if.end.i110_crit_edge
  %538 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %arrayidx.i, align 4
  %max_entry_count.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %539, i32 0, i32 3
  %540 = ptrtoint ptr %max_entry_count.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %max_entry_count.i, align 4
  %unpacked_entry_size.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %539, i32 0, i32 1
  %542 = ptrtoint ptr %unpacked_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %unpacked_entry_size.i, align 4
  %544 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %541, i32 %543) #10
  %545 = extractvalue { i32, i1 } %544, 1
  br i1 %545, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !330

kcalloc.exit.thread.i:                            ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #12
  %entries4125.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %546 = ptrtoint ptr %entries4125.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr null, ptr %entries4125.i, align 4
  br label %do.end12

if.end7.i.i.i:                                    ; preds = %if.end.i110
  %547 = extractvalue { i32, i1 } %544, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %547, i32 noundef 3520) #14
  %entries4.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %548 = ptrtoint ptr %entries4.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store ptr %call8.i.i.i, ptr %entries4.i, align 4
  %tobool6.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.i.do.end12_crit_edge, label %if.end8.i

if.end7.i.i.i.do.end12_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end8.i:                                        ; preds = %if.end7.i.i.i
  %549 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %arrayidx.i, align 4
  %max_entry_count10.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %550, i32 0, i32 3
  %551 = ptrtoint ptr %max_entry_count10.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %max_entry_count10.i, align 4
  %553 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %552, ptr %entry_count.i, align 4
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %532, i32 0, i32 18
  %554 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %555)
  %cmp138.not.i = icmp eq i32 %555, 0
  br i1 %cmp138.not.i, label %if.end8.i.if.end33.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.if.end33.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.cond38.preheader.i:                           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %572)
  %cmp40140.not.i = icmp eq i32 %572, 0
  br i1 %cmp40140.not.i, label %for.cond38.preheader.i.if.end33.i_crit_edge, label %for.body42.lr.ph.i

for.cond38.preheader.i.if.end33.i_crit_edge:      ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.body42.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %532, i32 0, i32 1
  br label %for.body42.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %556 = phi i32 [ %572, %if.end34.i.for.body.i_crit_edge ], [ %555, %if.end8.i.for.body.i_crit_edge ]
  %port.0139.i = phi i32 [ %inc36.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %556, 9
  %mul15.i = shl i32 %556, 3
  %conv.i = sext i32 %port.0139.i to i64
  %mul20.i = shl i32 %port.0139.i, 3
  %arrayidx22.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %mul20.i
  %557 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store8_noabort(i32 %557)
  store i64 %conv.i, ptr %arrayidx22.i, align 64
  %add21.1.i = or i32 %mul20.i, 1
  %arrayidx22.1.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.1.i
  %558 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store8_noabort(i32 %558)
  store i64 %conv.i, ptr %arrayidx22.1.i, align 8
  %add21.2.i = or i32 %mul20.i, 2
  %arrayidx22.2.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.2.i
  %559 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store8_noabort(i32 %559)
  store i64 %conv.i, ptr %arrayidx22.2.i, align 16
  %add21.3.i = or i32 %mul20.i, 3
  %arrayidx22.3.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.3.i
  %560 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store8_noabort(i32 %560)
  store i64 %conv.i, ptr %arrayidx22.3.i, align 8
  %add21.4.i = or i32 %mul20.i, 4
  %arrayidx22.4.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.4.i
  %561 = ptrtoint ptr %arrayidx22.4.i to i32
  call void @__asan_store8_noabort(i32 %561)
  store i64 %conv.i, ptr %arrayidx22.4.i, align 32
  %add21.5.i = or i32 %mul20.i, 5
  %arrayidx22.5.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.5.i
  %562 = ptrtoint ptr %arrayidx22.5.i to i32
  call void @__asan_store8_noabort(i32 %562)
  store i64 %conv.i, ptr %arrayidx22.5.i, align 8
  %add21.6.i = or i32 %mul20.i, 6
  %arrayidx22.6.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.6.i
  %563 = ptrtoint ptr %arrayidx22.6.i to i32
  call void @__asan_store8_noabort(i32 %563)
  store i64 %conv.i, ptr %arrayidx22.6.i, align 16
  %add21.7.i = or i32 %mul20.i, 7
  %arrayidx22.7.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add21.7.i
  %564 = ptrtoint ptr %arrayidx22.7.i to i32
  call void @__asan_store8_noabort(i32 %564)
  store i64 %conv.i, ptr %arrayidx22.7.i, align 8
  %add.i = add i32 %mul.i, %port.0139.i
  %add16.i = add i32 %mul15.i, %port.0139.i
  %arrayidx24.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add16.i
  %565 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %565)
  store i64 %conv.i, ptr %arrayidx24.i, align 8
  %566 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %arrayidx.i, align 4
  %max_entry_count27.i = getelementptr inbounds %struct.sja1105_table_ops, ptr %567, i32 0, i32 3
  %568 = ptrtoint ptr %max_entry_count27.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %max_entry_count27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %569)
  %cmp28.not.i = icmp ugt i32 %add.i, %569
  br i1 %cmp28.not.i, label %for.body.i.if.end34.i_crit_edge, label %if.then30.i

for.body.i.if.end34.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx32.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %add.i
  %570 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %570)
  store i64 %conv.i, ptr %arrayidx32.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %for.body.i.if.end34.i_crit_edge
  %inc36.i = add nuw i32 %port.0139.i, 1
  %571 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc36.i, %572
  br i1 %cmp.i, label %if.end34.i.for.body.i_crit_edge, label %for.cond38.preheader.i

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body42.i:                                     ; preds = %if.end49.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %port.1141.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc56.i, %if.end49.i.for.body42.i_crit_edge ]
  %573 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %574, i32 0, i32 1
  %575 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %dsa_is_cpu_port.exit.thread.i, label %for.body42.i.for.body.i.i.i_crit_edge

for.body42.i.for.body.i.i.i_crit_edge:            ; preds = %for.body42.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body42.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body42.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %576 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %577, %532
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i103.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i103.i:                           ; preds = %for.body.i.i.i
  %index.i.i.i140 = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %578 = ptrtoint ptr %index.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %index.i.i.i140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %579, i32 %port.1141.i)
  %cmp5.i.i.i = icmp eq i32 %579, %port.1141.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i103.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i103.i.for.inc.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i103.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %580 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i104.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i104.i, i32 0, i32 6
  %581 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %582)
  %cmp.i.i141 = icmp eq i32 %582, 1
  br i1 %cmp.i.i141, label %dsa_is_cpu_port.exit.i.if.then47.i_crit_edge, label %dsa_is_cpu_port.exit.i.for.body.i.i112.i_crit_edge

dsa_is_cpu_port.exit.i.for.body.i.i112.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  br label %for.body.i.i112.i

dsa_is_cpu_port.exit.i.if.then47.i_crit_edge:     ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

dsa_is_cpu_port.exit.thread.i:                    ; preds = %for.body42.i
  call void @__asan_load4_noabort(i32 24)
  %583 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %583)
  %cmp.i134.i = icmp eq i32 %583, 1
  br i1 %cmp.i134.i, label %dsa_is_cpu_port.exit.thread.i.if.then47.i_crit_edge, label %dsa_is_cpu_port.exit.thread.i.dsa_is_dsa_port.exit.i_crit_edge

dsa_is_cpu_port.exit.thread.i.dsa_is_dsa_port.exit.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i

dsa_is_cpu_port.exit.thread.i.if.then47.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

for.body.i.i112.i:                                ; preds = %for.inc.i.i118.i.for.body.i.i112.i_crit_edge, %dsa_is_cpu_port.exit.i.for.body.i.i112.i_crit_edge
  %.pn22.i.i109.i = phi ptr [ %.pn.i.i116.i, %for.inc.i.i118.i.for.body.i.i112.i_crit_edge ], [ %.pn20.i.i.i, %dsa_is_cpu_port.exit.i.for.body.i.i112.i_crit_edge ]
  %ds3.i.i110.i = getelementptr i8, ptr %.pn22.i.i109.i, i32 -432
  %584 = ptrtoint ptr %ds3.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %ds3.i.i110.i, align 4
  %cmp4.i.i111.i = icmp eq ptr %585, %532
  br i1 %cmp4.i.i111.i, label %land.lhs.true.i.i115.i, label %for.body.i.i112.i.for.inc.i.i118.i_crit_edge

for.body.i.i112.i.for.inc.i.i118.i_crit_edge:     ; preds = %for.body.i.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i118.i

land.lhs.true.i.i115.i:                           ; preds = %for.body.i.i112.i
  %index.i.i113.i = getelementptr i8, ptr %.pn22.i.i109.i, i32 -428
  %586 = ptrtoint ptr %index.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %index.i.i113.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %587, i32 %port.1141.i)
  %cmp5.i.i114.i = icmp eq i32 %587, %port.1141.i
  br i1 %cmp5.i.i114.i, label %cleanup.split.loop.exit18.i.i120.i, label %land.lhs.true.i.i115.i.for.inc.i.i118.i_crit_edge

land.lhs.true.i.i115.i.for.inc.i.i118.i_crit_edge: ; preds = %land.lhs.true.i.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i118.i

for.inc.i.i118.i:                                 ; preds = %land.lhs.true.i.i115.i.for.inc.i.i118.i_crit_edge, %for.body.i.i112.i.for.inc.i.i118.i_crit_edge
  %588 = ptrtoint ptr %.pn22.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %.pn.i.i116.i = load ptr, ptr %.pn22.i.i109.i, align 4
  %cmp.not.i.i117.i = icmp eq ptr %.pn.i.i116.i, %ports.i.i.i
  br i1 %cmp.not.i.i117.i, label %for.inc.i.i118.i.dsa_is_dsa_port.exit.i_crit_edge, label %for.inc.i.i118.i.for.body.i.i112.i_crit_edge

for.inc.i.i118.i.for.body.i.i112.i_crit_edge:     ; preds = %for.inc.i.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i112.i

for.inc.i.i118.i.dsa_is_dsa_port.exit.i_crit_edge: ; preds = %for.inc.i.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i

cleanup.split.loop.exit18.i.i120.i:               ; preds = %land.lhs.true.i.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i119.i = getelementptr i8, ptr %.pn22.i.i109.i, i32 -448
  br label %dsa_is_dsa_port.exit.i

dsa_is_dsa_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i120.i, %for.inc.i.i118.i.dsa_is_dsa_port.exit.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.dsa_is_dsa_port.exit.i_crit_edge
  %retval.0.i.i121.i = phi ptr [ %dp.0.le.i.i119.i, %cleanup.split.loop.exit18.i.i120.i ], [ null, %dsa_is_cpu_port.exit.thread.i.dsa_is_dsa_port.exit.i_crit_edge ], [ null, %for.inc.i.i118.i.dsa_is_dsa_port.exit.i_crit_edge ]
  %type.i122.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i121.i, i32 0, i32 6
  %589 = ptrtoint ptr %type.i122.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %type.i122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %590)
  %cmp.i123.i = icmp eq i32 %590, 2
  br i1 %cmp.i123.i, label %dsa_is_dsa_port.exit.i.if.then47.i_crit_edge, label %dsa_is_dsa_port.exit.i.if.end49.i_crit_edge

dsa_is_dsa_port.exit.i.if.end49.i_crit_edge:      ; preds = %dsa_is_dsa_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

dsa_is_dsa_port.exit.i.if.then47.i_crit_edge:     ; preds = %dsa_is_dsa_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.then47.i:                                      ; preds = %dsa_is_dsa_port.exit.i.if.then47.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.if.then47.i_crit_edge, %dsa_is_cpu_port.exit.i.if.then47.i_crit_edge
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %dsa_is_dsa_port.exit.i.if.end49.i_crit_edge
  %mtu.0.i = phi i32 [ 1526, %if.then47.i ], [ 1522, %dsa_is_dsa_port.exit.i.if.end49.i_crit_edge ]
  %smax.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %port.1141.i, i32 1
  %591 = ptrtoint ptr %smax.i to i32
  call void @__asan_store8_noabort(i32 %591)
  store i64 65535, ptr %smax.i, align 8
  %rate.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %port.1141.i, i32 2
  %592 = ptrtoint ptr %rate.i to i32
  call void @__asan_store8_noabort(i32 %592)
  store i64 64000, ptr %rate.i, align 8
  %593 = zext i32 %mtu.0.i to i64
  %maxlen.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %port.1141.i, i32 3
  %594 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_store8_noabort(i32 %594)
  store i64 %593, ptr %maxlen.i, align 8
  %partition.i = getelementptr %struct.sja1105_l2_policing_entry, ptr %call8.i.i.i, i32 %port.1141.i, i32 4
  %595 = ptrtoint ptr %partition.i to i32
  call void @__asan_store8_noabort(i32 %595)
  store i64 0, ptr %partition.i, align 8
  %inc56.i = add nuw i32 %port.1141.i, 1
  %596 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %num_ports.i, align 4
  %cmp40.i = icmp ult i32 %inc56.i, %597
  br i1 %cmp40.i, label %if.end49.i.for.body42.i_crit_edge, label %if.end49.i.if.end33.i_crit_edge

if.end49.i.if.end33.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.end49.i.for.body42.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42.i

if.end33.i:                                       ; preds = %if.end49.i.if.end33.i_crit_edge, %for.cond38.preheader.i.if.end33.i_crit_edge, %if.end8.i.if.end33.i_crit_edge
  %call34.i = tail call fastcc i32 @sja1105_init_general_params(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end33.i.do.end12_crit_edge, label %if.end37.i

if.end33.i.do.end12_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = tail call fastcc i32 @sja1105_init_avb_params(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end37.i.do.end12_crit_edge, label %if.end41.i

if.end37.i.do.end12_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = tail call fastcc i32 @sja1110_init_pcp_remapping(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.end41.i.do.end12_crit_edge, label %if.end45.i

if.end41.i.do.end12_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end45.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %call46.i = tail call i32 @sja1105_static_config_upload(ptr noundef %1) #10
  br label %sja1105_static_config_load.exit

sja1105_static_config_load.exit:                  ; preds = %if.end45.i, %if.end6.sja1105_static_config_load.exit_crit_edge
  %retval.0.i = phi i32 [ %call46.i, %if.end45.i ], [ %call.i, %if.end6.sja1105_static_config_load.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp8, label %sja1105_static_config_load.exit.do.end12_crit_edge, label %if.end14

sja1105_static_config_load.exit.do.end12_crit_edge: ; preds = %sja1105_static_config_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end12:                                         ; preds = %sja1105_static_config_load.exit.do.end12_crit_edge, %if.end41.i.do.end12_crit_edge, %if.end37.i.do.end12_crit_edge, %if.end33.i.do.end12_crit_edge, %if.end7.i.i.i.do.end12_crit_edge, %kcalloc.exit.thread.i, %if.end7.i.i.i446.i.do.end12_crit_edge, %kcalloc.exit.thread.i414.i, %if.end7.i.i.i367.i.do.end12_crit_edge, %kcalloc.exit.thread.i335.i, %sja1105_init_l2_lookup_params.exit.thread.i, %if.end8.i.i.i.i.do.end12_crit_edge, %if.end7.i.i.i166.i.do.end12_crit_edge, %cleanup.i.i, %if.end7.i.i.i124.i.do.end12_crit_edge, %kcalloc.exit.thread.i92.i, %sja1105_init_mac_settings.exit.thread.i
  %retval.0.i150 = phi i32 [ %retval.0.i, %sja1105_static_config_load.exit.do.end12_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.do.end12_crit_edge ], [ -12, %kcalloc.exit.thread.i414.i ], [ -12, %if.end7.i.i.i446.i.do.end12_crit_edge ], [ -12, %kcalloc.exit.thread.i335.i ], [ -12, %if.end7.i.i.i367.i.do.end12_crit_edge ], [ -12, %if.end8.i.i.i.i.do.end12_crit_edge ], [ -22, %cleanup.i.i ], [ -12, %if.end7.i.i.i124.i.do.end12_crit_edge ], [ -12, %kcalloc.exit.thread.i92.i ], [ -12, %sja1105_init_l2_lookup_params.exit.thread.i ], [ -12, %if.end7.i.i.i166.i.do.end12_crit_edge ], [ -12, %sja1105_init_mac_settings.exit.thread.i ], [ %call42.i, %if.end41.i.do.end12_crit_edge ], [ %call38.i, %if.end37.i.do.end12_crit_edge ], [ %call34.i, %if.end33.i.do.end12_crit_edge ]
  %598 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %599, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i150) #13
  br label %cleanup

if.end14:                                         ; preds = %sja1105_static_config_load.exit
  %600 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %info, align 4
  %clocking_setup = getelementptr inbounds %struct.sja1105_info, ptr %601, i32 0, i32 20
  %602 = ptrtoint ptr %clocking_setup to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %clocking_setup, align 8
  %tobool16.not = icmp eq ptr %603, null
  br i1 %tobool16.not, label %if.end14.if.end29_crit_edge, label %if.then17

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then17:                                        ; preds = %if.end14
  %call20 = tail call i32 %603(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %604 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %ds, align 4
  %606 = inttoptr i32 %call20 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %605, ptr noundef nonnull @.str.69, ptr noundef nonnull %606) #13
  br label %out_static_config_free

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  tail call void @sja1105_tas_setup(ptr noundef %ds) #10
  tail call void @sja1105_flower_setup(ptr noundef %ds) #10
  %call30 = tail call i32 @sja1105_ptp_clock_register(ptr noundef %ds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %607 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %608, ptr noundef nonnull @.str.72, i32 noundef %call30) #13
  br label %out_flower_teardown

if.end37:                                         ; preds = %if.end29
  %call38 = tail call i32 @sja1105_mdiobus_register(ptr noundef %ds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %609 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %ds, align 4
  %611 = inttoptr i32 %call38 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %610, ptr noundef nonnull @.str.75, ptr noundef nonnull %611) #13
  br label %out_ptp_clock_unregister

if.end46:                                         ; preds = %if.end37
  %call47 = tail call i32 @sja1105_devlink_setup(ptr noundef %ds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.out_mdiobus_unregister_crit_edge, label %if.end50

if.end46.out_mdiobus_unregister_crit_edge:        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mdiobus_unregister

if.end50:                                         ; preds = %if.end46
  tail call void @rtnl_lock() #10
  %call51 = tail call i32 @dsa_tag_8021q_register(ptr noundef %ds, i16 noundef zeroext -32512) #10
  tail call void @rtnl_unlock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %out_devlink_teardown

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_filtering_is_global = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %612 = ptrtoint ptr %vlan_filtering_is_global to i32
  call void @__asan_load2_noabort(i32 %612)
  %bf.load = load i16, ptr %vlan_filtering_is_global, align 4
  %max_num_bridges = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 17
  %613 = ptrtoint ptr %max_num_bridges to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 7, ptr %max_num_bridges, align 4
  %num_tx_queues = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 15
  %614 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 8, ptr %num_tx_queues, align 4
  %bf.set63 = or i16 %bf.load, 19584
  store i16 %bf.set63, ptr %vlan_filtering_is_global, align 4
  br label %cleanup

out_devlink_teardown:                             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sja1105_devlink_teardown(ptr noundef %ds) #10
  br label %out_mdiobus_unregister

out_mdiobus_unregister:                           ; preds = %out_devlink_teardown, %if.end46.out_mdiobus_unregister_crit_edge
  %rc.0 = phi i32 [ %call47, %if.end46.out_mdiobus_unregister_crit_edge ], [ %call51, %out_devlink_teardown ]
  tail call void @sja1105_mdiobus_unregister(ptr noundef %ds) #10
  br label %out_ptp_clock_unregister

out_ptp_clock_unregister:                         ; preds = %out_mdiobus_unregister, %do.end43
  %rc.1 = phi i32 [ %call38, %do.end43 ], [ %rc.0, %out_mdiobus_unregister ]
  tail call void @sja1105_ptp_clock_unregister(ptr noundef %ds) #10
  br label %out_flower_teardown

out_flower_teardown:                              ; preds = %out_ptp_clock_unregister, %do.end35
  %rc.2 = phi i32 [ %call30, %do.end35 ], [ %rc.1, %out_ptp_clock_unregister ]
  tail call void @sja1105_flower_teardown(ptr noundef %ds) #10
  tail call void @sja1105_tas_teardown(ptr noundef %ds) #10
  br label %out_static_config_free

out_static_config_free:                           ; preds = %out_flower_teardown, %do.end25
  %rc.3 = phi i32 [ %call20, %do.end25 ], [ %rc.2, %out_flower_teardown ]
  tail call void @sja1105_static_config_free(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %out_static_config_free, %if.end54, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i150, %do.end12 ], [ %rc.3, %out_static_config_free ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_teardown(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void @rtnl_lock() #10
  tail call void @dsa_tag_8021q_unregister(ptr noundef %ds) #10
  tail call void @rtnl_unlock() #10
  tail call void @sja1105_devlink_teardown(ptr noundef %ds) #10
  tail call void @sja1105_mdiobus_unregister(ptr noundef %ds) #10
  tail call void @sja1105_ptp_clock_unregister(ptr noundef %ds) #10
  tail call void @sja1105_flower_teardown(ptr noundef %ds) #10
  tail call void @sja1105_tas_teardown(ptr noundef %ds) #10
  tail call void @sja1105_static_config_free(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_phylink_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #10
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %2, i32 0, i32 1, i32 19, i32 2
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entries, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.sja1105_private, ptr %2, i32 0, i32 3, i32 %port
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i.not = icmp eq i32 %8, %6
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %or.i41 = or i32 %11, 586
  store i32 %or.i41, ptr %mask, align 4
  %add.ptr.i = getelementptr inbounds i32, ptr %mask, i32 2
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %or.i42 = or i32 %13, 8
  store i32 %or.i42, ptr %add.ptr.i, align 4
  %arrayidx7 = getelementptr %struct.sja1105_xmii_params_entry, ptr %4, i32 0, i32 1, i32 %port
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx7, align 8
  %16 = and i64 %15, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %16)
  %switch = icmp eq i64 %16, 2
  br i1 %switch, label %if.then12, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or.i43 = or i32 %11, 618
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i43, ptr %mask, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %info = getelementptr inbounds %struct.sja1105_private, ptr %2, i32 0, i32 8
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %arrayidx15 = getelementptr %struct.sja1105_info, ptr %19, i32 0, i32 29, i32 %port
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i44 = getelementptr inbounds i32, ptr %mask, i32 1
  %22 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i44, align 4
  %or.i45 = or i32 %23, 32768
  store i32 %or.i45, ptr %add.ptr.i44, align 4
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask, align 4
  %or.i46 = or i32 %25, 32768
  store i32 %or.i46, ptr %mask, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #10
  %call.i.i47 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_mac_config(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface, align 4
  %arrayidx.i = getelementptr %struct.sja1105_private, ptr %9, i32 0, i32 3, i32 %port
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i.not = icmp eq i32 %13, %11
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %dsa_to_port.exit
  %14 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %11)
  %16 = icmp ult i32 %11, 30
  br i1 %16, label %switch.lookup, label %do.end.phy_modes.exit_crit_edge

do.end.phy_modes.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.sja1105_mac_config, i32 0, i32 %11
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %do.end.phy_modes.exit_crit_edge
  %retval.0.i17 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.111, %do.end.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.122, ptr noundef nonnull %retval.0.i17) #13
  br label %cleanup

if.end:                                           ; preds = %dsa_to_port.exit
  %arrayidx = getelementptr %struct.sja1105_private, ptr %9, i32 0, i32 24, i32 %port
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pl = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 16
  %20 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pl, align 4
  %pcs = getelementptr inbounds %struct.dw_xpcs, ptr %19, i32 0, i32 2
  tail call void @phylink_set_pcs(ptr noundef %21, ptr noundef %pcs) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %phy_modes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %shl = shl nuw i32 1, %port
  %call = tail call i32 @sja1105_inhibit_tx(ptr noundef %1, i32 noundef %shl, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_mac_link_up(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %call = tail call fastcc i32 @sja1105_adjust_port_config(ptr noundef %1, i32 noundef %port, i32 noundef %speed)
  %shl = shl nuw i32 1, %port
  %call3 = tail call i32 @sja1105_inhibit_tx(ptr noundef %1, i32 noundef %shl, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_get_sset_count(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_get_ts_info(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_prechangeupper(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %extack2 = getelementptr inbounds %struct.netdev_notifier_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %extack2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack2, align 4
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upper_dev, align 4
  %dst3 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst3, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_prechangeupper.__msg) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup30_crit_edge, label %do.body.cleanup30.sink.split_crit_edge

do.body.cleanup30.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split

do.body.cleanup30_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end5:                                          ; preds = %entry
  %and.i47 = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i47)
  %tobool.i48.not = icmp eq i64 %and.i47, 0
  br i1 %tobool.i48.not, label %if.end5.cleanup30_crit_edge, label %if.then7

if.end5.cleanup30_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.then7:                                         ; preds = %if.end5
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn53 = load ptr, ptr %ports, align 4
  %cmp.not54 = icmp eq ptr %.pn53, %ports
  br i1 %cmp.not54, label %if.then7.cleanup30_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.cleanup30_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn53, %if.then7.for.body_crit_edge ]
  %bridge.i = getelementptr i8, ptr %.pn55, i32 -396
  %9 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %dsa_port_bridge_dev_get.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

dsa_port_bridge_dev_get.exit:                     ; preds = %for.body
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool10.not = icmp eq ptr %12, null
  %cmp11.not = icmp eq ptr %12, %3
  %or.cond = or i1 %tobool10.not, %cmp11.not
  br i1 %or.cond, label %dsa_port_bridge_dev_get.exit.for.inc_crit_edge, label %land.lhs.true12

dsa_port_bridge_dev_get.exit.for.inc_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true12:                                  ; preds = %dsa_port_bridge_dev_get.exit
  %call13 = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %12) #10
  br i1 %call13, label %do.body15, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body15:                                        ; preds = %land.lhs.true12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_prechangeupper.__msg.124) #10
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.body15.cleanup30_crit_edge, label %do.body15.cleanup30.sink.split_crit_edge

do.body15.cleanup30.sink.split_crit_edge:         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split

do.body15.cleanup30_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %dsa_port_bridge_dev_get.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.inc.cleanup30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

cleanup30.sink.split:                             ; preds = %do.body15.cleanup30.sink.split_crit_edge, %do.body.cleanup30.sink.split_crit_edge
  %sja1105_prechangeupper.__msg.124.sink = phi ptr [ @sja1105_prechangeupper.__msg, %do.body.cleanup30.sink.split_crit_edge ], [ @sja1105_prechangeupper.__msg.124, %do.body15.cleanup30.sink.split_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sja1105_prechangeupper.__msg.124.sink, ptr %1, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %for.inc.cleanup30_crit_edge, %do.body15.cleanup30_crit_edge, %if.then7.cleanup30_crit_edge, %if.end5.cleanup30_crit_edge, %do.body.cleanup30_crit_edge
  %retval.2 = phi i32 [ -16, %do.body.cleanup30_crit_edge ], [ 0, %if.end5.cleanup30_crit_edge ], [ -16, %do.body15.cleanup30_crit_edge ], [ 0, %if.then7.cleanup30_crit_edge ], [ -16, %cleanup30.sink.split ], [ 0, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_set_ageing_time(ptr nocapture noundef readonly %ds, i32 noundef %ageing_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 13, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  %div = udiv i32 %ageing_time, 10
  %maxage2 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %maxage2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %maxage2, align 8
  %conv = zext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp eq i64 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %maxage2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %maxage2, align 8
  %call = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_bridge_join(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef writeonly %tx_fwd_offload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sja1105_bridge_member(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dsa_tag_8021q_bridge_tx_fwd_offload(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @sja1105_bridge_member(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, i1 noundef zeroext false)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %tx_fwd_offload, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_bridge_leave(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_8021q_bridge_tx_fwd_unoffload(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #10
  %call = tail call fastcc i32 @sja1105_bridge_member(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_bridge_stp_state_set(ptr noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %9, i32 0, i32 1, i32 9, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %12 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %state, label %do.end [
    i8 0, label %dsa_to_port.exit.sw.bb_crit_edge
    i8 4, label %dsa_to_port.exit.sw.bb_crit_edge74
    i8 1, label %sw.bb5
    i8 2, label %sw.bb12
    i8 3, label %sw.bb20
  ]

dsa_to_port.exit.sw.bb_crit_edge74:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

dsa_to_port.exit.sw.bb_crit_edge:                 ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %dsa_to_port.exit.sw.bb_crit_edge, %dsa_to_port.exit.sw.bb_crit_edge74
  %dyn_learn = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 16
  %13 = call ptr @memset(ptr %dyn_learn, i32 0, i32 24)
  br label %sw.epilog

sw.bb5:                                           ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ingress7 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 18
  %14 = ptrtoint ptr %ingress7 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %ingress7, align 8
  %dyn_learn11 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 16
  %15 = call ptr @memset(ptr %dyn_learn11, i32 0, i32 16)
  br label %sw.epilog

sw.bb12:                                          ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ingress14 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 18
  %16 = ptrtoint ptr %ingress14 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %ingress14, align 8
  %egress16 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 17
  %17 = ptrtoint ptr %egress16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %egress16, align 8
  %learning = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %18 = ptrtoint ptr %learning to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %learning, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv17 = zext i8 %bf.clear to i64
  %dyn_learn19 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 16
  %19 = ptrtoint ptr %dyn_learn19 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv17, ptr %dyn_learn19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ingress22 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 18
  %20 = ptrtoint ptr %ingress22 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %ingress22, align 8
  %egress24 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 17
  %21 = ptrtoint ptr %egress24 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %egress24, align 8
  %learning25 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %22 = ptrtoint ptr %learning25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load26 = load i8, ptr %learning25, align 1
  %bf.lshr27 = lshr i8 %bf.load26, 6
  %bf.clear28 = and i8 %bf.lshr27, 1
  %conv29 = zext i8 %bf.clear28 to i64
  %dyn_learn31 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 16
  %23 = ptrtoint ptr %dyn_learn31 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv29, ptr %dyn_learn31, align 8
  br label %sw.epilog

do.end:                                           ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %state to i32
  %24 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.125, i32 noundef %conv) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb12, %sw.bb5, %sw.bb
  %arrayidx33 = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port
  %call34 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %9, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx33, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_fast_age(ptr noundef %ds, i32 noundef %port) #2 align 64 {
entry:
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  %macaddr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 5
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %shl = shl nuw i32 1, %port
  %conv = zext i32 %shl to i64
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 11
  %macaddr12 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %7 = call ptr @memset(ptr %l2_lookup, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %macaddr) #10
  %8 = call ptr @memset(ptr %macaddr, i32 255, i32 6)
  %call = call i32 @sja1105_dynamic_config_read(ptr noundef %1, i32 noundef 5, i32 noundef %i.044, ptr noundef nonnull %l2_lookup) #10
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call, label %do.end [
    i32 -2, label %for.body.for.inc_crit_edge
    i32 0, label %if.end5
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds, align 4
  %12 = inttoptr i32 %call to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.127, ptr noundef %12) #13
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %13 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %destports, align 8
  %and = and i64 %14, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end5.for.inc_crit_edge, label %if.end8

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.end5
  %15 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool9.not = icmp eq i64 %16, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %macaddr12 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %macaddr12, align 8
  %conv.i = trunc i64 %18 to i8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %6, align 1
  %shr.i = lshr i64 %18, 8
  %conv.1.i = trunc i64 %shr.i to i8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.1.i, ptr %5, align 1
  %shr.1.i = lshr i64 %18, 16
  %conv.2.i = trunc i64 %shr.1.i to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.2.i, ptr %4, align 1
  %shr.2.i = lshr i64 %18, 24
  %conv.3.i = trunc i64 %shr.2.i to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.3.i, ptr %3, align 1
  %shr.3.i = lshr i64 %18, 32
  %conv.4.i = trunc i64 %shr.3.i to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.4.i, ptr %2, align 1
  %shr.4.i = lshr i64 %18, 40
  %conv.5.i = trunc i64 %shr.4.i to i8
  %24 = ptrtoint ptr %macaddr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.5.i, ptr %macaddr, align 1
  %25 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %l2_lookup, align 8
  %conv14 = trunc i64 %26 to i16
  %27 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv1, align 4
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.i, align 4
  %fdb_del_cmd.i = getelementptr inbounds %struct.sja1105_info, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %fdb_del_cmd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fdb_del_cmd.i, align 8
  %call.i = call i32 %32(ptr noundef %ds, i32 noundef %port, ptr noundef nonnull %macaddr, i16 noundef zeroext %conv14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end11.for.inc_crit_edge, label %do.end20

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds, align 4
  %35 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %l2_lookup, align 8
  %37 = inttoptr i32 %call.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.130, ptr noundef nonnull %macaddr, i64 noundef %36, ptr noundef nonnull %37) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  br label %cleanup28

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.cleanup28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

cleanup28:                                        ; preds = %for.inc.cleanup28_crit_edge, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_port_pre_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %and = and i32 %flags.coerce.fca.1.extract, -18529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.end:                                           ; preds = %entry
  %and3 = and i32 %flags.coerce.fca.1.extract, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup27_crit_edge, label %land.lhs.true

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

land.lhs.true:                                    ; preds = %if.end
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %can_limit_mcast_flood = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %can_limit_mcast_flood to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %can_limit_mcast_flood, align 8, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup27_crit_edge

land.lhs.true.cleanup27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.then6:                                         ; preds = %land.lhs.true
  %and11 = lshr i32 %flags.coerce.fca.0.extract, 6
  %and7 = lshr i32 %flags.coerce.fca.0.extract, 11
  %6 = xor i32 %and11, %and7
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.then6.cleanup27_crit_edge, label %do.body

if.then6.cleanup27_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

do.body:                                          ; preds = %if.then6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_port_pre_bridge_flags.__msg) #10
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body.cleanup27_crit_edge, label %if.then22

do.body.cleanup27_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sja1105_port_pre_bridge_flags.__msg, ptr %extack, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %if.then22, %do.body.cleanup27_crit_edge, %if.then6.cleanup27_crit_edge, %land.lhs.true.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup27_crit_edge ], [ -22, %if.then22 ], [ 0, %land.lhs.true.cleanup27_crit_edge ], [ 0, %if.end.cleanup27_crit_edge ], [ -22, %do.body.cleanup27_crit_edge ], [ 0, %if.then6.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_port_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %and = and i32 %flags.coerce.fca.1.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %2 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries.i, align 4
  %and2 = lshr i32 %flags.coerce.fca.0.extract, 5
  %and2.lobit = and i32 %and2, 1
  %4 = zext i32 %and2.lobit to i64
  %arrayidx1.i = getelementptr %struct.sja1105_mac_config_entry, ptr %3, i32 %port
  %dyn_learn.i = getelementptr %struct.sja1105_mac_config_entry, ptr %3, i32 %port, i32 16
  %5 = ptrtoint ptr %dyn_learn.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %dyn_learn.i, align 8
  %call.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx1.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup28_crit_edge

if.then.cleanup28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %and10 = and i32 %flags.coerce.fca.1.extract, 16448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end17_crit_edge, label %if.then12

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end8
  %flags.coerce.fca.0.extract.i = extractvalue [2 x i32] %flags.coerce, 0
  %and.i = and i32 %flags.coerce.fca.1.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then12.if.end7.i_crit_edge, label %if.then.i

if.then12.if.end7.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then12
  %and1.i = and i32 %flags.coerce.fca.0.extract.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %shl4.i = shl nuw i32 1, %port
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_egress_floods.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ucast_egress_floods.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucast_egress_floods.i, align 8
  %or.i = or i32 %7, %shl4.i
  store i32 %or.i, ptr %ucast_egress_floods.i, align 8
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %shl4.i, -1
  %ucast_egress_floods5.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ucast_egress_floods5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucast_egress_floods5.i, align 8
  %and6.i = and i32 %9, %neg.i
  store i32 %and6.i, ptr %ucast_egress_floods5.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then3.i, %if.then12.if.end7.i_crit_edge
  %and9.i = and i32 %flags.coerce.fca.1.extract, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.sja1105_port_ucast_bcast_flood.exit_crit_edge, label %if.then11.i

if.end7.i.sja1105_port_ucast_bcast_flood.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_port_ucast_bcast_flood.exit

if.then11.i:                                      ; preds = %if.end7.i
  %and13.i = and i32 %flags.coerce.fca.0.extract.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %shl19.i = shl nuw i32 1, %port
  br i1 %tobool14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %bcast_egress_floods.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bcast_egress_floods.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bcast_egress_floods.i, align 4
  %or17.i = or i32 %11, %shl19.i
  store i32 %or17.i, ptr %bcast_egress_floods.i, align 4
  br label %sja1105_port_ucast_bcast_flood.exit

if.else18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg20.i = xor i32 %shl19.i, -1
  %bcast_egress_floods21.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bcast_egress_floods21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bcast_egress_floods21.i, align 4
  %and22.i = and i32 %13, %neg20.i
  store i32 %and22.i, ptr %bcast_egress_floods21.i, align 4
  br label %sja1105_port_ucast_bcast_flood.exit

sja1105_port_ucast_bcast_flood.exit:              ; preds = %if.else18.i, %if.then15.i, %if.end7.i.sja1105_port_ucast_bcast_flood.exit_crit_edge
  %call.i52 = tail call fastcc i32 @sja1105_manage_flood_domains(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool14.not = icmp eq i32 %call.i52, 0
  br i1 %tobool14.not, label %sja1105_port_ucast_bcast_flood.exit.if.end17_crit_edge, label %sja1105_port_ucast_bcast_flood.exit.cleanup28_crit_edge

sja1105_port_ucast_bcast_flood.exit.cleanup28_crit_edge: ; preds = %sja1105_port_ucast_bcast_flood.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

sja1105_port_ucast_bcast_flood.exit.if.end17_crit_edge: ; preds = %sja1105_port_ucast_bcast_flood.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %sja1105_port_ucast_bcast_flood.exit.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %and19 = and i32 %flags.coerce.fca.1.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %land.lhs.true

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %can_limit_mcast_flood = getelementptr inbounds %struct.sja1105_info, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %can_limit_mcast_flood to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %can_limit_mcast_flood, align 8, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end27_crit_edge, label %if.then22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  %flags.coerce.fca.0.extract.i53 = extractvalue [2 x i32] %flags.coerce, 0
  %entries.i54 = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5, i32 2
  %18 = ptrtoint ptr %entries.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i54, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 5, i32 1
  %20 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp43.not.i = icmp eq i32 %21, 0
  br i1 %cmp43.not.i, label %if.then22.for.end.i_crit_edge, label %if.then22.for.body.i_crit_edge

if.then22.for.body.i_crit_edge:                   ; preds = %if.then22
  br label %for.body.i

if.then22.for.end.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then22.for.body.i_crit_edge
  %match.044.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then22.for.body.i_crit_edge ]
  %macaddr.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.044.i, i32 1
  %22 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %macaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627776, i64 %23)
  %cmp2.i = icmp eq i64 %23, 1099511627776
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mask_macaddr.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.044.i, i32 7
  %24 = ptrtoint ptr %mask_macaddr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mask_macaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627776, i64 %25)
  %cmp4.i = icmp eq i64 %25, 1099511627776
  br i1 %cmp4.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %match.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %if.then22.for.end.i_crit_edge
  %match.0.lcssa.i = phi i32 [ 0, %if.then22.for.end.i_crit_edge ], [ %match.044.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %match.0.lcssa.i, i32 %21)
  %cmp6.i = icmp eq i32 %match.0.lcssa.i, %21
  br i1 %cmp6.i, label %for.end.i.do.body.i_crit_edge, label %if.end10.i

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_port_mcast_flood.__msg) #10
  %tobool.not.i55 = icmp eq ptr %extack, null
  br i1 %tobool.not.i55, label %do.body.i.cleanup28_crit_edge, label %if.then8.i

do.body.i.cleanup28_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sja1105_port_mcast_flood.__msg, ptr %extack, align 4
  br label %cleanup28

if.end10.i:                                       ; preds = %for.end.i
  %and.i56 = and i32 %flags.coerce.fca.0.extract.i53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool11.not.i = icmp eq i32 %and.i56, 0
  %shl14.i = shl nuw i32 1, %port
  br i1 %tobool11.not.i, label %if.else.i60, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i57 = zext i32 %shl14.i to i64
  %destports.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.0.lcssa.i, i32 2
  %27 = ptrtoint ptr %destports.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %destports.i, align 8
  %or.i58 = or i64 %28, %conv.i57
  store i64 %or.i58, ptr %destports.i, align 8
  br label %sja1105_port_mcast_flood.exit

if.else.i60:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i59 = xor i32 %shl14.i, -1
  %conv15.i = zext i32 %neg.i59 to i64
  %destports17.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.0.lcssa.i, i32 2
  %29 = ptrtoint ptr %destports17.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %destports17.i, align 8
  %and18.i = and i64 %30, %conv15.i
  store i64 %and18.i, ptr %destports17.i, align 8
  br label %sja1105_port_mcast_flood.exit

sja1105_port_mcast_flood.exit:                    ; preds = %if.else.i60, %if.then12.i
  %arrayidx20.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.0.lcssa.i
  %index.i = getelementptr %struct.sja1105_l2_lookup_entry, ptr %19, i32 %match.0.lcssa.i, i32 4
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %index.i, align 8
  %conv21.i = trunc i64 %32 to i32
  %call.i61 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 5, i32 noundef %conv21.i, ptr noundef %arrayidx20.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool24.not = icmp eq i32 %call.i61, 0
  br i1 %tobool24.not, label %sja1105_port_mcast_flood.exit.if.end27_crit_edge, label %sja1105_port_mcast_flood.exit.cleanup28_crit_edge

sja1105_port_mcast_flood.exit.cleanup28_crit_edge: ; preds = %sja1105_port_mcast_flood.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

sja1105_port_mcast_flood.exit.if.end27_crit_edge: ; preds = %sja1105_port_mcast_flood.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %sja1105_port_mcast_flood.exit.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %sja1105_port_mcast_flood.exit.cleanup28_crit_edge, %if.then8.i, %do.body.i.cleanup28_crit_edge, %sja1105_port_ucast_bcast_flood.exit.cleanup28_crit_edge, %if.then.cleanup28_crit_edge
  %retval.1 = phi i32 [ 0, %if.end27 ], [ %call.i, %if.then.cleanup28_crit_edge ], [ %call.i52, %sja1105_port_ucast_bcast_flood.exit.cleanup28_crit_edge ], [ %call.i61, %sja1105_port_mcast_flood.exit.cleanup28_crit_edge ], [ -28, %if.then8.i ], [ -28, %do.body.i.cleanup28_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_bridge_vlan_add(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %flags2 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags2, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %call = tail call zeroext i1 @vid_is_dsa_8021q(i16 noundef zeroext %5) #10
  br i1 %call, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_bridge_vlan_add.__msg) #10
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sja1105_bridge_vlan_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %7 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %if.end4.for.body.i.i_crit_edge

if.end4.for.body.i.i_crit_edge:                   ; preds = %if.end4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end4.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end4.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %10 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %11, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port)
  %cmp5.i.i = icmp eq i32 %13, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.if.then7_crit_edge, label %dsa_is_cpu_port.exit.for.body.i.i43_crit_edge

dsa_is_cpu_port.exit.for.body.i.i43_crit_edge:    ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i.i43

dsa_is_cpu_port.exit.if.then7_crit_edge:          ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

dsa_is_cpu_port.exit.thread:                      ; preds = %if.end4
  call void @__asan_load4_noabort(i32 24)
  %17 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i57 = icmp eq i32 %17, 1
  br i1 %cmp.i57, label %dsa_is_cpu_port.exit.thread.if.then7_crit_edge, label %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge

dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

dsa_is_cpu_port.exit.thread.if.then7_crit_edge:   ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

for.body.i.i43:                                   ; preds = %for.inc.i.i49.for.body.i.i43_crit_edge, %dsa_is_cpu_port.exit.for.body.i.i43_crit_edge
  %.pn22.i.i40 = phi ptr [ %.pn.i.i47, %for.inc.i.i49.for.body.i.i43_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i.i43_crit_edge ]
  %ds3.i.i41 = getelementptr i8, ptr %.pn22.i.i40, i32 -432
  %18 = ptrtoint ptr %ds3.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3.i.i41, align 4
  %cmp4.i.i42 = icmp eq ptr %19, %ds
  br i1 %cmp4.i.i42, label %land.lhs.true.i.i46, label %for.body.i.i43.for.inc.i.i49_crit_edge

for.body.i.i43.for.inc.i.i49_crit_edge:           ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i49

land.lhs.true.i.i46:                              ; preds = %for.body.i.i43
  %index.i.i44 = getelementptr i8, ptr %.pn22.i.i40, i32 -428
  %20 = ptrtoint ptr %index.i.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %port)
  %cmp5.i.i45 = icmp eq i32 %21, %port
  br i1 %cmp5.i.i45, label %cleanup.split.loop.exit18.i.i51, label %land.lhs.true.i.i46.for.inc.i.i49_crit_edge

land.lhs.true.i.i46.for.inc.i.i49_crit_edge:      ; preds = %land.lhs.true.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i49

for.inc.i.i49:                                    ; preds = %land.lhs.true.i.i46.for.inc.i.i49_crit_edge, %for.body.i.i43.for.inc.i.i49_crit_edge
  %22 = ptrtoint ptr %.pn22.i.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i47 = load ptr, ptr %.pn22.i.i40, align 4
  %cmp.not.i.i48 = icmp eq ptr %.pn.i.i47, %ports.i.i
  br i1 %cmp.not.i.i48, label %for.inc.i.i49.dsa_is_dsa_port.exit_crit_edge, label %for.inc.i.i49.for.body.i.i43_crit_edge

for.inc.i.i49.for.body.i.i43_crit_edge:           ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i43

for.inc.i.i49.dsa_is_dsa_port.exit_crit_edge:     ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

cleanup.split.loop.exit18.i.i51:                  ; preds = %land.lhs.true.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i50 = getelementptr i8, ptr %.pn22.i.i40, i32 -448
  br label %dsa_is_dsa_port.exit

dsa_is_dsa_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i51, %for.inc.i.i49.dsa_is_dsa_port.exit_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge
  %retval.0.i.i52 = phi ptr [ %dp.0.le.i.i50, %cleanup.split.loop.exit18.i.i51 ], [ null, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge ], [ null, %for.inc.i.i49.dsa_is_dsa_port.exit_crit_edge ]
  %type.i53 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i52, i32 0, i32 6
  %23 = ptrtoint ptr %type.i53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i54 = icmp eq i32 %24, 2
  br i1 %cmp.i54, label %dsa_is_dsa_port.exit.if.then7_crit_edge, label %dsa_is_dsa_port.exit.if.end8_crit_edge

dsa_is_dsa_port.exit.if.end8_crit_edge:           ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

dsa_is_dsa_port.exit.if.then7_crit_edge:          ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %dsa_is_dsa_port.exit.if.then7_crit_edge, %dsa_is_cpu_port.exit.thread.if.then7_crit_edge, %dsa_is_cpu_port.exit.if.then7_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %dsa_is_dsa_port.exit.if.end8_crit_edge
  %flags.0 = phi i16 [ 0, %if.then7 ], [ %3, %dsa_is_dsa_port.exit.if.end8_crit_edge ]
  %25 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid, align 2
  %call10 = tail call fastcc i32 @sja1105_vlan_add(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %26, i16 noundef zeroext %flags.0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %27 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags2, align 4
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool15.not = icmp eq i16 %29, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid, align 2
  %arrayidx = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 12, i32 %port
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %call19 = tail call fastcc i32 @sja1105_commit_pvid(ptr noundef %ds, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end8.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ -16, %if.then3 ], [ -16, %do.body.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_bridge_vlan_del(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %call = tail call fastcc i32 @sja1105_vlan_del(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @sja1105_commit_pvid(ptr noundef %ds, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_fdb_add(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %fdb_add_cmd = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %fdb_add_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdb_add_cmd, align 4
  %call = tail call i32 %5(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_fdb_del(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %fdb_del_cmd = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %fdb_del_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdb_del_cmd, align 8
  %call = tail call i32 %5(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_fdb_dump(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #2 align 64 {
entry:
  %l2_lookup = alloca %struct.sja1105_l2_lookup_entry, align 8
  %macaddr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %10 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds, align 4
  %12 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 1
  %13 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 2
  %14 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 3
  %15 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 4
  %16 = getelementptr inbounds [6 x i8], ptr %macaddr, i32 0, i32 5
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 2
  %shl = shl nuw i32 1, %port
  %conv = zext i32 %shl to i64
  %macaddr10 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 1
  %mask_macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 7
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %l2_lookup, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dsa_to_port.exit
  %i.051 = phi i32 [ 0, %dsa_to_port.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l2_lookup) #10
  %17 = call ptr @memset(ptr %l2_lookup, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %macaddr) #10
  %18 = call ptr @memset(ptr %macaddr, i32 255, i32 6)
  %call3 = call i32 @sja1105_dynamic_config_read(ptr noundef %9, i32 noundef 5, i32 noundef %i.051, ptr noundef nonnull %l2_lookup) #10
  %19 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call3, label %do.end [
    i32 -2, label %for.body.for.inc_crit_edge
    i32 0, label %if.end6
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.132, i32 noundef %call3) #13
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %20 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %destports, align 8
  %and = and i64 %21, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %22 = ptrtoint ptr %macaddr10 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %macaddr10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627776, i64 %23)
  %cmp11 = icmp eq i64 %23, 1099511627776
  br i1 %cmp11, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %24 = ptrtoint ptr %mask_macaddr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mask_macaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627776, i64 %25)
  %cmp13 = icmp eq i64 %25, 1099511627776
  br i1 %cmp13, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %conv.i = trunc i64 %23 to i8
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %16, align 1
  %shr.i = lshr i64 %23, 8
  %conv.1.i = trunc i64 %shr.i to i8
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.1.i, ptr %15, align 1
  %shr.1.i = lshr i64 %23, 16
  %conv.2.i = trunc i64 %shr.1.i to i8
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.2.i, ptr %14, align 1
  %shr.2.i = lshr i64 %23, 24
  %conv.3.i = trunc i64 %shr.2.i to i8
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.3.i, ptr %13, align 1
  %shr.3.i = lshr i64 %23, 32
  %conv.4.i = trunc i64 %shr.3.i to i8
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.4.i, ptr %12, align 1
  %shr.4.i = lshr i64 %23, 40
  %conv.5.i = trunc i64 %shr.4.i to i8
  %31 = ptrtoint ptr %macaddr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.5.i, ptr %macaddr, align 1
  %32 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %35 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i, label %dsa_port_is_vlan_filtering.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  %36 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool6.i.not = icmp eq i16 %36, 0
  br i1 %tobool6.i.not, label %if.then.i.if.then19_crit_edge, label %if.then.i.if.end20_crit_edge

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then.i.if.then19_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

dsa_port_is_vlan_filtering.exit:                  ; preds = %if.end16
  %37 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.if.end20_crit_edge, label %dsa_port_is_vlan_filtering.exit.if.then19_crit_edge

dsa_port_is_vlan_filtering.exit.if.then19_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

dsa_port_is_vlan_filtering.exit.if.end20_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %dsa_port_is_vlan_filtering.exit.if.then19_crit_edge, %if.then.i.if.then19_crit_edge
  %38 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %l2_lookup, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %dsa_port_is_vlan_filtering.exit.if.end20_crit_edge, %if.then.i.if.end20_crit_edge
  %39 = ptrtoint ptr %l2_lookup to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %l2_lookup, align 8
  %conv23 = trunc i64 %40 to i16
  %41 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool24 = icmp ne i64 %42, 0
  %call25 = call i32 %cb(ptr noundef nonnull %macaddr, i16 noundef zeroext %conv23, i1 noundef zeroext %tobool24, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end20.for.inc_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %do.end
  %retval.1 = phi i32 [ %call3, %do.end ], [ %call25, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  br label %cleanup31

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l2_lookup) #10
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.cleanup31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

cleanup31:                                        ; preds = %for.inc.cleanup31_crit_edge, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 0, %for.inc.cleanup31_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_mdb_add(ptr noundef %ds, i32 noundef %port, ptr noundef %mdb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 2
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %fdb_add_cmd.i = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %fdb_add_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdb_add_cmd.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %1) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_mdb_del(ptr noundef %ds, i32 noundef %port, ptr noundef %mdb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 2
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %fdb_del_cmd.i = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %fdb_del_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdb_del_cmd.i, align 8
  %call.i = tail call i32 %7(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %1) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_cls_flower_add(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_cls_flower_del(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_cls_flower_stats(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_mirror_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror, i1 noundef zeroext %ingress) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mirror, align 1
  %ds2.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds2.i, align 8
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 16, i32 2
  %6 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries.i, align 4
  %entries6.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %8 = ptrtoint ptr %entries6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries6.i, align 4
  %mirr_port.i = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %mirr_port.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mirr_port.i, align 8
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 18
  %12 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports.i, align 4
  %conv.i = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %11, %conv.i
  %14 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %14)
  %cmp15.not.i = icmp eq i64 %11, %14
  %or.cond.i = or i1 %cmp15.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.134, i64 noundef %11) #13
  br label %sja1105_mirror_apply.exit

if.end.i:                                         ; preds = %entry
  br i1 %cmp15.not.i, label %if.end.i.if.end46.i_crit_edge, label %if.then40.i

if.end.i.if.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end.i
  %17 = ptrtoint ptr %mirr_port.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %14, ptr %mirr_port.i, align 8
  %call.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 16, i32 noundef 0, ptr noundef %7, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 0
  br i1 %cmp42.i, label %if.then40.i.sja1105_mirror_apply.exit_crit_edge, label %if.then40.i.if.end46.i_crit_edge

if.then40.i.if.end46.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then40.i.sja1105_mirror_apply.exit_crit_edge:  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_mirror_apply.exit

if.end46.i:                                       ; preds = %if.then40.i.if.end46.i_crit_edge, %if.end.i.if.end46.i_crit_edge
  %egr_mirr56.i = getelementptr %struct.sja1105_mac_config_entry, ptr %9, i32 %port, i32 11
  %ing_mirr52.i = getelementptr %struct.sja1105_mac_config_entry, ptr %9, i32 %port, i32 10
  %egr_mirr56.sink.i = select i1 %ingress, ptr %ing_mirr52.i, ptr %egr_mirr56.i
  %18 = ptrtoint ptr %egr_mirr56.sink.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1, ptr %egr_mirr56.sink.i, align 8
  %arrayidx58.i = getelementptr %struct.sja1105_mac_config_entry, ptr %9, i32 %port
  %call59.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx58.i, i1 noundef zeroext true) #10
  br label %sja1105_mirror_apply.exit

sja1105_mirror_apply.exit:                        ; preds = %if.end46.i, %if.then40.i.sja1105_mirror_apply.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -16, %do.end.i ], [ %call59.i, %if.end46.i ], [ %call.i, %if.then40.i.sja1105_mirror_apply.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_mirror_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mirror, align 1
  %ingress = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %mirror, i32 0, i32 1
  %4 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ingress, align 1, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %ds2.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds2.i, align 8
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 16, i32 2
  %8 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries.i, align 4
  %entries6.i = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 9, i32 2
  %10 = ptrtoint ptr %entries6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries6.i, align 4
  %mirr_port.i = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %mirr_port.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mirr_port.i, align 8
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 18
  %14 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports.i, align 4
  %conv.i = zext i32 %15 to i64
  %16 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2395.not.i = icmp eq i32 %15, 0
  br i1 %cmp2395.not.i, label %entry.if.end36.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end36.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %port.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.if.end36.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end36.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %port.096.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ing_mirr.i = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port.096.i, i32 10
  %17 = ptrtoint ptr %ing_mirr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ing_mirr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool26.not.i = icmp eq i64 %18, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i, label %for.body.i.if.end36.i_crit_edge

for.body.i.if.end36.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %egr_mirr.i = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port.096.i, i32 11
  %19 = ptrtoint ptr %egr_mirr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %egr_mirr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool28.not.i = icmp eq i64 %20, 0
  br i1 %tobool28.not.i, label %for.cond.i, label %lor.lhs.false.i.if.end36.i_crit_edge

lor.lhs.false.i.if.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %lor.lhs.false.i.if.end36.i_crit_edge, %for.body.i.if.end36.i_crit_edge, %for.cond.i.if.end36.i_crit_edge, %entry.if.end36.i_crit_edge
  %new_mirr_port.1.i = phi i64 [ 0, %entry.if.end36.i_crit_edge ], [ %conv.i, %for.cond.i.if.end36.i_crit_edge ], [ %16, %for.body.i.if.end36.i_crit_edge ], [ %16, %lor.lhs.false.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %new_mirr_port.1.i, i64 %13)
  %cmp38.not.i = icmp eq i64 %new_mirr_port.1.i, %13
  br i1 %cmp38.not.i, label %if.end36.i.if.end46.i_crit_edge, label %if.then40.i

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end36.i
  %21 = ptrtoint ptr %mirr_port.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %new_mirr_port.1.i, ptr %mirr_port.i, align 8
  %call.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 16, i32 noundef 0, ptr noundef %9, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 0
  br i1 %cmp42.i, label %if.then40.i.sja1105_mirror_apply.exit_crit_edge, label %if.then40.i.if.end46.i_crit_edge

if.then40.i.if.end46.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then40.i.sja1105_mirror_apply.exit_crit_edge:  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_mirror_apply.exit

if.end46.i:                                       ; preds = %if.then40.i.if.end46.i_crit_edge, %if.end36.i.if.end46.i_crit_edge
  %egr_mirr56.i = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 11
  %ing_mirr52.i = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port, i32 10
  %egr_mirr56.sink.i = select i1 %tobool.not, ptr %egr_mirr56.i, ptr %ing_mirr52.i
  %22 = ptrtoint ptr %egr_mirr56.sink.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %egr_mirr56.sink.i, align 8
  %arrayidx58.i = getelementptr %struct.sja1105_mac_config_entry, ptr %11, i32 %port
  %call59.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %1, i32 noundef 9, i32 noundef %port, ptr noundef %arrayidx58.i, i1 noundef zeroext true) #10
  br label %sja1105_mirror_apply.exit

sja1105_mirror_apply.exit:                        ; preds = %if.end46.i, %if.then40.i.sja1105_mirror_apply.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_port_policer_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %policer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 8
  %rate_bytes_per_sec = getelementptr inbounds %struct.dsa_mall_policer_tc_entry, ptr %policer, i32 0, i32 1
  %4 = ptrtoint ptr %rate_bytes_per_sec to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rate_bytes_per_sec, align 8
  %mul = shl i64 %5, 9
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #15, !srcloc !332
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %6, i32 0) #15, !srcloc !333
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %rate = getelementptr %struct.sja1105_l2_policing_entry, ptr %3, i32 %port, i32 2
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %div1581.i.i, ptr %rate, align 8
  %9 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %policer, align 8
  %conv = zext i32 %10 to i64
  %smax = getelementptr %struct.sja1105_l2_policing_entry, ptr %3, i32 %port, i32 1
  %11 = ptrtoint ptr %smax to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %smax, align 8
  %call4 = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 4)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_port_policer_del(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 8
  %rate = getelementptr %struct.sja1105_l2_policing_entry, ptr %3, i32 %port, i32 2
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64000, ptr %rate, align 8
  %smax = getelementptr %struct.sja1105_l2_policing_entry, ptr %3, i32 %port, i32 1
  %5 = ptrtoint ptr %smax to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 65535, ptr %smax, align 8
  %call = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_port_setup_tc(ptr noundef %ds, i32 noundef %port, i32 noundef %type, ptr noundef %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %type, label %entry.return_crit_edge [
    i32 13, label %sw.bb
    i32 6, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @sja1105_setup_tc_taprio(ptr noundef %ds, i32 noundef %port, ptr noundef %type_data) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 4
  %3 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %info.i.i = getelementptr inbounds %struct.sja1105_private, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i.i, align 4
  %num_cbs_shapers.i.i = getelementptr inbounds %struct.sja1105_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %num_cbs_shapers.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cbs_shapers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.i.i = icmp sgt i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  br i1 %cmp22.i.i, label %for.body.lr.ph.i.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %queue.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 1
  %9 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue.i, align 4
  %cbs1.i.i = getelementptr inbounds %struct.sja1105_private, ptr %2, i32 0, i32 20
  %11 = ptrtoint ptr %cbs1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbs1.i.i, align 8
  %conv.i.i = sext i32 %port to i64
  %conv6.i.i = sext i32 %10 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sja1105_cbs_entry, ptr %12, i32 %i.023.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv.i.i)
  %cmp3.i.i = icmp eq i64 %14, %conv.i.i
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %prio5.i.i = getelementptr %struct.sja1105_cbs_entry, ptr %12, i32 %i.023.i.i, i32 1
  %15 = ptrtoint ptr %prio5.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %prio5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv6.i.i)
  %cmp7.i.i = icmp eq i64 %16, %conv6.i.i
  br i1 %cmp7.i.i, label %cleanup.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 48)
  %call.i.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %2, i32 noundef 18, i32 noundef %i.023.i.i, ptr noundef %arrayidx.i.i, i1 noundef zeroext true) #10
  br label %return

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.return_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.return_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  br i1 %cmp22.i.i, label %for.body.lr.ph.i57.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.body.lr.ph.i57.i:                             ; preds = %if.end.i
  %cbs.i.i = getelementptr inbounds %struct.sja1105_private, ptr %2, i32 0, i32 20
  %18 = ptrtoint ptr %cbs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cbs.i.i, align 8
  br label %for.body.i58.i

for.body.i58.i:                                   ; preds = %for.inc.i62.i.for.body.i58.i_crit_edge, %for.body.lr.ph.i57.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i57.i ], [ %inc.i60.i, %for.inc.i62.i.for.body.i58.i_crit_edge ]
  %idle_slope.i.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i, i32 5
  %20 = ptrtoint ptr %idle_slope.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %idle_slope.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.i.i = icmp eq i64 %21, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i59.i, label %for.body.i58.i.for.inc.i62.i_crit_edge

for.body.i58.i.for.inc.i62.i_crit_edge:           ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i62.i

land.lhs.true.i59.i:                              ; preds = %for.body.i58.i
  %send_slope.i.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i, i32 4
  %22 = ptrtoint ptr %send_slope.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %send_slope.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool3.not.i.i = icmp eq i64 %23, 0
  br i1 %tobool3.not.i.i, label %if.end4.i, label %land.lhs.true.i59.i.for.inc.i62.i_crit_edge

land.lhs.true.i59.i.for.inc.i62.i_crit_edge:      ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i62.i

for.inc.i62.i:                                    ; preds = %land.lhs.true.i59.i.for.inc.i62.i_crit_edge, %for.body.i58.i.for.inc.i62.i_crit_edge
  %inc.i60.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i61.i = icmp eq i32 %inc.i60.i, %8
  br i1 %exitcond.not.i61.i, label %for.inc.i62.i.return_crit_edge, label %for.inc.i62.i.for.body.i58.i_crit_edge

for.inc.i62.i.for.body.i58.i_crit_edge:           ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i58.i

for.inc.i62.i.return_crit_edge:                   ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4.i:                                        ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i
  %conv.i = sext i32 %port to i64
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %queue7.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 1
  %25 = ptrtoint ptr %queue7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %queue7.i, align 4
  %conv8.i = sext i32 %26 to i64
  %prio.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i, i32 1
  %27 = ptrtoint ptr %prio.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv8.i, ptr %prio.i, align 8
  %hicredit.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 2
  %28 = ptrtoint ptr %hicredit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hicredit.i, align 4
  %conv9.i = sext i32 %29 to i64
  %credit_hi.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i, i32 2
  %30 = ptrtoint ptr %credit_hi.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv9.i, ptr %credit_hi.i, align 8
  %locredit.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 3
  %31 = ptrtoint ptr %locredit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %locredit.i, align 4
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false) #10
  %conv12.i = sext i32 %33 to i64
  %credit_lo.i = getelementptr %struct.sja1105_cbs_entry, ptr %19, i32 %i.011.i.i, i32 3
  %34 = ptrtoint ptr %credit_lo.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv12.i, ptr %credit_lo.i, align 8
  %idleslope.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 4
  %35 = ptrtoint ptr %idleslope.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idleslope.i, align 4
  %conv13.i = sext i32 %36 to i64
  %mul.i = mul nsw i64 %conv13.i, 125
  %37 = ptrtoint ptr %idle_slope.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %mul.i, ptr %idle_slope.i.i, align 8
  %sendslope.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 5
  %38 = ptrtoint ptr %sendslope.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sendslope.i, align 4
  %conv15.i16 = zext i32 %39 to i64
  %mul16.i = mul nuw nsw i64 %conv15.i16, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp18.i = icmp slt i32 %39, 0
  %sub21.i = sub nsw i64 0, %mul16.i
  %cond24.i = select i1 %cmp18.i, i64 %sub21.i, i64 %mul16.i
  %and.i = and i64 %conv12.i, 4294967295
  %40 = ptrtoint ptr %credit_lo.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %and.i, ptr %credit_lo.i, align 8
  %and27.i = and i64 %cond24.i, 4294967295
  %41 = ptrtoint ptr %send_slope.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %and27.i, ptr %send_slope.i.i, align 8
  %call28.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %2, i32 noundef 18, i32 noundef %i.011.i.i, ptr noundef %arrayidx.i, i1 noundef zeroext true) #10
  br label %return

return:                                           ; preds = %if.end4.i, %for.inc.i62.i.return_crit_edge, %if.end.i.return_crit_edge, %for.inc.i.i.return_crit_edge, %cleanup.i.i, %if.then.i.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ], [ %call28.i, %if.end4.i ], [ %call.i.i, %cleanup.i.i ], [ 0, %if.then.i.return_crit_edge ], [ -28, %if.end.i.return_crit_edge ], [ 0, %for.inc.i.i.return_crit_edge ], [ -28, %for.inc.i62.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_hwtstamp_get(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_hwtstamp_set(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_port_txtstamp(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sja1105_port_rxtstamp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_devlink_info_get(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_change_mtu(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.if.then_crit_edge, label %dsa_is_cpu_port.exit.for.body.i.i30_crit_edge

dsa_is_cpu_port.exit.for.body.i.i30_crit_edge:    ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i.i30

dsa_is_cpu_port.exit.if.then_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

dsa_is_cpu_port.exit.thread:                      ; preds = %entry
  call void @__asan_load4_noabort(i32 24)
  %12 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i44 = icmp eq i32 %12, 1
  br i1 %cmp.i44, label %dsa_is_cpu_port.exit.thread.if.then_crit_edge, label %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge

dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

dsa_is_cpu_port.exit.thread.if.then_crit_edge:    ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i.i30:                                   ; preds = %for.inc.i.i36.for.body.i.i30_crit_edge, %dsa_is_cpu_port.exit.for.body.i.i30_crit_edge
  %.pn22.i.i27 = phi ptr [ %.pn.i.i34, %for.inc.i.i36.for.body.i.i30_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i.i30_crit_edge ]
  %ds3.i.i28 = getelementptr i8, ptr %.pn22.i.i27, i32 -432
  %13 = ptrtoint ptr %ds3.i.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i.i28, align 4
  %cmp4.i.i29 = icmp eq ptr %14, %ds
  br i1 %cmp4.i.i29, label %land.lhs.true.i.i33, label %for.body.i.i30.for.inc.i.i36_crit_edge

for.body.i.i30.for.inc.i.i36_crit_edge:           ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i36

land.lhs.true.i.i33:                              ; preds = %for.body.i.i30
  %index.i.i31 = getelementptr i8, ptr %.pn22.i.i27, i32 -428
  %15 = ptrtoint ptr %index.i.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port)
  %cmp5.i.i32 = icmp eq i32 %16, %port
  br i1 %cmp5.i.i32, label %cleanup.split.loop.exit18.i.i38, label %land.lhs.true.i.i33.for.inc.i.i36_crit_edge

land.lhs.true.i.i33.for.inc.i.i36_crit_edge:      ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i36

for.inc.i.i36:                                    ; preds = %land.lhs.true.i.i33.for.inc.i.i36_crit_edge, %for.body.i.i30.for.inc.i.i36_crit_edge
  %17 = ptrtoint ptr %.pn22.i.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i34 = load ptr, ptr %.pn22.i.i27, align 4
  %cmp.not.i.i35 = icmp eq ptr %.pn.i.i34, %ports.i.i
  br i1 %cmp.not.i.i35, label %for.inc.i.i36.dsa_is_dsa_port.exit_crit_edge, label %for.inc.i.i36.for.body.i.i30_crit_edge

for.inc.i.i36.for.body.i.i30_crit_edge:           ; preds = %for.inc.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i30

for.inc.i.i36.dsa_is_dsa_port.exit_crit_edge:     ; preds = %for.inc.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit

cleanup.split.loop.exit18.i.i38:                  ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i37 = getelementptr i8, ptr %.pn22.i.i27, i32 -448
  br label %dsa_is_dsa_port.exit

dsa_is_dsa_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i38, %for.inc.i.i36.dsa_is_dsa_port.exit_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge
  %retval.0.i.i39 = phi ptr [ %dp.0.le.i.i37, %cleanup.split.loop.exit18.i.i38 ], [ null, %dsa_is_cpu_port.exit.thread.dsa_is_dsa_port.exit_crit_edge ], [ null, %for.inc.i.i36.dsa_is_dsa_port.exit_crit_edge ]
  %add46 = add i32 %new_mtu, 22
  %type.i40 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i39, i32 0, i32 6
  %18 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i41 = icmp eq i32 %19, 2
  br i1 %cmp.i41, label %dsa_is_dsa_port.exit.if.then_crit_edge, label %dsa_is_dsa_port.exit.if.end_crit_edge

dsa_is_dsa_port.exit.if.end_crit_edge:            ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dsa_is_dsa_port.exit.if.then_crit_edge:           ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %dsa_is_dsa_port.exit.if.then_crit_edge, %dsa_is_cpu_port.exit.thread.if.then_crit_edge, %dsa_is_cpu_port.exit.if.then_crit_edge
  %add3 = add i32 %new_mtu, 26
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_is_dsa_port.exit.if.end_crit_edge
  %new_mtu.addr.0 = phi i32 [ %add3, %if.then ], [ %add46, %dsa_is_dsa_port.exit.if.end_crit_edge ]
  %entries = getelementptr %struct.sja1105_static_config, ptr %1, i32 0, i32 1, i32 6, i32 2
  %20 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entries, align 8
  %maxlen = getelementptr %struct.sja1105_l2_policing_entry, ptr %21, i32 %port, i32 3
  %22 = ptrtoint ptr %maxlen to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %maxlen, align 8
  %conv = sext i32 %new_mtu.addr.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv)
  %cmp = icmp eq i64 %23, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %maxlen to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %maxlen, align 8
  %call11 = tail call i32 @sja1105_static_config_reload(ptr noundef %1, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sja1105_get_max_mtu(ptr nocapture noundef readnone %ds, i32 noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2021
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_dsa_8021q_vlan_add(ptr noundef %ds, i32 noundef %port, i16 noundef zeroext %vid, i16 noundef zeroext %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_user_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_user_port.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %entry.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp ne i32 %11, 3
  %call2 = tail call fastcc i32 @sja1105_vlan_add(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %vid, i16 noundef zeroext %flags, i1 noundef zeroext %cmp.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %dsa_is_user_port.exit
  %12 = and i16 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6.not = icmp eq i16 %12, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 13, i32 %port
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %vid, ptr %arrayidx, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %call9 = tail call fastcc i32 @sja1105_commit_pvid(ptr noundef %ds, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %dsa_is_user_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call2, %dsa_is_user_port.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_dsa_8021q_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call fastcc i32 @sja1105_vlan_del(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %vid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_port_deferred_xmit(ptr noundef %work) #2 align 64 {
entry:
  %mgmt_route.i = alloca %struct.sja1105_mgmt_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %skb1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %ds2 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds2, align 4
  %priv3 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 8
  %mgmt_lock = getelementptr inbounds %struct.sja1105_private, ptr %7, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mgmt_lock, i32 noundef 0) #10
  %tobool = icmp ne ptr %11, null
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mgmt_route.i) #10
  %12 = getelementptr inbounds i8, ptr %mgmt_route.i, i32 40
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %12, align 8
  %14 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv3, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %19 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i = zext i8 %21 to i64
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %23 to i64
  %24 = shl nuw nsw i64 %conv.i.i, 16
  %25 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %25, %24
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %27 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %29 to i64
  %arrayidx.4.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %30 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %31 to i64
  %32 = shl nuw nsw i64 %or.2.i.i, 24
  %33 = shl nuw nsw i64 %conv.3.i.i, 16
  %34 = shl nuw nsw i64 %conv.4.i.i, 8
  %35 = or i64 %34, %33
  %shl.5.i.i = or i64 %35, %32
  %arrayidx.5.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 5
  %36 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %37 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %macaddr.i = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %mgmt_route.i, i32 0, i32 2
  %38 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %or.5.i.i, ptr %macaddr.i, align 8
  %shl.i = shl nuw i32 1, %9
  %conv.i = zext i32 %shl.i to i64
  %destports.i = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %mgmt_route.i, i32 0, i32 3
  %39 = ptrtoint ptr %destports.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %destports.i, align 8
  %enfport.i = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %mgmt_route.i, i32 0, i32 4
  %40 = ptrtoint ptr %enfport.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %enfport.i, align 8
  %41 = ptrtoint ptr %mgmt_route.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %mgmt_route.i, align 8
  %conv3.i = zext i1 %tobool to i64
  %takets4.i = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %mgmt_route.i, i32 0, i32 1
  %42 = ptrtoint ptr %takets4.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv3.i, ptr %takets4.i, align 8
  %call5.i = call i32 @sja1105_dynamic_config_write(ptr noundef %15, i32 noundef 22, i32 noundef 0, ptr noundef nonnull %mgmt_route.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #10
  br label %sja1105_mgmt_xmit.exit

if.end.i:                                         ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.end.i.dsa_to_port.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.dsa_to_port.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %46 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %47, %5
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %48 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %9)
  %cmp5.i.i = icmp eq i32 %49, %9
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %50 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.end.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.end.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %retval.0.i.i, align 4
  %call8.i = call i32 @dsa_enqueue_skb(ptr noundef %1, ptr noundef %52) #10
  %ds18.i = getelementptr inbounds %struct.sja1105_private, ptr %15, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %dsa_to_port.exit.i
  %timeout.0.i = phi i32 [ 10, %dsa_to_port.exit.i ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %call9.i = call i32 @sja1105_dynamic_config_read(ptr noundef %15, i32 noundef 22, i32 noundef 0, ptr noundef nonnull %mgmt_route.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.body13.i, label %do.end27.i

do.body13.i:                                      ; preds = %do.body.i
  %call14.i = call i32 @___ratelimit(ptr noundef nonnull @sja1105_mgmt_xmit._rs, ptr noundef nonnull @__func__.sja1105_mgmt_xmit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.do.cond32.i_crit_edge, label %do.end.i

do.body13.i.do.cond32.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond32.i

do.end.i:                                         ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %ds18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ds18.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.58) #13
  br label %do.cond32.i

do.end27.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !334
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !335
  br label %do.cond32.i

do.cond32.i:                                      ; preds = %do.end27.i, %do.end.i, %do.body13.i.do.cond32.i_crit_edge
  %57 = ptrtoint ptr %enfport.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %enfport.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool34.not.i = icmp eq i64 %58, 0
  br i1 %tobool34.not.i, label %do.cond32.i.sja1105_mgmt_xmit.exit_crit_edge, label %land.rhs.i

do.cond32.i.sja1105_mgmt_xmit.exit_crit_edge:     ; preds = %do.cond32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_mgmt_xmit.exit

land.rhs.i:                                       ; preds = %do.cond32.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool35.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool35.not.i, label %if.then38.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then38.i:                                      ; preds = %land.rhs.i
  %call39.i = call i32 @sja1105_dynamic_config_write(ptr noundef %15, i32 noundef 22, i32 noundef 0, ptr noundef nonnull %mgmt_route.i, i1 noundef zeroext false) #10
  %call41.i = call i32 @___ratelimit(ptr noundef nonnull @sja1105_mgmt_xmit._rs.59, ptr noundef nonnull @__func__.sja1105_mgmt_xmit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then38.i.sja1105_mgmt_xmit.exit_crit_edge, label %do.end46.i

if.then38.i.sja1105_mgmt_xmit.exit_crit_edge:     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_mgmt_xmit.exit

do.end46.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %ds18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ds18.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.61) #13
  br label %sja1105_mgmt_xmit.exit

sja1105_mgmt_xmit.exit:                           ; preds = %do.end46.i, %if.then38.i.sja1105_mgmt_xmit.exit_crit_edge, %do.cond32.i.sja1105_mgmt_xmit.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mgmt_route.i) #10
  br i1 %tobool, label %if.then, label %sja1105_mgmt_xmit.exit.if.end_crit_edge

sja1105_mgmt_xmit.exit.if.end_crit_edge:          ; preds = %sja1105_mgmt_xmit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sja1105_mgmt_xmit.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @sja1105_ptp_txtstamp_skb(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sja1105_mgmt_xmit.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mgmt_lock) #10
  call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1110_process_meta_tstamp(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_ptp_txtstamp_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_enqueue_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_tas_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_flower_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_ptp_clock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_mdiobus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_devlink_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_devlink_teardown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_flower_teardown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_tas_teardown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_static_config_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_init_general_params(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %index = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %conv = zext i32 %3 to i64
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %conv2 = zext i32 %5 to i64
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %multiple_cascade_ports.i = getelementptr inbounds %struct.sja1105_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %multiple_cascade_ports.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %multiple_cascade_ports.i, align 4, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool.not.i, i64 %conv2, i64 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp126.not.i = icmp eq i32 %5, 0
  br i1 %cmp126.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %dst1.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dst1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst1.i.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  %rtable.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %default_general_params.sroa.16.1 = phi i64 [ %spec.select, %for.body.lr.ph.i ], [ %default_general_params.sroa.16.2, %for.inc.i.for.body.i_crit_edge ]
  %default_general_params.sroa.22.0 = phi i64 [ %conv2, %for.body.lr.ph.i ], [ %default_general_params.sroa.22.1, %for.inc.i.for.body.i_crit_edge ]
  %port.0127.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp.not21.i.i.i.i, label %dsa_is_unused_port.exit.thread.i.i, label %for.body.i.for.body.i.i.i.i_crit_edge

for.body.i.for.body.i.i.i.i_crit_edge:            ; preds = %for.body.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %for.body.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %13 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %14, %1
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %15 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port.0127.i)
  %cmp5.i.i.i.i = icmp eq i32 %16, %port.0127.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %17 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i.i

dsa_is_unused_port.exit.i.i:                      ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i, label %dsa_is_unused_port.exit.i.i.dsa_is_upstream_port.exit.i_crit_edge, label %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge

dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i.i
  br label %for.body.i.i12.i.i

dsa_is_unused_port.exit.i.i.dsa_is_upstream_port.exit.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_upstream_port.exit.i

dsa_is_unused_port.exit.thread.i.i:               ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 24)
  %20 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i24.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i24.i.i, label %dsa_is_unused_port.exit.thread.i.i.for.inc.i_crit_edge, label %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge

dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i.i.i

dsa_is_unused_port.exit.thread.i.i.for.inc.i_crit_edge: ; preds = %dsa_is_unused_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.i12.i.i:                               ; preds = %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge, %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge
  %.pn22.i.i9.i.i = phi ptr [ %.pn.i.i16.i.i, %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge ], [ %.pn20.i.i.i.i, %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge ]
  %ds3.i.i10.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -432
  %21 = ptrtoint ptr %ds3.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds3.i.i10.i.i, align 4
  %cmp4.i.i11.i.i = icmp eq ptr %22, %1
  br i1 %cmp4.i.i11.i.i, label %land.lhs.true.i.i15.i.i, label %for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge

for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge:   ; preds = %for.body.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i18.i.i

land.lhs.true.i.i15.i.i:                          ; preds = %for.body.i.i12.i.i
  %index.i.i13.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -428
  %23 = ptrtoint ptr %index.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %port.0127.i)
  %cmp5.i.i14.i.i = icmp eq i32 %24, %port.0127.i
  br i1 %cmp5.i.i14.i.i, label %cleanup.split.loop.exit18.i.i20.i.i, label %land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge

land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge: ; preds = %land.lhs.true.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i18.i.i

for.inc.i.i18.i.i:                                ; preds = %land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge, %for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge
  %25 = ptrtoint ptr %.pn22.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i16.i.i = load ptr, ptr %.pn22.i.i9.i.i, align 4
  %cmp.not.i.i17.i.i = icmp eq ptr %.pn.i.i16.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i17.i.i, label %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge

for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge:   ; preds = %for.inc.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i12.i.i

for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit.i.i.i

cleanup.split.loop.exit18.i.i20.i.i:              ; preds = %land.lhs.true.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i19.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -448
  br label %dsa_to_port.exit.i.i.i

dsa_to_port.exit.i.i.i:                           ; preds = %cleanup.split.loop.exit18.i.i20.i.i, %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge, %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge
  %retval.0.i.i21.i.i = phi ptr [ %dp.0.le.i.i19.i.i, %cleanup.split.loop.exit18.i.i20.i.i ], [ null, %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge ], [ null, %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge ]
  %cpu_dp1.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i21.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %cpu_dp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpu_dp1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, label %if.end.i.i.i

dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge: ; preds = %dsa_to_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_upstream_port.exit.i.i

if.end.i.i.i:                                     ; preds = %dsa_to_port.exit.i.i.i
  %ds2.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ds2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds2.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i.i, align 4
  %index3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %index3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %3, %31
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_upstream_port.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %34 = ptrtoint ptr %rtable.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn22.i.i.i.i.i = load ptr, ptr %rtable.i.i.i.i.i, align 4
  %cmp.not23.i.i.i.i.i = icmp eq ptr %.pn22.i.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not23.i.i.i.i.i, label %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, label %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge:     ; preds = %if.else.i.i.i.i
  br label %for.body.i.i.i.i.i

if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_routing_port.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %.pn24.i.i.i.i.i = phi ptr [ %.pn.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %.pn22.i.i.i.i.i, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -8
  %35 = ptrtoint ptr %dl.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dl.0.i.i.i.i.i, align 4
  %ds3.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ds3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ds3.i.i.i.i.i, align 4
  %cmp4.i.i.i.i.i = icmp eq ptr %38, %1
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %link_dp.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -4
  %39 = ptrtoint ptr %link_dp.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link_dp.i.i.i.i.i, align 4
  %ds5.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ds5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ds5.i.i.i.i.i, align 4
  %index.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %31)
  %cmp6.i.i.i.i.i = icmp eq i32 %44, %31
  br i1 %cmp6.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %index8.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %36, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %45 = ptrtoint ptr %.pn24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_routing_port.exit.i.i.i.i

dsa_routing_port.exit.i.i.i.i:                    ; preds = %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge, %if.then.i.i.i.i.i, %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge
  %retval.0.in.i.i.i.i.i = phi ptr [ %index8.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %num_ports, %if.else.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge ], [ %num_ports, %for.inc.i.i.i.i.i.dsa_routing_port.exit.i.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %retval.0.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i.i, align 4
  br label %dsa_upstream_port.exit.i.i

dsa_upstream_port.exit.i.i:                       ; preds = %dsa_routing_port.exit.i.i.i.i, %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge, %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %port.0127.i, %dsa_to_port.exit.i.i.i.dsa_upstream_port.exit.i.i_crit_edge ], [ %retval.0.i.i.i.i.i, %dsa_routing_port.exit.i.i.i.i ], [ %33, %if.end.i.i.i.dsa_upstream_port.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %port.0127.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %port.0127.i
  br label %dsa_is_upstream_port.exit.i

dsa_is_upstream_port.exit.i:                      ; preds = %dsa_upstream_port.exit.i.i, %dsa_is_unused_port.exit.i.i.dsa_is_upstream_port.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.i, %dsa_upstream_port.exit.i.i ], [ false, %dsa_is_unused_port.exit.i.i.dsa_is_upstream_port.exit.i_crit_edge ]
  br i1 %cmp.not21.i.i.i.i, label %dsa_is_upstream_port.exit.i.dsa_is_dsa_port.exit.i_crit_edge, label %dsa_is_upstream_port.exit.i.for.body.i.i.i_crit_edge

dsa_is_upstream_port.exit.i.for.body.i.i.i_crit_edge: ; preds = %dsa_is_upstream_port.exit.i
  br label %for.body.i.i.i

dsa_is_upstream_port.exit.i.dsa_is_dsa_port.exit.i_crit_edge: ; preds = %dsa_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %dsa_is_upstream_port.exit.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %dsa_is_upstream_port.exit.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %47 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %48, %1
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i96.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %49 = ptrtoint ptr %index.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i.i96.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %port.0127.i)
  %cmp5.i.i.i = icmp eq i32 %50, %port.0127.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %51 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_dsa_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_dsa_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_dsa_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  %type.i107.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -424
  br i1 %retval.0.i.i, label %cleanup.split.loop.exit18.i.i.i.if.then9.i_crit_edge, label %cleanup.split.loop.exit18.i.i.i.if.end20.i_crit_edge

cleanup.split.loop.exit18.i.i.i.if.end20.i_crit_edge: ; preds = %cleanup.split.loop.exit18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

cleanup.split.loop.exit18.i.i.i.if.then9.i_crit_edge: ; preds = %cleanup.split.loop.exit18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

dsa_is_dsa_port.exit.i:                           ; preds = %for.inc.i.i.i.dsa_is_dsa_port.exit.i_crit_edge, %dsa_is_upstream_port.exit.i.dsa_is_dsa_port.exit.i_crit_edge
  br i1 %retval.0.i.i, label %dsa_is_dsa_port.exit.i.if.then9.i_crit_edge, label %dsa_is_dsa_port.exit.i.if.end20.i_crit_edge

dsa_is_dsa_port.exit.i.if.end20.i_crit_edge:      ; preds = %dsa_is_dsa_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

dsa_is_dsa_port.exit.i.if.then9.i_crit_edge:      ; preds = %dsa_is_dsa_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %dsa_is_dsa_port.exit.i.if.then9.i_crit_edge, %cleanup.split.loop.exit18.i.i.i.if.then9.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %default_general_params.sroa.22.0, i64 %conv2)
  %cmp13.i = icmp eq i64 %default_general_params.sroa.22.0, %conv2
  br i1 %cmp13.i, label %if.end20.thread.i, label %do.end.i

if.end20.thread.i:                                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv16.i = sext i32 %port.0127.i to i64
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.114, i64 noundef %default_general_params.sroa.22.0, i32 noundef %port.0127.i) #13
  br label %cleanup

if.end20.i:                                       ; preds = %dsa_is_dsa_port.exit.i.if.end20.i_crit_edge, %cleanup.split.loop.exit18.i.i.i.if.end20.i_crit_edge
  %cmp.i98106.in.in.ph.i = phi ptr [ %type.i107.i, %cleanup.split.loop.exit18.i.i.i.if.end20.i_crit_edge ], [ inttoptr (i32 24 to ptr), %dsa_is_dsa_port.exit.i.if.end20.i_crit_edge ]
  %54 = ptrtoint ptr %cmp.i98106.in.in.ph.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %cmp.i98106.in.pr.i = load i32, ptr %cmp.i98106.in.in.ph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmp.i98106.in.pr.i)
  %cmp.i98106.not.i = icmp eq i32 %cmp.i98106.in.pr.i, 2
  br i1 %cmp.i98106.not.i, label %if.then24.i, label %if.end20.i.for.inc.i_crit_edge

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then24.i:                                      ; preds = %if.end20.i
  br i1 %tobool.not.i, label %if.else31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %port.0127.i
  %conv29.i = zext i32 %shl.i to i64
  %or.i = or i64 %default_general_params.sroa.16.1, %conv29.i
  br label %for.inc.i

if.else31.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_cmp8(i64 %default_general_params.sroa.16.1, i64 %conv2)
  %cmp35.i = icmp eq i64 %default_general_params.sroa.16.1, %conv2
  br i1 %cmp35.i, label %if.then37.i, label %do.end43.i

if.then37.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv38.i = sext i32 %port.0127.i to i64
  br label %for.inc.i

do.end43.i:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.117, i64 noundef %default_general_params.sroa.16.1, i32 noundef %port.0127.i) #13
  br label %cleanup

for.inc.i:                                        ; preds = %if.then37.i, %if.then28.i, %if.end20.i.for.inc.i_crit_edge, %if.end20.thread.i, %dsa_is_unused_port.exit.thread.i.i.for.inc.i_crit_edge
  %default_general_params.sroa.16.2 = phi i64 [ %default_general_params.sroa.16.1, %dsa_is_unused_port.exit.thread.i.i.for.inc.i_crit_edge ], [ %default_general_params.sroa.16.1, %if.end20.thread.i ], [ %conv38.i, %if.then37.i ], [ %or.i, %if.then28.i ], [ %default_general_params.sroa.16.1, %if.end20.i.for.inc.i_crit_edge ]
  %default_general_params.sroa.22.1 = phi i64 [ %default_general_params.sroa.22.0, %dsa_is_unused_port.exit.thread.i.i.for.inc.i_crit_edge ], [ %conv16.i, %if.end20.thread.i ], [ %default_general_params.sroa.22.0, %if.then37.i ], [ %default_general_params.sroa.22.0, %if.then28.i ], [ %default_general_params.sroa.22.0, %if.end20.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %port.0127.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %default_general_params.sroa.16.3 = phi i64 [ %spec.select, %entry.for.end.i_crit_edge ], [ %default_general_params.sroa.16.2, %for.inc.i.for.end.i_crit_edge ]
  %default_general_params.sroa.22.2 = phi i64 [ 0, %entry.for.end.i_crit_edge ], [ %default_general_params.sroa.22.1, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %default_general_params.sroa.22.2, i64 %conv2)
  %cmp53.i = icmp eq i64 %default_general_params.sroa.22.2, %conv2
  br i1 %cmp53.i, label %do.end58.i, label %if.end

do.end58.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.120) #13
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 16
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 16, i32 1
  %59 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not = icmp eq i32 %60, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 16, i32 2
  %61 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %62) #10
  %63 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %entry_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_entry_count, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %unpacked_entry_size, align 4
  %70 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %67, i32 %69) #10
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !330

kcalloc.exit.thread:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %entries953 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 16, i32 2
  %72 = ptrtoint ptr %entries953 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %entries953, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end6
  %73 = extractvalue { i32, i1 } %70, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #14
  %entries9 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 16, i32 2
  %74 = ptrtoint ptr %entries9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call8.i.i, ptr %entries9, align 4
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end13

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %max_entry_count15 = getelementptr inbounds %struct.sja1105_table_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %max_entry_count15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_entry_count15, align 4
  %79 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %entry_count, align 4
  %80 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %call8.i.i, align 128
  %default_general_params.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 8
  %81 = ptrtoint ptr %default_general_params.sroa.5.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 1, ptr %default_general_params.sroa.5.0..sroa_idx, align 8
  %default_general_params.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 16
  %82 = ptrtoint ptr %default_general_params.sroa.6.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv, ptr %default_general_params.sroa.6.0..sroa_idx, align 16
  %default_general_params.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 24
  %83 = ptrtoint ptr %default_general_params.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 7, ptr %default_general_params.sroa.7.0..sroa_idx, align 8
  %default_general_params.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 32
  %84 = ptrtoint ptr %default_general_params.sroa.8.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1652522221568, ptr %default_general_params.sroa.8.0..sroa_idx, align 32
  %default_general_params.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 40
  %85 = ptrtoint ptr %default_general_params.sroa.9.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1215895175168, ptr %default_general_params.sroa.9.0..sroa_idx, align 8
  %default_general_params.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 48
  %86 = ptrtoint ptr %default_general_params.sroa.10.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 281474959933440, ptr %default_general_params.sroa.10.0..sroa_idx, align 16
  %default_general_params.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 56
  %87 = ptrtoint ptr %default_general_params.sroa.11.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 281474959933440, ptr %default_general_params.sroa.11.0..sroa_idx, align 8
  %default_general_params.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 64
  %default_general_params.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 96
  %88 = call ptr @memset(ptr %default_general_params.sroa.12.0..sroa_idx, i32 0, i32 32)
  %89 = ptrtoint ptr %default_general_params.sroa.16.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %default_general_params.sroa.16.3, ptr %default_general_params.sroa.16.0..sroa_idx, align 32
  %default_general_params.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 104
  %90 = ptrtoint ptr %default_general_params.sroa.22.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %default_general_params.sroa.22.2, ptr %default_general_params.sroa.22.0..sroa_idx, align 8
  %default_general_params.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 112
  %91 = ptrtoint ptr %default_general_params.sroa.27.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv2, ptr %default_general_params.sroa.27.0..sroa_idx, align 16
  %default_general_params.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 120
  %default_general_params.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 136
  %92 = call ptr @memset(ptr %default_general_params.sroa.28.0..sroa_idx, i32 0, i32 16)
  %93 = ptrtoint ptr %default_general_params.sroa.30.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 56027, ptr %default_general_params.sroa.30.0..sroa_idx, align 8
  %default_general_params.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 144
  %94 = ptrtoint ptr %default_general_params.sroa.31.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %default_general_params.sroa.31.0..sroa_idx, align 16
  %default_general_params.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 152
  %95 = ptrtoint ptr %default_general_params.sroa.32.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 56027, ptr %default_general_params.sroa.32.0..sroa_idx, align 8
  %default_general_params.sroa.33.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 160
  %default_general_params.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 200
  %96 = call ptr @memset(ptr %default_general_params.sroa.33.0..sroa_idx, i32 0, i32 40)
  %97 = ptrtoint ptr %default_general_params.sroa.38.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 1, ptr %default_general_params.sroa.38.0..sroa_idx, align 8
  %default_general_params.sroa.39.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 208
  %98 = ptrtoint ptr %default_general_params.sroa.39.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 0, ptr %default_general_params.sroa.39.0..sroa_idx, align 16
  %default_general_params.sroa.40.0..sroa_idx = getelementptr inbounds i8, ptr %call8.i.i, i32 216
  %99 = ptrtoint ptr %default_general_params.sroa.40.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 56028, ptr %default_general_params.sroa.40.0..sroa_idx, align 8
  %100 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %info.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %101, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3070231311, i64 %103)
  %cmp.not.i = icmp eq i64 %103, 3070231311
  br i1 %cmp.not.i, label %if.end.i41, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i41:                                       ; preds = %if.end13
  %104 = ptrtoint ptr %entries9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %entries9, align 4
  %arrayidx1.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp2.i = icmp eq i32 %107, 1
  %arrayidx4.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 3
  %108 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %109)
  %cmp5.i = icmp eq i32 %109, 22
  %arrayidx8.i = getelementptr %struct.sja1105_private, ptr %priv, i32 0, i32 3, i32 4
  %110 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %111)
  %cmp9.i = icmp eq i32 %111, 22
  br i1 %cmp2.i, label %if.end.i41.if.end25.i_crit_edge, label %if.else.i

if.end.i41.if.end25.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i41
  %112 = select i1 %cmp5.i, i1 %cmp9.i, i1 false
  br i1 %112, label %if.else.i.if.end25.i_crit_edge, label %if.else15.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %cmp9.i, i64 2, i64 14
  %spec.select.i = select i1 %cmp5.i, i64 3, i64 %..i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else15.i, %if.else.i.if.end25.i_crit_edge, %if.end.i41.if.end25.i_crit_edge
  %tdmaconfigidx.0.i = phi i64 [ 5, %if.end.i41.if.end25.i_crit_edge ], [ 1, %if.else.i.if.end25.i_crit_edge ], [ %spec.select.i, %if.else15.i ]
  %tdmaconfigidx26.i = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %105, i32 0, i32 26
  %113 = ptrtoint ptr %tdmaconfigidx26.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %tdmaconfigidx.0.i, ptr %tdmaconfigidx26.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25.i, %if.end13.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end58.i, %do.end43.i, %do.end.i
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end25.i ], [ -22, %do.end58.i ], [ -22, %do.end43.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_init_avb_params(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 15
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 15, i32 1
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 15, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entry_count, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unpacked_entry_size, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 %10) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !330

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %entries325 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 15, i32 2
  %13 = ptrtoint ptr %entries325 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %entries325, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %entries3 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 15, i32 2
  %15 = ptrtoint ptr %entries3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %entries3, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %max_entry_count9 = getelementptr inbounds %struct.sja1105_table_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %max_entry_count9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_entry_count9, align 4
  %20 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %entry_count, align 4
  %destmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %call8.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %destmeta to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1652522221582, ptr %destmeta, align 8
  %srcmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %call8.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %srcmeta to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 37529996894754, ptr %srcmeta, align 16
  %23 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %call8.i.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1110_init_pcp_remapping(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 20
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 20, i32 1
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 20, i32 2
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %entry_count, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %max_entry_count7 = getelementptr inbounds %struct.sja1105_table_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %max_entry_count7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entry_count7, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unpacked_entry_size, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 %16) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !330

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %entries954 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 20, i32 2
  %19 = ptrtoint ptr %entries954 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %entries954, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end5
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #14
  %entries9 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 20, i32 2
  %21 = ptrtoint ptr %entries9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %entries9, align 4
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end13

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %max_entry_count15 = getelementptr inbounds %struct.sja1105_table_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %max_entry_count15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_entry_count15, align 4
  %26 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %entry_count, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp63.not = icmp eq i32 %28, 0
  br i1 %cmp63.not, label %if.end13.cleanup_crit_edge, label %for.body.lr.ph

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end13
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %for.body.lr.ph
  %port.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc26.for.body_crit_edge ]
  %29 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_unused_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_unused_port.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %32 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %33, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i51, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i51:                              ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %port.064)
  %cmp5.i.i = icmp eq i32 %35, %port.064
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i51.for.inc.i.i_crit_edge

land.lhs.true.i.i51.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i51.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i52 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i52, i32 0, i32 6
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i = icmp eq i32 %38, 0
  br i1 %cmp.i, label %dsa_is_unused_port.exit.for.inc26_crit_edge, label %for.cond21.preheader

dsa_is_unused_port.exit.for.inc26_crit_edge:      ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26

for.cond21.preheader:                             ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr %struct.sja1110_pcp_remapping_entry, ptr %call8.i.i, i32 %port.064
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %arrayidx24, align 64
  %arrayidx25.1 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %arrayidx25.1, align 8
  %arrayidx25.2 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 2, ptr %arrayidx25.2, align 16
  %arrayidx25.3 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 3, ptr %arrayidx25.3, align 8
  %arrayidx25.4 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 4, ptr %arrayidx25.4, align 32
  %arrayidx25.5 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 5, ptr %arrayidx25.5, align 8
  %arrayidx25.6 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 6, ptr %arrayidx25.6, align 16
  %arrayidx25.7 = getelementptr [8 x i64], ptr %arrayidx24, i32 0, i32 7
  %46 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 7, ptr %arrayidx25.7, align 8
  br label %for.inc26

for.inc26:                                        ; preds = %for.cond21.preheader, %dsa_is_unused_port.exit.for.inc26_crit_edge
  %inc27 = add nuw i32 %port.064, 1
  %47 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc27, %48
  br i1 %cmp, label %for.inc26.for.body_crit_edge, label %for.inc26.cleanup_crit_edge

for.inc26.cleanup_crit_edge:                      ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc26.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %for.inc26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_8021q_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_inhibit_tx(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_bridge_member(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, i1 noundef zeroext %member) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %2, i32 0, i32 1, i32 8, i32 2
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entries, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %5 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp79.not = icmp eq i32 %6, 0
  br i1 %cmp79.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %shl.i = shl nuw i32 1, %port
  %neg.i = xor i32 %shl.i, -1
  %conv2.i = zext i32 %neg.i to i64
  %reach_port4.i65 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %4, i32 %port, i32 1
  %conv.i = zext i32 %shl.i to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %10 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %11, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %i.080)
  %cmp5.i.i = icmp eq i32 %13, %i.080
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp ne i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %port)
  %cmp2 = icmp eq i32 %i.080, %port
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp2
  br i1 %or.cond, label %dsa_is_user_port.exit.for.inc_crit_edge, label %dsa_is_user_port.exit.for.body.i_crit_edge

dsa_is_user_port.exit.for.body.i_crit_edge:       ; preds = %dsa_is_user_port.exit
  br label %for.body.i

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

dsa_is_user_port.exit.thread:                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %17 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i71 = icmp ne i32 %17, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %port)
  %cmp273 = icmp eq i32 %i.080, %port
  %or.cond74 = select i1 %cmp.i71, i1 true, i1 %cmp273
  br i1 %or.cond74, label %dsa_is_user_port.exit.thread.for.inc_crit_edge, label %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge

dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

dsa_is_user_port.exit.thread.for.inc_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dsa_is_user_port.exit.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %18 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %19, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %i.080)
  %cmp5.i = icmp eq i32 %21, %i.080
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %23 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge: ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %26, %cond.true.i.i ], [ null, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i57 = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i57, label %if.end8, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %dsa_port_offloads_bridge.exit
  %reach_port.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %4, i32 %i.080, i32 1
  %27 = ptrtoint ptr %reach_port.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %reach_port.i, align 8
  br i1 %member, label %if.then.i62, label %if.else.i67

if.then.i62:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i64 %28, %conv.i
  %29 = ptrtoint ptr %reach_port.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i, ptr %reach_port.i, align 8
  %shl.i5875 = shl nuw i32 1, %i.080
  %conv.i59 = zext i32 %shl.i5875 to i64
  %30 = ptrtoint ptr %reach_port4.i65 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %reach_port4.i65, align 8
  %or.i61 = or i64 %31, %conv.i59
  br label %sja1105_port_allow_traffic.exit68

if.else.i67:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i64 %28, %conv2.i
  %32 = ptrtoint ptr %reach_port.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %and.i, ptr %reach_port.i, align 8
  %shl.i58 = shl nuw i32 1, %i.080
  %neg.i63 = xor i32 %shl.i58, -1
  %conv2.i64 = zext i32 %neg.i63 to i64
  %33 = ptrtoint ptr %reach_port4.i65 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %reach_port4.i65, align 8
  %and.i66 = and i64 %34, %conv2.i64
  br label %sja1105_port_allow_traffic.exit68

sja1105_port_allow_traffic.exit68:                ; preds = %if.else.i67, %if.then.i62
  %storemerge = phi i64 [ %and.i66, %if.else.i67 ], [ %or.i61, %if.then.i62 ]
  %35 = ptrtoint ptr %reach_port4.i65 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %storemerge, ptr %reach_port4.i65, align 8
  %arrayidx10 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %4, i32 %i.080
  %call11 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %2, i32 noundef 8, i32 noundef %i.080, ptr noundef %arrayidx10, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %sja1105_port_allow_traffic.exit68.cleanup_crit_edge, label %sja1105_port_allow_traffic.exit68.for.inc_crit_edge

sja1105_port_allow_traffic.exit68.for.inc_crit_edge: ; preds = %sja1105_port_allow_traffic.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sja1105_port_allow_traffic.exit68.cleanup_crit_edge: ; preds = %sja1105_port_allow_traffic.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %sja1105_port_allow_traffic.exit68.for.inc_crit_edge, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %dsa_is_user_port.exit.thread.for.inc_crit_edge, %dsa_is_user_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.080, 1
  %36 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx15 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %4, i32 %port
  %call16 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %2, i32 noundef 8, i32 noundef %port, ptr noundef %arrayidx15, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %call20 = tail call fastcc i32 @sja1105_commit_pvid(ptr noundef %ds, i32 noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call fastcc i32 @sja1105_manage_flood_domains(ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %for.end.cleanup_crit_edge, %sja1105_port_allow_traffic.exit68.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ %call16, %for.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call11, %sja1105_port_allow_traffic.exit68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_bridge_tx_fwd_offload(ptr noundef, i32 noundef, [4 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_manage_flood_domains(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 8, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp84.not = icmp eq i32 %5, 0
  br i1 %cmp84.not, label %entry.cleanup42_crit_edge, label %for.cond2.preheader.lr.ph

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %ucast_egress_floods = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 5
  %bcast_egress_floods = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 6
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc39.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %from.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc40, %for.inc39.for.cond2.preheader_crit_edge ]
  %6 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds1, align 8
  %num_ports4 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %num_ports4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp579.not = icmp eq i32 %9, 0
  br i1 %cmp579.not, label %for.cond2.preheader.for.end_crit_edge, label %for.body6.lr.ph

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %reach_port.i = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %3, i32 %from.085, i32 1
  %10 = ptrtoint ptr %reach_port.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reach_port.i, align 8
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %bc_domain.082 = phi i64 [ 0, %for.body6.lr.ph ], [ %bc_domain.1, %for.inc.for.body6_crit_edge ]
  %fl_domain.081 = phi i64 [ 0, %for.body6.lr.ph ], [ %fl_domain.2, %for.inc.for.body6_crit_edge ]
  %to.080 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %shl.i = shl nuw i32 1, %to.080
  %conv.i = zext i32 %shl.i to i64
  %and.i = and i64 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ucast_egress_floods to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ucast_egress_floods, align 8
  %and = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = select i1 %tobool.not, i64 0, i64 %conv.i
  %fl_domain.1 = or i64 %or, %fl_domain.081
  %14 = ptrtoint ptr %bcast_egress_floods to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bcast_egress_floods, align 4
  %and11 = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or16 = select i1 %tobool12.not, i64 0, i64 %conv.i
  %spec.select = or i64 %or16, %bc_domain.082
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body6.for.inc_crit_edge
  %fl_domain.2 = phi i64 [ %fl_domain.081, %for.body6.for.inc_crit_edge ], [ %fl_domain.1, %if.end ]
  %bc_domain.1 = phi i64 [ %bc_domain.082, %for.body6.for.inc_crit_edge ], [ %spec.select, %if.end ]
  %inc = add nuw i32 %to.080, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %fl_domain.0.lcssa = phi i64 [ 0, %for.cond2.preheader.for.end_crit_edge ], [ %fl_domain.2, %for.inc.for.end_crit_edge ]
  %bc_domain.0.lcssa = phi i64 [ 0, %for.cond2.preheader.for.end_crit_edge ], [ %bc_domain.1, %for.inc.for.end_crit_edge ]
  %arrayidx18 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %3, i32 %from.085
  %fl_domain19 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %3, i32 %from.085, i32 2
  %16 = ptrtoint ptr %fl_domain19 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fl_domain19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %fl_domain.0.lcssa)
  %cmp20 = icmp eq i64 %17, %fl_domain.0.lcssa
  br i1 %cmp20, label %land.lhs.true, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %for.end
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %bc_domain.0.lcssa)
  %cmp24 = icmp eq i64 %19, %bc_domain.0.lcssa
  br i1 %cmp24, label %land.lhs.true.for.inc39_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true.for.inc39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %for.end.if.end27_crit_edge
  %20 = ptrtoint ptr %fl_domain19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %fl_domain.0.lcssa, ptr %fl_domain19, align 8
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %bc_domain.0.lcssa, ptr %arrayidx18, align 8
  %call33 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef 8, i32 noundef %from.085, ptr noundef %arrayidx18, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end27.cleanup42_crit_edge, label %if.end27.for.inc39_crit_edge

if.end27.for.inc39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

if.end27.cleanup42_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

for.inc39:                                        ; preds = %if.end27.for.inc39_crit_edge, %land.lhs.true.for.inc39_crit_edge
  %inc40 = add nuw i32 %from.085, 1
  %22 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc40, %23
  br i1 %cmp, label %for.inc39.for.cond2.preheader_crit_edge, label %for.inc39.cleanup42_crit_edge

for.inc39.cleanup42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

for.inc39.for.cond2.preheader_crit_edge:          ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

cleanup42:                                        ; preds = %for.inc39.cleanup42_crit_edge, %if.end27.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup42_crit_edge ], [ %call33, %if.end27.cleanup42_crit_edge ], [ 0, %for.inc39.cleanup42_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_8021q_bridge_tx_fwd_unoffload(ptr noundef, i32 noundef, [4 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vid_is_dsa_8021q(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_vlan_add(ptr noundef %priv, i32 noundef %port, i16 noundef zeroext %vid, i16 noundef zeroext %flags, i1 noundef zeroext %allowed_ingress) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7, i32 2
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries.i, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7, i32 1
  %2 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %conv.i = zext i16 %vid to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vlanid.i = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i, i32 5
  %4 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vlanid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i)
  %cmp5.i = icmp eq i64 %5, %conv.i
  br i1 %cmp5.i, label %for.body.i.if.end4_crit_edge, label %for.inc.i

for.body.i.if.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7
  %add = add i32 %3, 1
  %call1 = tail call i32 @sja1105_table_resize(ptr noundef %arrayidx, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_count.i, align 4
  %sub = add i32 %7, -1
  %.pre = zext i16 %vid to i64
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.body.i.if.end4_crit_edge
  %conv.pre-phi = phi i64 [ %.pre, %if.end ], [ %conv.i, %for.body.i.if.end4_crit_edge ]
  %match.0 = phi i32 [ %sub, %if.end ], [ %i.014.i, %for.body.i.if.end4_crit_edge ]
  %8 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries.i, align 4
  %arrayidx5 = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0
  %type_entry = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 6
  %10 = ptrtoint ptr %type_entry to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 3, ptr %type_entry, align 8
  %vlanid = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 5
  %11 = ptrtoint ptr %vlanid to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.pre-phi, ptr %vlanid, align 8
  %shl = shl nuw i32 1, %port
  %conv7 = zext i32 %shl to i64
  %vlan_bc = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 3
  %12 = ptrtoint ptr %vlan_bc to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vlan_bc, align 8
  %or = or i64 %13, %conv7
  store i64 %or, ptr %vlan_bc, align 8
  br i1 %allowed_ingress, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %vmemb_port = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 2
  %14 = ptrtoint ptr %vmemb_port to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vmemb_port, align 8
  %or14 = or i64 %15, %conv7
  store i64 %or14, ptr %vmemb_port, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl, -1
  %conv16 = zext i32 %neg to i64
  %vmemb_port18 = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 2
  %16 = ptrtoint ptr %vmemb_port18 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vmemb_port18, align 8
  %and = and i64 %17, %conv16
  store i64 %and, ptr %vmemb_port18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  %18 = and i16 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool22.not = icmp eq i16 %18, 0
  br i1 %tobool22.not, label %if.else29, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %neg25 = xor i32 %shl, -1
  %conv26 = zext i32 %neg25 to i64
  %tag_port = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 4
  %19 = ptrtoint ptr %tag_port to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tag_port, align 8
  %and28 = and i64 %20, %conv26
  store i64 %and28, ptr %tag_port, align 8
  br label %if.end35

if.else29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %tag_port33 = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %9, i32 %match.0, i32 4
  %21 = ptrtoint ptr %tag_port33 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tag_port33, align 8
  %or34 = or i64 %22, %conv7
  store i64 %or34, ptr %tag_port33, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then23
  %conv36 = zext i16 %vid to i32
  %call38 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef 7, i32 noundef %conv36, ptr noundef %arrayidx5, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end35 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_vlan_del(ptr noundef %priv, i32 noundef %port, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7, i32 2
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries.i, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 7, i32 1
  %2 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %conv.i = zext i16 %vid to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vlanid.i = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i, i32 5
  %4 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vlanid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i)
  %cmp5.i = icmp eq i64 %5, %conv.i
  br i1 %cmp5.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %arrayidx1 = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i
  %6 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %vlanid.i, align 8
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %conv2 = zext i32 %neg to i64
  %vlan_bc = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i, i32 3
  %7 = ptrtoint ptr %vlan_bc to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vlan_bc, align 8
  %and = and i64 %8, %conv2
  store i64 %and, ptr %vlan_bc, align 8
  %vmemb_port = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i, i32 2
  %9 = ptrtoint ptr %vmemb_port to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vmemb_port, align 8
  %and8 = and i64 %10, %conv2
  store i64 %and8, ptr %vmemb_port, align 8
  %tag_port = getelementptr %struct.sja1105_vlan_lookup_entry, ptr %1, i32 %i.014.i, i32 4
  %11 = ptrtoint ptr %tag_port to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tag_port, align 8
  %and13 = and i64 %12, %conv2
  store i64 %and13, ptr %tag_port, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp ne i64 %and8, 0
  %conv18 = zext i16 %vid to i32
  %call21 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef 7, i32 noundef %conv18, ptr noundef %arrayidx1, i1 noundef zeroext %tobool.not) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  %brmerge = or i1 %tobool.not, %cmp22
  %13 = tail call i32 @llvm.smin.i32(i32 %call21, i32 0)
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @sja1105_table_delete_entry(ptr noundef %arrayidx, i32 noundef %i.014.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then27 ], [ %13, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_table_delete_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_setup_tc_taprio(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !262, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !278, !280, !281, !282, !283, !285, !287, !288, !289, !290, !292, !293, !294, !296, !298, !299, !300, !302, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324, !325, !326}
!llvm.ident = !{!327}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1616, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sja1105et_fdb_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sja1105et_fdb_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1738, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sja1105pqrs_fdb_add._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @sja1105pqrs_fdb_add._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1768, i32 3}
!16 = !{ptr @sja1105pqrs_fdb_add._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sja1105pqrs_fdb_add._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2282, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sja1105_static_config_reload._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @sja1105_static_config_reload._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @sja1105_vlan_filtering.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2370, i32 4}
!26 = !{ptr @sja1105_vlan_filtering.__msg.14, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2431, i32 3}
!28 = !{ptr @__initcall__kmod_sja1105__520_3401_sja1105_driver_init6, !29, !"__initcall__kmod_sja1105__520_3401_sja1105_driver_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3401, i32 1}
!30 = !{ptr @__exitcall_sja1105_driver_exit, !29, !"__exitcall_sja1105_driver_exit", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author521, !32, !"__UNIQUE_ID_author521", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3403, i32 1}
!33 = !{ptr @__UNIQUE_ID_author522, !34, !"__UNIQUE_ID_author522", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3404, i32 1}
!35 = !{ptr @__UNIQUE_ID_description523, !36, !"__UNIQUE_ID_description523", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3405, i32 1}
!37 = !{ptr @__UNIQUE_ID_file524, !38, !"__UNIQUE_ID_file524", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3406, i32 1}
!39 = !{ptr @__UNIQUE_ID_license525, !38, !"__UNIQUE_ID_license525", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2197, i32 29}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2198, i32 29}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2199, i32 26}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2200, i32 25}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2201, i32 35}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2202, i32 28}
!52 = !{ptr @sja1105_reset_reasons, !53, !"sja1105_reset_reasons", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2196, i32 27}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1323, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sja1105_adjust_port_config._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sja1105_adjust_port_config._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1345, i32 3}
!61 = !{ptr @sja1105_adjust_port_config._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sja1105_adjust_port_config._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3392, i32 12}
!65 = !{ptr @sja1105_driver, !66, !"sja1105_driver", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3390, i32 26}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3253, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sja1105_probe._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sja1105_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3275, i32 3}
!74 = !{ptr @sja1105_probe._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sja1105_probe._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3296, i32 3}
!78 = !{ptr @sja1105_probe._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sja1105_probe._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3311, i32 3}
!82 = !{ptr @sja1105_probe._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sja1105_probe._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3315, i32 2}
!86 = !{ptr @sja1105_probe._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sja1105_probe._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sja1105_probe.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3327, i32 2}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sja1105_probe.__key.42, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3328, i32 2}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sja1105_probe.__key.44, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3329, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sja1105_probe.__key.46, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3330, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3334, i32 3}
!102 = !{ptr @sja1105_probe._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @sja1105_probe._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 36, i32 33}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3229, i32 4}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sja1105_check_device_id._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sja1105_check_device_id._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3238, i32 2}
!113 = !{ptr @sja1105_check_device_id._entry.54, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sja1105_check_device_id._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @sja1105_switch_ops, !116, !"sja1105_switch_ops", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3147, i32 36}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2652, i32 4}
!119 = !{ptr @sja1105_mgmt_xmit._rs, !118, !"_rs", i1 false, i1 false}
!120 = !{ptr @__func__.sja1105_mgmt_xmit, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sja1105_mgmt_xmit._entry, !118, !"_entry", i1 false, i1 false}
!123 = !{ptr @sja1105_mgmt_xmit._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @sja1105_mgmt_xmit._rs.59, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2672, i32 3}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sja1105_mgmt_xmit._entry.60, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @sja1105_mgmt_xmit._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3044, i32 4}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sja1105_setup._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @sja1105_setup._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3054, i32 3}
!136 = !{ptr @sja1105_setup._entry.65, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @sja1105_setup._entry_ptr.67, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3062, i32 4}
!140 = !{ptr @sja1105_setup._entry.68, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sja1105_setup._entry_ptr.70, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3074, i32 3}
!144 = !{ptr @sja1105_setup._entry.71, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @sja1105_setup._entry_ptr.73, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3080, i32 3}
!148 = !{ptr @sja1105_setup._entry.74, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sja1105_setup._entry_ptr.76, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 333, i32 4}
!152 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @sja1105_init_mii_settings._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @sja1105_init_mii_settings._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 211, i32 10}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 213, i32 10}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 215, i32 10}
!161 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 217, i32 10}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/phy.h", i32 219, i32 10}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/phy.h", i32 221, i32 10}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/phy.h", i32 223, i32 10}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/phy.h", i32 225, i32 10}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/phy.h", i32 227, i32 10}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/phy.h", i32 229, i32 10}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/phy.h", i32 231, i32 10}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/phy.h", i32 233, i32 10}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/phy.h", i32 235, i32 10}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/phy.h", i32 237, i32 10}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/phy.h", i32 239, i32 10}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/phy.h", i32 241, i32 10}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/phy.h", i32 243, i32 10}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/phy.h", i32 245, i32 10}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/phy.h", i32 247, i32 10}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/phy.h", i32 249, i32 10}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/phy.h", i32 251, i32 10}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/phy.h", i32 253, i32 10}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/phy.h", i32 255, i32 10}
!201 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/phy.h", i32 257, i32 10}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../include/linux/phy.h", i32 259, i32 10}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/phy.h", i32 261, i32 10}
!207 = !{ptr @.str.107, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/phy.h", i32 263, i32 10}
!209 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/phy.h", i32 265, i32 10}
!211 = !{ptr @.str.109, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/phy.h", i32 267, i32 10}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/phy.h", i32 269, i32 10}
!215 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/phy.h", i32 271, i32 10}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 606, i32 3}
!219 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @sja1105_init_l2_forwarding._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @sja1105_init_l2_forwarding._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 829, i32 5}
!224 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @sja1105_init_topology._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @sja1105_init_topology._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 843, i32 5}
!229 = !{ptr @sja1105_init_topology._entry.116, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @sja1105_init_topology._entry_ptr.118, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 852, i32 3}
!233 = !{ptr @sja1105_init_topology._entry.119, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @sja1105_init_topology._entry_ptr.121, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1383, i32 3}
!237 = !{ptr @.str.123, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @sja1105_mac_config._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @sja1105_mac_config._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @sja1105_prechangeupper.__msg, !241, !"__msg", i1 false, i1 false}
!241 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2601, i32 3}
!242 = !{ptr @sja1105_prechangeupper.__msg.124, !243, !"__msg", i1 false, i1 false}
!243 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2610, i32 5}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2068, i32 3}
!246 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @sja1105_bridge_stp_state_set._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @sja1105_bridge_stp_state_set._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1902, i32 4}
!251 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @sja1105_fast_age._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @sja1105_fast_age._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.130, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1918, i32 4}
!256 = !{ptr @sja1105_fast_age._entry.129, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @sja1105_fast_age._entry_ptr.131, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @sja1105_port_pre_bridge_flags.__msg, !259, !"__msg", i1 false, i1 false}
!259 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2980, i32 4}
!260 = !{ptr @sja1105_port_mcast_flood.__msg, !261, !"__msg", i1 false, i1 false}
!261 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2948, i32 3}
!262 = !{ptr @sja1105_bridge_vlan_add.__msg, !263, !"__msg", i1 false, i1 false}
!263 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2527, i32 3}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1856, i32 4}
!266 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @sja1105_fdb_dump._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @sja1105_fdb_dump._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 2811, i32 3}
!271 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @sja1105_mirror_apply._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @sja1105_mirror_apply._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1253, i32 49}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1255, i32 50}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1257, i32 3}
!280 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @sja1105_parse_dt._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @sja1105_parse_dt._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1201, i32 35}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1202, i32 4}
!287 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @sja1105_parse_ports_node._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @sja1105_parse_ports_node._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1211, i32 4}
!292 = !{ptr @sja1105_parse_ports_node._entry.143, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @sja1105_parse_ports_node._entry_ptr.145, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1218, i32 38}
!296 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1221, i32 5}
!298 = !{ptr @sja1105_parse_ports_node._entry.147, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @sja1105_parse_ports_node._entry_ptr.149, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1143, i32 32}
!302 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1144, i32 32}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1147, i32 3}
!306 = !{ptr @.str.153, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @sja1105_parse_rgmii_delays._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @sja1105_parse_rgmii_delays._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1168, i32 3}
!311 = !{ptr @sja1105_parse_rgmii_delays._entry.154, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @sja1105_parse_rgmii_delays._entry_ptr.156, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.158, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 1176, i32 3}
!315 = !{ptr @sja1105_parse_rgmii_delays._entry.157, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @sja1105_parse_rgmii_delays._entry_ptr.159, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @sja1105_dt_ids, !318, !"sja1105_dt_ids", i1 false, i1 false}
!318 = !{!"../drivers/net/dsa/sja1105/sja1105_main.c", i32 3375, i32 34}
!319 = !{i32 1, !"wchar_size", i32 2}
!320 = !{i32 1, !"min_enum_size", i32 4}
!321 = !{i32 8, !"branch-target-enforcement", i32 0}
!322 = !{i32 8, !"sign-return-address", i32 0}
!323 = !{i32 8, !"sign-return-address-all", i32 0}
!324 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!325 = !{i32 7, !"uwtable", i32 1}
!326 = !{i32 7, !"frame-pointer", i32 2}
!327 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!328 = !{!"auto-init"}
!329 = !{i8 0, i8 2}
!330 = !{!"branch_weights", i32 1, i32 2000}
!331 = !{i64 2158297323, i64 2158297814, i64 2158297360, i64 2158297416, i64 2158297450, i64 2158297474, i64 2158297515, i64 2158297536, i64 2158297564, i64 2158297598}
!332 = !{i64 571132, i64 571159}
!333 = !{i64 571827, i64 571854, i64 571887, i64 571908, i64 571935, i64 571961}
!334 = !{i64 2158658299}
!335 = !{i64 2158658141}
