; ModuleID = '/llk/IR_all_yes/net/dsa/port.c_pt.bc'
source_filename = "../net/dsa/port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dsa_port_get_phy_strings\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_port_get_phy_strings\09\09\09\09"
module asm "\09.long\09__crc_dsa_port_get_phy_strings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_phy_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_phy_strings\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_phy_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_port_get_ethtool_phy_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_port_get_ethtool_phy_stats\09\09\09\09"
module asm "\09.long\09__crc_dsa_port_get_ethtool_phy_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_ethtool_phy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_ethtool_phy_stats\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_ethtool_phy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_port_get_phy_sset_count\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_port_get_phy_sset_count\09\09\09\09"
module asm "\09.long\09__crc_dsa_port_get_phy_sset_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_get_phy_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_get_phy_sset_count\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_get_phy_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_notifier_ageing_time_info = type { i32 }
%struct.dsa_notifier_bridge_info = type { %struct.dsa_bridge, i32, i32, i32, i8 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.dsa_notifier_lag_info = type { ptr, i32, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dsa_notifier_mtu_info = type { i8, i32, i32, i32 }
%struct.dsa_notifier_fdb_info = type { i32, i32, ptr, i16 }
%struct.dsa_notifier_mdb_info = type { ptr, i32, i32 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.dsa_notifier_vlan_info = type { ptr, i32, i32, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.dsa_notifier_tag_8021q_vlan_info = type { i32, i32, i32, i16 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@dsa_slave_switchdev_notifier = external dso_local global %struct.notifier_block, align 4
@dsa_slave_switchdev_blocking_notifier = external dso_local global %struct.notifier_block, align 4
@dsa_port_bridge_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"port %d failed to notify DSA_NOTIFIER_BRIDGE_LEAVE: %pe\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsa_port_bridge_leave\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/dsa/port.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsa_port_bridge_leave._entry_ptr = internal global ptr @dsa_port_bridge_leave._entry, section ".printk_index", align 4
@dsa_port_lag_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"port %d failed to notify DSA_NOTIFIER_LAG_LEAVE: %pe\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsa_port_lag_leave\00", [45 x i8] zeroinitializer }, align 32
@dsa_port_lag_leave._entry_ptr = internal global ptr @dsa_port_lag_leave._entry, section ".printk_index", align 4
@dsa_port_phylink_mac_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @dsa_port_phylink_validate, ptr null, ptr @dsa_port_phylink_mac_pcs_get_state, ptr null, ptr @dsa_port_phylink_mac_config, ptr null, ptr @dsa_port_phylink_mac_an_restart, ptr @dsa_port_phylink_mac_link_down, ptr @dsa_port_phylink_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@dsa_port_phylink_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013error creating PHYLINK: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsa_port_phylink_create\00", [40 x i8] zeroinitializer }, align 32
@dsa_port_phylink_create._entry_ptr = internal global ptr @dsa_port_phylink_create._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@dsa_port_link_register_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1249, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Using legacy PHYLIB callbacks. Please migrate to PHYLINK!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsa_port_link_register_of\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dsa_port_link_register_of._entry_ptr = internal global ptr @dsa_port_link_register_of._entry, section ".printk_index", align 4
@__kstrtab_dsa_port_get_phy_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_phy_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_phy_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_phy_strings to i32), ptr @__kstrtab_dsa_port_get_phy_strings, ptr @__kstrtabns_dsa_port_get_phy_strings }, section "___ksymtab_gpl+dsa_port_get_phy_strings", align 4
@__kstrtab_dsa_port_get_ethtool_phy_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_ethtool_phy_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_ethtool_phy_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_ethtool_phy_stats to i32), ptr @__kstrtab_dsa_port_get_ethtool_phy_stats, ptr @__kstrtabns_dsa_port_get_ethtool_phy_stats }, section "___ksymtab_gpl+dsa_port_get_ethtool_phy_stats", align 4
@__kstrtab_dsa_port_get_phy_sset_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_get_phy_sset_count = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_get_phy_sset_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_get_phy_sset_count to i32), ptr @__kstrtab_dsa_port_get_phy_sset_count, ptr @__kstrtabns_dsa_port_get_phy_sset_count }, section "___ksymtab_gpl+dsa_port_get_phy_sset_count", align 4
@dsa_port_hsr_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port %d failed to leave HSR %s: %pe\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsa_port_hsr_leave\00", [45 x i8] zeroinitializer }, align 32
@dsa_port_hsr_leave._entry_ptr = internal global ptr @dsa_port_hsr_leave._entry, section ".printk_index", align 4
@dsa_port_tag_8021q_vlan_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"port %d failed to notify tag_8021q VLAN %d deletion: %pe\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsa_port_tag_8021q_vlan_del\00", [36 x i8] zeroinitializer }, align 32
@dsa_port_tag_8021q_vlan_del._entry_ptr = internal global ptr @dsa_port_tag_8021q_vlan_del._entry, section ".printk_index", align 4
@dsa_port_set_state_now._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013DSA: failed to set STP state %u (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsa_port_set_state_now\00", [41 x i8] zeroinitializer }, align 32
@dsa_port_set_state_now._entry_ptr = internal global ptr @dsa_port_set_state_now._entry, section ".printk_index", align 4
@dsa_port_bridge_create.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dsa_core: Range of offloadable bridges exceeded\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dsa_port_clear_brport_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to clear bridge port flag %lu: %pe\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsa_port_clear_brport_flags\00", [36 x i8] zeroinitializer }, align 32
@dsa_port_clear_brport_flags._entry_ptr = internal global ptr @dsa_port_clear_brport_flags._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dsa_port_can_apply_vlan_filtering.__msg = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"dsa_core: Must first remove VLAN uppers having VIDs also present in bridge\00", [53 x i8] zeroinitializer }, align 32
@dsa_port_can_apply_vlan_filtering.__msg.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dsa_core: VLAN filtering is a global setting\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dsa_port_phylink_mac_pcs_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"p%d: phylink_mac_link_state() failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsa_port_phylink_mac_pcs_get_state\00", [61 x i8] zeroinitializer }, align 32
@dsa_port_phylink_mac_pcs_get_state._entry_ptr = internal global ptr @dsa_port_phylink_mac_pcs_get_state._entry, section ".printk_index", align 4
@dsa_port_phylink_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013could not attach to PHY: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsa_port_phylink_register\00", [38 x i8] zeroinitializer }, align 32
@dsa_port_phylink_register._entry_ptr = internal global ptr @dsa_port_phylink_register._entry, section ".printk_index", align 4
@dsa_port_fixed_link_register_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to register the fixed PHY of port %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dsa_port_fixed_link_register_of\00", [32 x i8] zeroinitializer }, align 32
@dsa_port_fixed_link_register_of._entry_ptr = internal global ptr @dsa_port_fixed_link_register_of._entry, section ".printk_index", align 4
@dsa_port_setup_phy_of.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsa_core\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsa_port_setup_phy_of\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabled port's phy: %s\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 416, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 520, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"dsa_port_phylink_mac_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1093, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1125, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1238, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1248, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1360, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1396, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 118, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 297, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 214, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 695, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 561, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 586, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 723, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1023, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1220, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1181, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [18 x i8] c"../net/dsa/port.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1163, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__ksymtab_dsa_port_get_ethtool_phy_stats, ptr @__ksymtab_dsa_port_get_phy_sset_count, ptr @__ksymtab_dsa_port_get_phy_strings, ptr @dsa_port_bridge_leave._entry, ptr @dsa_port_bridge_leave._entry_ptr, ptr @dsa_port_clear_brport_flags._entry, ptr @dsa_port_clear_brport_flags._entry_ptr, ptr @dsa_port_fixed_link_register_of._entry, ptr @dsa_port_fixed_link_register_of._entry_ptr, ptr @dsa_port_hsr_leave._entry, ptr @dsa_port_hsr_leave._entry_ptr, ptr @dsa_port_lag_leave._entry, ptr @dsa_port_lag_leave._entry_ptr, ptr @dsa_port_link_register_of._entry, ptr @dsa_port_link_register_of._entry_ptr, ptr @dsa_port_phylink_create._entry, ptr @dsa_port_phylink_create._entry_ptr, ptr @dsa_port_phylink_mac_pcs_get_state._entry, ptr @dsa_port_phylink_mac_pcs_get_state._entry_ptr, ptr @dsa_port_phylink_register._entry, ptr @dsa_port_phylink_register._entry_ptr, ptr @dsa_port_set_state_now._entry, ptr @dsa_port_set_state_now._entry_ptr, ptr @dsa_port_tag_8021q_vlan_del._entry, ptr @dsa_port_tag_8021q_vlan_del._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dsa_port_phylink_mac_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dsa_port_bridge_create.__msg, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dsa_port_can_apply_vlan_filtering.__msg, ptr @dsa_port_can_apply_vlan_filtering.__msg.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_bridge_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_lag_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_phylink_mac_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_phylink_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_link_register_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_hsr_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_tag_8021q_vlan_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_set_state_now._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_bridge_create.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_clear_brport_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_can_apply_vlan_filtering.__msg to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_can_apply_vlan_filtering.__msg.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_phylink_mac_pcs_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_phylink_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_fixed_link_register_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_set_state(ptr nocapture noundef %dp, i8 noundef zeroext %state, i1 noundef zeroext %do_fast_age) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_stp_state_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %port_stp_state_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_stp_state_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %7, i8 noundef zeroext %state) #9
  %8 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds1, align 4
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %port_bridge_flags.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %port_bridge_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_bridge_flags.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %lor.lhs.false.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false.i:                                  ; preds = %if.end
  %port_pre_bridge_flags.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 49
  %14 = ptrtoint ptr %port_pre_bridge_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_pre_bridge_flags.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then6_crit_edge, label %dsa_port_can_configure_learning.exit

lor.lhs.false.i.if.then6_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

dsa_port_can_configure_learning.exit:             ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef %17, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false, label %dsa_port_can_configure_learning.exit.if.then6_crit_edge

dsa_port_can_configure_learning.exit.if.then6_crit_edge: ; preds = %dsa_port_can_configure_learning.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %dsa_port_can_configure_learning.exit
  br i1 %do_fast_age, label %land.lhs.true, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %lor.lhs.false
  %learning = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %18 = ptrtoint ptr %learning to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %learning, align 1
  %19 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.if.then6_crit_edge

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then6:                                         ; preds = %land.lhs.true.if.then6_crit_edge, %dsa_port_can_configure_learning.exit.if.then6_crit_edge, %lor.lhs.false.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %stp_state = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %20 = ptrtoint ptr %stp_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stp_state, align 2
  %22 = and i8 %21, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %switch = icmp eq i8 %22, 2
  br i1 %switch, label %land.lhs.true14, label %if.then6.if.end28_crit_edge

if.then6.if.end28_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true14:                                  ; preds = %if.then6
  %23 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %state, label %land.lhs.true14.if.end28_crit_edge [
    i8 0, label %land.lhs.true14.if.then26_crit_edge
    i8 4, label %land.lhs.true14.if.then26_crit_edge50
    i8 1, label %land.lhs.true14.if.then26_crit_edge51
  ]

land.lhs.true14.if.then26_crit_edge51:            ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

land.lhs.true14.if.then26_crit_edge50:            ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

land.lhs.true14.if.then26_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

land.lhs.true14.if.end28_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true14.if.then26_crit_edge, %land.lhs.true14.if.then26_crit_edge50, %land.lhs.true14.if.then26_crit_edge51
  %24 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds1, align 4
  %ops.i45 = getelementptr inbounds %struct.dsa_switch, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i45, align 4
  %port_fast_age.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %27, i32 0, i32 48
  %28 = ptrtoint ptr %port_fast_age.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_fast_age.i, align 4
  %tobool.not.i46 = icmp eq ptr %29, null
  br i1 %tobool.not.i46, label %if.then26.if.end28_crit_edge, label %if.end.i48

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end.i48:                                       ; preds = %if.then26
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  tail call void %29(ptr noundef %25, i32 noundef %31) #9
  %bridge.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %32 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bridge.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %dsa_port_to_bridge_port.exit.thread8.i.i, label %if.end.i.i.i

dsa_port_to_bridge_port.exit.thread8.i.i:         ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i48
  %lag_dev.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %34 = ptrtoint ptr %lag_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lag_dev.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.end.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge

if.end.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %hsr_dev.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %36 = ptrtoint ptr %hsr_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hsr_dev.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i.i.i, label %dsa_port_to_bridge_port.exit.i.i, label %if.else.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge

if.else.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i

dsa_port_to_bridge_port.exit.thread.i.i:          ; preds = %if.else.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge, %if.end.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ %37, %if.else.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge ], [ %35, %if.end.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #9
  %38 = call ptr @memset(ptr %info.i.i, i32 0, i32 20)
  br label %if.end.i.i

dsa_port_to_bridge_port.exit.i.i:                 ; preds = %if.else.i.i.i
  %39 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #9
  %41 = call ptr @memset(ptr %info.i.i, i32 0, i32 20)
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %dsa_port_to_bridge_port.exit.i.i.dsa_port_notify_bridge_fdb_flush.exit.i_crit_edge, label %dsa_port_to_bridge_port.exit.i.i.if.end.i.i_crit_edge

dsa_port_to_bridge_port.exit.i.i.if.end.i.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

dsa_port_to_bridge_port.exit.i.i.dsa_port_notify_bridge_fdb_flush.exit.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_notify_bridge_fdb_flush.exit.i

if.end.i.i:                                       ; preds = %dsa_port_to_bridge_port.exit.i.i.if.end.i.i_crit_edge, %dsa_port_to_bridge_port.exit.thread.i.i
  %retval.0.i7.i.i = phi ptr [ %retval.0.i.ph.i.i, %dsa_port_to_bridge_port.exit.thread.i.i ], [ %40, %dsa_port_to_bridge_port.exit.i.i.if.end.i.i_crit_edge ]
  %call2.i.i = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %retval.0.i7.i.i, ptr noundef nonnull %info.i.i, ptr noundef null) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i

dsa_port_notify_bridge_fdb_flush.exit.i:          ; preds = %if.end.i.i, %dsa_port_to_bridge_port.exit.i.i.dsa_port_notify_bridge_fdb_flush.exit.i_crit_edge, %dsa_port_to_bridge_port.exit.thread8.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #9
  br label %if.end28

if.end28:                                         ; preds = %dsa_port_notify_bridge_fdb_flush.exit.i, %if.then26.if.end28_crit_edge, %land.lhs.true14.if.end28_crit_edge, %if.then6.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %stp_state29 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %42 = ptrtoint ptr %stp_state29 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %state, ptr %stp_state29, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsa_port_fast_age(ptr nocapture noundef readonly %dp) unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_fast_age = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %port_fast_age to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_fast_age, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %7) #9
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %dsa_port_to_bridge_port.exit.thread8.i, label %if.end.i.i

dsa_port_to_bridge_port.exit.thread8.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit

if.end.i.i:                                       ; preds = %if.end
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %10 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge

if.end.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %12 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i.i, label %dsa_port_to_bridge_port.exit.i, label %if.else.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge

if.else.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i

dsa_port_to_bridge_port.exit.thread.i:            ; preds = %if.else.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge, %if.end.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %13, %if.else.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge ], [ %11, %if.end.i.i.dsa_port_to_bridge_port.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #9
  %14 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  br label %if.end.i

dsa_port_to_bridge_port.exit.i:                   ; preds = %if.else.i.i
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #9
  %17 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %dsa_port_to_bridge_port.exit.i.dsa_port_notify_bridge_fdb_flush.exit_crit_edge, label %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge

dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

dsa_port_to_bridge_port.exit.i.dsa_port_notify_bridge_fdb_flush.exit_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_notify_bridge_fdb_flush.exit

if.end.i:                                         ; preds = %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge, %dsa_port_to_bridge_port.exit.thread.i
  %retval.0.i7.i = phi ptr [ %retval.0.i.ph.i, %dsa_port_to_bridge_port.exit.thread.i ], [ %16, %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge ]
  %call2.i = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %retval.0.i7.i, ptr noundef nonnull %info.i, ptr noundef null) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit

dsa_port_notify_bridge_fdb_flush.exit:            ; preds = %if.end.i, %dsa_port_to_bridge_port.exit.i.dsa_port_notify_bridge_fdb_flush.exit_crit_edge, %dsa_port_to_bridge_port.exit.thread8.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #9
  br label %cleanup

cleanup:                                          ; preds = %dsa_port_notify_bridge_fdb_flush.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_enable_rt(ptr nocapture noundef %dp, ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_enable = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %port_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %phy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %bridge = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds1, align 4
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %port_stp_state_set.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %port_stp_state_set.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_stp_state_set.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

if.end.i:                                         ; preds = %if.then8
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  tail call void %15(ptr noundef %11, i32 noundef %17, i8 noundef zeroext 3) #9
  %18 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds1, align 4
  %ops.i.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %port_bridge_flags.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 50
  %22 = ptrtoint ptr %port_bridge_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_bridge_flags.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.dsa_port_set_state.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.dsa_port_set_state.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_set_state.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %port_pre_bridge_flags.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 49
  %24 = ptrtoint ptr %port_pre_bridge_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_pre_bridge_flags.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %25, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.dsa_port_set_state.exit.thread_crit_edge, label %dsa_port_can_configure_learning.exit.i

lor.lhs.false.i.i.dsa_port_set_state.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_set_state.exit.thread

dsa_port_can_configure_learning.exit.i:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %19, i32 noundef %27, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  br label %dsa_port_set_state.exit.thread

dsa_port_set_state.exit.thread:                   ; preds = %dsa_port_can_configure_learning.exit.i, %lor.lhs.false.i.i.dsa_port_set_state.exit.thread_crit_edge, %if.end.i.dsa_port_set_state.exit.thread_crit_edge
  %stp_state29.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %28 = ptrtoint ptr %stp_state29.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %stp_state29.i, align 2
  br label %if.end9

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef -95) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end.i, %dsa_port_set_state.exit.thread, %if.end6.if.end9_crit_edge
  %pl = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %29 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pl, align 4
  %tobool10.not = icmp eq ptr %30, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phylink_start(ptr noundef nonnull %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_enable(ptr nocapture noundef %dp, ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #9
  %call = tail call i32 @dsa_port_enable_rt(ptr noundef %dp, ptr noundef %phy)
  tail call void @rtnl_unlock() #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_disable_rt(ptr nocapture noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %4 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phylink_stop(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bridge = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 @dsa_port_set_state(ptr noundef %dp, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then4.if.end5_crit_edge, label %do.end.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call.i) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %port_disable = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %port_disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_disable, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %1, i32 noundef %3) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_disable(ptr nocapture noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #9
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %pl.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %4 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phylink_stop(ptr noundef nonnull %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %6 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @dsa_port_set_state(ptr noundef %dp, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then4.i.if.end5.i_crit_edge, label %do.end.i.i

if.then4.i.if.end5.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call.i.i) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i.i, %if.then4.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %port_disable.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %port_disable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_disable.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.end5.i.dsa_port_disable_rt.exit_crit_edge, label %if.then7.i

if.end5.i.dsa_port_disable_rt.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_disable_rt.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %1, i32 noundef %3) #9
  br label %dsa_port_disable_rt.exit

dsa_port_disable_rt.exit:                         ; preds = %if.then7.i, %if.end5.i.dsa_port_disable_rt.exit_crit_edge
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_bridge_join(ptr noundef %dp, ptr noundef %br, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.dsa_notifier_ageing_time_info, align 4
  %info.i.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mask.i.i = alloca i32, align 4
  %info = alloca %struct.dsa_notifier_bridge_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %tree_index = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 1
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %tree_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tree_index, align 4
  %sw_index = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %index2 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %sw_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sw_index, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %index3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port, align 4
  %tx_fwd_offload = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tx_fwd_offload, align 4
  %16 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dp, align 4
  %18 = load ptr, ptr %dst, align 4
  %call.i = tail call ptr @dsa_tree_bridge_find(ptr noundef %18, ptr noundef %br) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dsa_bridge, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 16) #13
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %refcount7.i = getelementptr inbounds %struct.dsa_bridge, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount7.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %refcount7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount7.i, align 4
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %br, ptr %call7.i.i.i, align 8
  %max_num_bridges.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %max_num_bridges.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_num_bridges.i, align 4
  %call8.i = tail call i32 @dsa_bridge_num_get(ptr noundef %br, i32 noundef %25) #9
  %num.i = getelementptr inbounds %struct.dsa_bridge, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call8.i, ptr %num.i, align 4
  %27 = ptrtoint ptr %max_num_bridges.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_num_bridges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool12.not.i = icmp eq i32 %call8.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %if.end6.i.if.end_crit_edge

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %if.end6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_port_bridge_create.__msg) #9
  %tobool14.not.i = icmp eq ptr %extack, null
  br i1 %tobool14.not.i, label %do.body.i.if.end16.i_crit_edge, label %if.then15.i

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dsa_port_bridge_create.__msg, ptr %extack, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.body.i.if.end16.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.if.end_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  %call.i.sink = phi ptr [ %call.i, %if.end15.sink.split.i.i.i.i ], [ %call.i, %if.else.i.i.i.i.if.end_crit_edge ], [ %call7.i.i.i, %if.end6.i.if.end_crit_edge ]
  %bridge2.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %30 = ptrtoint ptr %bridge2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.sink, ptr %bridge2.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %lag_dev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %31 = ptrtoint ptr %lag_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lag_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.dsa_port_to_bridge_port.exit_crit_edge

if.end.dsa_port_to_bridge_port.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit

if.else.i:                                        ; preds = %if.end
  %hsr_dev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %33 = ptrtoint ptr %hsr_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hsr_dev.i, align 4
  %tobool4.not.i53 = icmp eq ptr %34, null
  br i1 %tobool4.not.i53, label %if.end8.i, label %if.else.i.dsa_port_to_bridge_port.exit_crit_edge

if.else.i.dsa_port_to_bridge_port.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit

if.end8.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dp, align 4
  br label %dsa_port_to_bridge_port.exit

dsa_port_to_bridge_port.exit:                     ; preds = %if.end8.i, %if.else.i.dsa_port_to_bridge_port.exit_crit_edge, %if.end.dsa_port_to_bridge_port.exit_crit_edge
  %retval.0.i54 = phi ptr [ %36, %if.end8.i ], [ %32, %if.end.dsa_port_to_bridge_port.exit_crit_edge ], [ %34, %if.else.i.dsa_port_to_bridge_port.exit_crit_edge ]
  %37 = call ptr @memcpy(ptr %info, ptr %call.i.sink, i32 16)
  %call7 = call i32 @dsa_broadcast(i32 noundef 1, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %dsa_port_to_bridge_port.exit.out_rollback_crit_edge

dsa_port_to_bridge_port.exit.out_rollback_crit_edge: ; preds = %dsa_port_to_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rollback

if.end10:                                         ; preds = %dsa_port_to_bridge_port.exit
  %38 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_fwd_offload, align 4, !range !100
  %40 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bridge.i, align 4
  %tx_fwd_offload14 = getelementptr inbounds %struct.dsa_bridge, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %tx_fwd_offload14 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %tx_fwd_offload14, align 4
  %43 = load ptr, ptr %bridge.i, align 4
  %tx_fwd_offload16 = getelementptr inbounds %struct.dsa_bridge, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %tx_fwd_offload16 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_fwd_offload16, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool17 = icmp ne i8 %45, 0
  %call18 = call i32 @switchdev_bridge_port_offload(ptr noundef %retval.0.i54, ptr noundef %17, ptr noundef %dp, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier, i1 noundef zeroext %tobool17, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end10.out_rollback_unbridge_crit_edge

if.end10.out_rollback_unbridge_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rollback_unbridge

if.end21:                                         ; preds = %if.end10
  %46 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %dsa_port_bridge_dev_get.exit.thread.i, label %if.end.i.i

dsa_port_bridge_dev_get.exit.thread.i:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %48 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 18528, ptr %mask.i.i, align 4
  br label %dsa_port_to_bridge_port.exit.i.i

if.end.i.i:                                       ; preds = %if.end21
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %49 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.thread.i

if.end.i.i.thread.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %53 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 18528, ptr %mask.i.i, align 4
  br label %dsa_port_to_bridge_port.exit.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %54 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i.i, label %if.end8.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %58 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 18528, ptr %mask.i.i, align 4
  br label %dsa_port_to_bridge_port.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dp, align 4
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %63 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 18528, ptr %mask.i.i, align 4
  br label %dsa_port_to_bridge_port.exit.i.i

dsa_port_to_bridge_port.exit.i.i:                 ; preds = %if.end8.i.i.i, %if.else.i.i.i, %if.end.i.i.thread.i, %dsa_port_bridge_dev_get.exit.thread.i
  %cond.i53.i = phi ptr [ %62, %if.end8.i.i.i ], [ %57, %if.else.i.i.i ], [ null, %dsa_port_bridge_dev_get.exit.thread.i ], [ %52, %if.end.i.i.thread.i ]
  %retval.0.i4952.i = phi ptr [ %60, %if.end8.i.i.i ], [ %55, %if.else.i.i.i ], [ null, %dsa_port_bridge_dev_get.exit.thread.i ], [ %50, %if.end.i.i.thread.i ]
  %call1.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i.i)
  %cmp34.i.i = icmp slt i32 %call1.i.i, 32
  br i1 %cmp34.i.i, label %for.body.lr.ph.i.i, label %dsa_port_to_bridge_port.exit.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge

dsa_port_to_bridge_port.exit.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_inherit_brport_flags.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %dsa_port_to_bridge_port.exit.i.i
  %learning12.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %stp_state.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %lag_dev.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %hsr_dev.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %flag.035.i.i = phi i32 [ %call1.i.i, %for.body.lr.ph.i.i ], [ %call10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %flag.035.i.i
  %call4.i.i = call zeroext i1 @br_port_flag_is_set(ptr noundef %retval.0.i4952.i, i32 noundef %shl.i.i) #9
  %spec.select.i.i = select i1 %call4.i.i, i32 %shl.i.i, i32 0
  %64 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ds, align 4
  %ops.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i.i, align 4
  %port_bridge_flags.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %67, i32 0, i32 50
  %68 = ptrtoint ptr %port_bridge_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port_bridge_flags.i.i.i, align 4
  %tobool.not.i22.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i22.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i24.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i24.i.i:                                   ; preds = %for.body.i.i
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %spec.select.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %shl.i.i, 1
  %70 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index3, align 4
  %call.i.i.i = call i32 %69(ptr noundef %65, i32 noundef %71, [2 x i32] %.fca.1.insert.i.i, ptr noundef %extack) #9
  %72 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i.i.i, label %dsa_port_inherit_brport_flags.exit.i [
    i32 0, label %if.end6.i.i.i
    i32 -95, label %if.end.i24.i.i.for.inc.i.i_crit_edge
  ]

if.end.i24.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flag.035.i.i)
  %tobool7.not.i.not.i.i = icmp eq i32 %flag.035.i.i, 5
  br i1 %tobool7.not.i.not.i.i, label %if.then8.i.i.i, label %if.end6.i.i.i.for.inc.i.i_crit_edge

if.end6.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  %and9.i.i.i = and i32 %spec.select.i.i, 32
  %73 = trunc i32 %and9.i.i.i to i8
  %and9.lobit56.i.i.i = lshr exact i32 %and9.i.i.i, 5
  %74 = ptrtoint ptr %learning12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i.i = load i8, ptr %learning12.i.i.i, align 1
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 6
  %bf.clear.i.i.i = and i8 %bf.lshr.i.i.i, 1
  %conv13.i.i.i = zext i8 %bf.clear.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.lobit56.i.i.i, i32 %conv13.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and9.lobit56.i.i.i, %conv13.i.i.i
  br i1 %cmp.i.i.i, label %if.then8.i.i.i.for.inc.i.i_crit_edge, label %if.end16.i.i.i

if.then8.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end16.i.i.i:                                   ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp ne i32 %and9.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i.i)
  %tobool22.not.i.i.i = icmp eq i8 %bf.clear.i.i.i, 0
  %brmerge.i.i.i = select i1 %tobool22.not.i.i.i, i1 true, i1 %tobool10.not.i.i.i
  br i1 %brmerge.i.i.i, label %if.end16.i.i.i.if.end33.i.i.i_crit_edge, label %land.lhs.true24.i.i.i

if.end16.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

land.lhs.true24.i.i.i:                            ; preds = %if.end16.i.i.i
  %75 = ptrtoint ptr %stp_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %stp_state.i.i.i, align 2
  %77 = and i8 %76, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %switch.i.i.i = icmp eq i8 %77, 2
  br i1 %switch.i.i.i, label %if.then32.i.i.i, label %land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge

land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

if.then32.i.i.i:                                  ; preds = %land.lhs.true24.i.i.i
  %78 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ds, align 4
  %ops.i26.i.i = getelementptr inbounds %struct.dsa_switch, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %ops.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i26.i.i, align 4
  %port_fast_age.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %81, i32 0, i32 48
  %82 = ptrtoint ptr %port_fast_age.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %port_fast_age.i.i.i, align 4
  %tobool.not.i27.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i27.i.i, label %if.then32.i.i.i.if.end33.i.i.i_crit_edge, label %if.end.i29.i.i

if.then32.i.i.i.if.end33.i.i.i_crit_edge:         ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

if.end.i29.i.i:                                   ; preds = %if.then32.i.i.i
  %84 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index3, align 4
  call void %83(ptr noundef %79, i32 noundef %85) #9
  %86 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i.i.i, label %dsa_port_to_bridge_port.exit.thread8.i.i.i.i, label %if.end.i.i.i.i.i

dsa_port_to_bridge_port.exit.thread8.i.i.i.i:     ; preds = %if.end.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i29.i.i
  %88 = ptrtoint ptr %lag_dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lag_dev.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %89, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge

if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %90 = ptrtoint ptr %hsr_dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hsr_dev.i.i.i.i.i, align 4
  %tobool4.not.i.i.i.i.i = icmp eq ptr %91, null
  br i1 %tobool4.not.i.i.i.i.i, label %dsa_port_to_bridge_port.exit.i.i.i.i, label %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge

if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i.i.i

dsa_port_to_bridge_port.exit.thread.i.i.i.i:      ; preds = %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i.i = phi ptr [ %91, %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge ], [ %89, %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  %92 = call ptr @memset(ptr %info.i.i.i.i, i32 0, i32 20)
  br label %if.end.i.i.i.i

dsa_port_to_bridge_port.exit.i.i.i.i:             ; preds = %if.else.i.i.i.i.i
  %93 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  %95 = call ptr @memset(ptr %info.i.i.i.i, i32 0, i32 20)
  %tobool.not.i.i.i.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i.i.i, label %dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge, label %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge

dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge, %dsa_port_to_bridge_port.exit.thread.i.i.i.i
  %retval.0.i7.i.i.i.i = phi ptr [ %retval.0.i.ph.i.i.i.i, %dsa_port_to_bridge_port.exit.thread.i.i.i.i ], [ %94, %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %call2.i.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %retval.0.i7.i.i.i.i, ptr noundef nonnull %info.i.i.i.i, ptr noundef null) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

dsa_port_notify_bridge_fdb_flush.exit.i.i.i:      ; preds = %if.end.i.i.i.i, %dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge, %dsa_port_to_bridge_port.exit.thread8.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %dsa_port_notify_bridge_fdb_flush.exit.i.i.i, %if.then32.i.i.i.if.end33.i.i.i_crit_edge, %land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge, %if.end16.i.i.i.if.end33.i.i.i_crit_edge
  %96 = ptrtoint ptr %learning12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load37.i.i.i = load i8, ptr %learning12.i.i.i, align 1
  %bf.shl.i.i.i = shl nuw nsw i8 %73, 1
  %bf.clear38.i.i.i = and i8 %bf.load37.i.i.i, -65
  %bf.set.i.i.i = or i8 %bf.clear38.i.i.i, %bf.shl.i.i.i
  store i8 %bf.set.i.i.i, ptr %learning12.i.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end33.i.i.i, %if.then8.i.i.i.for.inc.i.i_crit_edge, %if.end6.i.i.i.for.inc.i.i_crit_edge, %if.end.i24.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nsw i32 %flag.035.i.i, 1
  %call10.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef %add.i.i) #9
  %cmp.i.i = icmp slt i32 %call10.i.i, 32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge

for.inc.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_inherit_brport_flags.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dsa_port_inherit_brport_flags.exit.thread.i:      ; preds = %for.inc.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge, %dsa_port_to_bridge_port.exit.i.i.dsa_port_inherit_brport_flags.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  %call3.i = call zeroext i8 @br_port_get_stp_state(ptr noundef %retval.0.i4952.i) #9
  %call4.i = call i32 @dsa_port_set_state(ptr noundef %dp, i8 noundef zeroext %call3.i, i1 noundef zeroext false) #9
  %97 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call4.i, label %dsa_port_inherit_brport_flags.exit.thread.i.dsa_port_switchdev_sync_attrs.exit_crit_edge [
    i32 0, label %dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge
    i32 -95, label %dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge73
  ]

dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge73: ; preds = %dsa_port_inherit_brport_flags.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge: ; preds = %dsa_port_inherit_brport_flags.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

dsa_port_inherit_brport_flags.exit.thread.i.dsa_port_switchdev_sync_attrs.exit_crit_edge: ; preds = %dsa_port_inherit_brport_flags.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_switchdev_sync_attrs.exit

dsa_port_inherit_brport_flags.exit.i:             ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  br label %dsa_port_switchdev_sync_attrs.exit

if.end7.i:                                        ; preds = %dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge, %dsa_port_inherit_brport_flags.exit.thread.i.if.end7.i_crit_edge73
  %call8.i55 = call zeroext i1 @br_vlan_enabled(ptr noundef %cond.i53.i) #9
  %call9.i = call i32 @dsa_port_vlan_filtering(ptr noundef %dp, i1 noundef zeroext %call8.i55, ptr noundef %extack) #9
  %98 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call9.i, label %if.end7.i.dsa_port_switchdev_sync_attrs.exit_crit_edge [
    i32 0, label %if.end7.i.if.end14.i_crit_edge
    i32 -95, label %if.end7.i.if.end14.i_crit_edge74
  ]

if.end7.i.if.end14.i_crit_edge74:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end7.i.dsa_port_switchdev_sync_attrs.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_switchdev_sync_attrs.exit

if.end14.i:                                       ; preds = %if.end7.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge74
  %call15.i = call i32 @br_get_ageing_time(ptr noundef %cond.i53.i) #9
  %call.i.i = call i32 @clock_t_to_jiffies(i32 noundef %call15.i) #9
  %call1.i43.i = call i32 @jiffies_to_msecs(i32 noundef %call.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i.i) #9
  %99 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call1.i43.i, ptr %info.i.i, align 4
  %100 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ds, align 4
  %dst.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dst.i.i.i, align 4
  %call.i.i44.i = call i32 @dsa_tree_notify(ptr noundef %103, i32 noundef 0, ptr noundef nonnull %info.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool.not.i45.i, label %dsa_port_ageing_time.exit.thread.i, label %dsa_port_ageing_time.exit.i

dsa_port_ageing_time.exit.thread.i:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %ageing_time4.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 13
  %104 = ptrtoint ptr %ageing_time4.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call1.i43.i, ptr %ageing_time4.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i.i) #9
  br label %cleanup

dsa_port_ageing_time.exit.i:                      ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i44.i)
  %cond.i = icmp eq i32 %call.i.i44.i, -95
  br i1 %cond.i, label %dsa_port_ageing_time.exit.i.cleanup_crit_edge, label %dsa_port_ageing_time.exit.i.out_rollback_unoffload_crit_edge

dsa_port_ageing_time.exit.i.out_rollback_unoffload_crit_edge: ; preds = %dsa_port_ageing_time.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rollback_unoffload

dsa_port_ageing_time.exit.i.cleanup_crit_edge:    ; preds = %dsa_port_ageing_time.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_port_switchdev_sync_attrs.exit:               ; preds = %if.end7.i.dsa_port_switchdev_sync_attrs.exit_crit_edge, %dsa_port_inherit_brport_flags.exit.i, %dsa_port_inherit_brport_flags.exit.thread.i.dsa_port_switchdev_sync_attrs.exit_crit_edge
  %retval.0.i56 = phi i32 [ %call.i.i.i, %dsa_port_inherit_brport_flags.exit.i ], [ %call4.i, %dsa_port_inherit_brport_flags.exit.thread.i.dsa_port_switchdev_sync_attrs.exit_crit_edge ], [ %call9.i, %if.end7.i.dsa_port_switchdev_sync_attrs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56)
  %tobool23.not = icmp eq i32 %retval.0.i56, 0
  br i1 %tobool23.not, label %dsa_port_switchdev_sync_attrs.exit.cleanup_crit_edge, label %dsa_port_switchdev_sync_attrs.exit.out_rollback_unoffload_crit_edge

dsa_port_switchdev_sync_attrs.exit.out_rollback_unoffload_crit_edge: ; preds = %dsa_port_switchdev_sync_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rollback_unoffload

dsa_port_switchdev_sync_attrs.exit.cleanup_crit_edge: ; preds = %dsa_port_switchdev_sync_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_rollback_unoffload:                           ; preds = %dsa_port_switchdev_sync_attrs.exit.out_rollback_unoffload_crit_edge, %dsa_port_ageing_time.exit.i.out_rollback_unoffload_crit_edge
  %retval.0.i5672 = phi i32 [ %retval.0.i56, %dsa_port_switchdev_sync_attrs.exit.out_rollback_unoffload_crit_edge ], [ %call.i.i44.i, %dsa_port_ageing_time.exit.i.out_rollback_unoffload_crit_edge ]
  call void @switchdev_bridge_port_unoffload(ptr noundef %retval.0.i54, ptr noundef %dp, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  br label %out_rollback_unbridge

out_rollback_unbridge:                            ; preds = %out_rollback_unoffload, %if.end10.out_rollback_unbridge_crit_edge
  %err.0 = phi i32 [ %call18, %if.end10.out_rollback_unbridge_crit_edge ], [ %retval.0.i5672, %out_rollback_unoffload ]
  %call26 = call i32 @dsa_broadcast(i32 noundef 2, ptr noundef nonnull %info) #9
  br label %out_rollback

out_rollback:                                     ; preds = %out_rollback_unbridge, %dsa_port_to_bridge_port.exit.out_rollback_crit_edge
  %err.1 = phi i32 [ %call7, %dsa_port_to_bridge_port.exit.out_rollback_crit_edge ], [ %err.0, %out_rollback_unbridge ]
  %105 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bridge.i, align 4
  store ptr null, ptr %bridge.i, align 4
  %refcount.i57 = getelementptr inbounds %struct.dsa_bridge, ptr %106, i32 0, i32 3
  %call.i.i.i.i.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i57, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @llvm.prefetch.p0(ptr %refcount.i57, i32 1, i32 3, i32 1) #9
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i57, ptr %refcount.i57, i32 1, ptr elementtype(i32) %refcount.i57) #9, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_rollback
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i59, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i57, i32 noundef 3) #9
  br label %cleanup

if.end.i62:                                       ; preds = %out_rollback
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  %num.i60 = getelementptr inbounds %struct.dsa_bridge, ptr %106, i32 0, i32 1
  %108 = ptrtoint ptr %num.i60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i61 = icmp eq i32 %109, 0
  br i1 %tobool.not.i61, label %if.end.i62.if.end5.i_crit_edge, label %if.then3.i

if.end.i62.if.end5.i_crit_edge:                   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  call void @dsa_bridge_num_put(ptr noundef %br, i32 noundef %109) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i62.if.end5.i_crit_edge
  call void @kfree(ptr noundef %106) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %dsa_port_switchdev_sync_attrs.exit.cleanup_crit_edge, %dsa_port_ageing_time.exit.i.cleanup_crit_edge, %dsa_port_ageing_time.exit.thread.i, %if.end16.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dsa_port_switchdev_sync_attrs.exit.cleanup_crit_edge ], [ -95, %if.end16.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %err.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.end5.i ], [ 0, %dsa_port_ageing_time.exit.thread.i ], [ 0, %dsa_port_ageing_time.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_broadcast(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_pre_bridge_leave(ptr noundef %dp, ptr nocapture readnone %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %lag_dev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %2 = ptrtoint ptr %lag_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lag_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %hsr_dev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %4 = ptrtoint ptr %hsr_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsr_dev.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %dsa_port_to_bridge_port.exit, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dsa_port_to_bridge_port.exit:                     ; preds = %if.else.i
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %dsa_port_to_bridge_port.exit.cleanup_crit_edge, label %dsa_port_to_bridge_port.exit.if.end_crit_edge

dsa_port_to_bridge_port.exit.if.end_crit_edge:    ; preds = %dsa_port_to_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dsa_port_to_bridge_port.exit.cleanup_crit_edge:   ; preds = %dsa_port_to_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dsa_port_to_bridge_port.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i5 = phi ptr [ %7, %dsa_port_to_bridge_port.exit.if.end_crit_edge ], [ %5, %if.else.i.if.end_crit_edge ], [ %3, %if.end.i.if.end_crit_edge ]
  tail call void @switchdev_bridge_port_unoffload(ptr noundef nonnull %retval.0.i5, ptr noundef %dp, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  tail call void @dsa_flush_workqueue() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dsa_port_to_bridge_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_flush_workqueue() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_bridge_leave(ptr nocapture noundef %dp, ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mask.i.i = alloca i32, align 4
  %info = alloca %struct.dsa_notifier_bridge_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %tree_index = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 1
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %tree_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tree_index, align 4
  %sw_index = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %index2 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %sw_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sw_index, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %index3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port, align 4
  %tx_fwd_offload = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tx_fwd_offload, align 4
  %bridge4 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %16 = ptrtoint ptr %bridge4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge4, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = call ptr @memcpy(ptr %info, ptr %17, i32 16)
  %19 = ptrtoint ptr %bridge4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bridge4, align 4
  %refcount.i = getelementptr inbounds %struct.dsa_bridge, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.dsa_port_bridge_destroy.exit_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.dsa_port_bridge_destroy.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_bridge_destroy.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dsa_port_bridge_destroy.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  %num.i = getelementptr inbounds %struct.dsa_bridge, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsa_bridge_num_put(ptr noundef %br, i32 noundef %22) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %dsa_port_bridge_destroy.exit

dsa_port_bridge_destroy.exit:                     ; preds = %if.end5.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.dsa_port_bridge_destroy.exit_crit_edge
  %call = call i32 @dsa_broadcast(i32 noundef 2, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %dsa_port_bridge_destroy.exit.if.end12_crit_edge, label %do.end

dsa_port_bridge_destroy.exit.if.end12_crit_edge:  ; preds = %dsa_port_bridge_destroy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %dsa_port_bridge_destroy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index3, align 4
  %29 = inttoptr i32 %call to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, i32 noundef %28, ptr noundef nonnull %29) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %dsa_port_bridge_destroy.exit.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %30 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 18528, ptr %mask.i.i, align 4
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp22.i.i = icmp slt i32 %call.i.i, 32
  br i1 %cmp22.i.i, label %for.body.lr.ph.i.i, label %if.end12.dsa_port_clear_brport_flags.exit.i_crit_edge

if.end12.dsa_port_clear_brport_flags.exit.i_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_clear_brport_flags.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end12
  %learning12.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %stp_state.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %lag_dev.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %hsr_dev.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %flag.023.i.i = phi i32 [ %call.i.i, %for.body.lr.ph.i.i ], [ %call8.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %flag.023.i.i
  %and.i.i = and i32 %shl.i.i, 18496
  %31 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ds, align 4
  %ops.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i, align 4
  %port_bridge_flags.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %port_bridge_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_bridge_flags.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %and.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %shl.i.i, 1
  %37 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index3, align 4
  %call.i.i.i = call i32 %36(ptr noundef %32, i32 noundef %38, [2 x i32] %.fca.1.insert.i.i, ptr noundef null) #9
  %39 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call.i.i.i, label %do.end.i.i [
    i32 0, label %if.end6.i.i.i
    i32 -95, label %if.end.i.i.i.if.end.i.i_crit_edge
  ]

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flag.023.i.i)
  %tobool7.not.i.not.i.i = icmp eq i32 %flag.023.i.i, 5
  br i1 %tobool7.not.i.not.i.i, label %if.then8.i.i.i, label %if.end6.i.i.i.if.end.i.i_crit_edge

if.end6.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  %40 = ptrtoint ptr %learning12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i.i = load i8, ptr %learning12.i.i.i, align 1
  %41 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i.i.i = icmp eq i8 %41, 0
  br i1 %cmp.i.i.i, label %if.then8.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true24.i.i.i

if.then8.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true24.i.i.i:                            ; preds = %if.then8.i.i.i
  %42 = ptrtoint ptr %stp_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stp_state.i.i.i, align 2
  %44 = and i8 %43, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %switch.i.i.i = icmp eq i8 %44, 2
  br i1 %switch.i.i.i, label %if.then32.i.i.i, label %land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge

land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

if.then32.i.i.i:                                  ; preds = %land.lhs.true24.i.i.i
  %45 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ds, align 4
  %ops.i17.i.i = getelementptr inbounds %struct.dsa_switch, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %ops.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i17.i.i, align 4
  %port_fast_age.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %48, i32 0, i32 48
  %49 = ptrtoint ptr %port_fast_age.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port_fast_age.i.i.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i18.i.i, label %if.then32.i.i.i.if.end33.i.i.i_crit_edge, label %if.end.i20.i.i

if.then32.i.i.i.if.end33.i.i.i_crit_edge:         ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i.i

if.end.i20.i.i:                                   ; preds = %if.then32.i.i.i
  %51 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index3, align 4
  call void %50(ptr noundef %46, i32 noundef %52) #9
  %53 = ptrtoint ptr %bridge4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bridge4, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i.i.i, label %dsa_port_to_bridge_port.exit.thread8.i.i.i.i, label %if.end.i.i.i.i.i

dsa_port_to_bridge_port.exit.thread8.i.i.i.i:     ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i20.i.i
  %55 = ptrtoint ptr %lag_dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lag_dev.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge

if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %57 = ptrtoint ptr %hsr_dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hsr_dev.i.i.i.i.i, align 4
  %tobool4.not.i.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool4.not.i.i.i.i.i, label %dsa_port_to_bridge_port.exit.i.i.i.i, label %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge

if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_to_bridge_port.exit.thread.i.i.i.i

dsa_port_to_bridge_port.exit.thread.i.i.i.i:      ; preds = %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i.i = phi ptr [ %58, %if.else.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge ], [ %56, %if.end.i.i.i.i.i.dsa_port_to_bridge_port.exit.thread.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  %59 = call ptr @memset(ptr %info.i.i.i.i, i32 0, i32 20)
  br label %if.end.i.i.i.i

dsa_port_to_bridge_port.exit.i.i.i.i:             ; preds = %if.else.i.i.i.i.i
  %60 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  %62 = call ptr @memset(ptr %info.i.i.i.i, i32 0, i32 20)
  %tobool.not.i.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i.i, label %dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge, label %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge

dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge, %dsa_port_to_bridge_port.exit.thread.i.i.i.i
  %retval.0.i7.i.i.i.i = phi ptr [ %retval.0.i.ph.i.i.i.i, %dsa_port_to_bridge_port.exit.thread.i.i.i.i ], [ %61, %dsa_port_to_bridge_port.exit.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %call2.i.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 6, ptr noundef nonnull %retval.0.i7.i.i.i.i, ptr noundef nonnull %info.i.i.i.i, ptr noundef null) #9
  br label %dsa_port_notify_bridge_fdb_flush.exit.i.i.i

dsa_port_notify_bridge_fdb_flush.exit.i.i.i:      ; preds = %if.end.i.i.i.i, %dsa_port_to_bridge_port.exit.i.i.i.i.dsa_port_notify_bridge_fdb_flush.exit.i.i.i_crit_edge, %dsa_port_to_bridge_port.exit.thread8.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i.i.i) #9
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %dsa_port_notify_bridge_fdb_flush.exit.i.i.i, %if.then32.i.i.i.if.end33.i.i.i_crit_edge, %land.lhs.true24.i.i.i.if.end33.i.i.i_crit_edge
  %63 = ptrtoint ptr %learning12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load37.i.i.i = load i8, ptr %learning12.i.i.i, align 1
  %bf.clear38.i.i.i = and i8 %bf.load37.i.i.i, -65
  store i8 %bf.clear38.i.i.i, ptr %learning12.i.i.i, align 1
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ds, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = inttoptr i32 %call.i.i.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.19, i32 noundef %and.i.i, ptr noundef %68) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end33.i.i.i, %if.then8.i.i.i.if.end.i.i_crit_edge, %if.end6.i.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %add.i.i = add nsw i32 %flag.023.i.i, 1
  %call8.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef %add.i.i) #9
  %cmp.i.i = icmp slt i32 %call8.i.i, 32
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.dsa_port_clear_brport_flags.exit.i_crit_edge

if.end.i.i.dsa_port_clear_brport_flags.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_clear_brport_flags.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dsa_port_clear_brport_flags.exit.i:               ; preds = %if.end.i.i.dsa_port_clear_brport_flags.exit.i_crit_edge, %if.end12.dsa_port_clear_brport_flags.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  %69 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ds, align 4
  %ops.i.i = getelementptr inbounds %struct.dsa_switch, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i.i, align 4
  %port_stp_state_set.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %72, i32 0, i32 47
  %73 = ptrtoint ptr %port_stp_state_set.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port_stp_state_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %do.end.i3.i, label %if.end.i9.i

if.end.i9.i:                                      ; preds = %dsa_port_clear_brport_flags.exit.i
  %75 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index3, align 4
  call void %74(ptr noundef %70, i32 noundef %76, i8 noundef zeroext 3) #9
  %77 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ds, align 4
  %ops.i.i6.i = getelementptr inbounds %struct.dsa_switch, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %ops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i.i6.i, align 4
  %port_bridge_flags.i.i7.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %80, i32 0, i32 50
  %81 = ptrtoint ptr %port_bridge_flags.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port_bridge_flags.i.i7.i, align 4
  %tobool.not.i.i8.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i8.i, label %if.end.i9.i.dsa_port_set_state.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i9.i.dsa_port_set_state.exit.thread.i_crit_edge: ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_set_state.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i9.i
  %port_pre_bridge_flags.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %80, i32 0, i32 49
  %83 = ptrtoint ptr %port_pre_bridge_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port_pre_bridge_flags.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %84, null
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i.dsa_port_set_state.exit.thread.i_crit_edge, label %dsa_port_can_configure_learning.exit.i.i

lor.lhs.false.i.i.i.dsa_port_set_state.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_set_state.exit.thread.i

dsa_port_can_configure_learning.exit.i.i:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index3, align 4
  %call.i.i10.i = call i32 %84(ptr noundef %78, i32 noundef %86, [2 x i32] [i32 0, i32 32], ptr noundef null) #9
  br label %dsa_port_set_state.exit.thread.i

dsa_port_set_state.exit.thread.i:                 ; preds = %dsa_port_can_configure_learning.exit.i.i, %lor.lhs.false.i.i.i.dsa_port_set_state.exit.thread.i_crit_edge, %if.end.i9.i.dsa_port_set_state.exit.thread.i_crit_edge
  %stp_state29.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %87 = ptrtoint ptr %stp_state29.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %stp_state29.i.i, align 2
  br label %cleanup

do.end.i3.i:                                      ; preds = %dsa_port_clear_brport_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef -95) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i3.i, %dsa_port_set_state.exit.thread.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_lag_change(ptr nocapture noundef %dp, ptr nocapture noundef readonly %linfo) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_lag_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %index1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %9 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index1, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %lag_dev = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %13 = ptrtoint ptr %lag_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lag_dev, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %linfo to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %linfo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %16 = icmp ugt i8 %bf.load, -65
  %lag_tx_enabled = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %17 = ptrtoint ptr %lag_tx_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load10 = load i8, ptr %lag_tx_enabled, align 1
  %18 = and i8 %bf.load10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %19 = icmp eq i8 %18, 0
  %cmp = xor i1 %16, %19
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.shl = select i1 %16, i8 32, i8 0
  %bf.clear21 = and i8 %bf.load10, -33
  %bf.set = or i8 %bf.clear21, %bf.shl
  %20 = ptrtoint ptr %lag_tx_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set, ptr %lag_tx_enabled, align 1
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %22, i32 noundef 7, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_lag_join(ptr noundef %dp, ptr noundef %lag, ptr noundef %uinfo, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_lag_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lag, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %uinfo, ptr %2, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  tail call void @dsa_lag_map(ptr noundef %14, ptr noundef %lag) #9
  %lag_dev = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %15 = ptrtoint ptr %lag_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lag, ptr %lag_dev, align 4
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %19, i32 noundef 8, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.err_lag_join_crit_edge

entry.err_lag_join_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_lag_join

if.end:                                           ; preds = %entry
  %call5 = call ptr @netdev_master_upper_dev_get(ptr noundef %lag) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %21, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call i32 @dsa_port_bridge_join(ptr noundef %dp, ptr noundef nonnull %call5, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %err_bridge_join

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_bridge_join:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds, align 4
  %dst.i37 = getelementptr inbounds %struct.dsa_switch, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dst.i37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst.i37, align 4
  %call.i38 = call i32 @dsa_tree_notify(ptr noundef %25, i32 noundef 9, ptr noundef nonnull %info) #9
  br label %err_lag_join

err_lag_join:                                     ; preds = %err_bridge_join, %entry.err_lag_join_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.err_lag_join_crit_edge ], [ %call10, %err_bridge_join ]
  %26 = ptrtoint ptr %lag_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %lag_dev, align 4
  %27 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds, align 4
  %dst17 = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dst17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst17, align 4
  call void @dsa_lag_unmap(ptr noundef %30, ptr noundef %lag) #9
  br label %cleanup

cleanup:                                          ; preds = %err_lag_join, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_lag_join ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_lag_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_lag_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_pre_lag_leave(ptr noundef %dp, ptr nocapture noundef readnone %lag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %dsa_port_bridge_dev_get.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

dsa_port_bridge_dev_get.exit:                     ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.if.end_crit_edge, label %if.end.i.i

dsa_port_bridge_dev_get.exit.if.end_crit_edge:    ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %dsa_port_bridge_dev_get.exit
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %4 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %6 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i, label %dsa_port_to_bridge_port.exit.i, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

dsa_port_to_bridge_port.exit.i:                   ; preds = %if.else.i.i
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp, align 4
  %tobool.not.i3 = icmp eq ptr %9, null
  br i1 %tobool.not.i3, label %dsa_port_to_bridge_port.exit.i.if.end_crit_edge, label %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge

dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge: ; preds = %dsa_port_to_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

dsa_port_to_bridge_port.exit.i.if.end_crit_edge:  ; preds = %dsa_port_to_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %retval.0.i5.i = phi ptr [ %9, %dsa_port_to_bridge_port.exit.i.if.end.i_crit_edge ], [ %7, %if.else.i.i.if.end.i_crit_edge ], [ %5, %if.end.i.i.if.end.i_crit_edge ]
  tail call void @switchdev_bridge_port_unoffload(ptr noundef nonnull %retval.0.i5.i, ptr noundef %dp, ptr noundef nonnull @dsa_slave_switchdev_notifier, ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #9
  tail call void @dsa_flush_workqueue() #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %dsa_port_to_bridge_port.exit.i.if.end_crit_edge, %dsa_port_bridge_dev_get.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_lag_leave(ptr nocapture noundef %dp, ptr noundef %lag) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_lag_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i

entry.dsa_port_bridge_dev_get.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_bridge_dev_get.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i, %entry.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.dsa_port_bridge_dev_get.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %4 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %6 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lag, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %8 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %4, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %13 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index2, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %6, align 4
  %lag_dev = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 18
  %17 = ptrtoint ptr %lag_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lag_dev, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, label %if.end

dsa_port_bridge_dev_get.exit.cleanup_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dsa_port_bridge_dev_get.exit
  %tobool4.not = icmp eq ptr %cond.i, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsa_port_bridge_leave(ptr noundef %dp, ptr noundef nonnull %cond.i)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %lag_tx_enabled = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %19 = ptrtoint ptr %lag_tx_enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %lag_tx_enabled, align 1
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %lag_tx_enabled, align 1
  %20 = ptrtoint ptr %lag_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %lag_dev, align 4
  %21 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %24, i32 noundef 9, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %do.end

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index2, align 4
  %31 = inttoptr i32 %call.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.5, i32 noundef %30, ptr noundef nonnull %31) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end6.if.end14_crit_edge
  %32 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 4
  call void @dsa_lag_unmap(ptr noundef %35, ptr noundef %lag) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_filtering(ptr nocapture noundef %dp, i1 noundef zeroext %vlan_filtering, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %br_info.i = alloca %struct.bridge_vlan_info, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i144 = icmp eq i16 %3, 0
  br i1 %tobool.not.i144, label %if.else.i, label %if.then.i145

if.then.i145:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool6.i = icmp ne i16 %4, 0
  br label %dsa_port_is_vlan_filtering.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %5 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br label %dsa_port_is_vlan_filtering.exit

dsa_port_is_vlan_filtering.exit:                  ; preds = %if.else.i, %if.then.i145
  %retval.0.i = phi i1 [ %tobool6.i, %if.then.i145 ], [ %tobool10.i, %if.else.i ]
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %port_vlan_filtering = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %port_vlan_filtering to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_vlan_filtering, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %dsa_port_is_vlan_filtering.exit.cleanup102_crit_edge, label %if.end

dsa_port_is_vlan_filtering.exit.cleanup102_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.end:                                           ; preds = %dsa_port_is_vlan_filtering.exit
  %10 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %14 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds1.i, align 4
  br i1 %vlan_filtering, label %land.lhs.true.i147, label %rcu_read_lock.exit.if.end22.i_crit_edge

rcu_read_lock.exit.if.end22.i_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i147:                               ; preds = %rcu_read_lock.exit
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 3
  br i1 %cmp.i.i, label %if.then.i148, label %land.lhs.true.i147.if.end22.i_crit_edge

land.lhs.true.i147.if.end22.i_crit_edge:          ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then.i148:                                     ; preds = %land.lhs.true.i147
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %18 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then.i148.dsa_port_bridge_dev_get.exit.i_crit_edge, label %cond.true.i.i

if.then.i148.dsa_port_bridge_dev_get.exit.i_crit_edge: ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_bridge_dev_get.exit.i

cond.true.i.i:                                    ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %cond.true.i.i, %if.then.i148.dsa_port_bridge_dev_get.exit.i_crit_edge
  %cond.i.i = phi ptr [ %21, %cond.true.i.i ], [ null, %if.then.i148.dsa_port_bridge_dev_get.exit.i_crit_edge ]
  %22 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %adj_list.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %adj_list.i, ptr %iter.i, align 4
  %call3.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %23, ptr noundef nonnull %iter.i) #9
  %tobool4.not109.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not109.i, label %dsa_port_bridge_dev_get.exit.i.cleanup16.thread.i_crit_edge, label %for.body.lr.ph.i

dsa_port_bridge_dev_get.exit.i.cleanup16.thread.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.thread.i

for.body.lr.ph.i:                                 ; preds = %dsa_port_bridge_dev_get.exit.i
  %25 = getelementptr inbounds %struct.bridge_vlan_info, ptr %br_info.i, i32 0, i32 1
  br label %for.body.i

cleanup16.thread.i:                               ; preds = %for.inc.i.cleanup16.thread.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.cleanup16.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  br label %if.end22.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %upper_dev.0110.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call15.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %br_info.i) #9
  %26 = ptrtoint ptr %br_info.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %br_info.i, align 2, !annotation !105
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %25, align 2, !annotation !105
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %upper_dev.0110.i, i32 0, i32 15
  %28 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %29, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call7.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef nonnull %upper_dev.0110.i) #9
  %call8.i = call i32 @br_vlan_get_info(ptr noundef %cond.i.i, i16 noundef zeroext %call7.i, ptr noundef nonnull %br_info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_port_can_apply_vlan_filtering.__msg) #9
  %tobool10.not.i = icmp eq ptr %extack, null
  br i1 %tobool10.not.i, label %do.body.i.cleanup16.i_crit_edge, label %if.then11.i

do.body.i.cleanup16.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.i

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dsa_port_can_apply_vlan_filtering.__msg, ptr %extack, align 4
  br label %cleanup16.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %br_info.i) #9
  %call15.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %23, ptr noundef nonnull %iter.i) #9
  %tobool4.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool4.not.i, label %for.inc.i.cleanup16.thread.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup16.thread.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.thread.i

cleanup16.i:                                      ; preds = %if.then11.i, %do.body.i.cleanup16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %br_info.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  br label %dsa_port_can_apply_vlan_filtering.exit

if.end22.i:                                       ; preds = %cleanup16.thread.i, %land.lhs.true.i147.if.end22.i_crit_edge, %rcu_read_lock.exit.if.end22.i_crit_edge
  %vlan_filtering_is_global.i149 = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %vlan_filtering_is_global.i149 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i150 = load i16, ptr %vlan_filtering_is_global.i149, align 4
  %32 = and i16 %bf.load.i150, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool23.not.i = icmp eq i16 %32, 0
  br i1 %tobool23.not.i, label %if.end22.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, label %if.end25.i

if.end22.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_can_apply_vlan_filtering.exit

if.end25.i:                                       ; preds = %if.end22.i
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 1
  %33 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn111.i = load ptr, ptr %ports.i, align 4
  %cmp29.not113.i = icmp eq ptr %.pn111.i, %ports.i
  br i1 %cmp29.not113.i, label %if.end25.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, label %for.body30.lr.ph.i

if.end25.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_can_apply_vlan_filtering.exit

for.body30.lr.ph.i:                               ; preds = %if.end25.i
  %bridge.i96.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc59.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %.pn114.i = phi ptr [ %.pn111.i, %for.body30.lr.ph.i ], [ %.pn.i, %for.inc59.i.for.body30.i_crit_edge ]
  %ds31.i = getelementptr i8, ptr %.pn114.i, i32 -432
  %36 = ptrtoint ptr %ds31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds31.i, align 4
  %cmp32.i = icmp eq ptr %37, %15
  br i1 %cmp32.i, label %if.then33.i, label %for.body30.i.for.inc59.i_crit_edge

for.body30.i.for.inc59.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

if.then33.i:                                      ; preds = %for.body30.i
  %bridge.i91.i = getelementptr i8, ptr %.pn114.i, i32 -396
  %38 = ptrtoint ptr %bridge.i91.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bridge.i91.i, align 4
  %tobool.not.i92.i = icmp eq ptr %39, null
  br i1 %tobool.not.i92.i, label %if.then33.i.for.inc59.i_crit_edge, label %dsa_port_bridge_dev_get.exit95.i

if.then33.i.for.inc59.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

dsa_port_bridge_dev_get.exit95.i:                 ; preds = %if.then33.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool35.not.i = icmp eq ptr %41, null
  br i1 %tobool35.not.i, label %dsa_port_bridge_dev_get.exit95.i.for.inc59.i_crit_edge, label %lor.lhs.false.i

dsa_port_bridge_dev_get.exit95.i.for.inc59.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

lor.lhs.false.i:                                  ; preds = %dsa_port_bridge_dev_get.exit95.i
  %42 = ptrtoint ptr %bridge.i96.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bridge.i96.i, align 4
  %tobool.not.i97.i = icmp eq ptr %43, null
  br i1 %tobool.not.i97.i, label %lor.lhs.false.i.if.end39.i_crit_edge, label %dsa_port_bridge_dev_get.exit100.i

lor.lhs.false.i.if.end39.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

dsa_port_bridge_dev_get.exit100.i:                ; preds = %lor.lhs.false.i
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %cmp37.i = icmp eq ptr %41, %45
  br i1 %cmp37.i, label %dsa_port_bridge_dev_get.exit100.i.for.inc59.i_crit_edge, label %dsa_port_bridge_dev_get.exit100.i.if.end39.i_crit_edge

dsa_port_bridge_dev_get.exit100.i.if.end39.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

dsa_port_bridge_dev_get.exit100.i.for.inc59.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

if.end39.i:                                       ; preds = %dsa_port_bridge_dev_get.exit100.i.if.end39.i_crit_edge, %lor.lhs.false.i.if.end39.i_crit_edge
  %call40.i = call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %41) #9
  %46 = xor i1 %call40.i, %vlan_filtering
  br i1 %46, label %do.body46.i, label %if.end39.i.for.inc59.i_crit_edge

if.end39.i.for.inc59.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

do.body46.i:                                      ; preds = %if.end39.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_port_can_apply_vlan_filtering.__msg.23) #9
  %tobool48.not.i = icmp eq ptr %extack, null
  br i1 %tobool48.not.i, label %do.body46.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, label %if.then49.i

do.body46.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge: ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_can_apply_vlan_filtering.exit

if.then49.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @dsa_port_can_apply_vlan_filtering.__msg.23, ptr %extack, align 4
  br label %dsa_port_can_apply_vlan_filtering.exit

for.inc59.i:                                      ; preds = %if.end39.i.for.inc59.i_crit_edge, %dsa_port_bridge_dev_get.exit100.i.for.inc59.i_crit_edge, %dsa_port_bridge_dev_get.exit95.i.for.inc59.i_crit_edge, %if.then33.i.for.inc59.i_crit_edge, %for.body30.i.for.inc59.i_crit_edge
  %48 = ptrtoint ptr %.pn114.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn114.i, align 4
  %49 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst.i, align 4
  %ports28.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %50, i32 0, i32 1
  %cmp29.not.i = icmp eq ptr %.pn.i, %ports28.i
  br i1 %cmp29.not.i, label %for.inc59.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, label %for.inc59.i.for.body30.i_crit_edge

for.inc59.i.for.body30.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i

for.inc59.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge: ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_port_can_apply_vlan_filtering.exit

dsa_port_can_apply_vlan_filtering.exit:           ; preds = %for.inc59.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, %if.then49.i, %do.body46.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, %if.end25.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, %if.end22.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge, %cleanup16.i
  %retval.7.i = phi i1 [ false, %cleanup16.i ], [ true, %if.end22.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge ], [ false, %do.body46.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge ], [ false, %if.then49.i ], [ true, %if.end25.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge ], [ true, %for.inc59.i.dsa_port_can_apply_vlan_filtering.exit_crit_edge ]
  %call.i151 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i151, label %dsa_port_can_apply_vlan_filtering.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i154

dsa_port_can_apply_vlan_filtering.exit.rcu_read_unlock.exit_crit_edge: ; preds = %dsa_port_can_apply_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i154:                               ; preds = %dsa_port_can_apply_vlan_filtering.exit
  %call1.i152 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i152)
  %tobool.not.i153 = icmp eq i32 %call1.i152, 0
  br i1 %tobool.not.i153, label %land.lhs.true.i154.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i156

land.lhs.true.i154.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i156:                              ; preds = %land.lhs.true.i154
  %.b4.i155 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i155, label %land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge, label %if.then.i157

land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i157:                                     ; preds = %land.lhs.true2.i156
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i157, %land.lhs.true2.i156.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i154.rcu_read_unlock.exit_crit_edge, %dsa_port_can_apply_vlan_filtering.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %51 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i158 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i158 to ptr
  %preempt_count.i.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i159, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i159, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %retval.7.i, label %if.end8, label %rcu_read_unlock.exit.cleanup102_crit_edge

rcu_read_unlock.exit.cleanup102_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.end8:                                          ; preds = %rcu_read_unlock.exit
  %55 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i161 = getelementptr inbounds %struct.dsa_switch, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %vlan_filtering_is_global.i161 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i162 = load i16, ptr %vlan_filtering_is_global.i161, align 4
  %58 = and i16 %bf.load.i162, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i163 = icmp eq i16 %58, 0
  br i1 %tobool.not.i163, label %if.else.i169, label %if.then.i165

if.then.i165:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %59 = and i16 %bf.load.i162, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool6.i164 = icmp ne i16 %59, 0
  br label %dsa_port_is_vlan_filtering.exit171

if.else.i169:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_filtering7.i166 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %60 = ptrtoint ptr %vlan_filtering7.i166 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load8.i167 = load i8, ptr %vlan_filtering7.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i167)
  %tobool10.i168 = icmp slt i8 %bf.load8.i167, 0
  br label %dsa_port_is_vlan_filtering.exit171

dsa_port_is_vlan_filtering.exit171:               ; preds = %if.else.i169, %if.then.i165
  %retval.0.i170 = phi i1 [ %tobool6.i164, %if.then.i165 ], [ %tobool10.i168, %if.else.i169 ]
  %61 = xor i1 %retval.0.i170, %vlan_filtering
  br i1 %61, label %if.end14, label %dsa_port_is_vlan_filtering.exit171.cleanup102_crit_edge

dsa_port_is_vlan_filtering.exit171.cleanup102_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit171
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.end14:                                         ; preds = %dsa_port_is_vlan_filtering.exit171
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %port_vlan_filtering16 = getelementptr inbounds %struct.dsa_switch_ops, ptr %63, i32 0, i32 51
  %64 = ptrtoint ptr %port_vlan_filtering16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port_vlan_filtering16, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 4
  %call18 = call i32 %65(ptr noundef %1, i32 noundef %67, i1 noundef zeroext %vlan_filtering, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.cleanup102_crit_edge

if.end14.cleanup102_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.end21:                                         ; preds = %if.end14
  %68 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load = load i16, ptr %vlan_filtering_is_global.i, align 4
  %69 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool22.not = icmp eq i16 %69, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  %bf.shl = select i1 %vlan_filtering, i16 512, i16 0
  %bf.clear28 = and i16 %bf.load, -513
  %bf.set = or i16 %bf.clear28, %bf.shl
  %70 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %bf.set, ptr %vlan_filtering_is_global.i, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn178 = load ptr, ptr %ports, align 4
  %cmp31.not180 = icmp eq ptr %.pn178, %ports
  br i1 %cmp31.not180, label %if.then23.cleanup102_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.cleanup102_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then23.for.body_crit_edge
  %.pn181 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn178, %if.then23.for.body_crit_edge ]
  %ds33 = getelementptr i8, ptr %.pn181, i32 -432
  %74 = ptrtoint ptr %ds33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ds33, align 4
  %cmp34 = icmp eq ptr %75, %1
  br i1 %cmp34, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn181, i32 -424
  %76 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp.i172 = icmp eq i32 %77, 3
  br i1 %cmp.i172, label %if.then38, label %if.then36.for.inc_crit_edge

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then38:                                        ; preds = %if.then36
  %78 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dp, align 4
  %tobool39.not = icmp eq ptr %79, null
  br i1 %tobool39.not, label %if.then38.for.inc_crit_edge, label %if.end41

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end41:                                         ; preds = %if.then38
  %call43 = call i32 @dsa_slave_manage_vlan_filtering(ptr noundef nonnull %79, i1 noundef zeroext %vlan_filtering) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.for.inc_crit_edge, label %if.end41.restore_crit_edge

if.end41.restore_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %if.then38.for.inc_crit_edge, %if.then36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %80 = ptrtoint ptr %.pn181 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn = load ptr, ptr %.pn181, align 4
  %81 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dst, align 4
  %ports30 = getelementptr inbounds %struct.dsa_switch_tree, ptr %82, i32 0, i32 1
  %cmp31.not = icmp eq ptr %.pn, %ports30
  br i1 %cmp31.not, label %for.inc.cleanup102_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup102_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

if.else:                                          ; preds = %if.end21
  %vlan_filtering59 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %83 = ptrtoint ptr %vlan_filtering59 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load60 = load i8, ptr %vlan_filtering59, align 1
  %bf.shl62 = select i1 %vlan_filtering, i8 -128, i8 0
  %bf.clear63 = and i8 %bf.load60, 127
  %bf.set64 = or i8 %bf.clear63, %bf.shl62
  store i8 %bf.set64, ptr %vlan_filtering59, align 1
  %84 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dp, align 4
  %call66 = call i32 @dsa_slave_manage_vlan_filtering(ptr noundef %85, i1 noundef zeroext %vlan_filtering) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else.cleanup102_crit_edge, label %if.else.restore_crit_edge

if.else.restore_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore

if.else.cleanup102_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

restore:                                          ; preds = %if.else.restore_crit_edge, %if.end41.restore_crit_edge
  %err.4 = phi i32 [ %call66, %if.else.restore_crit_edge ], [ %call43, %if.end41.restore_crit_edge ]
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops, align 4
  %port_vlan_filtering72 = getelementptr inbounds %struct.dsa_switch_ops, ptr %87, i32 0, i32 51
  %88 = ptrtoint ptr %port_vlan_filtering72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port_vlan_filtering72, align 4
  %90 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %index, align 4
  %call75 = call i32 %89(ptr noundef %1, i32 noundef %91, i1 noundef zeroext %retval.0.i, ptr noundef null) #9
  %92 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load77 = load i16, ptr %vlan_filtering_is_global.i, align 4
  %93 = and i16 %bf.load77, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool81.not = icmp eq i16 %93, 0
  br i1 %tobool81.not, label %if.else92, label %if.then82

if.then82:                                        ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #11
  %bf.shl88 = select i1 %retval.0.i, i16 512, i16 0
  %bf.clear89 = and i16 %bf.load77, -513
  %bf.set90 = or i16 %bf.clear89, %bf.shl88
  %94 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %bf.set90, ptr %vlan_filtering_is_global.i, align 4
  br label %cleanup102

if.else92:                                        ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_filtering95 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %95 = ptrtoint ptr %vlan_filtering95 to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load96 = load i8, ptr %vlan_filtering95, align 1
  %bf.shl98 = select i1 %retval.0.i, i8 -128, i8 0
  %bf.clear99 = and i8 %bf.load96, 127
  %bf.set100 = or i8 %bf.clear99, %bf.shl98
  store i8 %bf.set100, ptr %vlan_filtering95, align 1
  br label %cleanup102

cleanup102:                                       ; preds = %if.else92, %if.then82, %if.else.cleanup102_crit_edge, %for.inc.cleanup102_crit_edge, %if.then23.cleanup102_crit_edge, %if.end14.cleanup102_crit_edge, %dsa_port_is_vlan_filtering.exit171.cleanup102_crit_edge, %rcu_read_unlock.exit.cleanup102_crit_edge, %dsa_port_is_vlan_filtering.exit.cleanup102_crit_edge
  %retval.0 = phi i32 [ -95, %dsa_port_is_vlan_filtering.exit.cleanup102_crit_edge ], [ -22, %rcu_read_unlock.exit.cleanup102_crit_edge ], [ 0, %dsa_port_is_vlan_filtering.exit171.cleanup102_crit_edge ], [ %call18, %if.end14.cleanup102_crit_edge ], [ 0, %if.else.cleanup102_crit_edge ], [ %err.4, %if.else92 ], [ %err.4, %if.then82 ], [ 0, %if.then23.cleanup102_crit_edge ], [ 0, %for.inc.cleanup102_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_manage_vlan_filtering(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dsa_port_skip_vlan_configuration(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dsa_port_bridge_dev_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_port_bridge_dev_get.exit:                     ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, label %if.end

dsa_port_bridge_dev_get.exit.cleanup_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dsa_port_bridge_dev_get.exit
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %configure_vlan_while_not_filtering = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %configure_vlan_while_not_filtering to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %configure_vlan_while_not_filtering, align 4
  %7 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %land.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %3) #9
  %lnot = xor i1 %call3, true
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end.cleanup_crit_edge, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %lnot, %land.rhs ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_ageing_time(ptr nocapture noundef %dp, i32 noundef %ageing_clock) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_ageing_time_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %ageing_clock) #9
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %call) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #9
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %info, align 4
  %ds.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %1 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ds.i, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ageing_time4 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 13
  %5 = ptrtoint ptr %ageing_time4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %ageing_time4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_pre_bridge_flags(ptr nocapture noundef readonly %dp, [2 x i32] %flags.coerce, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_pre_bridge_flags = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %port_pre_bridge_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_pre_bridge_flags, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, [2 x i32] %flags.coerce, ptr noundef %extack) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_bridge_flags(ptr nocapture noundef %dp, [2 x i32] %flags.coerce, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_bridge_flags = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %port_bridge_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_bridge_flags, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, [2 x i32] %flags.coerce, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup40_crit_edge

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end6:                                          ; preds = %if.end
  %and = and i32 %flags.coerce.fca.1.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup40_crit_edge, label %if.then8

if.end6.cleanup40_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.then8:                                         ; preds = %if.end6
  %and9 = and i32 %flags.coerce.fca.0.extract, 32
  %8 = trunc i32 %and9 to i8
  %and9.lobit56 = lshr exact i32 %and9, 5
  %learning12 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %9 = ptrtoint ptr %learning12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %learning12, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv13 = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.lobit56, i32 %conv13)
  %cmp = icmp eq i32 %and9.lobit56, %conv13
  br i1 %cmp, label %if.then8.cleanup40_crit_edge, label %if.end16

if.then8.cleanup40_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool22.not = icmp eq i8 %bf.clear, 0
  %brmerge = select i1 %tobool22.not, i1 true, i1 %tobool10.not
  br i1 %brmerge, label %if.end16.if.end33_crit_edge, label %land.lhs.true24

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true24:                                  ; preds = %if.end16
  %stp_state = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 10
  %10 = ptrtoint ptr %stp_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stp_state, align 2
  %12 = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp eq i8 %12, 2
  br i1 %switch, label %if.then32, label %land.lhs.true24.if.end33_crit_edge

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsa_port_fast_age(ptr noundef %dp)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true24.if.end33_crit_edge, %if.end16.if.end33_crit_edge
  %13 = ptrtoint ptr %learning12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load37 = load i8, ptr %learning12, align 1
  %bf.shl = shl nuw nsw i8 %8, 1
  %bf.clear38 = and i8 %bf.load37, -65
  %bf.set = or i8 %bf.clear38, %bf.shl
  store i8 %bf.set, ptr %learning12, align 1
  br label %cleanup40

cleanup40:                                        ; preds = %if.end33, %if.then8.cleanup40_crit_edge, %if.end6.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi i32 [ -95, %entry.cleanup40_crit_edge ], [ %call, %if.end.cleanup40_crit_edge ], [ 0, %if.end33 ], [ 0, %if.end6.cleanup40_crit_edge ], [ 0, %if.then8.cleanup40_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mtu_change(ptr nocapture noundef readonly %dp, i32 noundef %new_mtu, i1 noundef zeroext %targeted_match) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_mtu_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %targeted_match to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %info, align 4
  store i8 %frombool, ptr %info, align 4
  %sw_index = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 1
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %1 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %sw_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sw_index, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 2
  %index3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index3, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %port, align 4
  %mtu = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_mtu, ptr %mtu, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %11, i32 noundef 16, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_add(ptr nocapture noundef readonly %dp, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %info, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %7 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index1, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %port, align 4
  %addr2 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr, ptr %addr2, align 4
  %vid3 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid3, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %13, i32 noundef 3, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_del(ptr nocapture noundef readonly %dp, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %info, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %7 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index1, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %port, align 4
  %addr2 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr, ptr %addr2, align 4
  %vid3 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid3, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_fdb_add(ptr nocapture noundef readonly %dp, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %info, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %7 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index1, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %port, align 4
  %addr2 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr, ptr %addr2, align 4
  %vid3 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid3, align 4
  %cpu_dp4 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 8
  %12 = ptrtoint ptr %cpu_dp4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dp4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags, align 16
  %and = and i64 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @dev_uc_add(ptr noundef %15, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %21, i32 noundef 5, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_fdb_del(ptr nocapture noundef readonly %dp, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %info, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %7 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index1, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %port, align 4
  %addr2 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr, ptr %addr2, align 4
  %vid3 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid3, align 4
  %cpu_dp4 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 8
  %12 = ptrtoint ptr %cpu_dp4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dp4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags, align 16
  %and = and i64 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @dev_uc_del(ptr noundef %15, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_fdb_dump(ptr nocapture noundef readonly %dp, ptr noundef %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_fdb_dump = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %port_fdb_dump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_fdb_dump, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %cb, ptr noundef %data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mdb_add(ptr nocapture noundef readonly %dp, ptr noundef %mdb) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdb, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %12, i32 noundef 10, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mdb_del(ptr nocapture noundef readonly %dp, ptr noundef %mdb) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdb, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %12, i32 noundef 11, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_mdb_add(ptr nocapture noundef readonly %dp, ptr noundef %mdb) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdb, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %cpu_dp3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 8
  %11 = ptrtoint ptr %cpu_dp3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_dp3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %call = tail call i32 @dev_mc_add(ptr noundef %14, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %18, i32 noundef 12, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_host_mdb_del(ptr nocapture noundef readonly %dp, ptr noundef %mdb) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_mdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdb, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %cpu_dp3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 8
  %11 = ptrtoint ptr %cpu_dp3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_dp3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %call = tail call i32 @dev_mc_del(ptr noundef %14, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %18, i32 noundef 13, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_add(ptr nocapture noundef readonly %dp, ptr noundef %vlan, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_vlan_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vlan, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %extack, ptr %2, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %14, i32 noundef 14, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_vlan_del(ptr nocapture noundef readonly %dp, ptr noundef %vlan) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_vlan_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vlan, ptr %info, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %index2 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %14, i32 noundef 15, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_add(ptr nocapture noundef readonly %dp, ptr noundef %mrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_mrp_add = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %port_mrp_add to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mrp_add, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %mrp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_del(ptr nocapture noundef readonly %dp, ptr noundef %mrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_mrp_del = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %port_mrp_del to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mrp_del, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %mrp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_add_ring_role(ptr nocapture noundef readonly %dp, ptr noundef %mrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_mrp_add_ring_role = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 100
  %4 = ptrtoint ptr %port_mrp_add_ring_role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mrp_add_ring_role, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %mrp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_mrp_del_ring_role(ptr nocapture noundef readonly %dp, ptr noundef %mrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_mrp_del_ring_role = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 101
  %4 = ptrtoint ptr %port_mrp_del_ring_role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_mrp_del_ring_role, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %mrp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dsa_port_set_tag_protocol(ptr nocapture noundef writeonly %cpu_dp, ptr noundef %tag_ops) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv = getelementptr inbounds %struct.dsa_device_ops, ptr %tag_ops, i32 0, i32 1
  %0 = ptrtoint ptr %rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcv, align 4
  %rcv1 = getelementptr inbounds %struct.dsa_port, ptr %cpu_dp, i32 0, i32 3
  %2 = ptrtoint ptr %rcv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rcv1, align 4
  %tag_ops2 = getelementptr inbounds %struct.dsa_port, ptr %cpu_dp, i32 0, i32 1
  %3 = ptrtoint ptr %tag_ops2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tag_ops, ptr %tag_ops2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_phylink_create(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #9
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !105
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %3 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn, align 4
  %call = call i32 @of_get_phy_mode(ptr noundef %4, ptr noundef nonnull %mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %phylink_mac_link_state = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %phylink_mac_link_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phylink_mac_link_state, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %phylink_mac_an_restart = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %phylink_mac_an_restart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phylink_mac_an_restart, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %legacy_pre_march2020 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %legacy_pre_march2020 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %legacy_pre_march2020, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %phylink_get_caps = getelementptr inbounds %struct.dsa_switch_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %phylink_get_caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phylink_get_caps, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %pl_config12 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17
  call void %16(ptr noundef %1, i32 noundef %18, ptr noundef %pl_config12) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %pl_config14 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17
  %19 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dn, align 4
  %tobool16.not = icmp eq ptr %20, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 3
  %spec.select = select i1 %tobool16.not, ptr null, ptr %fwnode
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %call17 = call ptr @phylink_create(ptr noundef %pl_config14, ptr noundef %spec.select, i32 noundef %22, ptr noundef nonnull @dsa_port_phylink_mac_ops) #9
  %pl = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %23 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call17, ptr %pl, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call17 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %24) #12
  %25 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pl, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %do.end ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_link_register_of(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %mode.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %adjust_link = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adjust_link, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %8 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dn, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %10 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.of_parse_phandle.exit_crit_edge

if.then.of_parse_phandle.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i, align 4
  %phi.cmp = icmp eq ptr %12, null
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %if.then.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %13 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dn, align 4
  %call3 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %14) #9
  %call3.not = xor i1 %call3, true
  %or.cond = select i1 %call3.not, i1 %retval.0.i, i1 false
  br i1 %or.cond, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.then5

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %of_parse_phandle.exit
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %phylink_mac_link_down = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %phylink_mac_link_down to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phylink_mac_link_down, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.then5.if.end_crit_edge, label %if.then8

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  call void %18(ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then5.if.end_crit_edge
  %19 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds1, align 4
  %21 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dn, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %pl_config.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17
  %25 = ptrtoint ptr %pl_config.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %pl_config.i, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type.i, align 4
  %pcs_poll.i = getelementptr inbounds %struct.dsa_switch, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %pcs_poll.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %pcs_poll.i, align 4
  %pcs_poll5.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 17, i32 3
  %28 = lshr i16 %bf.load.i, 8
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %pcs_poll5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %pcs_poll5.i, align 1
  %call.i32 = call i32 @dsa_port_phylink_create(ptr noundef %dp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool6.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool6.not.i, label %if.end.i33, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i33:                                       ; preds = %if.end
  %pl.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %32 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pl.i, align 4
  %call7.i = call i32 @phylink_of_phy_connect(ptr noundef %33, ptr noundef %22, i32 noundef 0) #9
  %34 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call7.i, label %do.end.i [
    i32 0, label %if.end.i33.cleanup_crit_edge
    i32 -19, label %if.end.i33.cleanup_crit_edge39
  ]

if.end.i33.cleanup_crit_edge39:                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i33.cleanup_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call7.i) #12
  %35 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pl.i, align 4
  call void @phylink_destroy(ptr noundef %36) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.10) #12
  %dn14 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %39 = ptrtoint ptr %dn14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dn14, align 4
  %call15 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %40) #9
  br i1 %call15, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end
  %41 = ptrtoint ptr %dn14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dn14, align 4
  %43 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ds1, align 4
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #9
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %mode.i, align 4, !annotation !105
  %call.i35 = tail call i32 @of_phy_register_fixed_link(ptr noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i38, label %do.end.i37

do.end.i37:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.29, i32 noundef %46) #12
  br label %dsa_port_fixed_link_register_of.exit

if.end.i38:                                       ; preds = %if.then16
  %call3.i = tail call ptr @of_phy_find_device(ptr noundef %42) #9
  %call4.i = call i32 @of_get_phy_mode(ptr noundef %42, ptr noundef nonnull %mode.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i38.if.end7.i_crit_edge, label %if.then6.i

if.end.i38.if.end7.i_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mode.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i38.if.end7.i_crit_edge
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode.i, align 4
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %call3.i, i32 0, i32 7
  %53 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %interface.i, align 4
  %call8.i = call i32 @genphy_read_status(ptr noundef %call3.i) #9
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %44, i32 0, i32 8
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %adjust_link.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %adjust_link.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adjust_link.i, align 4
  %tobool9.not.i = icmp eq ptr %57, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then10.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %57(ptr noundef %44, i32 noundef %46, ptr noundef %call3.i) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  call void @put_device(ptr noundef %call3.i) #9
  br label %dsa_port_fixed_link_register_of.exit

dsa_port_fixed_link_register_of.exit:             ; preds = %if.end13.i, %do.end.i37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #9
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call fastcc i32 @dsa_port_setup_phy_of(ptr noundef %dp, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %dsa_port_fixed_link_register_of.exit, %do.end.i, %if.end.i33.cleanup_crit_edge, %if.end.i33.cleanup_crit_edge39, %if.end.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i35, %dsa_port_fixed_link_register_of.exit ], [ %call18, %if.else ], [ 0, %of_parse_phandle.exit.cleanup_crit_edge ], [ %call7.i, %do.end.i ], [ %call.i32, %if.end.cleanup_crit_edge ], [ 0, %if.end.i33.cleanup_crit_edge ], [ 0, %if.end.i33.cleanup_crit_edge39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_setup_phy_of(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dn.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %4 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %6 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %cleanup

of_parse_phandle.exit.i:                          ; preds = %entry
  %7 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.cleanup_crit_edge, label %if.end.i

of_parse_phandle.exit.i.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_phy_find_device(ptr noundef nonnull %8) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  call void @of_node_put(ptr noundef nonnull %8) #9
  br i1 %tobool2.not.i, label %if.end.i.if.then3_crit_edge, label %if.end

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end:                                           ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.i.if.then3_crit_edge
  %retval.0.i5361 = phi ptr [ %call1.i, %if.end.if.then3_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end.i.if.then3_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i5361 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @genphy_resume(ptr noundef nonnull %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then7.err_put_dev_crit_edge, label %if.end10

if.then7.err_put_dev_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_dev

if.end10:                                         ; preds = %if.then7
  %call11 = call i32 @genphy_read_status(ptr noundef nonnull %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.err_put_dev_crit_edge, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end10.err_put_dev_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_dev

if.else:                                          ; preds = %if.end5
  %call15 = call i32 @genphy_suspend(ptr noundef nonnull %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.else.err_put_dev_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else.err_put_dev_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_dev

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.if.end19_crit_edge ], [ %call15, %if.else.if.end19_crit_edge ]
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %adjust_link = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adjust_link, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end19.do.body_crit_edge, label %if.then21

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void %13(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %call1.i) #9
  br label %do.body

do.body:                                          ; preds = %if.then21, %if.end19.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsa_port_setup_phy_of.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsa_port_setup_phy_of, %if.then30)) #9
          to label %err_put_dev [label %if.then30], !srcloc !107

if.then30:                                        ; preds = %do.body
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i54 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i54, label %if.end.i.i, label %if.then30.phydev_name.exit_crit_edge

if.then30.phydev_name.exit_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1.i, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.then30.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then30.phydev_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsa_port_setup_phy_of.__UNIQUE_ID_ddebug499, ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i) #9
  br label %err_put_dev

err_put_dev:                                      ; preds = %phydev_name.exit, %do.body, %if.else.err_put_dev_crit_edge, %if.end10.err_put_dev_crit_edge, %if.then7.err_put_dev_crit_edge
  %err.1 = phi i32 [ %call8, %if.then7.err_put_dev_crit_edge ], [ %call11, %if.end10.err_put_dev_crit_edge ], [ %err.0, %phydev_name.exit ], [ %call15, %if.else.err_put_dev_crit_edge ], [ %err.0, %do.body ]
  call void @put_device(ptr noundef nonnull %call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_put_dev, %if.then3, %of_parse_phandle.exit.i.cleanup_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0 = phi i32 [ %9, %if.then3 ], [ %err.1, %err_put_dev ], [ 0, %of_parse_phandle.exit.i.cleanup_crit_edge ], [ 0, %of_parse_phandle.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_link_unregister_of(ptr nocapture noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %adjust_link = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adjust_link, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pl = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 16
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pl, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_lock() #9
  %8 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pl, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %9) #9
  tail call void @rtnl_unlock() #9
  %10 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pl, align 4
  tail call void @phylink_destroy(ptr noundef %11) #9
  %12 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pl, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %13 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dn, align 4
  %call = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %14) #9
  br i1 %call, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dn, align 4
  tail call void @of_phy_deregister_fixed_link(ptr noundef %16) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @dsa_port_setup_phy_of(ptr noundef %dp, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_phy_strings(ptr nocapture noundef readonly %dp, ptr noundef %data) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %call = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %1) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %cleanup

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.cleanup_crit_edge, label %dsa_port_get_phy_device.exit

of_parse_phandle.exit.i.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_port_get_phy_device.exit:                     ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_phy_find_device(ptr noundef nonnull %6) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  call void @of_node_put(ptr noundef nonnull %6) #9
  %.call1.i = select i1 %tobool2.not.i, ptr inttoptr (i32 -517 to ptr), ptr %call1.i
  %cmp.i = icmp ugt ptr %.call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dsa_port_get_phy_device.exit.cleanup_crit_edge, label %if.end4

dsa_port_get_phy_device.exit.cleanup_crit_edge:   ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @phy_ethtool_get_strings(ptr noundef nonnull %.call1.i, ptr noundef %data) #9
  call void @put_device(ptr noundef nonnull %.call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %dsa_port_get_phy_device.exit.cleanup_crit_edge, %of_parse_phandle.exit.i.cleanup_crit_edge, %of_parse_phandle.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %dsa_port_get_phy_device.exit.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.i.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_ethtool_phy_stats(ptr nocapture noundef readonly %dp, ptr noundef %data) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %call = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %1) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %cleanup

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.cleanup_crit_edge, label %dsa_port_get_phy_device.exit

of_parse_phandle.exit.i.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_port_get_phy_device.exit:                     ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_phy_find_device(ptr noundef nonnull %6) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  call void @of_node_put(ptr noundef nonnull %6) #9
  %.call1.i = select i1 %tobool2.not.i, ptr inttoptr (i32 -517 to ptr), ptr %call1.i
  %cmp.i = icmp ugt ptr %.call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dsa_port_get_phy_device.exit.cleanup_crit_edge, label %if.end4

dsa_port_get_phy_device.exit.cleanup_crit_edge:   ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @phy_ethtool_get_stats(ptr noundef nonnull %.call1.i, ptr noundef null, ptr noundef %data) #9
  call void @put_device(ptr noundef nonnull %.call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %dsa_port_get_phy_device.exit.cleanup_crit_edge, %of_parse_phandle.exit.i.cleanup_crit_edge, %of_parse_phandle.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %dsa_port_get_phy_device.exit.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.i.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_get_phy_sset_count(ptr nocapture noundef readonly %dp) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %call = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %1) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %cleanup

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.cleanup_crit_edge, label %dsa_port_get_phy_device.exit

of_parse_phandle.exit.i.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_port_get_phy_device.exit:                     ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_phy_find_device(ptr noundef nonnull %6) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  call void @of_node_put(ptr noundef nonnull %6) #9
  %.call1.i = select i1 %tobool2.not.i, ptr inttoptr (i32 -517 to ptr), ptr %call1.i
  %cmp.i = icmp ugt ptr %.call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dsa_port_get_phy_device.exit.cleanup_crit_edge, label %if.end4

dsa_port_get_phy_device.exit.cleanup_crit_edge:   ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %dsa_port_get_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %.call1.i) #9
  call void @put_device(ptr noundef nonnull %.call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %dsa_port_get_phy_device.exit.cleanup_crit_edge, %of_parse_phandle.exit.i.cleanup_crit_edge, %of_parse_phandle.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %dsa_port_get_phy_device.exit.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.i.cleanup_crit_edge ], [ -95, %of_parse_phandle.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_sset_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_hsr_join(ptr nocapture noundef %dp, ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_hsr_join = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 96
  %4 = ptrtoint ptr %port_hsr_join to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_hsr_join, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hsr_dev = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %6 = ptrtoint ptr %hsr_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hsr, ptr %hsr_dev, align 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %port_hsr_join3 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 96
  %9 = ptrtoint ptr %port_hsr_join3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_hsr_join3, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call = tail call i32 %10(ptr noundef %1, i32 noundef %12, ptr noundef %hsr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %hsr_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hsr_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_hsr_leave(ptr nocapture noundef %dp, ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %hsr_dev = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 19
  %2 = ptrtoint ptr %hsr_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hsr_dev, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %port_hsr_leave = getelementptr inbounds %struct.dsa_switch_ops, ptr %4, i32 0, i32 97
  %5 = ptrtoint ptr %port_hsr_leave to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_hsr_leave, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %call = tail call i32 %6(ptr noundef %1, i32 noundef %8, ptr noundef %hsr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %15 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %14, ptr noundef %hsr, ptr noundef nonnull %15) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_port_tag_8021q_vlan_add(ptr nocapture noundef readonly %dp, i16 noundef zeroext %vid, i1 noundef zeroext %broadcast) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_tag_8021q_vlan_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %info, align 4
  %sw_index = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 1
  %index2 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %sw_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sw_index, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 2
  %index3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port, align 4
  %vid4 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %vid4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vid, ptr %vid4, align 4
  br i1 %broadcast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @dsa_broadcast(i32 noundef 20, ptr noundef nonnull %info) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %17, i32 noundef 20, ptr noundef nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_tag_8021q_vlan_del(ptr nocapture noundef readonly %dp, i16 noundef zeroext %vid, i1 noundef zeroext %broadcast) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.dsa_notifier_tag_8021q_vlan_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %info, align 4
  %sw_index = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 1
  %index2 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2, align 4
  %11 = ptrtoint ptr %sw_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sw_index, align 4
  %port = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 2
  %index3 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port, align 4
  %vid4 = getelementptr inbounds %struct.dsa_notifier_tag_8021q_vlan_info, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %vid4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vid, ptr %vid4, align 4
  br i1 %broadcast, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @dsa_broadcast(i32 noundef 21, ptr noundef nonnull %info) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 4
  %call.i = call i32 @dsa_tree_notify(ptr noundef %17, i32 noundef 21, ptr noundef nonnull %info) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool6.not = icmp eq i32 %err.0, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %do.end

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index3, align 4
  %conv = zext i16 %vid to i32
  %24 = inttoptr i32 %err.0 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %23, i32 noundef %conv, ptr noundef nonnull %24) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tree_bridge_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_bridge_num_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @br_port_get_stp_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_get_ageing_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_port_flag_is_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_bridge_num_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tree_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_info(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_validate(ptr noundef %config, ptr noundef %supported, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_validate = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %phylink_validate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_validate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %mac_capabilities = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 8
  %6 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phylink_generic_validate(ptr noundef %config, ptr noundef %supported, ptr noundef %state) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr i8, ptr %config, i32 -396
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %9, ptr noundef %supported, ptr noundef %state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_pcs_get_state(ptr nocapture noundef readonly %config, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_mac_link_state = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %phylink_mac_link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_mac_link_state, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %index = getelementptr i8, ptr %config, i32 -396
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %11, i32 noundef %call) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %entry.cleanup.sink.split_crit_edge
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load7 = load i8, ptr %link, align 4
  %bf.clear8 = and i8 %bf.load7, 127
  store i8 %bf.clear8, ptr %link, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_config(ptr nocapture noundef readonly %config, i32 noundef %mode, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_mac_config = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %phylink_mac_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_mac_config, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr i8, ptr %config, i32 -396
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %7, i32 noundef %mode, ptr noundef %state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_an_restart(ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_mac_an_restart = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %phylink_mac_an_restart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_mac_an_restart, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr i8, ptr %config, i32 -396
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_link_down(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %type.i = getelementptr i8, ptr %config, i32 -392
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %config, i32 -416
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %phydev2 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %6 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev2, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phydev.0 = phi ptr [ %7, %if.then ], [ null, %entry.if.end_crit_edge ]
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %phylink_mac_link_down = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %phylink_mac_link_down to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phylink_mac_link_down, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %adjust_link = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adjust_link, align 4
  %tobool5.not = icmp eq ptr %13, null
  %tobool6.not = icmp eq ptr %phydev.0, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.then3.cleanup_crit_edge, label %if.then7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr i8, ptr %config, i32 -396
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  tail call void %13(ptr noundef %1, i32 noundef %15, ptr noundef nonnull %phydev.0) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %index14 = getelementptr i8, ptr %config, i32 -396
  %16 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index14, align 4
  tail call void %11(ptr noundef %1, i32 noundef %17, i32 noundef %mode, i32 noundef %interface) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7, %if.then3.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_port_phylink_mac_link_up(ptr nocapture noundef readonly %config, ptr noundef %phydev, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds2 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds2, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_mac_link_up = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %phylink_mac_link_up to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_mac_link_up, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %adjust_link = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adjust_link, align 4
  %tobool4.not = icmp eq ptr %7, null
  %tobool5.not = icmp eq ptr %phydev, null
  %or.cond = or i1 %tobool5.not, %tobool4.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr i8, ptr %config, i32 -396
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %phydev) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index12 = getelementptr i8, ptr %config, i32 -396
  %10 = ptrtoint ptr %index12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index12, align 4
  tail call void %5(ptr noundef %1, i32 noundef %11, i32 noundef %mode, i32 noundef %interface, ptr noundef %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dsa/port.c", i32 416, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dsa_port_bridge_leave._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dsa_port_bridge_leave._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/dsa/port.c", i32 520, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dsa_port_lag_leave._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @dsa_port_lag_leave._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/dsa/port.c", i32 1125, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dsa_port_phylink_create._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dsa_port_phylink_create._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/dsa/port.c", i32 1238, i32 37}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/dsa/port.c", i32 1248, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dsa_port_link_register_of._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @dsa_port_link_register_of._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_dsa_port_get_phy_strings, !27, !"__ksymtab_dsa_port_get_phy_strings", i1 false, i1 false}
!27 = !{!"../net/dsa/port.c", i32 1293, i32 1}
!28 = !{ptr @__ksymtab_dsa_port_get_ethtool_phy_stats, !29, !"__ksymtab_dsa_port_get_ethtool_phy_stats", i1 false, i1 false}
!29 = !{!"../net/dsa/port.c", i32 1312, i32 1}
!30 = !{ptr @__ksymtab_dsa_port_get_phy_sset_count, !31, !"__ksymtab_dsa_port_get_phy_sset_count", i1 false, i1 false}
!31 = !{!"../net/dsa/port.c", i32 1331, i32 1}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/dsa/port.c", i32 1360, i32 4}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dsa_port_hsr_leave._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dsa_port_hsr_leave._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/dsa/port.c", i32 1396, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dsa_port_tag_8021q_vlan_del._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @dsa_port_tag_8021q_vlan_del._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/dsa/port.c", i32 118, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dsa_port_set_state_now._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dsa_port_set_state_now._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @dsa_port_bridge_create.__msg, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../net/dsa/port.c", i32 297, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/dsa/port.c", i32 214, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dsa_port_clear_brport_flags._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dsa_port_clear_brport_flags._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dsa_port_can_apply_vlan_filtering.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/dsa/port.c", i32 561, i32 5}
!60 = !{ptr @dsa_port_can_apply_vlan_filtering.__msg.23, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/dsa/port.c", i32 586, i32 4}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dsa_port_phylink_mac_ops, !66, !"dsa_port_phylink_mac_ops", i1 false, i1 false}
!66 = !{!"../net/dsa/port.c", i32 1093, i32 37}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/dsa/port.c", i32 1023, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dsa_port_phylink_mac_pcs_get_state._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dsa_port_phylink_mac_pcs_get_state._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/dsa/port.c", i32 1220, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dsa_port_phylink_register._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dsa_port_phylink_register._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/dsa/port.c", i32 1181, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dsa_port_fixed_link_register_of._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dsa_port_fixed_link_register_of._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/dsa/port.c", i32 1163, i32 2}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dsa_port_setup_phy_of.__UNIQUE_ID_ddebug499, !83, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148520335, i64 2148520367, i64 2148520396, i64 2148520430, i64 2148520461, i64 2148520484}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i8 0, i8 2}
!101 = !{i64 2148608360}
!102 = !{i64 2148522800, i64 2148522832, i64 2148522861, i64 2148522895, i64 2148522926, i64 2148522949}
!103 = !{i64 2149842580}
!104 = !{i64 2149624830}
!105 = !{!"auto-init"}
!106 = !{i64 2149625096}
!107 = !{i64 2149076070, i64 2149076075, i64 2149076088, i64 2149076132, i64 2149076166, i64 2149076187}
