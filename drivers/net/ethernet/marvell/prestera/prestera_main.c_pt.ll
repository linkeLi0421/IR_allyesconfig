; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+prestera_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_prestera_device_register\09\09\09\09"
module asm "\09.long\09__crc_prestera_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prestera_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22prestera_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_prestera_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prestera_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_prestera_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_prestera_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prestera_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22prestera_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_prestera_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.128, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.112 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.112 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.128 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.129, i8 }
%struct.anon.129 = type { i8, i8 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_lag = type { ptr, %struct.list_head, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.netdev_nested_priv = type { i8, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.prestera_device = type { ptr, ptr, ptr, %struct.prestera_fw_rev, ptr, ptr, ptr, ptr }
%struct.prestera_fw_rev = type { i16, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }
%struct.prestera_event = type { i16, %union.anon.134 }
%union.anon.134 = type { %struct.prestera_port_event }
%struct.prestera_port_event = type { i32, %union.anon.135 }
%union.anon.135 = type { %struct.anon.137 }
%struct.anon.137 = type { i64, %struct.anon.138, i8 }
%struct.anon.138 = type { i8, i8 }

@prestera_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @prestera_port_open, ptr @prestera_port_close, ptr @prestera_port_xmit, ptr null, ptr null, ptr null, ptr null, ptr @prestera_port_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_port_change_mtu, ptr null, ptr null, ptr @prestera_port_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_devlink_get_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__kstrtab_prestera_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_prestera_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_prestera_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prestera_device_register to i32), ptr @__kstrtab_prestera_device_register, ptr @__kstrtabns_prestera_device_register }, section "___ksymtab+prestera_device_register", align 4
@__kstrtab_prestera_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_prestera_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_prestera_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prestera_device_unregister to i32), ptr @__kstrtab_prestera_device_unregister, ptr @__kstrtabns_prestera_device_unregister }, section "___ksymtab+prestera_device_unregister", align 4
@prestera_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_prestera__378_1036_prestera_module_init6 = internal global ptr @prestera_module_init, section ".initcall6.init", align 4
@__exitcall_prestera_module_exit = internal global ptr @prestera_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file379 = internal constant [61 x i8] c"prestera.file=drivers/net/ethernet/marvell/prestera/prestera\00", section ".modinfo", align 1
@__UNIQUE_ID_license380 = internal constant [30 x i8] c"prestera.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description381 = internal constant [52 x i8] c"prestera.description=Marvell Prestera switch driver\00", section ".modinfo", align 1
@prestera_switch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 891, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init Switch device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prestera_switch_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_main.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@prestera_switch_init._entry_ptr = internal global ptr @prestera_switch_init._entry, section ".printk_index", align 4
@prestera_switch_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sw->port_list_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,prestera\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"base-mac-provider\00", [46 x i8] zeroinitializer }, align 32
@prestera_switch_set_base_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 554, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using random base mac address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prestera_switch_set_base_mac_addr\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@prestera_switch_set_base_mac_addr._entry_ptr = internal global ptr @prestera_switch_set_base_mac_addr._entry, section ".printk_index", align 4
@prestera_netdev_port_event.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"prestera: Unknown upper device type\00", [60 x i8] zeroinitializer }, align 32
@prestera_netdev_port_event.__msg.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prestera: Upper device is already enslaved\00", [53 x i8] zeroinitializer }, align 32
@prestera_netdev_port_event.__msg.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"prestera: Master device is a LAG master and port has a VLAN\00", [36 x i8] zeroinitializer }, align 32
@prestera_netdev_port_event.__msg.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prestera: Can not put a VLAN on a LAG port\00", [53 x i8] zeroinitializer }, align 32
@prestera_lag_master_check.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prestera: Unsupported LAG Tx type\00", [62 x i8] zeroinitializer }, align 32
@prestera_port_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get port(%u) info\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prestera_port_create\00", [43 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr = internal global ptr @prestera_port_create._entry, section ".printk_index", align 4
@prestera_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@prestera_port_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set port(%u) mtu(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.18 = internal global ptr @prestera_port_create._entry.16, section ".printk_index", align 4
@prestera_port_create._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 378, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Port MAC address wraps for port(%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.22 = internal global ptr @prestera_port_create._entry.19, section ".printk_index", align 4
@prestera_port_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set port(%u) mac addr\0A\00", [63 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.25 = internal global ptr @prestera_port_create._entry.23, section ".printk_index", align 4
@prestera_port_create._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get port(%u) caps\0A\00", [35 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.28 = internal global ptr @prestera_port_create._entry.26, section ".printk_index", align 4
@prestera_port_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.15, ptr @.str.2, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set port(%u) mac mode\0A\00", [63 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.31 = internal global ptr @prestera_port_create._entry.29, section ".printk_index", align 4
@prestera_port_create._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set port(%u) phy mode\0A\00", [63 x i8] zeroinitializer }, align 32
@prestera_port_create._entry_ptr.34 = internal global ptr @prestera_port_create._entry.32, section ".printk_index", align 4
@prestera_port_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(work_completion)(&(&port->cached_hw_stats.caching_dw)->work)\00", [34 x i8] zeroinitializer }, align 32
@prestera_port_create.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"&(&port->cached_hw_stats.caching_dw)->timer\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prestera\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 26, i64 27]
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"prestera_netdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 274, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"prestera_wq\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 30, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 891, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 895, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 548, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 549, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 554, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 789, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 797, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 805, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 811, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 762, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 343, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 363, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 378, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 384, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 390, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 413, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 427, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 437, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [57 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_main.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1024, i32 32 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_description381, ptr @__UNIQUE_ID_file379, ptr @__UNIQUE_ID_license380, ptr @__exitcall_prestera_module_exit, ptr @__initcall__kmod_prestera__378_1036_prestera_module_init6, ptr @__ksymtab_prestera_device_register, ptr @__ksymtab_prestera_device_unregister, ptr @prestera_module_exit, ptr @prestera_port_create._entry, ptr @prestera_port_create._entry.16, ptr @prestera_port_create._entry.19, ptr @prestera_port_create._entry.23, ptr @prestera_port_create._entry.26, ptr @prestera_port_create._entry.29, ptr @prestera_port_create._entry.32, ptr @prestera_port_create._entry_ptr, ptr @prestera_port_create._entry_ptr.18, ptr @prestera_port_create._entry_ptr.22, ptr @prestera_port_create._entry_ptr.25, ptr @prestera_port_create._entry_ptr.28, ptr @prestera_port_create._entry_ptr.31, ptr @prestera_port_create._entry_ptr.34, ptr @prestera_switch_init._entry, ptr @prestera_switch_init._entry_ptr, ptr @prestera_switch_set_base_mac_addr._entry, ptr @prestera_switch_set_base_mac_addr._entry_ptr, ptr @prestera_netdev_ops, ptr @prestera_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @prestera_switch_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @prestera_netdev_port_event.__msg, ptr @prestera_netdev_port_event.__msg.11, ptr @prestera_netdev_port_event.__msg.12, ptr @prestera_netdev_port_event.__msg.13, ptr @prestera_lag_master_check.__msg, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @prestera_port_create.__key, ptr @.str.35, ptr @prestera_port_create.__key.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_switch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_switch_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_switch_set_base_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_netdev_port_event.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_netdev_port_event.__msg.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_netdev_port_event.__msg.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_netdev_port_event.__msg.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_lag_master_check.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_port_create.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_port_pvid_set(ptr noundef %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  br i1 %tobool.not, label %if.end3.thread, label %if.then

if.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call421 = tail call i32 @prestera_hw_port_accept_frm_type(ptr noundef %port, i32 noundef 0) #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 @prestera_hw_vlan_port_vid_set(ptr noundef %port, i16 noundef zeroext %vid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.then
  %call4 = tail call i32 @prestera_hw_port_accept_frm_type(ptr noundef %port, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %pvid = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pvid, align 2
  %call7 = tail call i32 @prestera_hw_vlan_port_vid_set(ptr noundef %port, i16 noundef zeroext %1) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge, %if.end3.thread
  %pvid9 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 10
  %2 = ptrtoint ptr %pvid9 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %vid, ptr %pvid9, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vlan_port_vid_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_accept_frm_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_port_find_by_hwid(ptr noundef %sw, i32 noundef %dev_id, i32 noundef %hw_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list_lock = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %port_list_lock) #14
  %port_list = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn22 = load ptr, ptr %port_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %port_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %dev_id3 = getelementptr i8, ptr %.pn24, i32 -44
  %1 = ptrtoint ptr %dev_id3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dev_id)
  %cmp4 = icmp eq i32 %2, %dev_id
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %hw_id5 = getelementptr i8, ptr %.pn24, i32 -48
  %3 = ptrtoint ptr %hw_id5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_id5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %hw_id)
  %cmp6 = icmp eq i32 %4, %hw_id
  br i1 %cmp6, label %for.end.split.loop.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.split.loop.exit:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %tmp.0.le = getelementptr i8, ptr %.pn24, i32 -432
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %port.0 = phi ptr [ %tmp.0.le, %for.end.split.loop.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %port_list_lock) #14
  ret ptr %port.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_find_port(ptr noundef %sw, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list_lock = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %port_list_lock) #14
  %port_list = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %port_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id3 = getelementptr i8, ptr %.pn, i32 -52
  %1 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3, align 4
  %cmp4 = icmp eq i32 %2, %id
  br i1 %cmp4, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %tmp.0.le = getelementptr i8, ptr %.pn, i32 -432
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %port.0 = phi ptr [ %tmp.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %port_list_lock) #14
  ret ptr %port.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prestera_port_cfg_mac_read(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_mac = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 18
  %0 = call ptr @memcpy(ptr %cfg, ptr %cfg_mac, i32 12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_port_cfg_mac_write(ptr noundef %port, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %admin = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %admin to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %admin, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %inband = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg, i32 0, i32 3
  %4 = ptrtoint ptr %inband to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inband, align 1
  %speed = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg, i32 0, i32 4
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %duplex, align 2
  %fec = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg, i32 0, i32 5
  %10 = ptrtoint ptr %fec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fec, align 1
  %call = tail call i32 @prestera_hw_port_mac_mode_set(ptr noundef %port, i1 noundef zeroext %tobool, i32 noundef %3, i8 noundef zeroext %5, i32 noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_mac = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 18
  %12 = call ptr @memcpy(ptr %cfg_mac, ptr %cfg, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_mac_mode_set(ptr noundef, i1 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prestera_is_valid_mac_addr(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %if.end

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw, align 4
  %base_mac = getelementptr inbounds %struct.prestera_switch, ptr %6, i32 0, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %base_mac, ptr noundef dereferenceable(5) %addr, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %is_valid_ether_addr.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ %., %if.end ], [ -99, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_port_autoneg_set(ptr noundef %port, i64 noundef %link_modes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %adver_link_modes = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 12
  %2 = ptrtoint ptr %adver_link_modes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %adver_link_modes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %link_modes)
  %cmp = icmp eq i64 %3, %link_modes
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %admin = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %admin to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %admin, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1 = icmp ne i8 %5, 0
  %mdix = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdix, align 1
  %call = tail call i32 @prestera_hw_port_phy_mode_set(ptr noundef %port, i1 noundef zeroext %tobool1, i1 noundef zeroext true, i32 noundef 0, i64 noundef %link_modes, i8 noundef zeroext %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_phy = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 19
  %adver_fec = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 13
  %8 = ptrtoint ptr %adver_fec to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %adver_fec, align 8
  %adver_link_modes6 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 12
  %9 = ptrtoint ptr %adver_link_modes6 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %link_modes, ptr %adver_link_modes6, align 8
  %10 = ptrtoint ptr %cfg_phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cfg_phy, align 4
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %autoneg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_phy_mode_set(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @prestera_lag_by_id(ptr nocapture noundef readonly %sw, i16 noundef zeroext %id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lag_max = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 19
  %0 = ptrtoint ptr %lag_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lag_max, align 1
  %2 = zext i8 %1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %id)
  %cmp = icmp ugt i16 %2, %id
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %id to i32
  %lags = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 16
  %3 = ptrtoint ptr %lags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lags, align 4
  %arrayidx = getelementptr %struct.prestera_lag, ptr %4, i32 %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @prestera_port_is_lag_member(ptr nocapture noundef readonly %port) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lag = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag, align 8
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @prestera_port_lag_id(ptr nocapture noundef readonly %port) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lag = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag, align 8
  %lag_id = getelementptr inbounds %struct.prestera_lag, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lag_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lag_id, align 2
  ret i16 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @prestera_netdev_check(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @prestera_netdev_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_port_dev_lower_find(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %port = alloca ptr, align 4
  %priv = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #14
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #14
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 72057594037927935, ptr %priv, align 8, !annotation !95
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port, ptr %data, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %4, @prestera_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 @netdev_walk_all_lower_dev(ptr noundef %dev, ptr noundef nonnull @prestera_lower_dev_walk, ptr noundef nonnull %priv) #14
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %add.ptr.i, %if.then ], [ %6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_lower_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prestera_lower_dev_walk(ptr noundef %dev, ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @prestera_netdev_ops
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_device_register(ptr noundef %dev) #0 align 64 {
entry:
  %addr.i.i.i = alloca [6 x i8], align 1
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prestera_devlink_alloc(ptr noundef %dev) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.prestera_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %priv, align 4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call, align 4
  %call.i = tail call i32 @prestera_hw_switch_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #18
  br label %if.then4

do.body2.i:                                       ; preds = %if.end
  %port_list_lock.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 10
  tail call void @__rwlock_init(ptr noundef %port_list_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @prestera_switch_init.__key) #14
  %port_list.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %port_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %port_list.i, ptr %port_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %port_list.i, ptr %prev.i.i, align 4
  %call.i.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #14
  %8 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %call.i.i, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.body2.i.of_parse_phandle.exit.i.i_crit_edge

do.body2.i.of_parse_phandle.exit.i.i_crit_edge:   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %of_parse_phandle.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i.i.i, align 4
  br label %of_parse_phandle.exit.i.i

of_parse_phandle.exit.i.i:                        ; preds = %if.end.i.i.i, %do.body2.i.of_parse_phandle.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %10, %if.end.i.i.i ], [ null, %do.body2.i.of_parse_phandle.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #14
  %base_mac.i.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 8
  %call2.i.i = call i32 @of_get_mac_address(ptr noundef %retval.0.i.i.i, ptr noundef %base_mac.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i.i.prestera_switch_set_base_mac_addr.exit.i_crit_edge, label %if.then.i.i

of_parse_phandle.exit.i.i.prestera_switch_set_base_mac_addr.exit.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_set_base_mac_addr.exit.i

if.then.i.i:                                      ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @get_random_bytes(ptr noundef %base_mac.i.i, i32 noundef 6) #14
  %11 = ptrtoint ptr %base_mac.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %base_mac.i.i, align 1
  %13 = and i8 %12, -4
  %14 = or i8 %13, 2
  store i8 %14, ptr %base_mac.i.i, align 1
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.8) #18
  br label %prestera_switch_set_base_mac_addr.exit.i

prestera_switch_set_base_mac_addr.exit.i:         ; preds = %if.then.i.i, %of_parse_phandle.exit.i.i.prestera_switch_set_base_mac_addr.exit.i_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i.i.i) #14
  call void @of_node_put(ptr noundef %call.i.i) #14
  %call8.i.i = call i32 @prestera_hw_switch_mac_set(ptr noundef nonnull %call, ptr noundef %base_mac.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool6.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %prestera_switch_set_base_mac_addr.exit.i.if.then4_crit_edge

prestera_switch_set_base_mac_addr.exit.i.if.then4_crit_edge: ; preds = %prestera_switch_set_base_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end8.i:                                        ; preds = %prestera_switch_set_base_mac_addr.exit.i
  %netdev_nb.i.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %netdev_nb.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @prestera_netdev_event_handler, ptr %netdev_nb.i.i, align 4
  %call.i96.i = call i32 @register_netdevice_notifier(ptr noundef %netdev_nb.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool10.not.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.if.then4_crit_edge

if.end8.i.if.then4_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @prestera_router_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.prestera_switch_init.exit_crit_edge

if.end12.i.prestera_switch_init.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_init.exit

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = call i32 @prestera_switchdev_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.err_swdev_register.i_crit_edge

if.end16.i.err_swdev_register.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_swdev_register.i

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = call i32 @prestera_rxtx_switch_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.err_rxtx_register.i_crit_edge

if.end20.i.err_rxtx_register.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_rxtx_register.i

if.end24.i:                                       ; preds = %if.end20.i
  %call.i97.i = call i32 @prestera_hw_event_handler_register(ptr noundef nonnull %call, i32 noundef 1, ptr noundef nonnull @prestera_port_handle_event, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool26.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.err_handlers_register.i_crit_edge

if.end24.i.err_handlers_register.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_handlers_register.i

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = call i32 @prestera_counter_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.err_counter_init.i_crit_edge

if.end28.i.err_counter_init.i_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_counter_init.i

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call i32 @prestera_acl_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.err_acl_init.i_crit_edge

if.end32.i.err_acl_init.i_crit_edge:              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_acl_init.i

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call i32 @prestera_span_init(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.err_span_init.i_crit_edge

if.end36.i.err_span_init.i_crit_edge:             ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_span_init.i

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call i32 @prestera_devlink_traps_register(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.err_dl_register.i_crit_edge

if.end40.i.err_dl_register.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dl_register.i

if.end44.i:                                       ; preds = %if.end40.i
  %lag_max.i25 = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 19
  %20 = ptrtoint ptr %lag_max.i25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lag_max.i25, align 1
  %conv.i = zext i8 %21 to i32
  %22 = shl nuw nsw i32 %conv.i, 4
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #19
  %lags.i29 = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 16
  %23 = ptrtoint ptr %lags.i29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %lags.i29, align 4
  %tobool.not.i30 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i30, label %if.end44.i.err_lag_init.i_crit_edge, label %for.cond.preheader.i

if.end44.i.err_lag_init.i_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_lag_init.i

for.cond.preheader.i:                             ; preds = %if.end44.i
  %24 = ptrtoint ptr %lag_max.i25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lag_max.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp17.not.i = icmp eq i8 %25, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.if.end48.i_crit_edge, label %for.cond.preheader.i.for.body.i35_crit_edge

for.cond.preheader.i.for.body.i35_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i35

for.cond.preheader.i.if.end48.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %for.cond.preheader.i.for.body.i35_crit_edge
  %indvars.iv.i32 = phi i32 [ %indvars.iv.next.i33, %for.body.i35.for.body.i35_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i35_crit_edge ]
  %26 = ptrtoint ptr %lags.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lags.i29, align 4
  %lag_id.i = getelementptr %struct.prestera_lag, ptr %27, i32 %indvars.iv.i32, i32 3
  %28 = trunc i32 %indvars.iv.i32 to i16
  %29 = ptrtoint ptr %lag_id.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %lag_id.i, align 2
  %indvars.iv.next.i33 = add nuw nsw i32 %indvars.iv.i32, 1
  %30 = ptrtoint ptr %lag_max.i25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lag_max.i25, align 1
  %32 = zext i8 %31 to i32
  %cmp.i34 = icmp ult i32 %indvars.iv.next.i33, %32
  br i1 %cmp.i34, label %for.body.i35.for.body.i35_crit_edge, label %for.body.i35.if.end48.i_crit_edge

for.body.i35.if.end48.i_crit_edge:                ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i35

if.end48.i:                                       ; preds = %for.body.i35.if.end48.i_crit_edge, %for.cond.preheader.i.if.end48.i_crit_edge
  %port_count.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 11
  %33 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp104.not.i = icmp eq i32 %34, 0
  br i1 %cmp104.not.i, label %if.end48.i.prestera_switch_init.exit.thread48_crit_edge, label %for.body.lr.ph.i17

if.end48.i.prestera_switch_init.exit.thread48_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_init.exit.thread48

for.body.lr.ph.i17:                               ; preds = %if.end48.i
  %mtu_max.i.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 13
  %mtu_min.i.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 12
  %arrayidx.1.i.i.i.i = getelementptr %struct.prestera_switch, ptr %call, i32 0, i32 8, i32 1
  %arrayidx.2.i.i.i.i = getelementptr %struct.prestera_switch, ptr %call, i32 0, i32 8, i32 2
  %arrayidx.3.i.i.i.i = getelementptr %struct.prestera_switch, ptr %call, i32 0, i32 8, i32 3
  %arrayidx.4.i.i.i.i = getelementptr %struct.prestera_switch, ptr %call, i32 0, i32 8, i32 4
  %arrayidx.5.i.i.i.i = getelementptr %struct.prestera_switch, ptr %call, i32 0, i32 8, i32 5
  %35 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i, i32 0, i32 1
  %36 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i, i32 0, i32 2
  %37 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i, i32 0, i32 3
  %38 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i, i32 0, i32 4
  %39 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i, i32 0, i32 5
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc.i.for.body.i20_crit_edge, %for.body.lr.ph.i17
  %port_idx.0105.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i, %for.inc.i.for.body.i20_crit_edge ]
  %call.i.i18 = call ptr @alloc_etherdev_mqs(i32 noundef 840, i32 noundef 1, i32 noundef 1) #14
  %tobool.not.i.i19 = icmp eq ptr %call.i.i18, null
  br i1 %tobool.not.i.i19, label %for.body.i20.err_port_create.i_crit_edge, label %if.end.i.i

for.body.i20.err_port_create.i_crit_edge:         ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_port_create.i

if.end.i.i:                                       ; preds = %for.body.i20
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i18, i32 2304
  %vlans_list.i.i = getelementptr i8, ptr %call.i.i18, i32 2744
  %40 = ptrtoint ptr %vlans_list.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %vlans_list.i.i, ptr %vlans_list.i.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %call.i.i18, i32 2748
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %vlans_list.i.i, ptr %prev.i.i.i, align 4
  %pvid.i.i = getelementptr i8, ptr %call.i.i18, i32 2698
  %42 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %pvid.i.i, align 2
  %lag.i.i = getelementptr i8, ptr %call.i.i18, i32 2680
  %43 = ptrtoint ptr %lag.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %lag.i.i, align 8
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i18, ptr %add.ptr.i.i.i, align 8
  %id3.i.i = getelementptr i8, ptr %call.i.i18, i32 2684
  %45 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %port_idx.0105.i, ptr %id3.i.i, align 4
  %sw4.i.i = getelementptr i8, ptr %call.i.i18, i32 2308
  %46 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call, ptr %sw4.i.i, align 4
  %dev_id.i.i = getelementptr i8, ptr %call.i.i18, i32 2692
  %hw_id.i.i = getelementptr i8, ptr %call.i.i18, i32 2688
  %fp_id.i.i = getelementptr i8, ptr %call.i.i18, i32 2696
  %call5.i.i = call i32 @prestera_hw_port_info_get(ptr noundef %add.ptr.i.i.i, ptr noundef %dev_id.i.i, ptr noundef %hw_id.i.i, ptr noundef %fp_id.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end10.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.14, i32 noundef %port_idx.0105.i) #18
  br label %err_port_info_get.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %call11.i.i = call i32 @prestera_devlink_port_register(ptr noundef %add.ptr.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.err_port_info_get.i.i_crit_edge

if.end10.i.i.err_port_info_get.i.i_crit_edge:     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_port_info_get.i.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 23
  %51 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features.i.i, align 16
  %or.i.i = or i64 %52, 562949953429504
  store i64 %or.i.i, ptr %features.i.i, align 16
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 16
  %53 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @prestera_netdev_ops, ptr %netdev_ops.i.i, align 8
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 44
  %54 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @prestera_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  call void @netif_carrier_off(ptr noundef nonnull %call.i.i18) #14
  %55 = ptrtoint ptr %mtu_max.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mtu_max.i.i, align 4
  %57 = call i32 @llvm.umin.i32(i32 %56, i32 1536) #14
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 20
  %58 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %mtu.i.i, align 4
  %59 = ptrtoint ptr %mtu_min.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mtu_min.i.i, align 4
  %min_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 30
  %61 = ptrtoint ptr %min_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %min_mtu.i.i, align 8
  %62 = ptrtoint ptr %mtu_max.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mtu_max.i.i, align 4
  %max_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 31
  %64 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_mtu.i.i, align 4
  %call17.i.i = call i32 @prestera_hw_port_mtu_set(ptr noundef %add.ptr.i.i.i, i32 noundef %57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end26.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %mtu.i.i.le = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 20
  %65 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %mtu.i.i.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mtu.i.i.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.17, i32 noundef %port_idx.0105.i, i32 noundef %70) #18
  br label %err_port_init.i.i

if.end26.i.i:                                     ; preds = %if.end14.i.i
  %71 = ptrtoint ptr %fp_id.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fp_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %72)
  %cmp28.i.i = icmp ugt i16 %72, 254
  br i1 %cmp28.i.i, label %if.end26.i.i.err_port_init.i.i_crit_edge, label %if.end31.i.i

if.end26.i.i.err_port_init.i.i_crit_edge:         ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_port_init.i.i

if.end31.i.i:                                     ; preds = %if.end26.i.i
  %73 = ptrtoint ptr %base_mac.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %base_mac.i.i, align 1
  %conv.i.i.i.i = zext i8 %74 to i64
  %75 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.1.i.i.i.i, align 1
  %conv.1.i.i.i.i = zext i8 %76 to i64
  %77 = shl nuw nsw i64 %conv.i.i.i.i, 16
  %78 = shl nuw nsw i64 %conv.1.i.i.i.i, 8
  %shl.2.i.i.i.i = or i64 %78, %77
  %79 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.2.i.i.i.i, align 1
  %conv.2.i.i.i.i = zext i8 %80 to i64
  %or.2.i.i.i.i = or i64 %shl.2.i.i.i.i, %conv.2.i.i.i.i
  %81 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.3.i.i.i.i, align 1
  %conv.3.i.i.i.i = zext i8 %82 to i64
  %83 = ptrtoint ptr %arrayidx.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.4.i.i.i.i, align 1
  %conv.4.i.i.i.i = zext i8 %84 to i64
  %85 = shl nuw nsw i64 %or.2.i.i.i.i, 24
  %86 = shl nuw nsw i64 %conv.3.i.i.i.i, 16
  %87 = shl nuw nsw i64 %conv.4.i.i.i.i, 8
  %88 = or i64 %87, %86
  %shl.5.i.i.i.i = or i64 %88, %85
  %89 = ptrtoint ptr %arrayidx.5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.5.i.i.i.i, align 1
  %conv.5.i.i.i.i = zext i8 %90 to i64
  %or.5.i.i.i.i = or i64 %shl.5.i.i.i.i, %conv.5.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i) #14
  %conv.i.i.i = zext i16 %72 to i64
  %add.i.i.i = add i64 %or.5.i.i.i.i, %conv.i.i.i
  %conv.i3.i.i.i = trunc i64 %add.i.i.i to i8
  %91 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.i3.i.i.i, ptr %39, align 1
  %shr.i.i.i.i = lshr i64 %add.i.i.i, 8
  %conv.1.i4.i.i.i = trunc i64 %shr.i.i.i.i to i8
  %92 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv.1.i4.i.i.i, ptr %38, align 1
  %shr.1.i.i.i.i = lshr i64 %add.i.i.i, 16
  %conv.2.i6.i.i.i = trunc i64 %shr.1.i.i.i.i to i8
  %93 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.2.i6.i.i.i, ptr %37, align 1
  %shr.2.i.i.i.i = lshr i64 %add.i.i.i, 24
  %conv.3.i8.i.i.i = trunc i64 %shr.2.i.i.i.i to i8
  %94 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.3.i8.i.i.i, ptr %36, align 1
  %shr.3.i.i.i.i = lshr i64 %add.i.i.i, 32
  %conv.4.i10.i.i.i = trunc i64 %shr.3.i.i.i.i to i8
  %95 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv.4.i10.i.i.i, ptr %35, align 1
  %shr.4.i.i.i.i = lshr i64 %add.i.i.i, 40
  %conv.5.i12.i.i.i = trunc i64 %shr.4.i.i.i.i to i8
  %96 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.5.i12.i.i.i, ptr %addr.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call.i.i18, i32 noundef 0, ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i) #14
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i18, i32 0, i32 86
  %97 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_addr.i.i, align 64
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(5) %98, ptr noundef dereferenceable(5) %base_mac.i.i, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool37.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end31.i.i.if.end46.i.i_crit_edge, label %do.end41.i.i

if.end31.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i.i

do.end41.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.20, i32 noundef %port_idx.0105.i) #18
  call void @dev_addr_mod(ptr noundef nonnull %call.i.i18, i32 noundef 0, ptr noundef %base_mac.i.i, i32 noundef 5) #14
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %do.end41.i.i, %if.end31.i.i.if.end46.i.i_crit_edge
  %103 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_addr.i.i, align 64
  %call48.i.i = call i32 @prestera_hw_port_mac_set(ptr noundef %add.ptr.i.i.i, ptr noundef %104) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end56.i.i, label %do.end53.i.i

do.end53.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %105 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.24, i32 noundef %port_idx.0105.i) #18
  br label %err_port_init.i.i

if.end56.i.i:                                     ; preds = %if.end46.i.i
  %caps.i.i = getelementptr i8, ptr %call.i.i18, i32 2720
  %call57.i.i = call i32 @prestera_hw_port_cap_get(ptr noundef %add.ptr.i.i.i, ptr noundef %caps.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end65.i.i, label %do.end62.i.i

do.end62.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.27, i32 noundef %port_idx.0105.i) #18
  br label %err_port_init.i.i

if.end65.i.i:                                     ; preds = %if.end56.i.i
  %113 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %caps.i.i, align 8
  %adver_link_modes.i.i = getelementptr i8, ptr %call.i.i18, i32 2704
  %115 = ptrtoint ptr %adver_link_modes.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %adver_link_modes.i.i, align 8
  %adver_fec.i.i = getelementptr i8, ptr %call.i.i18, i32 2712
  %116 = ptrtoint ptr %adver_fec.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %adver_fec.i.i, align 8
  %autoneg.i.i = getelementptr i8, ptr %call.i.i18, i32 2700
  %117 = ptrtoint ptr %autoneg.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %autoneg.i.i, align 4
  %transceiver.i.i = getelementptr i8, ptr %call.i.i18, i32 2730
  %118 = ptrtoint ptr %transceiver.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %transceiver.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp69.not.i.i = icmp eq i8 %119, 1
  %not.cmp69.not.i.i = xor i1 %cmp69.not.i.i, true
  %.231.i.i = select i1 %cmp69.not.i.i, i32 12, i32 0
  %call.i.i.i21 = call i32 @prestera_hw_port_mac_mode_set(ptr noundef %add.ptr.i.i.i, i1 noundef zeroext %not.cmp69.not.i.i, i32 noundef %.231.i.i, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext -1, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i21)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i21, 0
  br i1 %tobool1.not.i.i.i, label %if.end83.i.i, label %do.end80.i.i

do.end80.i.i:                                     ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.30, i32 noundef %port_idx.0105.i) #18
  br label %err_port_init.i.i

if.end83.i.i:                                     ; preds = %if.end65.i.i
  %.230.i.i = zext i1 %not.cmp69.not.i.i to i8
  %cfg_mac.i.i.i = getelementptr i8, ptr %call.i.i18, i32 3096
  %124 = ptrtoint ptr %cfg_mac.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.231.i.i, ptr %cfg_mac.i.i.i, align 8
  %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx.i.i = getelementptr i8, ptr %call.i.i18, i32 3100
  %125 = ptrtoint ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx.i.i, align 4
  %cfg_mac.sroa.9.0.cfg_mac.i.sroa_idx.i.i = getelementptr i8, ptr %call.i.i18, i32 3104
  %126 = ptrtoint ptr %cfg_mac.sroa.9.0.cfg_mac.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %.230.i.i, ptr %cfg_mac.sroa.9.0.cfg_mac.i.sroa_idx.i.i, align 8
  %cfg_mac.sroa.12.0.cfg_mac.i.sroa_idx.i.i = getelementptr i8, ptr %call.i.i18, i32 3105
  %127 = ptrtoint ptr %cfg_mac.sroa.12.0.cfg_mac.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %cfg_mac.sroa.12.0.cfg_mac.i.sroa_idx.i.i, align 1
  %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx.i.i = getelementptr i8, ptr %call.i.i18, i32 3106
  %128 = ptrtoint ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -1, ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx.i.i, align 2
  %cfg_mac.sroa.18.0.cfg_mac.i.sroa_idx.i.i = getelementptr i8, ptr %call.i.i18, i32 3107
  %129 = ptrtoint ptr %cfg_mac.sroa.18.0.cfg_mac.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %cfg_mac.sroa.18.0.cfg_mac.i.sroa_idx.i.i, align 1
  %130 = ptrtoint ptr %transceiver.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %transceiver.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %131)
  %cmp87.not.i.i = icmp eq i8 %131, 1
  br i1 %cmp87.not.i.i, label %if.end83.i.i.if.end106.i.i_crit_edge, label %if.then89.i.i

if.end83.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106.i.i

if.then89.i.i:                                    ; preds = %if.end83.i.i
  %mdix.i.i = getelementptr i8, ptr %call.i.i18, i32 3113
  %132 = ptrtoint ptr %mdix.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %mdix.i.i, align 1
  %admin91.i.i = getelementptr i8, ptr %call.i.i18, i32 3112
  %133 = ptrtoint ptr %admin91.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %admin91.i.i, align 4
  %call97.i.i = call i32 @prestera_hw_port_phy_mode_set(ptr noundef %add.ptr.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %tobool98.not.i.i = icmp eq i32 %call97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.then89.i.i.if.end106.i.i_crit_edge, label %do.end102.i.i

if.then89.i.i.if.end106.i.i_crit_edge:            ; preds = %if.then89.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106.i.i

do.end102.i.i:                                    ; preds = %if.then89.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.33, i32 noundef %port_idx.0105.i) #18
  br label %err_port_init.i.i

if.end106.i.i:                                    ; preds = %if.then89.i.i.if.end106.i.i_crit_edge, %if.end83.i.i.if.end106.i.i_crit_edge
  %call107.i.i = call i32 @prestera_rxtx_port_init(ptr noundef %add.ptr.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i.i)
  %tobool108.not.i.i = icmp eq i32 %call107.i.i, 0
  br i1 %tobool108.not.i.i, label %do.body112.i.i, label %if.end106.i.i.err_port_init.i.i_crit_edge

if.end106.i.i.err_port_init.i.i_crit_edge:        ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_port_init.i.i

do.body112.i.i:                                   ; preds = %if.end106.i.i
  %caching_dw.i.i = getelementptr i8, ptr %call.i.i18, i32 2992
  call void @__init_work(ptr noundef %caching_dw.i.i, i32 noundef 0) #14
  %138 = ptrtoint ptr %caching_dw.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -64, ptr %caching_dw.i.i, align 8
  %lockdep_map.i.i = getelementptr i8, ptr %call.i.i18, i32 3008
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @prestera_port_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry122.i.i = getelementptr i8, ptr %call.i.i18, i32 2996
  %139 = ptrtoint ptr %entry122.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %entry122.i.i, ptr %entry122.i.i, align 4
  %prev.i232.i.i = getelementptr i8, ptr %call.i.i18, i32 3000
  %140 = ptrtoint ptr %prev.i232.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %entry122.i.i, ptr %prev.i232.i.i, align 4
  %func.i.i = getelementptr i8, ptr %call.i.i18, i32 3004
  %141 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @prestera_port_stats_update, ptr %func.i.i, align 4
  %timer.i.i = getelementptr i8, ptr %call.i.i18, i32 3036
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @prestera_port_create.__key.36) #14
  %142 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sw4.i.i, align 4
  %port_list_lock.i.i.i = getelementptr inbounds %struct.prestera_switch, ptr %143, i32 0, i32 10
  call void @_raw_write_lock(ptr noundef %port_list_lock.i.i.i) #14
  %list.i.i.i = getelementptr i8, ptr %call.i.i18, i32 2736
  %144 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sw4.i.i, align 4
  %port_list.i.i.i = getelementptr inbounds %struct.prestera_switch, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %port_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %port_list.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %port_list.i.i.i, ptr noundef %147) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.body112.i.i.prestera_port_list_add.exit.i.i_crit_edge

do.body112.i.i.prestera_port_list_add.exit.i.i_crit_edge: ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_port_list_add.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %list.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %149 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %147, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %call.i.i18, i32 2740
  %150 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %port_list.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %151 = ptrtoint ptr %port_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %list.i.i.i, ptr %port_list.i.i.i, align 4
  br label %prestera_port_list_add.exit.i.i

prestera_port_list_add.exit.i.i:                  ; preds = %if.end.i.i.i.i.i, %do.body112.i.i.prestera_port_list_add.exit.i.i_crit_edge
  %152 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sw4.i.i, align 4
  %port_list_lock3.i.i.i = getelementptr inbounds %struct.prestera_switch, ptr %153, i32 0, i32 10
  call void @_raw_write_unlock(ptr noundef %port_list_lock3.i.i.i) #14
  %call135.i.i = call i32 @register_netdev(ptr noundef nonnull %call.i.i18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i.i)
  %tobool136.not.i.i = icmp eq i32 %call135.i.i, 0
  br i1 %tobool136.not.i.i, label %for.inc.i, label %err_register_netdev.i.i

err_register_netdev.i.i:                          ; preds = %prestera_port_list_add.exit.i.i
  %154 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sw4.i.i, align 4
  %port_list_lock.i.i = getelementptr inbounds %struct.prestera_switch, ptr %155, i32 0, i32 10
  call void @_raw_write_lock(ptr noundef %port_list_lock.i.i) #14
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %err_register_netdev.i.i.prestera_port_list_del.exit.i_crit_edge

err_register_netdev.i.i.prestera_port_list_del.exit.i_crit_edge: ; preds = %err_register_netdev.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_port_list_del.exit.i

if.end.i.i.i.i:                                   ; preds = %err_register_netdev.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr i8, ptr %call.i.i18, i32 2740
  %156 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i.i.i, align 4
  %158 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i31.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %prev1.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev1.i.i.i.i31.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %159, ptr %157, align 4
  br label %prestera_port_list_del.exit.i

prestera_port_list_del.exit.i:                    ; preds = %if.end.i.i.i.i, %err_register_netdev.i.i.prestera_port_list_del.exit.i_crit_edge
  %162 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i32.i = getelementptr i8, ptr %call.i.i18, i32 2740
  %163 = ptrtoint ptr %prev.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i32.i, align 4
  %164 = ptrtoint ptr %sw4.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sw4.i.i, align 4
  %port_list_lock2.i.i = getelementptr inbounds %struct.prestera_switch, ptr %165, i32 0, i32 10
  call void @_raw_write_unlock(ptr noundef %port_list_lock2.i.i) #14
  br label %err_port_init.i.i

err_port_init.i.i:                                ; preds = %prestera_port_list_del.exit.i, %if.end106.i.i.err_port_init.i.i_crit_edge, %do.end102.i.i, %do.end80.i.i, %do.end62.i.i, %do.end53.i.i, %if.end26.i.i.err_port_init.i.i_crit_edge, %do.end22.i.i
  %err.0.i.i = phi i32 [ %call17.i.i, %do.end22.i.i ], [ %call48.i.i, %do.end53.i.i ], [ %call57.i.i, %do.end62.i.i ], [ %call.i.i.i21, %do.end80.i.i ], [ %call97.i.i, %do.end102.i.i ], [ %call135.i.i, %prestera_port_list_del.exit.i ], [ %call107.i.i, %if.end106.i.i.err_port_init.i.i_crit_edge ], [ -22, %if.end26.i.i.err_port_init.i.i_crit_edge ]
  call void @prestera_devlink_port_unregister(ptr noundef %add.ptr.i.i.i) #14
  br label %err_port_info_get.i.i

err_port_info_get.i.i:                            ; preds = %err_port_init.i.i, %if.end10.i.i.err_port_info_get.i.i_crit_edge, %do.end.i.i
  %err.1.i.i = phi i32 [ %call5.i.i, %do.end.i.i ], [ %err.0.i.i, %err_port_init.i.i ], [ %call11.i.i, %if.end10.i.i.err_port_info_get.i.i_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call.i.i18) #14
  br label %err_port_create.i

for.inc.i:                                        ; preds = %prestera_port_list_add.exit.i.i
  call void @prestera_devlink_port_set(ptr noundef %add.ptr.i.i.i) #14
  %inc.i = add nuw i32 %port_idx.0105.i, 1
  %166 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %port_count.i, align 4
  %cmp.i22 = icmp ult i32 %inc.i, %167
  br i1 %cmp.i22, label %for.inc.i.for.body.i20_crit_edge, label %for.inc.i.prestera_switch_init.exit.thread48_crit_edge

for.inc.i.prestera_switch_init.exit.thread48_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_init.exit.thread48

for.inc.i.for.body.i20_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i20

err_port_create.i:                                ; preds = %err_port_info_get.i.i, %for.body.i20.err_port_create.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %err.1.i.i, %err_port_info_get.i.i ], [ -12, %for.body.i20.err_port_create.i_crit_edge ]
  %168 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %port_list.i, align 4
  %cmp9.not107.i = icmp eq ptr %169, %port_list.i
  br i1 %cmp9.not107.i, label %err_port_create.i.err_ports_create.i_crit_edge, label %err_port_create.i.for.body10.i_crit_edge

err_port_create.i.for.body10.i_crit_edge:         ; preds = %err_port_create.i
  br label %for.body10.i

err_port_create.i.err_ports_create.i_crit_edge:   ; preds = %err_port_create.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ports_create.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %err_port_create.i.for.body10.i_crit_edge
  %.pn.in108.i = phi ptr [ %.pn.i, %for.body10.i.for.body10.i_crit_edge ], [ %169, %err_port_create.i.for.body10.i_crit_edge ]
  %port.0.i = getelementptr i8, ptr %.pn.in108.i, i32 -432
  %170 = ptrtoint ptr %.pn.in108.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pn.i = load ptr, ptr %.pn.in108.i, align 8
  call fastcc void @prestera_port_destroy(ptr noundef %port.0.i) #14
  %cmp9.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp9.not.i, label %prestera_create_ports.exit, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10.i

prestera_create_ports.exit:                       ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph.i)
  %tobool50.not.i = icmp eq i32 %retval.0.i.ph.i, 0
  br i1 %tobool50.not.i, label %prestera_create_ports.exit.prestera_switch_init.exit.thread48_crit_edge, label %prestera_create_ports.exit.err_ports_create.i_crit_edge

prestera_create_ports.exit.err_ports_create.i_crit_edge: ; preds = %prestera_create_ports.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ports_create.i

prestera_create_ports.exit.prestera_switch_init.exit.thread48_crit_edge: ; preds = %prestera_create_ports.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_init.exit.thread48

prestera_switch_init.exit.thread48:               ; preds = %prestera_create_ports.exit.prestera_switch_init.exit.thread48_crit_edge, %for.inc.i.prestera_switch_init.exit.thread48_crit_edge, %if.end48.i.prestera_switch_init.exit.thread48_crit_edge
  call void @prestera_devlink_register(ptr noundef %call) #14
  br label %cleanup

err_ports_create.i:                               ; preds = %prestera_create_ports.exit.err_ports_create.i_crit_edge, %err_port_create.i.err_ports_create.i_crit_edge
  %171 = ptrtoint ptr %lag_max.i25 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %lag_max.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp28.not.i = icmp eq i8 %172, 0
  br i1 %cmp28.not.i, label %err_ports_create.i.prestera_lag_fini.exit_crit_edge, label %for.body.lr.ph.i

err_ports_create.i.prestera_lag_fini.exit_crit_edge: ; preds = %err_ports_create.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_lag_fini.exit

for.body.lr.ph.i:                                 ; preds = %err_ports_create.i
  %lags.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end.i.for.body.i_crit_edge ]
  %173 = ptrtoint ptr %lags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lags.i, align 4
  %member_count.i = getelementptr %struct.prestera_lag, ptr %174, i32 %indvars.iv.i, i32 2
  %175 = ptrtoint ptr %member_count.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %member_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool.not.i14 = icmp eq i16 %176, 0
  br i1 %tobool.not.i14, label %for.body.i.if.end.i_crit_edge, label %do.end.i15, !prof !96

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i15:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 700, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i15, %for.body.i.if.end.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %177 = ptrtoint ptr %lag_max.i25 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %lag_max.i25, align 1
  %179 = zext i8 %178 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %179
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.prestera_lag_fini.exit_crit_edge

if.end.i.prestera_lag_fini.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_lag_fini.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

prestera_lag_fini.exit:                           ; preds = %if.end.i.prestera_lag_fini.exit_crit_edge, %err_ports_create.i.prestera_lag_fini.exit_crit_edge
  %lags22.i = getelementptr inbounds %struct.prestera_switch, ptr %call, i32 0, i32 16
  %180 = ptrtoint ptr %lags22.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lags22.i, align 4
  call void @kfree(ptr noundef %181) #14
  br label %err_lag_init.i

err_lag_init.i:                                   ; preds = %prestera_lag_fini.exit, %if.end44.i.err_lag_init.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i.ph.i, %prestera_lag_fini.exit ], [ -12, %if.end44.i.err_lag_init.i_crit_edge ]
  call void @prestera_devlink_traps_unregister(ptr noundef %call) #14
  br label %err_dl_register.i

err_dl_register.i:                                ; preds = %err_lag_init.i, %if.end40.i.err_dl_register.i_crit_edge
  %err.1.i = phi i32 [ %call41.i, %if.end40.i.err_dl_register.i_crit_edge ], [ %err.0.i, %err_lag_init.i ]
  call void @prestera_span_fini(ptr noundef %call) #14
  br label %err_span_init.i

err_span_init.i:                                  ; preds = %err_dl_register.i, %if.end36.i.err_span_init.i_crit_edge
  %err.2.i = phi i32 [ %call37.i, %if.end36.i.err_span_init.i_crit_edge ], [ %err.1.i, %err_dl_register.i ]
  call void @prestera_acl_fini(ptr noundef %call) #14
  br label %err_acl_init.i

err_acl_init.i:                                   ; preds = %err_span_init.i, %if.end32.i.err_acl_init.i_crit_edge
  %err.3.i = phi i32 [ %call33.i, %if.end32.i.err_acl_init.i_crit_edge ], [ %err.2.i, %err_span_init.i ]
  call void @prestera_counter_fini(ptr noundef %call) #14
  br label %err_counter_init.i

err_counter_init.i:                               ; preds = %err_acl_init.i, %if.end28.i.err_counter_init.i_crit_edge
  %err.4.i = phi i32 [ %call29.i, %if.end28.i.err_counter_init.i_crit_edge ], [ %err.3.i, %err_acl_init.i ]
  call void @prestera_hw_event_handler_unregister(ptr noundef %call, i32 noundef 1, ptr noundef nonnull @prestera_port_handle_event) #14
  br label %err_handlers_register.i

err_handlers_register.i:                          ; preds = %err_counter_init.i, %if.end24.i.err_handlers_register.i_crit_edge
  %err.5.i = phi i32 [ %call.i97.i, %if.end24.i.err_handlers_register.i_crit_edge ], [ %err.4.i, %err_counter_init.i ]
  call void @prestera_rxtx_switch_fini(ptr noundef %call) #14
  br label %err_rxtx_register.i

err_rxtx_register.i:                              ; preds = %err_handlers_register.i, %if.end20.i.err_rxtx_register.i_crit_edge
  %err.6.i = phi i32 [ %call21.i, %if.end20.i.err_rxtx_register.i_crit_edge ], [ %err.5.i, %err_handlers_register.i ]
  call void @prestera_switchdev_fini(ptr noundef %call) #14
  br label %err_swdev_register.i

err_swdev_register.i:                             ; preds = %err_rxtx_register.i, %if.end16.i.err_swdev_register.i_crit_edge
  %err.7.i = phi i32 [ %call17.i, %if.end16.i.err_swdev_register.i_crit_edge ], [ %err.6.i, %err_rxtx_register.i ]
  call void @prestera_router_fini(ptr noundef %call) #14
  br label %prestera_switch_init.exit

prestera_switch_init.exit:                        ; preds = %err_swdev_register.i, %if.end12.i.prestera_switch_init.exit_crit_edge
  %err.8.i = phi i32 [ %call13.i, %if.end12.i.prestera_switch_init.exit_crit_edge ], [ %err.7.i, %err_swdev_register.i ]
  %call.i99.i = call i32 @unregister_netdevice_notifier(ptr noundef %netdev_nb.i.i) #14
  call void @prestera_hw_switch_fini(ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.8.i)
  %tobool3.not = icmp eq i32 %err.8.i, 0
  br i1 %tobool3.not, label %prestera_switch_init.exit.cleanup_crit_edge, label %prestera_switch_init.exit.if.then4_crit_edge

prestera_switch_init.exit.if.then4_crit_edge:     ; preds = %prestera_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

prestera_switch_init.exit.cleanup_crit_edge:      ; preds = %prestera_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %prestera_switch_init.exit.if.then4_crit_edge, %if.end8.i.if.then4_crit_edge, %prestera_switch_set_base_mac_addr.exit.i.if.then4_crit_edge, %do.end.i
  %retval.0.i47 = phi i32 [ %err.8.i, %prestera_switch_init.exit.if.then4_crit_edge ], [ %call.i96.i, %if.end8.i.if.then4_crit_edge ], [ %call8.i.i, %prestera_switch_set_base_mac_addr.exit.i.if.then4_crit_edge ], [ %call.i, %do.end.i ]
  call void @prestera_devlink_free(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %prestera_switch_init.exit.cleanup_crit_edge, %prestera_switch_init.exit.thread48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i47, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %prestera_switch_init.exit.cleanup_crit_edge ], [ 0, %prestera_switch_init.exit.thread48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_devlink_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_device_unregister(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.prestera_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @prestera_devlink_unregister(ptr noundef %1) #14
  %port_list.i.i = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_list.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %3, %port_list.i.i
  br i1 %cmp.not18.i.i, label %entry.prestera_destroy_ports.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.prestera_destroy_ports.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_destroy_ports.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn.in19.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %3, %entry.for.body.i.i_crit_edge ]
  %port.0.i.i = getelementptr i8, ptr %.pn.in19.i.i, i32 -432
  %4 = ptrtoint ptr %.pn.in19.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in19.i.i, align 8
  tail call fastcc void @prestera_port_destroy(ptr noundef %port.0.i.i) #14
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %port_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.prestera_destroy_ports.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.prestera_destroy_ports.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_destroy_ports.exit.i

prestera_destroy_ports.exit.i:                    ; preds = %for.body.i.i.prestera_destroy_ports.exit.i_crit_edge, %entry.prestera_destroy_ports.exit.i_crit_edge
  %lag_max.i.i = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %lag_max.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lag_max.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp28.not.i.i = icmp eq i8 %6, 0
  br i1 %cmp28.not.i.i, label %prestera_destroy_ports.exit.i.prestera_switch_fini.exit_crit_edge, label %for.body.lr.ph.i.i

prestera_destroy_ports.exit.i.prestera_switch_fini.exit_crit_edge: ; preds = %prestera_destroy_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_fini.exit

for.body.lr.ph.i.i:                               ; preds = %prestera_destroy_ports.exit.i
  %lags.i.i = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 16
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %if.end.i.i.for.body.i13.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end.i.i.for.body.i13.i_crit_edge ]
  %7 = ptrtoint ptr %lags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lags.i.i, align 4
  %member_count.i.i = getelementptr %struct.prestera_lag, ptr %8, i32 %indvars.iv.i.i, i32 2
  %9 = ptrtoint ptr %member_count.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %member_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %for.body.i13.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !96

for.body.i13.i.if.end.i.i_crit_edge:              ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 700, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.body.i13.i.if.end.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %11 = ptrtoint ptr %lag_max.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lag_max.i.i, align 1
  %13 = zext i8 %12 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %13
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i13.i_crit_edge, label %if.end.i.i.prestera_switch_fini.exit_crit_edge

if.end.i.i.prestera_switch_fini.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_switch_fini.exit

if.end.i.i.for.body.i13.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i13.i

prestera_switch_fini.exit:                        ; preds = %if.end.i.i.prestera_switch_fini.exit_crit_edge, %prestera_destroy_ports.exit.i.prestera_switch_fini.exit_crit_edge
  %lags22.i.i = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %lags22.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lags22.i.i, align 4
  tail call void @kfree(ptr noundef %15) #14
  tail call void @prestera_devlink_traps_unregister(ptr noundef %1) #14
  tail call void @prestera_span_fini(ptr noundef %1) #14
  tail call void @prestera_acl_fini(ptr noundef %1) #14
  tail call void @prestera_counter_fini(ptr noundef %1) #14
  tail call void @prestera_hw_event_handler_unregister(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @prestera_port_handle_event) #14
  tail call void @prestera_rxtx_switch_fini(ptr noundef %1) #14
  tail call void @prestera_switchdev_fini(ptr noundef %1) #14
  tail call void @prestera_router_fini(ptr noundef %1) #14
  %netdev_nb.i.i = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 6
  %call.i.i = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdev_nb.i.i) #14
  tail call void @prestera_hw_switch_fini(ptr noundef %1) #14
  tail call void @prestera_devlink_free(ptr noundef %1) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @prestera_module_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @prestera_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_module_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0) #14
  store ptr %call, ptr @prestera_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %0 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cfg_mac.i = getelementptr i8, ptr %dev, i32 3096
  %2 = ptrtoint ptr %cfg_mac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cfg_mac.sroa.0.0.copyload = load i32, ptr %cfg_mac.i, align 8
  %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3100
  %3 = ptrtoint ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cfg_mac.sroa.6.0.copyload = load i32, ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx, align 4
  %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3105
  %4 = ptrtoint ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %cfg_mac.sroa.11.0.copyload = load i8, ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx, align 1
  %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3106
  %5 = ptrtoint ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %cfg_mac.sroa.13.0.copyload = load i8, ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx, align 2
  %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3107
  %6 = ptrtoint ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cfg_mac.sroa.15.0.copyload = load i8, ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx, align 1
  %call.i = tail call i32 @prestera_hw_port_mac_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext true, i32 noundef %cfg_mac.sroa.0.0.copyload, i8 noundef zeroext %cfg_mac.sroa.11.0.copyload, i32 noundef %cfg_mac.sroa.6.0.copyload, i8 noundef zeroext %cfg_mac.sroa.13.0.copyload, i8 noundef zeroext %cfg_mac.sroa.15.0.copyload) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3104
  %7 = ptrtoint ptr %cfg_mac.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cfg_mac.sroa.0.0.copyload, ptr %cfg_mac.i, align 8
  %8 = ptrtoint ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cfg_mac.sroa.6.0.copyload, ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx, align 4
  %9 = ptrtoint ptr %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx, align 8
  %10 = ptrtoint ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cfg_mac.sroa.11.0.copyload, ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx, align 1
  %11 = ptrtoint ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cfg_mac.sroa.13.0.copyload, ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx, align 2
  %12 = ptrtoint ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cfg_mac.sroa.15.0.copyload, ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx, align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_phy = getelementptr i8, ptr %dev, i32 3108
  %admin5 = getelementptr i8, ptr %dev, i32 3112
  %13 = ptrtoint ptr %admin5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %admin5, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2700
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autoneg, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6 = icmp ne i8 %15, 0
  %16 = ptrtoint ptr %cfg_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_phy, align 4
  %adver_link_modes = getelementptr i8, ptr %dev, i32 2704
  %18 = ptrtoint ptr %adver_link_modes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %adver_link_modes, align 8
  %mdix = getelementptr i8, ptr %dev, i32 3113
  %20 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mdix, align 1
  %call9 = tail call i32 @prestera_hw_port_phy_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext %tobool6, i32 noundef %17, i64 noundef %19, i8 noundef zeroext %21) #14
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end.i, %if.then.if.end10_crit_edge
  %err.0 = phi i32 [ %call9, %if.else ], [ %call.i, %if.then.if.end10_crit_edge ], [ 0, %if.end.i ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cfg_mac.i = getelementptr i8, ptr %dev, i32 3096
  %4 = ptrtoint ptr %cfg_mac.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cfg_mac.sroa.0.0.copyload = load i32, ptr %cfg_mac.i, align 8
  %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3100
  %5 = ptrtoint ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cfg_mac.sroa.6.0.copyload = load i32, ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx, align 4
  %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3105
  %6 = ptrtoint ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cfg_mac.sroa.11.0.copyload = load i8, ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx, align 1
  %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3106
  %7 = ptrtoint ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cfg_mac.sroa.13.0.copyload = load i8, ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx, align 2
  %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3107
  %8 = ptrtoint ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cfg_mac.sroa.15.0.copyload = load i8, ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx, align 1
  %call.i = tail call i32 @prestera_hw_port_mac_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext false, i32 noundef %cfg_mac.sroa.0.0.copyload, i8 noundef zeroext %cfg_mac.sroa.11.0.copyload, i32 noundef %cfg_mac.sroa.6.0.copyload, i8 noundef zeroext %cfg_mac.sroa.13.0.copyload, i8 noundef zeroext %cfg_mac.sroa.15.0.copyload) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx = getelementptr i8, ptr %dev, i32 3104
  %9 = ptrtoint ptr %cfg_mac.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cfg_mac.sroa.0.0.copyload, ptr %cfg_mac.i, align 8
  %10 = ptrtoint ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cfg_mac.sroa.6.0.copyload, ptr %cfg_mac.sroa.6.0.cfg_mac.i.sroa_idx, align 4
  %11 = ptrtoint ptr %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cfg_mac.sroa.8.0.cfg_mac.i.sroa_idx, align 8
  %12 = ptrtoint ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cfg_mac.sroa.11.0.copyload, ptr %cfg_mac.sroa.11.0.cfg_mac.i.sroa_idx, align 1
  %13 = ptrtoint ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cfg_mac.sroa.13.0.copyload, ptr %cfg_mac.sroa.13.0.cfg_mac.i.sroa_idx, align 2
  %14 = ptrtoint ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cfg_mac.sroa.15.0.copyload, ptr %cfg_mac.sroa.15.0.cfg_mac.i.sroa_idx, align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_phy = getelementptr i8, ptr %dev, i32 3108
  %admin5 = getelementptr i8, ptr %dev, i32 3112
  %15 = ptrtoint ptr %admin5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %admin5, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2700
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoneg, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6 = icmp ne i8 %17, 0
  %18 = ptrtoint ptr %cfg_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_phy, align 4
  %adver_link_modes = getelementptr i8, ptr %dev, i32 2704
  %20 = ptrtoint ptr %adver_link_modes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %adver_link_modes, align 8
  %mdix = getelementptr i8, ptr %dev, i32 3113
  %22 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mdix, align 1
  %call9 = tail call i32 @prestera_hw_port_phy_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext %tobool6, i32 noundef %19, i64 noundef %21, i8 noundef zeroext %23) #14
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end.i, %if.then.if.end10_crit_edge
  %err.0 = phi i32 [ %call9, %if.else ], [ 0, %if.then.if.end10_crit_edge ], [ 0, %if.end.i ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @prestera_rxtx_xmit(ptr noundef %add.ptr.i, ptr noundef %skb) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit.i:                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %4 to i32
  %or.i.i.i = or i32 %1, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.cleanup_crit_edge, label %if.end.i

is_valid_ether_addr.exit.i.cleanup_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  %sw.i = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.i, align 4
  %base_mac.i = getelementptr inbounds %struct.prestera_switch, ptr %6, i32 0, i32 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(5) %base_mac.i, ptr noundef dereferenceable(5) %sa_data, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call4 = tail call i32 @prestera_hw_port_mac_set(ptr noundef %add.ptr.i, ptr noundef %sa_data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %is_valid_ether_addr.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call4, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_change_mtu(ptr noundef %dev, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @prestera_hw_port_mtu_set(ptr noundef %add.ptr.i, i32 noundef %mtu) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mtu, ptr %mtu2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prestera_port_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_hw_stats = getelementptr i8, ptr %dev, i32 2752
  %broadcast_frames_received = getelementptr i8, ptr %dev, i32 2776
  %0 = ptrtoint ptr %broadcast_frames_received to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %broadcast_frames_received, align 8
  %multicast_frames_received = getelementptr i8, ptr %dev, i32 2784
  %2 = ptrtoint ptr %multicast_frames_received to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %multicast_frames_received, align 8
  %add = add i64 %3, %1
  %unicast_frames_received = getelementptr i8, ptr %dev, i32 2952
  %4 = ptrtoint ptr %unicast_frames_received to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %unicast_frames_received, align 8
  %add2 = add i64 %add, %5
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add2, ptr %stats, align 8
  %broadcast_frames_sent = getelementptr i8, ptr %dev, i32 2856
  %7 = ptrtoint ptr %broadcast_frames_sent to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %broadcast_frames_sent, align 8
  %multicast_frames_sent = getelementptr i8, ptr %dev, i32 2848
  %9 = ptrtoint ptr %multicast_frames_sent to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %multicast_frames_sent, align 8
  %add3 = add i64 %10, %8
  %unicast_frames_sent = getelementptr i8, ptr %dev, i32 2960
  %11 = ptrtoint ptr %unicast_frames_sent to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %unicast_frames_sent, align 8
  %add4 = add i64 %add3, %12
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add4, ptr %tx_packets, align 8
  %14 = ptrtoint ptr %cached_hw_stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cached_hw_stats, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %16 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rx_bytes, align 8
  %good_octets_sent = getelementptr i8, ptr %dev, i32 2984
  %17 = ptrtoint ptr %good_octets_sent to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %good_octets_sent, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tx_bytes, align 8
  %rx_error_frame_received = getelementptr i8, ptr %dev, i32 2920
  %20 = ptrtoint ptr %rx_error_frame_received to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_error_frame_received, align 8
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %22 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_errors, align 8
  %mac_trans_error = getelementptr i8, ptr %dev, i32 2768
  %23 = ptrtoint ptr %mac_trans_error to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mac_trans_error, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tx_errors, align 8
  %buffer_overrun = getelementptr i8, ptr %dev, i32 2880
  %26 = ptrtoint ptr %buffer_overrun to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %buffer_overrun, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %rx_dropped, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %29 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %tx_dropped, align 8
  %30 = load i64, ptr %multicast_frames_received, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %31 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %multicast, align 8
  %excessive_collision = getelementptr i8, ptr %dev, i32 2840
  %32 = ptrtoint ptr %excessive_collision to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %excessive_collision, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %34 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %collisions, align 8
  %bad_crc = getelementptr i8, ptr %dev, i32 2928
  %35 = ptrtoint ptr %bad_crc to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bad_crc, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %37 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %rx_crc_errors, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @prestera_flow_block_setup(ptr noundef %add.ptr.i, ptr noundef %type_data) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_devlink_get_port(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_rxtx_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_mac_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_mtu_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_flow_block_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_switch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_router_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_switchdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_rxtx_switch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_counter_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_span_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_devlink_traps_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_traps_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_span_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_acl_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_counter_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_rxtx_switch_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_switchdev_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_router_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_hw_switch_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_switch_mac_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_netdev_event_handler(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %3, @prestera_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call fastcc i32 @prestera_netdev_port_event(ptr noundef %1, i32 noundef %event, ptr noundef %ptr)
  br label %if.end6

if.else:                                          ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.else.netif_is_lag_master.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.else
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then4_crit_edge

netif_is_bond_master.exit.i.if.then4_crit_edge:   ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.else.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.if.end6.thread_crit_edge, label %netif_is_lag_master.exit.if.then4_crit_edge

netif_is_lag_master.exit.if.then4_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

netif_is_lag_master.exit.if.end6.thread_crit_edge: ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.thread

if.then4:                                         ; preds = %netif_is_lag_master.exit.if.then4_crit_edge, %netif_is_bond_master.exit.i.if.then4_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #14
  %lower.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lower.i, align 8
  %12 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #14
  %tobool.not15.i = icmp eq ptr %call.i, null
  br i1 %tobool.not15.i, label %if.then4.prestera_netdevice_lag_event.exit_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.prestera_netdevice_lag_event.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_netdevice_lag_event.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %dev.016.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then4.for.body.i_crit_edge ]
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev.016.i, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %14, @prestera_netdev_ops
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call2.i = call fastcc i32 @prestera_netdev_port_event(ptr noundef nonnull %dev.016.i, i32 noundef %event, ptr noundef %ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.prestera_netdevice_lag_event.exit_crit_edge

if.then.i.prestera_netdevice_lag_event.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_netdevice_lag_event.exit

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call6.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #14
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %for.inc.i.prestera_netdevice_lag_event.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.prestera_netdevice_lag_event.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_netdevice_lag_event.exit

prestera_netdevice_lag_event.exit:                ; preds = %for.inc.i.prestera_netdevice_lag_event.exit_crit_edge, %if.then.i.prestera_netdevice_lag_event.exit_crit_edge, %if.then4.prestera_netdevice_lag_event.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then4.prestera_netdevice_lag_event.exit_crit_edge ], [ %call2.i, %if.then.i.prestera_netdevice_lag_event.exit_crit_edge ], [ 0, %for.inc.i.prestera_netdevice_lag_event.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #14
  br label %if.end6

if.end6:                                          ; preds = %prestera_netdevice_lag_event.exit, %if.then
  %err.0 = phi i32 [ %call2, %if.then ], [ %retval.0.i, %prestera_netdevice_lag_event.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i15 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i15, label %if.end6.if.end6.thread_crit_edge, label %if.end6._crit_edge

if.end6._crit_edge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %15

if.end6.if.end6.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end6.if.end6.thread_crit_edge, %netif_is_lag_master.exit.if.end6.thread_crit_edge
  br label %15

15:                                               ; preds = %if.end6.thread, %if.end6._crit_edge
  %16 = phi i32 [ 1, %if.end6.thread ], [ %or.i, %if.end6._crit_edge ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_netdev_port_event(ptr noundef %dev, i32 noundef %event, ptr nocapture noundef readonly %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 26, label %sw.bb
    i32 21, label %sw.bb54
    i32 27, label %sw.bb75
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %sw.bb
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %and1.i.i = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp ne i64 %and1.i.i, 0
  %or.cond = select i1 %tobool.not.i.i, i1 %tobool2.i.not.i, i1 false
  %and.i4.i = and i64 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i = icmp ne i64 %and.i4.i, 0
  %or.cond85 = select i1 %or.cond, i1 true, i1 %tobool.i.i
  br i1 %or.cond85, label %land.lhs.true.if.end5_crit_edge, label %do.body

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_netdev_port_event.__msg) #14
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @prestera_netdev_port_event.__msg, ptr %1, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %sw.bb.if.end5_crit_edge
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %10 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %linking, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call zeroext i1 @netdev_has_any_upper_dev(ptr noundef %4) #14
  br i1 %call9, label %do.body11, label %if.end19

do.body11:                                        ; preds = %if.end8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_netdev_port_event.__msg.11) #14
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %if.then14

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @prestera_netdev_port_event.__msg.11, ptr %1, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %flags.i.i1 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i.i1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i1, align 8
  %and.i.i2 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.not.i.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.not.i.i3, label %if.end19.netif_is_lag_master.exit12_crit_edge, label %netif_is_bond_master.exit.i7

if.end19.netif_is_lag_master.exit12_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit12

netif_is_bond_master.exit.i7:                     ; preds = %if.end19
  %15 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i, align 16
  %and1.i.i5 = and i64 %16, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i5)
  %tobool2.i.not.i6 = icmp eq i64 %and1.i.i5, 0
  br i1 %tobool2.i.not.i6, label %netif_is_bond_master.exit.i7.netif_is_lag_master.exit12_crit_edge, label %netif_is_bond_master.exit.i7.land.lhs.true21_crit_edge

netif_is_bond_master.exit.i7.land.lhs.true21_crit_edge: ; preds = %netif_is_bond_master.exit.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true21

netif_is_bond_master.exit.i7.netif_is_lag_master.exit12_crit_edge: ; preds = %netif_is_bond_master.exit.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit12

netif_is_lag_master.exit12:                       ; preds = %netif_is_bond_master.exit.i7.netif_is_lag_master.exit12_crit_edge, %if.end19.netif_is_lag_master.exit12_crit_edge
  %17 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags.i, align 16
  %and.i4.i9 = and i64 %18, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i9)
  %tobool.i.i10.not = icmp eq i64 %and.i4.i9, 0
  br i1 %tobool.i.i10.not, label %netif_is_lag_master.exit12.if.end24_crit_edge, label %netif_is_lag_master.exit12.land.lhs.true21_crit_edge

netif_is_lag_master.exit12.land.lhs.true21_crit_edge: ; preds = %netif_is_lag_master.exit12
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true21

netif_is_lag_master.exit12.if.end24_crit_edge:    ; preds = %netif_is_lag_master.exit12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true21:                                  ; preds = %netif_is_lag_master.exit12.land.lhs.true21_crit_edge, %netif_is_bond_master.exit.i7.land.lhs.true21_crit_edge
  %upper_info = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 4
  %19 = ptrtoint ptr %upper_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %upper_info, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 5
  br i1 %cmp.not.i, label %land.lhs.true21.if.end24_crit_edge, label %do.body.i

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

do.body.i:                                        ; preds = %land.lhs.true21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_lag_master_check.__msg) #14
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then1.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @prestera_lag_master_check.__msg, ptr %1, align 4
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true21.if.end24_crit_edge, %netif_is_lag_master.exit12.if.end24_crit_edge
  %24 = ptrtoint ptr %flags.i.i1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i1, align 8
  %and.i.i14 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.end24.netif_is_lag_master.exit24_crit_edge, label %netif_is_bond_master.exit.i19

if.end24.netif_is_lag_master.exit24_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit24

netif_is_bond_master.exit.i19:                    ; preds = %if.end24
  %26 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %priv_flags.i, align 16
  %and1.i.i17 = and i64 %27, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i17)
  %tobool2.i.not.i18 = icmp eq i64 %and1.i.i17, 0
  br i1 %tobool2.i.not.i18, label %netif_is_bond_master.exit.i19.netif_is_lag_master.exit24_crit_edge, label %netif_is_bond_master.exit.i19.land.lhs.true26_crit_edge

netif_is_bond_master.exit.i19.land.lhs.true26_crit_edge: ; preds = %netif_is_bond_master.exit.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

netif_is_bond_master.exit.i19.netif_is_lag_master.exit24_crit_edge: ; preds = %netif_is_bond_master.exit.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit24

netif_is_lag_master.exit24:                       ; preds = %netif_is_bond_master.exit.i19.netif_is_lag_master.exit24_crit_edge, %if.end24.netif_is_lag_master.exit24_crit_edge
  %28 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %priv_flags.i, align 16
  %and.i4.i21 = and i64 %29, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i21)
  %tobool.i.i22.not = icmp eq i64 %and.i4.i21, 0
  br i1 %tobool.i.i22.not, label %netif_is_lag_master.exit24.if.end37_crit_edge, label %netif_is_lag_master.exit24.land.lhs.true26_crit_edge

netif_is_lag_master.exit24.land.lhs.true26_crit_edge: ; preds = %netif_is_lag_master.exit24
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

netif_is_lag_master.exit24.if.end37_crit_edge:    ; preds = %netif_is_lag_master.exit24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

land.lhs.true26:                                  ; preds = %netif_is_lag_master.exit24.land.lhs.true26_crit_edge, %netif_is_bond_master.exit.i19.land.lhs.true26_crit_edge
  %call27 = tail call zeroext i1 @vlan_uses_dev(ptr noundef %dev) #14
  br i1 %call27, label %do.body29, label %land.lhs.true26.if.end37_crit_edge

land.lhs.true26.if.end37_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body29:                                        ; preds = %land.lhs.true26
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_netdev_port_event.__msg.12) #14
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %if.then32

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then32:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @prestera_netdev_port_event.__msg.12, ptr %1, align 4
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true26.if.end37_crit_edge, %netif_is_lag_master.exit24.if.end37_crit_edge
  %flags.i.i25 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i25, align 8
  %and.i.i26 = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.end37.netif_is_lag_port.exit_crit_edge, label %netif_is_bond_slave.exit.i

if.end37.netif_is_lag_port.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_port.exit

netif_is_bond_slave.exit.i:                       ; preds = %if.end37
  %priv_flags.i.i28 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %33 = ptrtoint ptr %priv_flags.i.i28 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %priv_flags.i.i28, align 16
  %and1.i.i29 = and i64 %34, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i29)
  %tobool2.i.not.i30 = icmp eq i64 %and1.i.i29, 0
  br i1 %tobool2.i.not.i30, label %netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge, label %netif_is_bond_slave.exit.i.land.lhs.true39_crit_edge

netif_is_bond_slave.exit.i.land.lhs.true39_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true39

netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_port.exit

netif_is_lag_port.exit:                           ; preds = %netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge, %if.end37.netif_is_lag_port.exit_crit_edge
  %priv_flags.i3.i31 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %35 = ptrtoint ptr %priv_flags.i3.i31 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %priv_flags.i3.i31, align 16
  %and.i4.i32 = and i64 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i32)
  %tobool.i.i33.not = icmp eq i64 %and.i4.i32, 0
  br i1 %tobool.i.i33.not, label %netif_is_lag_port.exit.cleanup_crit_edge, label %netif_is_lag_port.exit.land.lhs.true39_crit_edge

netif_is_lag_port.exit.land.lhs.true39_crit_edge: ; preds = %netif_is_lag_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true39

netif_is_lag_port.exit.cleanup_crit_edge:         ; preds = %netif_is_lag_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true39:                                  ; preds = %netif_is_lag_port.exit.land.lhs.true39_crit_edge, %netif_is_bond_slave.exit.i.land.lhs.true39_crit_edge
  %37 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %priv_flags.i, align 16
  %and.i36 = and i64 %38, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i36)
  %tobool.i37.not = icmp eq i64 %and.i36, 0
  br i1 %tobool.i37.not, label %land.lhs.true39.cleanup_crit_edge, label %land.lhs.true41

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %call42 = tail call ptr @vlan_dev_real_dev(ptr noundef %4) #14
  %flags.i.i38 = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 14
  %39 = ptrtoint ptr %flags.i.i38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i38, align 8
  %and.i.i39 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i40, label %land.lhs.true41.netif_is_lag_master.exit49_crit_edge, label %netif_is_bond_master.exit.i44

land.lhs.true41.netif_is_lag_master.exit49_crit_edge: ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit49

netif_is_bond_master.exit.i44:                    ; preds = %land.lhs.true41
  %priv_flags.i.i41 = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 15
  %41 = ptrtoint ptr %priv_flags.i.i41 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %priv_flags.i.i41, align 16
  %and1.i.i42 = and i64 %42, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i42)
  %tobool2.i.not.i43 = icmp eq i64 %and1.i.i42, 0
  br i1 %tobool2.i.not.i43, label %netif_is_bond_master.exit.i44.netif_is_lag_master.exit49_crit_edge, label %netif_is_bond_master.exit.i44.cleanup_crit_edge

netif_is_bond_master.exit.i44.cleanup_crit_edge:  ; preds = %netif_is_bond_master.exit.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

netif_is_bond_master.exit.i44.netif_is_lag_master.exit49_crit_edge: ; preds = %netif_is_bond_master.exit.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_master.exit49

netif_is_lag_master.exit49:                       ; preds = %netif_is_bond_master.exit.i44.netif_is_lag_master.exit49_crit_edge, %land.lhs.true41.netif_is_lag_master.exit49_crit_edge
  %priv_flags.i3.i45 = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 15
  %43 = ptrtoint ptr %priv_flags.i3.i45 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %priv_flags.i3.i45, align 16
  %and.i4.i46 = and i64 %44, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i46)
  %tobool.i.i47.not = icmp eq i64 %and.i4.i46, 0
  br i1 %tobool.i.i47.not, label %do.body45, label %netif_is_lag_master.exit49.cleanup_crit_edge

netif_is_lag_master.exit49.cleanup_crit_edge:     ; preds = %netif_is_lag_master.exit49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body45:                                        ; preds = %netif_is_lag_master.exit49
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_netdev_port_event.__msg.13) #14
  %tobool47.not = icmp eq ptr %1, null
  br i1 %tobool47.not, label %do.body45.cleanup_crit_edge, label %if.then48

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then48:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @prestera_netdev_port_event.__msg.13, ptr %1, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %upper_dev55 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %46 = ptrtoint ptr %upper_dev55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %upper_dev55, align 4
  %priv_flags.i50 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %priv_flags.i50 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %priv_flags.i50, align 16
  %and.i51 = and i64 %49, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i51)
  %tobool.i52.not = icmp eq i64 %and.i51, 0
  br i1 %tobool.i52.not, label %if.else63, label %if.then57

if.then57:                                        ; preds = %sw.bb54
  %linking58 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %50 = ptrtoint ptr %linking58 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %linking58, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool59.not = icmp eq i8 %51, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = tail call i32 @prestera_bridge_port_join(ptr noundef %47, ptr noundef %add.ptr.i, ptr noundef %1) #14
  br label %cleanup

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @prestera_bridge_port_leave(ptr noundef %47, ptr noundef %add.ptr.i) #14
  br label %cleanup

if.else63:                                        ; preds = %sw.bb54
  %flags.i.i53 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 14
  %52 = ptrtoint ptr %flags.i.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i53, align 8
  %and.i.i54 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i.i55 = icmp ne i32 %and.i.i54, 0
  %and1.i.i57 = and i64 %49, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i57)
  %tobool2.i.not.i58 = icmp ne i64 %and1.i.i57, 0
  %or.cond86 = select i1 %tobool.not.i.i55, i1 %tobool2.i.not.i58, i1 false
  %and.i4.i61 = and i64 %49, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i61)
  %tobool.i.i62 = icmp ne i64 %and.i4.i61, 0
  %or.cond87 = select i1 %or.cond86, i1 true, i1 %tobool.i.i62
  br i1 %or.cond87, label %if.then65, label %if.else63.cleanup_crit_edge

if.else63.cleanup_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then65:                                        ; preds = %if.else63
  %linking66 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %54 = ptrtoint ptr %linking66 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %linking66, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool67.not = icmp eq i8 %55, 0
  br i1 %tobool67.not, label %if.else70, label %if.then68

if.then68:                                        ; preds = %if.then65
  %sw1.i = getelementptr i8, ptr %dev, i32 2308
  %56 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sw1.i, align 4
  %lag_max.i.i = getelementptr inbounds %struct.prestera_switch, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %lag_max.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lag_max.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp11.not.i.i = icmp eq i8 %59, 0
  br i1 %cmp11.not.i.i, label %if.then68.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.then68
  %lags.i.i = getelementptr inbounds %struct.prestera_switch, ptr %57, i32 0, i32 16
  %60 = ptrtoint ptr %lags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lags.i.i, align 4
  %wide.trip.count.i.i = zext i8 %59 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.body.lr.ph.i41.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.for.body.lr.ph.i41.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i41.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.prestera_lag, ptr %61, i32 %indvars.iv.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.i.i = icmp eq ptr %63, %47
  br i1 %cmp4.i.i, label %prestera_lag_by_dev.exit.i, label %for.cond.i.i

prestera_lag_by_dev.exit.i:                       ; preds = %for.body.i.i
  %tobool.not.i65 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i65, label %prestera_lag_by_dev.exit.i.for.body.lr.ph.i41.i_crit_edge, label %prestera_lag_by_dev.exit.i.if.end5.i_crit_edge

prestera_lag_by_dev.exit.i.if.end5.i_crit_edge:   ; preds = %prestera_lag_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

prestera_lag_by_dev.exit.i.for.body.lr.ph.i41.i_crit_edge: ; preds = %prestera_lag_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i41.i

for.body.lr.ph.i41.i:                             ; preds = %prestera_lag_by_dev.exit.i.for.body.lr.ph.i41.i_crit_edge, %for.cond.i.i.for.body.lr.ph.i41.i_crit_edge
  %64 = shl nuw nsw i32 %wide.trip.count.i.i, 4
  %65 = add nuw nsw i32 %64, 1048560
  %66 = and i32 %65, 1048560
  %uglygep.i.i = getelementptr i8, ptr %61, i32 %66
  br label %for.body.i47.i

for.cond.i44.i:                                   ; preds = %for.body.i47.i
  %indvars.iv.next.i42.i = add nuw nsw i32 %indvars.iv.i45.i, 1
  %exitcond.not.i43.i = icmp eq i32 %indvars.iv.next.i42.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i43.i, label %for.cond.i44.i.for.end.i.i_crit_edge, label %for.cond.i44.i.for.body.i47.i_crit_edge

for.cond.i44.i.for.body.i47.i_crit_edge:          ; preds = %for.cond.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i47.i

for.cond.i44.i.for.end.i.i_crit_edge:             ; preds = %for.cond.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i47.i:                                   ; preds = %for.cond.i44.i.for.body.i47.i_crit_edge, %for.body.lr.ph.i41.i
  %indvars.iv.i45.i = phi i32 [ 0, %for.body.lr.ph.i41.i ], [ %indvars.iv.next.i42.i, %for.cond.i44.i.for.body.i47.i_crit_edge ]
  %arrayidx.i46.i = getelementptr %struct.prestera_lag, ptr %61, i32 %indvars.iv.i45.i
  %67 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i46.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i66, label %for.body.i47.i.for.end.i.i_crit_edge, label %for.cond.i44.i

for.body.i47.i.for.end.i.i_crit_edge:             ; preds = %for.body.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i47.i.for.end.i.i_crit_edge, %for.cond.i44.i.for.end.i.i_crit_edge
  %lag.1.i.i = phi ptr [ %arrayidx.i46.i, %for.body.i47.i.for.end.i.i_crit_edge ], [ %uglygep.i.i, %for.cond.i44.i.for.end.i.i_crit_edge ]
  %tobool3.not.i.i = icmp eq ptr %lag.1.i.i, null
  br i1 %tobool3.not.i.i, label %for.end.i.i.cleanup_crit_edge, label %prestera_lag_create.exit.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

prestera_lag_create.exit.i:                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %members.i.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.1.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %members.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %members.i.i, ptr %members.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.1.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %members.i.i, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %lag.1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %47, ptr %lag.1.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %prestera_lag_create.exit.i, %prestera_lag_by_dev.exit.i.if.end5.i_crit_edge
  %lag.0.i = phi ptr [ %arrayidx.i.i, %prestera_lag_by_dev.exit.i.if.end5.i_crit_edge ], [ %lag.1.i.i, %prestera_lag_create.exit.i ]
  %member_count.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.0.i, i32 0, i32 2
  %72 = ptrtoint ptr %member_count.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %member_count.i, align 4
  %lag_member_max.i = getelementptr inbounds %struct.prestera_switch, ptr %57, i32 0, i32 18
  %74 = ptrtoint ptr %lag_member_max.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %lag_member_max.i, align 4
  %76 = zext i8 %75 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %76)
  %cmp.not.i67 = icmp ult i16 %73, %76
  br i1 %cmp.not.i67, label %if.end9.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %lag_id.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.0.i, i32 0, i32 3
  %77 = ptrtoint ptr %lag_id.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %lag_id.i, align 2
  %call10.i = tail call i32 @prestera_hw_lag_member_add(ptr noundef %add.ptr.i, i16 noundef zeroext %78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  %79 = ptrtoint ptr %member_count.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %member_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool14.not.i = icmp eq i16 %80, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.then12.i.cleanup_crit_edge

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15.i:                                      ; preds = %if.then12.i
  %members.i48.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.0.i, i32 0, i32 1
  %81 = ptrtoint ptr %members.i48.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %members.i48.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %82, %members.i48.i
  br i1 %cmp.i.not.i.i, label %if.then15.i.prestera_lag_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !96

if.then15.i.prestera_lag_destroy.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_lag_destroy.exit.i

do.end.i.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #14
  br label %prestera_lag_destroy.exit.i

prestera_lag_destroy.exit.i:                      ; preds = %do.end.i.i, %if.then15.i.prestera_lag_destroy.exit.i_crit_edge
  %83 = ptrtoint ptr %member_count.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %member_count.i, align 4
  %84 = ptrtoint ptr %lag.0.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %lag.0.i, align 4
  br label %cleanup

if.end17.i:                                       ; preds = %if.end9.i
  %lag_member.i = getelementptr i8, ptr %dev, i32 2672
  %members.i = getelementptr inbounds %struct.prestera_lag, ptr %lag.0.i, i32 0, i32 1
  %85 = ptrtoint ptr %members.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %members.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lag_member.i, ptr noundef %members.i, ptr noundef %86) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.list_add.exit.i_crit_edge

if.end17.i.list_add.exit.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %lag_member.i, ptr %prev1.i.i.i, align 4
  %88 = ptrtoint ptr %lag_member.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %lag_member.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %dev, i32 2676
  %89 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %members.i, ptr %prev3.i.i.i, align 4
  %90 = ptrtoint ptr %members.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %lag_member.i, ptr %members.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end17.i.list_add.exit.i_crit_edge
  %91 = ptrtoint ptr %member_count.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %member_count.i, align 4
  %inc.i = add i16 %92, 1
  store i16 %inc.i, ptr %member_count.i, align 4
  %lag19.i = getelementptr i8, ptr %dev, i32 2680
  %93 = ptrtoint ptr %lag19.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %lag.0.i, ptr %lag19.i, align 8
  br label %cleanup

if.else70:                                        ; preds = %if.then65
  %lag2.i = getelementptr i8, ptr %dev, i32 2680
  %94 = ptrtoint ptr %lag2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lag2.i, align 8
  %tobool.not.i68 = icmp eq ptr %95, null
  br i1 %tobool.not.i68, label %if.else70.cleanup_crit_edge, label %lor.lhs.false.i

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.else70
  %member_count.i69 = getelementptr inbounds %struct.prestera_lag, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %member_count.i69 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %member_count.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool3.not.i = icmp eq i16 %97, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %lag_id.i70 = getelementptr inbounds %struct.prestera_lag, ptr %95, i32 0, i32 3
  %98 = ptrtoint ptr %lag_id.i70 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %lag_id.i70, align 2
  %call.i = tail call i32 @prestera_hw_lag_member_del(ptr noundef %add.ptr.i, i16 noundef zeroext %99) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %lag_member.i71 = getelementptr i8, ptr %dev, i32 2672
  %call.i.i.i72 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lag_member.i71) #14
  br i1 %call.i.i.i72, label %if.end.i.i.i74, label %if.end6.i.list_del.exit.i_crit_edge

if.end6.i.list_del.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i74:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i73 = getelementptr i8, ptr %dev, i32 2676
  %100 = ptrtoint ptr %prev.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i73, align 4
  %102 = ptrtoint ptr %lag_member.i71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lag_member.i71, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i74, %if.end6.i.list_del.exit.i_crit_edge
  %106 = ptrtoint ptr %lag_member.i71 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %lag_member.i71, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 2676
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %member_count.i69 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %member_count.i69, align 4
  %dec.i = add i16 %109, -1
  store i16 %dec.i, ptr %member_count.i69, align 4
  %110 = ptrtoint ptr %lag2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %lag2.i, align 8
  %111 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %95, align 4
  %priv_flags.i.i75 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 15
  %113 = ptrtoint ptr %priv_flags.i.i75 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %priv_flags.i.i75, align 16
  %and.i.i76 = and i64 %114, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i76)
  %tobool.i.not.i = icmp eq i64 %and.i.i76, 0
  br i1 %tobool.i.not.i, label %list_del.exit.i.if.end13.i_crit_edge, label %if.then10.i

list_del.exit.i.if.end13.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then10.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call12.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %112) #14
  tail call void @prestera_bridge_port_leave(ptr noundef %call12.i, ptr noundef %add.ptr.i) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %list_del.exit.i.if.end13.i_crit_edge
  %115 = ptrtoint ptr %member_count.i69 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %member_count.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool15.not.i = icmp eq i16 %116, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16.i:                                      ; preds = %if.end13.i
  %members.i.i77 = getelementptr inbounds %struct.prestera_lag, ptr %95, i32 0, i32 1
  %117 = ptrtoint ptr %members.i.i77 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %members.i.i77, align 4
  %cmp.i.not.i.i78 = icmp eq ptr %118, %members.i.i77
  br i1 %cmp.i.not.i.i78, label %if.then16.i.prestera_lag_destroy.exit.i80_crit_edge, label %do.end.i.i79, !prof !96

if.then16.i.prestera_lag_destroy.exit.i80_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_lag_destroy.exit.i80

do.end.i.i79:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #14
  br label %prestera_lag_destroy.exit.i80

prestera_lag_destroy.exit.i80:                    ; preds = %do.end.i.i79, %if.then16.i.prestera_lag_destroy.exit.i80_crit_edge
  %119 = ptrtoint ptr %member_count.i69 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %member_count.i69, align 4
  %120 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %95, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %121 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %122, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb75.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i

sw.bb75.netif_is_lag_port.exit.i_crit_edge:       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_port.exit.i

netif_is_bond_slave.exit.i.i:                     ; preds = %sw.bb75
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %123 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %124, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i.if.end.i82_crit_edge

netif_is_bond_slave.exit.i.i.if.end.i82_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i82

netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_lag_port.exit.i

netif_is_lag_port.exit.i:                         ; preds = %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, %sw.bb75.netif_is_lag_port.exit.i_crit_edge
  %priv_flags.i3.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %125 = ptrtoint ptr %priv_flags.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %priv_flags.i3.i.i, align 16
  %and.i4.i.i = and i64 %126, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i4.i.i, 0
  br i1 %tobool.i.i.not.i, label %netif_is_lag_port.exit.i.cleanup_crit_edge, label %netif_is_lag_port.exit.i.if.end.i82_crit_edge

netif_is_lag_port.exit.i.if.end.i82_crit_edge:    ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i82

netif_is_lag_port.exit.i.cleanup_crit_edge:       ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i82:                                       ; preds = %netif_is_lag_port.exit.i.if.end.i82_crit_edge, %netif_is_bond_slave.exit.i.i.if.end.i82_crit_edge
  %lag.i.i = getelementptr i8, ptr %dev, i32 2680
  %127 = ptrtoint ptr %lag.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lag.i.i, align 8
  %tobool.i.not.i81 = icmp eq ptr %128, null
  br i1 %tobool.i.not.i81, label %if.end.i82.cleanup_crit_edge, label %if.end4.i

if.end.i82.cleanup_crit_edge:                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #16
  %lower_state_info5.i = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %ptr, i32 0, i32 1
  %129 = ptrtoint ptr %lower_state_info5.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lower_state_info5.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load.i = load i8, ptr %130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i)
  %132 = icmp ugt i8 %bf.load.i, -65
  %lag_id.i83 = getelementptr inbounds %struct.prestera_lag, ptr %128, i32 0, i32 3
  %133 = ptrtoint ptr %lag_id.i83 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %lag_id.i83, align 2
  %call11.i = tail call i32 @prestera_hw_lag_member_enable(ptr noundef %add.ptr.i, i16 noundef zeroext %134, i1 noundef zeroext %132) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i82.cleanup_crit_edge, %netif_is_lag_port.exit.i.cleanup_crit_edge, %prestera_lag_destroy.exit.i80, %if.end13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.else70.cleanup_crit_edge, %list_add.exit.i, %prestera_lag_destroy.exit.i, %if.then12.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.else63.cleanup_crit_edge, %if.else, %if.then60, %if.then48, %do.body45.cleanup_crit_edge, %netif_is_lag_master.exit49.cleanup_crit_edge, %netif_is_bond_master.exit.i44.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %netif_is_lag_port.exit.cleanup_crit_edge, %if.then32, %do.body29.cleanup_crit_edge, %if.then1.i, %do.body.i.cleanup_crit_edge, %if.then14, %do.body11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.then60 ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %if.then32 ], [ -22, %do.body29.cleanup_crit_edge ], [ -22, %if.then48 ], [ -22, %do.body45.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %netif_is_lag_port.exit.cleanup_crit_edge ], [ 0, %land.lhs.true39.cleanup_crit_edge ], [ 0, %netif_is_lag_master.exit49.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %list_add.exit.i ], [ -28, %if.end5.i.cleanup_crit_edge ], [ %call10.i, %prestera_lag_destroy.exit.i ], [ %call10.i, %if.then12.i.cleanup_crit_edge ], [ -28, %for.end.i.i.cleanup_crit_edge ], [ -28, %if.then68.cleanup_crit_edge ], [ 0, %if.else70.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end13.i.cleanup_crit_edge ], [ 0, %prestera_lag_destroy.exit.i80 ], [ %call11.i, %if.end4.i ], [ 0, %netif_is_lag_port.exit.i.cleanup_crit_edge ], [ 0, %if.end.i82.cleanup_crit_edge ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %if.then1.i ], [ 0, %netif_is_bond_master.exit.i44.cleanup_crit_edge ], [ 0, %if.else63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_has_any_upper_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vlan_uses_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_bridge_port_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_bridge_port_leave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_lag_member_add(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_lag_member_del(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_lag_member_enable(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_event_handler_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_port_handle_event(ptr noundef %sw, ptr noundef %evt, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %port_list_lock.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %port_list_lock.i) #14
  %port_list.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %port_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %prestera_find_port.exit.thread, label %for.body.i

prestera_find_port.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_read_unlock(ptr noundef %port_list_lock.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr i8, ptr %.pn.i, i32 -52
  %4 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id3.i, align 4
  %cmp4.i = icmp eq i32 %5, %2
  br i1 %cmp4.i, label %prestera_find_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

prestera_find_port.exit:                          ; preds = %for.body.i
  %tmp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -432
  tail call void @_raw_read_unlock(ptr noundef %port_list_lock.i) #14
  %tobool.not = icmp eq ptr %tmp.0.le.i, null
  br i1 %tobool.not, label %prestera_find_port.exit.cleanup_crit_edge, label %lor.lhs.false

prestera_find_port.exit.cleanup_crit_edge:        ; preds = %prestera_find_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %prestera_find_port.exit
  %6 = ptrtoint ptr %tmp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmp.0.le.i, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %caching_dw2 = getelementptr i8, ptr %.pn.i, i32 256
  tail call void @prestera_ethtool_port_state_changed(ptr noundef nonnull %tmp.0.le.i, ptr noundef %0) #14
  %8 = ptrtoint ptr %evt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %evt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp eq i16 %9, 1
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %oper = getelementptr i8, ptr %.pn.i, i32 388
  %10 = ptrtoint ptr %oper to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %oper, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %tmp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmp.0.le.i, align 8
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  tail call void @netif_carrier_on(ptr noundef %13) #14
  %14 = ptrtoint ptr %caching_dw2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %caching_dw2, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.then10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %16 = load ptr, ptr @prestera_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %caching_dw2, i32 noundef 0) #14
  br label %cleanup

if.else:                                          ; preds = %if.then4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then19, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  tail call void @netif_carrier_off(ptr noundef %13) #14
  %22 = ptrtoint ptr %caching_dw2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %caching_dw2, align 4
  %and1.i45 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i45)
  %tobool24.not = icmp eq i32 %and1.i45, 0
  br i1 %tobool24.not, label %if.then19.cleanup_crit_edge, label %if.then25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %caching_dw2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %prestera_find_port.exit.cleanup_crit_edge, %prestera_find_port.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_ethtool_port_state_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_port_destroy(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %caching_dw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 17, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %caching_dw) #14
  tail call void @prestera_devlink_port_clear(ptr noundef %port) #14
  tail call void @unregister_netdev(ptr noundef %1) #14
  %sw.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %port_list_lock.i = getelementptr inbounds %struct.prestera_switch, ptr %3, i32 0, i32 10
  tail call void @_raw_write_lock(ptr noundef %port_list_lock.i) #14
  %list.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.prestera_port_list_del.exit_crit_edge

entry.prestera_port_list_del.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %prestera_port_list_del.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %prestera_port_list_del.exit

prestera_port_list_del.exit:                      ; preds = %if.end.i.i.i, %entry.prestera_port_list_del.exit_crit_edge
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw.i, align 4
  %port_list_lock2.i = getelementptr inbounds %struct.prestera_switch, ptr %13, i32 0, i32 10
  tail call void @_raw_write_unlock(ptr noundef %port_list_lock2.i) #14
  tail call void @prestera_devlink_port_unregister(ptr noundef %port) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_info_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_devlink_port_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_cap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_rxtx_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_port_stats_update(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -688
  %cached_hw_stats.i = getelementptr i8, ptr %work, i32 -240
  %call.i = tail call i32 @prestera_hw_port_stats_get(ptr noundef %add.ptr, ptr noundef %cached_hw_stats.i) #14
  %0 = load ptr, ptr @prestera_wq, align 4
  %call.i3 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 100) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_port_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_port_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_hw_event_handler_unregister(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__ksymtab_prestera_device_register, !1, !"__ksymtab_prestera_device_register", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1011, i32 1}
!2 = !{ptr @__ksymtab_prestera_device_unregister, !3, !"__ksymtab_prestera_device_unregister", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1020, i32 1}
!4 = !{ptr @__initcall__kmod_prestera__378_1036_prestera_module_init6, !5, !"__initcall__kmod_prestera__378_1036_prestera_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1036, i32 1}
!6 = !{ptr @__exitcall_prestera_module_exit, !7, !"__exitcall_prestera_module_exit", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1037, i32 1}
!8 = !{ptr @__UNIQUE_ID_file379, !9, !"__UNIQUE_ID_file379", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1039, i32 1}
!10 = !{ptr @__UNIQUE_ID_license380, !9, !"__UNIQUE_ID_license380", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description381, !12, !"__UNIQUE_ID_description381", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1040, i32 1}
!13 = !{ptr @prestera_wq, !14, !"prestera_wq", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 30, i32 33}
!15 = !{ptr @prestera_netdev_ops, !16, !"prestera_netdev_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 274, i32 36}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 891, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @prestera_switch_init._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @prestera_switch_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @prestera_switch_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 895, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 548, i32 43}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 549, i32 37}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 554, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @prestera_switch_set_base_mac_addr._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @prestera_switch_set_base_mac_addr._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @prestera_netdev_port_event.__msg, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 789, i32 4}
!40 = !{ptr @prestera_netdev_port_event.__msg.11, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 797, i32 4}
!42 = !{ptr @prestera_netdev_port_event.__msg.12, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 805, i32 4}
!44 = !{ptr @prestera_netdev_port_event.__msg.13, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 811, i32 4}
!46 = !{ptr @prestera_lag_master_check.__msg, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 762, i32 3}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 343, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @prestera_port_create._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @prestera_port_create._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 363, i32 3}
!55 = !{ptr @prestera_port_create._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @prestera_port_create._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 378, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @prestera_port_create._entry.19, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @prestera_port_create._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 384, i32 3}
!64 = !{ptr @prestera_port_create._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @prestera_port_create._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 390, i32 3}
!68 = !{ptr @prestera_port_create._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @prestera_port_create._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 413, i32 3}
!72 = !{ptr @prestera_port_create._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @prestera_port_create._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 427, i32 4}
!76 = !{ptr @prestera_port_create._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @prestera_port_create._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @prestera_port_create.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 437, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @prestera_port_create.__key.36, !79, !"__key", i1 false, i1 false}
!82 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_main.c", i32 1024, i32 32}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
!96 = !{!"branch_weights", i32 2000, i32 1}
