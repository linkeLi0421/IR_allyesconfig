; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/rtl8365mb.c_pt.bc'
source_filename = "../drivers/net/dsa/rtl8365mb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rtl8365mb_variant\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl8365mb_variant\09\09\09\09"
module asm "\09.long\09__crc_rtl8365mb_variant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl8365mb_variant:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl8365mb_variant\22\09\09\09\09\09"
module asm "__kstrtabns_rtl8365mb_variant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.realtek_smi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.realtek_smi_variant = type { ptr, ptr, i32, i8, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtl8365mb_mib_counter = type { i32, i32, ptr }
%struct.rtl8365mb_jam_tbl_entry = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.realtek_smi = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.spinlock, ptr, ptr, i8, i32, i32, i32, i32, ptr, ptr, i32, i32, [4096 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl8365mb = type { ptr, i32, i32, i32, i32, i32, %struct.rtl8365mb_cpu, %struct.mutex, [7 x %struct.rtl8365mb_port], ptr, i32 }
%struct.rtl8365mb_cpu = type { i8, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rtl8365mb_port = type { ptr, i32, %struct.rtnl_link_stats64, %struct.spinlock, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@rtl8365mb_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @rtl8365mb_get_tag_protocol, ptr null, ptr null, ptr @rtl8365mb_setup, ptr @rtl8365mb_teardown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8365mb_phylink_validate, ptr null, ptr @rtl8365mb_phylink_mac_config, ptr null, ptr @rtl8365mb_phylink_mac_link_down, ptr @rtl8365mb_phylink_mac_link_up, ptr null, ptr @rtl8365mb_get_strings, ptr @rtl8365mb_get_ethtool_stats, ptr @rtl8365mb_get_sset_count, ptr null, ptr @rtl8365mb_get_phy_stats, ptr @rtl8365mb_get_mac_stats, ptr @rtl8365mb_get_ctrl_stats, ptr @rtl8365mb_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8365mb_port_stp_state_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@rtl8365mb_smi_ops = internal constant { %struct.realtek_smi_ops, [60 x i8] } { %struct.realtek_smi_ops { ptr @rtl8365mb_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8365mb_phy_read, ptr @rtl8365mb_phy_write }, [60 x i8] zeroinitializer }, align 32
@rtl8365mb_variant = dso_local constant { %struct.realtek_smi_variant, [44 x i8] } { %struct.realtek_smi_variant { ptr @rtl8365mb_switch_ops, ptr @rtl8365mb_smi_ops, i32 10, i8 -71, i8 -72, i32 2560 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_rtl8365mb_variant = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl8365mb_variant = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl8365mb_variant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl8365mb_variant to i32), ptr @__kstrtab_rtl8365mb_variant, ptr @__kstrtabns_rtl8365mb_variant }, section "___ksymtab_gpl+rtl8365mb_variant", align 4
@rtl8365mb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1794, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl8365mb_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/dsa/rtl8365mb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8365mb_setup._entry_ptr = internal global ptr @rtl8365mb_setup._entry, section ".printk_index", align 4
@rtl8365mb_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize switch: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8365mb_setup._entry_ptr.7 = internal global ptr @rtl8365mb_setup._entry.5, section ".printk_index", align 4
@rtl8365mb_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1810, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no interrupt support\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtl8365mb_setup._entry_ptr.11 = internal global ptr @rtl8365mb_setup._entry.8, section ".printk_index", align 4
@rtl8365mb_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1854, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not set up MDIO bus\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8365mb_setup._entry_ptr.14 = internal global ptr @rtl8365mb_setup._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing child interrupt-controller node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8365mb_irq_setup\00", [44 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr = internal global ptr @rtl8365mb_irq_setup._entry, section ".printk_index", align 4
@rtl8365mb_irq_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get parent irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr.20 = internal global ptr @rtl8365mb_irq_setup._entry.18, section ".printk_index", align 4
@rtl8365mb_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @rtl8365mb_irq_map, ptr @rtl8365mb_irq_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 1599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr.23 = internal global ptr @rtl8365mb_irq_setup._entry.21, section ".printk_index", align 4
@rtl8365mb_irq_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 1608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create irq domain mapping\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr.26 = internal global ptr @rtl8365mb_irq_setup._entry.24, section ".printk_index", align 4
@rtl8365mb_irq_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 1629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported irq trigger type %u\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr.29 = internal global ptr @rtl8365mb_irq_setup._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8365mb\00", [22 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.2, i32 1654, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8365mb_irq_setup._entry_ptr.33 = internal global ptr @rtl8365mb_irq_setup._entry.31, section ".printk_index", align 4
@rtl8365mb_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rtl8365mb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read interrupt status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8365mb_irq\00", [18 x i8] zeroinitializer }, align 32
@rtl8365mb_irq._entry_ptr = internal global ptr @rtl8365mb_irq._entry, section ".printk_index", align 4
@rtl8365mb_stats_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mb->mib_lock\00", [18 x i8] zeroinitializer }, align 32
@rtl8365mb_stats_setup.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&p->stats_lock\00", [17 x i8] zeroinitializer }, align 32
@rtl8365mb_stats_setup.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&p->mib_work)->work)\00", [55 x i8] zeroinitializer }, align 32
@rtl8365mb_stats_setup.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&p->mib_work)->timer\00", [41 x i8] zeroinitializer }, align 32
@__const.rtl8365mb_stats_update.cnt = private unnamed_addr constant <{ [41 x i64], [17 x i64] }> <{ [41 x i64] [i64 1, i64 1, i64 0, i64 0, i64 0, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 0, i64 0, i64 0, i64 1, i64 1, i64 0, i64 0, i64 1, i64 0, i64 1, i64 1, i64 1], [17 x i64] zeroinitializer }>, align 8
@rtl8365mb_mib_counters = internal constant { [58 x %struct.rtl8365mb_mib_counter], [168 x i8] } { [58 x %struct.rtl8365mb_mib_counter] [%struct.rtl8365mb_mib_counter { i32 0, i32 4, ptr @.str.43 }, %struct.rtl8365mb_mib_counter { i32 4, i32 2, ptr @.str.44 }, %struct.rtl8365mb_mib_counter { i32 6, i32 2, ptr @.str.45 }, %struct.rtl8365mb_mib_counter { i32 8, i32 2, ptr @.str.46 }, %struct.rtl8365mb_mib_counter { i32 10, i32 2, ptr @.str.47 }, %struct.rtl8365mb_mib_counter { i32 12, i32 2, ptr @.str.48 }, %struct.rtl8365mb_mib_counter { i32 14, i32 2, ptr @.str.49 }, %struct.rtl8365mb_mib_counter { i32 16, i32 2, ptr @.str.50 }, %struct.rtl8365mb_mib_counter { i32 18, i32 2, ptr @.str.51 }, %struct.rtl8365mb_mib_counter { i32 20, i32 2, ptr @.str.52 }, %struct.rtl8365mb_mib_counter { i32 22, i32 2, ptr @.str.53 }, %struct.rtl8365mb_mib_counter { i32 24, i32 2, ptr @.str.54 }, %struct.rtl8365mb_mib_counter { i32 26, i32 2, ptr @.str.55 }, %struct.rtl8365mb_mib_counter { i32 28, i32 2, ptr @.str.56 }, %struct.rtl8365mb_mib_counter { i32 30, i32 2, ptr @.str.57 }, %struct.rtl8365mb_mib_counter { i32 32, i32 2, ptr @.str.58 }, %struct.rtl8365mb_mib_counter { i32 34, i32 2, ptr @.str.59 }, %struct.rtl8365mb_mib_counter { i32 36, i32 2, ptr @.str.60 }, %struct.rtl8365mb_mib_counter { i32 38, i32 2, ptr @.str.61 }, %struct.rtl8365mb_mib_counter { i32 40, i32 4, ptr @.str.62 }, %struct.rtl8365mb_mib_counter { i32 44, i32 2, ptr @.str.63 }, %struct.rtl8365mb_mib_counter { i32 46, i32 2, ptr @.str.64 }, %struct.rtl8365mb_mib_counter { i32 48, i32 2, ptr @.str.65 }, %struct.rtl8365mb_mib_counter { i32 50, i32 2, ptr @.str.66 }, %struct.rtl8365mb_mib_counter { i32 52, i32 2, ptr @.str.67 }, %struct.rtl8365mb_mib_counter { i32 54, i32 2, ptr @.str.68 }, %struct.rtl8365mb_mib_counter { i32 56, i32 2, ptr @.str.69 }, %struct.rtl8365mb_mib_counter { i32 58, i32 2, ptr @.str.70 }, %struct.rtl8365mb_mib_counter { i32 60, i32 4, ptr @.str.71 }, %struct.rtl8365mb_mib_counter { i32 64, i32 2, ptr @.str.72 }, %struct.rtl8365mb_mib_counter { i32 66, i32 2, ptr @.str.73 }, %struct.rtl8365mb_mib_counter { i32 68, i32 2, ptr @.str.74 }, %struct.rtl8365mb_mib_counter { i32 70, i32 2, ptr @.str.75 }, %struct.rtl8365mb_mib_counter { i32 72, i32 2, ptr @.str.76 }, %struct.rtl8365mb_mib_counter { i32 74, i32 2, ptr @.str.77 }, %struct.rtl8365mb_mib_counter { i32 76, i32 2, ptr @.str.78 }, %struct.rtl8365mb_mib_counter { i32 78, i32 2, ptr @.str.79 }, %struct.rtl8365mb_mib_counter { i32 80, i32 2, ptr @.str.80 }, %struct.rtl8365mb_mib_counter { i32 82, i32 2, ptr @.str.81 }, %struct.rtl8365mb_mib_counter { i32 84, i32 2, ptr @.str.82 }, %struct.rtl8365mb_mib_counter { i32 86, i32 2, ptr @.str.83 }, %struct.rtl8365mb_mib_counter { i32 88, i32 2, ptr @.str.84 }, %struct.rtl8365mb_mib_counter { i32 90, i32 2, ptr @.str.85 }, %struct.rtl8365mb_mib_counter { i32 92, i32 4, ptr @.str.86 }, %struct.rtl8365mb_mib_counter { i32 96, i32 2, ptr @.str.87 }, %struct.rtl8365mb_mib_counter { i32 98, i32 2, ptr @.str.88 }, %struct.rtl8365mb_mib_counter { i32 100, i32 2, ptr @.str.89 }, %struct.rtl8365mb_mib_counter { i32 102, i32 2, ptr @.str.90 }, %struct.rtl8365mb_mib_counter { i32 104, i32 2, ptr @.str.91 }, %struct.rtl8365mb_mib_counter { i32 106, i32 2, ptr @.str.92 }, %struct.rtl8365mb_mib_counter { i32 108, i32 2, ptr @.str.93 }, %struct.rtl8365mb_mib_counter { i32 110, i32 2, ptr @.str.94 }, %struct.rtl8365mb_mib_counter { i32 112, i32 2, ptr @.str.95 }, %struct.rtl8365mb_mib_counter { i32 114, i32 2, ptr @.str.96 }, %struct.rtl8365mb_mib_counter { i32 116, i32 2, ptr @.str.97 }, %struct.rtl8365mb_mib_counter { i32 118, i32 2, ptr @.str.98 }, %struct.rtl8365mb_mib_counter { i32 120, i32 2, ptr @.str.99 }, %struct.rtl8365mb_mib_counter { i32 122, i32 2, ptr @.str.100 }], [168 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ifInOctets\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dot3StatsFCSErrors\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dot3StatsSymbolErrors\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dot3InPauseFrames\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dot3ControlInUnknownOpcodes\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etherStatsFragments\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"etherStatsJabbers\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifInUcastPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"etherStatsDropEvents\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifInMulticastPkts\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifInBroadcastPkts\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inMldChecksumError\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inIgmpChecksumError\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inMldSpecificQuery\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inMldGeneralQuery\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inIgmpSpecificQuery\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inIgmpGeneralQuery\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inMldLeaves\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inIgmpLeaves\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"etherStatsOctets\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"etherStatsUnderSizePkts\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"etherOversizeStats\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"etherStatsPkts64Octets\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"etherStatsPkts65to127Octets\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"etherStatsPkts128to255Octets\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"etherStatsPkts256to511Octets\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"etherStatsPkts512to1023Octets\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"etherStatsPkts1024to1518Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifOutOctets\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dot3StatsSingleCollisionFrames\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dot3StatsMultipleCollisionFrames\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dot3StatsDeferredTransmissions\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dot3StatsLateCollisions\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"etherStatsCollisions\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dot3StatsExcessiveCollisions\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dot3OutPauseFrames\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifOutDiscards\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dot1dTpPortInDiscards\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ifOutUcastPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifOutMulticastPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifOutBroadcastPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"outOampduPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inOampduPkts\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inIgmpJoinsSuccess\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inIgmpJoinsFail\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inMldJoinsSuccess\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inMldJoinsFail\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inReportSuppressionDrop\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"inLeaveSuppressionDrop\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"outIgmpReports\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"outIgmpLeaves\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"outIgmpGeneralQuery\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"outIgmpSpecificQuery\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"outMldReports\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"outMldLeaves\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"outMldGeneralQuery\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"outMldSpecificQuery\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inKnownMulticastPkts\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtl8365mb_phylink_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 929, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"phy mode %s is unsupported on port %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8365mb_phylink_validate\00", [37 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_validate._entry_ptr = internal global ptr @rtl8365mb_phylink_validate._entry, section ".printk_index", align 4
@.str.103 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.134, ptr @.str.2, i32 959, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8365mb_phylink_mac_config\00", [35 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_config._entry_ptr = internal global ptr @rtl8365mb_phylink_mac_config._entry, section ".printk_index", align 4
@rtl8365mb_phylink_mac_config._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 966, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"port %d supports only conventional PHY or fixed-link\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_config._entry_ptr.137 = internal global ptr @rtl8365mb_phylink_mac_config._entry.135, section ".printk_index", align 4
@rtl8365mb_phylink_mac_config._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.2, i32 975, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to configure RGMII mode on port %d: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_config._entry_ptr.140 = internal global ptr @rtl8365mb_phylink_mac_config._entry.138, section ".printk_index", align 4
@rtl8365mb_ext_config_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"only one EXT port is currently supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8365mb_ext_config_rgmii\00", [37 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_rgmii._entry_ptr = internal global ptr @rtl8365mb_ext_config_rgmii._entry, section ".printk_index", align 4
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_rgmii._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.142, ptr @.str.2, i32 790, ptr @.str.146, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EXT port TX delay must be 0 or 2 ns\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_rgmii._entry_ptr.147 = internal global ptr @rtl8365mb_ext_config_rgmii._entry.144, section ".printk_index", align 4
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_rgmii._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.142, ptr @.str.2, i32 800, ptr @.str.146, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EXT port RX delay must be 0 to 2.1 ns\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_rgmii._entry_ptr.151 = internal global ptr @rtl8365mb_ext_config_rgmii._entry.149, section ".printk_index", align 4
@rtl8365mb_phylink_mac_link_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1003, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to reset forced mode on port %d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl8365mb_phylink_mac_link_down\00", [32 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_link_down._entry_ptr = internal global ptr @rtl8365mb_phylink_mac_link_down._entry, section ".printk_index", align 4
@rtl8365mb_ext_config_forcemode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.154, ptr @.str.2, i32 840, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8365mb_ext_config_forcemode\00", [33 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_forcemode._entry_ptr = internal global ptr @rtl8365mb_ext_config_forcemode._entry, section ".printk_index", align 4
@rtl8365mb_ext_config_forcemode._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported port speed %s\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_forcemode._entry_ptr.157 = internal global ptr @rtl8365mb_ext_config_forcemode._entry.155, section ".printk_index", align 4
@rtl8365mb_ext_config_forcemode._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.154, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported duplex %s\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8365mb_ext_config_forcemode._entry_ptr.160 = internal global ptr @rtl8365mb_ext_config_forcemode._entry.158, section ".printk_index", align 4
@rtl8365mb_phylink_mac_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 1032, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to force mode on port %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8365mb_phylink_mac_link_up\00", [34 x i8] zeroinitializer }, align 32
@rtl8365mb_phylink_mac_link_up._entry_ptr = internal global ptr @rtl8365mb_phylink_mac_link_up._entry, section ".printk_index", align 4
@rtl8365mb_get_ethtool_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 1161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read port %d counters: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl8365mb_get_ethtool_stats\00", [36 x i8] zeroinitializer }, align 32
@rtl8365mb_get_ethtool_stats._entry_ptr = internal global ptr @rtl8365mb_get_ethtool_stats._entry, section ".printk_index", align 4
@__const.rtl8365mb_get_mac_stats.cnt = private unnamed_addr constant <{ [41 x i64], [17 x i64] }> <{ [41 x i64] [i64 1, i64 1, i64 0, i64 1, i64 0, i64 0, i64 0, i64 1, i64 0, i64 1, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 1, i64 1, i64 1, i64 1, i64 0, i64 1, i64 1, i64 1, i64 0, i64 1, i64 1, i64 1], [17 x i64] zeroinitializer }>, align 8
@rtl8365mb_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1060, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid STP state: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8365mb_port_stp_state_set\00", [35 x i8] zeroinitializer }, align 32
@rtl8365mb_port_stp_state_set._entry_ptr = internal global ptr @rtl8365mb_port_stp_state_set._entry, section ".printk_index", align 4
@rtl8365mb_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read chip id and version: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8365mb_detect\00", [47 x i8] zeroinitializer }, align 32
@rtl8365mb_detect._entry_ptr = internal global ptr @rtl8365mb_detect._entry, section ".printk_index", align 4
@rtl8365mb_detect._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 1923, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"found an RTL8365MB-VC switch (ver=0x%04x)\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8365mb_detect._entry_ptr.171 = internal global ptr @rtl8365mb_detect._entry.169, section ".printk_index", align 4
@rtl8365mb_init_jam_8365mb_vc = internal constant { [16 x %struct.rtl8365mb_jam_tbl_entry], [32 x i8] } { [16 x %struct.rtl8365mb_jam_tbl_entry] [%struct.rtl8365mb_jam_tbl_entry { i16 5099, i16 5563 }, %struct.rtl8365mb_jam_tbl_entry { i16 4867, i16 1750 }, %struct.rtl8365mb_jam_tbl_entry { i16 4868, i16 1792 }, %struct.rtl8365mb_jam_tbl_entry { i16 5090, i16 63 }, %struct.rtl8365mb_jam_tbl_entry { i16 5113, i16 144 }, %struct.rtl8365mb_jam_tbl_entry { i16 4638, i16 970 }, %struct.rtl8365mb_jam_tbl_entry { i16 4659, i16 850 }, %struct.rtl8365mb_jam_tbl_entry { i16 4663, i16 160 }, %struct.rtl8365mb_jam_tbl_entry { i16 4666, i16 48 }, %struct.rtl8365mb_jam_tbl_entry { i16 4665, i16 132 }, %struct.rtl8365mb_jam_tbl_entry { i16 769, i16 4096 }, %struct.rtl8365mb_jam_tbl_entry { i16 4937, i16 31 }, %struct.rtl8365mb_jam_tbl_entry { i16 6368, i16 16388 }, %struct.rtl8365mb_jam_tbl_entry { i16 4651, i16 9244 }, %struct.rtl8365mb_jam_tbl_entry { i16 4869, i16 -16384 }, %struct.rtl8365mb_jam_tbl_entry { i16 5104, i16 0 }], [32 x i8] zeroinitializer }, align 32
@rtl8365mb_detect._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.2, i32 1948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"found an unknown Realtek switch (id=0x%04x, ver=0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl8365mb_detect._entry_ptr.174 = internal global ptr @rtl8365mb_detect._entry.172, section ".printk_index", align 4
@rtl8365mb_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to read PHY%d reg %02x @ %04x, ret %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8365mb_phy_read\00", [45 x i8] zeroinitializer }, align 32
@rtl8365mb_phy_read._entry_ptr = internal global ptr @rtl8365mb_phy_read._entry, section ".printk_index", align 4
@rtl8365mb_phy_read.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.177, ptr @.str.176, ptr @.str.2, ptr @.str.178, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"realtek_smi\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"read PHY%d register 0x%02x @ %04x, val <- %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8365mb_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to write PHY%d reg %02x @ %04x, ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8365mb_phy_write\00", [44 x i8] zeroinitializer }, align 32
@rtl8365mb_phy_write._entry_ptr = internal global ptr @rtl8365mb_phy_write._entry, section ".printk_index", align 4
@rtl8365mb_phy_write.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.177, ptr @.str.180, ptr @.str.2, ptr @.str.181, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"write PHY%d register 0x%02x @ %04x, val -> %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.rtl8365mb_setup = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [32 x i8] zeroinitializer }, align 32
@switch.table.rtl8365mb_phylink_validate = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.132, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131], [40 x i8] zeroinitializer }, align 32
@switch.table.rtl8365mb_phylink_mac_config = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.132, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131], [40 x i8] zeroinitializer }, align 32
@switch.table.rtl8365mb_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"rtl8365mb_switch_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1955, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"rtl8365mb_smi_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1973, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"rtl8365mb_variant\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1979, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1794, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1801, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1810, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1854, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1580, i32 49 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1582, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1590, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [24 x i8] c"rtl8365mb_irqdomain_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1545, i32 36 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1599, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1607, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1628, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1652, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1654, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"rtl8365mb_irq_chip\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1522, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1516, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1421, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1430, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1435, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [23 x i8] c"rtl8365mb_mib_counters\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 381, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 382, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 383, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 384, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 385, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 386, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 387, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 388, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 389, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 390, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 391, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 392, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 393, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 394, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 395, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 396, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 397, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 398, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 399, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 400, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 401, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 402, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 403, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 404, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 405, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 406, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 407, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 408, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 409, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 410, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 411, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 412, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 413, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 414, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 415, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 416, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 417, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 418, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 419, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 420, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 421, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 422, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 423, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 424, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 425, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 426, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 427, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 428, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 429, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 430, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 431, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 432, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 433, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 434, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 435, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 436, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 437, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 438, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 439, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 928, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 211, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 213, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 215, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 217, i32 10 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 219, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 221, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 223, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 225, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 227, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 229, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 231, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 233, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 235, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 237, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 239, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 241, i32 10 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 243, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 245, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 247, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 249, i32 10 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 251, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 253, i32 10 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 255, i32 10 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 257, i32 10 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 259, i32 10 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 261, i32 10 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 263, i32 10 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 265, i32 10 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 267, i32 10 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 269, i32 10 }
@___asan_gen_.595 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 271, i32 10 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 958, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 964, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 973, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 754, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 783, i32 32 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 789, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 793, i32 32 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 799, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1001, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 840, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 857, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 867, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1030, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1159, i32 4 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1060, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1914, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1921, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant [29 x i8] c"rtl8365mb_init_jam_8365mb_vc\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 450, i32 45 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1946, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 693, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 699, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 721, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.748 = private constant [31 x i8] c"../drivers/net/dsa/rtl8365mb.c\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 727, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [29 x i8] c"switch.table.rtl8365mb_setup\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [40 x i8] c"switch.table.rtl8365mb_phylink_validate\00", align 1
@___asan_gen_.752 = private unnamed_addr constant [42 x i8] c"switch.table.rtl8365mb_phylink_mac_config\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [42 x i8] c"switch.table.rtl8365mb_port_stp_state_set\00", align 1
@llvm.compiler.used = appending global [223 x ptr] [ptr @__ksymtab_rtl8365mb_variant, ptr @rtl8365mb_detect._entry, ptr @rtl8365mb_detect._entry.169, ptr @rtl8365mb_detect._entry.172, ptr @rtl8365mb_detect._entry_ptr, ptr @rtl8365mb_detect._entry_ptr.171, ptr @rtl8365mb_detect._entry_ptr.174, ptr @rtl8365mb_ext_config_forcemode._entry, ptr @rtl8365mb_ext_config_forcemode._entry.155, ptr @rtl8365mb_ext_config_forcemode._entry.158, ptr @rtl8365mb_ext_config_forcemode._entry_ptr, ptr @rtl8365mb_ext_config_forcemode._entry_ptr.157, ptr @rtl8365mb_ext_config_forcemode._entry_ptr.160, ptr @rtl8365mb_ext_config_rgmii._entry, ptr @rtl8365mb_ext_config_rgmii._entry.144, ptr @rtl8365mb_ext_config_rgmii._entry.149, ptr @rtl8365mb_ext_config_rgmii._entry_ptr, ptr @rtl8365mb_ext_config_rgmii._entry_ptr.147, ptr @rtl8365mb_ext_config_rgmii._entry_ptr.151, ptr @rtl8365mb_get_ethtool_stats._entry, ptr @rtl8365mb_get_ethtool_stats._entry_ptr, ptr @rtl8365mb_irq._entry, ptr @rtl8365mb_irq._entry_ptr, ptr @rtl8365mb_irq_setup._entry, ptr @rtl8365mb_irq_setup._entry.18, ptr @rtl8365mb_irq_setup._entry.21, ptr @rtl8365mb_irq_setup._entry.24, ptr @rtl8365mb_irq_setup._entry.27, ptr @rtl8365mb_irq_setup._entry.31, ptr @rtl8365mb_irq_setup._entry_ptr, ptr @rtl8365mb_irq_setup._entry_ptr.20, ptr @rtl8365mb_irq_setup._entry_ptr.23, ptr @rtl8365mb_irq_setup._entry_ptr.26, ptr @rtl8365mb_irq_setup._entry_ptr.29, ptr @rtl8365mb_irq_setup._entry_ptr.33, ptr @rtl8365mb_phy_read._entry, ptr @rtl8365mb_phy_read._entry_ptr, ptr @rtl8365mb_phy_write._entry, ptr @rtl8365mb_phy_write._entry_ptr, ptr @rtl8365mb_phylink_mac_config._entry, ptr @rtl8365mb_phylink_mac_config._entry.135, ptr @rtl8365mb_phylink_mac_config._entry.138, ptr @rtl8365mb_phylink_mac_config._entry_ptr, ptr @rtl8365mb_phylink_mac_config._entry_ptr.137, ptr @rtl8365mb_phylink_mac_config._entry_ptr.140, ptr @rtl8365mb_phylink_mac_link_down._entry, ptr @rtl8365mb_phylink_mac_link_down._entry_ptr, ptr @rtl8365mb_phylink_mac_link_up._entry, ptr @rtl8365mb_phylink_mac_link_up._entry_ptr, ptr @rtl8365mb_phylink_validate._entry, ptr @rtl8365mb_phylink_validate._entry_ptr, ptr @rtl8365mb_port_stp_state_set._entry, ptr @rtl8365mb_port_stp_state_set._entry_ptr, ptr @rtl8365mb_setup._entry, ptr @rtl8365mb_setup._entry.12, ptr @rtl8365mb_setup._entry.5, ptr @rtl8365mb_setup._entry.8, ptr @rtl8365mb_setup._entry_ptr, ptr @rtl8365mb_setup._entry_ptr.11, ptr @rtl8365mb_setup._entry_ptr.14, ptr @rtl8365mb_setup._entry_ptr.7, ptr @rtl8365mb_switch_ops, ptr @rtl8365mb_smi_ops, ptr @rtl8365mb_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @rtl8365mb_irqdomain_ops, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @rtl8365mb_irq_chip, ptr @.str.34, ptr @.str.35, ptr @rtl8365mb_stats_setup.__key, ptr @.str.36, ptr @rtl8365mb_stats_setup.__key.37, ptr @.str.38, ptr @rtl8365mb_stats_setup.__key.39, ptr @.str.40, ptr @rtl8365mb_stats_setup.__key.41, ptr @.str.42, ptr @rtl8365mb_mib_counters, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @rtl8365mb_init_jam_8365mb_vc, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @switch.table.rtl8365mb_setup, ptr @switch.table.rtl8365mb_phylink_validate, ptr @switch.table.rtl8365mb_phylink_mac_config, ptr @switch.table.rtl8365mb_port_stp_state_set], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_smi_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_setup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_stats_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_stats_setup.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_stats_setup.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_stats_setup.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_mib_counters to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_mac_config._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_mac_config._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_rgmii._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_rgmii._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_mac_link_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_forcemode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_forcemode._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_ext_config_forcemode._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phylink_mac_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_get_ethtool_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_detect._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_init_jam_8365mb_vc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_detect._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8365mb_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8365mb_setup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8365mb_phylink_validate to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8365mb_phylink_mac_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8365mb_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8365mb_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_setup(ptr nocapture noundef readonly %ds) #1 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !368
  %call.i = tail call i32 @realtek_smi_write_reg_noack(ptr noundef %1, i32 noundef 4898, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 100) #7
  %call13.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call13.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1780) #7
  %map.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call2467.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 4898, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2467.i)
  %tobool.not68.i = icmp eq i32 %call2467.i, 0
  br i1 %tobool.not68.i, label %entry.lor.lhs.false.i_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then37.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call29.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call29.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call29.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then37.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #7
  %9 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 4898, ptr noundef nonnull %val.i) #7
  %tobool.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool.not.i, label %if.then37.i.lor.lhs.false.i_crit_edge, label %if.then37.i.do.end_crit_edge

if.then37.i.do.end_crit_edge:                     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then37.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %call34.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 4898, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool40.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool40.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end_crit_edge

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and41.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end, label %lor.rhs.i.do.end_crit_edge

lor.rhs.i.do.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.i.do.end_crit_edge, %for.end.i.do.end_crit_edge, %if.then37.i.do.end_crit_edge, %entry.do.end_crit_edge
  %tobool40.not58.i.ph = phi i32 [ %call2467.i, %entry.do.end_crit_edge ], [ -110, %lor.rhs.i.do.end_crit_edge ], [ %call34.i, %for.end.i.do.end_crit_edge ], [ %call24.i, %if.then37.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %tobool40.not58.i.ph) #10
  br label %cleanup65

if.end:                                           ; preds = %lor.rhs.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %17 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_data, align 4
  %jam_table.i = getelementptr inbounds %struct.rtl8365mb, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %jam_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %jam_table.i, align 8
  %tobool.not.i108 = icmp eq ptr %20, null
  br i1 %tobool.not.i108, label %if.end.if.end7.i_crit_edge, label %for.cond.preheader.i

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.cond.preheader.i:                             ; preds = %if.end
  %jam_size.i = getelementptr inbounds %struct.rtl8365mb, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %jam_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %jam_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp44.not.i = icmp eq i32 %22, 0
  br i1 %cmp44.not.i, label %for.cond.preheader.i.if.end7.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.045.i, 1
  %23 = ptrtoint ptr %jam_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jam_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end7.i_crit_edge

for.cond.i.if.end7.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 4
  %27 = ptrtoint ptr %jam_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jam_table.i, align 8
  %arrayidx.i = getelementptr %struct.rtl8365mb_jam_tbl_entry, ptr %28, i32 %i.045.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %30 to i32
  %val.i110 = getelementptr %struct.rtl8365mb_jam_tbl_entry, ptr %28, i32 %i.045.i, i32 1
  %31 = ptrtoint ptr %val.i110 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %val.i110, align 2
  %conv4.i = zext i16 %32 to i32
  %call.i111 = call i32 @regmap_write(ptr noundef %26, i32 noundef %conv.i, i32 noundef %conv4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool5.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool5.not.i, label %for.cond.i, label %for.body.i.do.end6_crit_edge

for.body.i.do.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

if.end7.i:                                        ; preds = %for.cond.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i, align 4
  %call19.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 4608, i32 noundef 32715) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %for.cond8.i, label %if.end7.i.do.end6_crit_edge

if.end7.i.do.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.i:                                      ; preds = %if.end7.i
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 4
  %call19.1.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 2180, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1.i)
  %tobool20.not.1.i = icmp eq i32 %call19.1.i, 0
  br i1 %tobool20.not.1.i, label %for.cond8.1.i, label %for.cond8.i.do.end6_crit_edge

for.cond8.i.do.end6_crit_edge:                    ; preds = %for.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.1.i:                                    ; preds = %for.cond8.i
  %37 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i, align 4
  %call19.2.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 1771, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2.i)
  %tobool20.not.2.i = icmp eq i32 %call19.2.i, 0
  br i1 %tobool20.not.2.i, label %for.cond8.2.i, label %for.cond8.1.i.do.end6_crit_edge

for.cond8.1.i.do.end6_crit_edge:                  ; preds = %for.cond8.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.2.i:                                    ; preds = %for.cond8.1.i
  %39 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i, align 4
  %call19.3.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 1018, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3.i)
  %tobool20.not.3.i = icmp eq i32 %call19.3.i, 0
  br i1 %tobool20.not.3.i, label %for.cond8.3.i, label %for.cond8.2.i.do.end6_crit_edge

for.cond8.2.i.do.end6_crit_edge:                  ; preds = %for.cond8.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.3.i:                                    ; preds = %for.cond8.2.i
  %41 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i, align 4
  %call19.4.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 2248, i32 noundef 192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4.i)
  %tobool20.not.4.i = icmp eq i32 %call19.4.i, 0
  br i1 %tobool20.not.4.i, label %for.cond8.4.i, label %for.cond8.3.i.do.end6_crit_edge

for.cond8.3.i.do.end6_crit_edge:                  ; preds = %for.cond8.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.4.i:                                    ; preds = %for.cond8.3.i
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i, align 4
  %call19.5.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 2608, i32 noundef 526) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.5.i)
  %tobool20.not.5.i = icmp eq i32 %call19.5.i, 0
  br i1 %tobool20.not.5.i, label %for.cond8.5.i, label %for.cond8.4.i.do.end6_crit_edge

for.cond8.4.i.do.end6_crit_edge:                  ; preds = %for.cond8.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.5.i:                                    ; preds = %for.cond8.4.i
  %45 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i, align 4
  %call19.6.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 2048, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.6.i)
  %tobool20.not.6.i = icmp eq i32 %call19.6.i, 0
  br i1 %tobool20.not.6.i, label %for.cond8.6.i, label %for.cond8.5.i.do.end6_crit_edge

for.cond8.5.i.do.end6_crit_edge:                  ; preds = %for.cond8.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.6.i:                                    ; preds = %for.cond8.5.i
  %47 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i, align 4
  %call19.7.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 2050, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.7.i)
  %tobool20.not.7.i = icmp eq i32 %call19.7.i, 0
  br i1 %tobool20.not.7.i, label %for.cond8.7.i, label %for.cond8.6.i.do.end6_crit_edge

for.cond8.6.i.do.end6_crit_edge:                  ; preds = %for.cond8.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.cond8.7.i:                                    ; preds = %for.cond8.6.i
  %49 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i, align 4
  %call19.8.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 2522, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.8.i)
  %tobool20.not.8.i = icmp eq i32 %call19.8.i, 0
  br i1 %tobool20.not.8.i, label %rtl8365mb_switch_init.exit, label %for.cond8.7.i.do.end6_crit_edge

for.cond8.7.i.do.end6_crit_edge:                  ; preds = %for.cond8.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

rtl8365mb_switch_init.exit:                       ; preds = %for.cond8.7.i
  %51 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map.i, align 4
  %call19.9.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 7474, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.9.i)
  %tobool2.not = icmp eq i32 %call19.9.i, 0
  br i1 %tobool2.not, label %if.end8, label %rtl8365mb_switch_init.exit.do.end6_crit_edge

rtl8365mb_switch_init.exit.do.end6_crit_edge:     ; preds = %rtl8365mb_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end6:                                          ; preds = %rtl8365mb_switch_init.exit.do.end6_crit_edge, %for.cond8.7.i.do.end6_crit_edge, %for.cond8.6.i.do.end6_crit_edge, %for.cond8.5.i.do.end6_crit_edge, %for.cond8.4.i.do.end6_crit_edge, %for.cond8.3.i.do.end6_crit_edge, %for.cond8.2.i.do.end6_crit_edge, %for.cond8.1.i.do.end6_crit_edge, %for.cond8.i.do.end6_crit_edge, %if.end7.i.do.end6_crit_edge, %for.body.i.do.end6_crit_edge
  %retval.0.i153 = phi i32 [ %call19.9.i, %rtl8365mb_switch_init.exit.do.end6_crit_edge ], [ %call19.8.i, %for.cond8.7.i.do.end6_crit_edge ], [ %call19.7.i, %for.cond8.6.i.do.end6_crit_edge ], [ %call19.6.i, %for.cond8.5.i.do.end6_crit_edge ], [ %call19.5.i, %for.cond8.4.i.do.end6_crit_edge ], [ %call19.4.i, %for.cond8.3.i.do.end6_crit_edge ], [ %call19.3.i, %for.cond8.2.i.do.end6_crit_edge ], [ %call19.2.i, %for.cond8.1.i.do.end6_crit_edge ], [ %call19.1.i, %for.cond8.i.do.end6_crit_edge ], [ %call19.i, %if.end7.i.do.end6_crit_edge ], [ %call.i111, %for.body.i.do.end6_crit_edge ]
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i153) #10
  br label %cleanup65

if.end8:                                          ; preds = %rtl8365mb_switch_init.exit
  %55 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip_data, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node.i, align 8
  %call.i113 = call ptr @of_get_child_by_name(ptr noundef %60, ptr noundef nonnull @.str.15) #7
  %tobool.not.i114 = icmp eq ptr %call.i113, null
  br i1 %tobool.not.i114, label %rtl8365mb_irq_setup.exit.thread, label %if.end.i

rtl8365mb_irq_setup.exit.thread:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.16) #10
  br label %do.end15

if.end.i:                                         ; preds = %if.end8
  %call2.i = call i32 @of_irq_get(ptr noundef nonnull %call.i113, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i115 = icmp slt i32 %call2.i, 1
  br i1 %cmp.i115, label %if.then3.i, label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call2.i)
  %cond.i = icmp eq i32 %call2.i, -517
  br i1 %cond.i, label %rtl8365mb_irq_setup.exit.thread164, label %do.end8.i

rtl8365mb_irq_setup.exit.thread164:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call.i113) #7
  br label %cleanup65

do.end8.i:                                        ; preds = %if.then3.i
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.19, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool11.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool11.not.i, label %do.end8.i.rtl8365mb_irq_setup.exit.thread157_crit_edge, label %do.end8.i.rtl8365mb_irq_setup.exit_crit_edge

do.end8.i.rtl8365mb_irq_setup.exit_crit_edge:     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_irq_setup.exit

do.end8.i.rtl8365mb_irq_setup.exit.thread157_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_irq_setup.exit.thread157

if.end12.i:                                       ; preds = %if.end.i
  %num_ports.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 14
  %65 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_ports.i, align 4
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i113, i32 0, i32 3
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef %66, i32 noundef %66, i32 noundef 0, ptr noundef nonnull @rtl8365mb_irqdomain_ops, ptr noundef %1) #7
  %irqdomain.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 11
  %67 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1.i.i, ptr %irqdomain.i, align 4
  %tobool15.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %for.cond.preheader.i116

for.cond.preheader.i116:                          ; preds = %if.end12.i
  %68 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp23166.not.i = icmp eq i32 %69, 0
  br i1 %cmp23166.not.i, label %for.cond.preheader.i116.for.end.i120_crit_edge, label %for.cond.preheader.i116.for.body.i117_crit_edge

for.cond.preheader.i116.for.body.i117_crit_edge:  ; preds = %for.cond.preheader.i116
  br label %for.body.i117

for.cond.preheader.i116.for.end.i120_crit_edge:   ; preds = %for.cond.preheader.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i120

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.22) #10
  br label %rtl8365mb_irq_setup.exit.thread157

for.body.i117:                                    ; preds = %if.end32.i.for.body.i117_crit_edge, %for.cond.preheader.i116.for.body.i117_crit_edge
  %i.0167.i = phi i32 [ %inc.i118, %if.end32.i.for.body.i117_crit_edge ], [ 0, %for.cond.preheader.i116.for.body.i117_crit_edge ]
  %72 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %irqdomain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %73, i32 noundef %i.0167.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool26.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %if.end32.i

do.end30.i:                                       ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.25) #10
  br label %out_remove_irqdomain.i

if.end32.i:                                       ; preds = %for.body.i117
  %call33.i = call i32 @irq_set_parent(i32 noundef %call.i.i, i32 noundef %call2.i) #7
  %inc.i118 = add nuw i32 %i.0167.i, 1
  %76 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ports.i, align 4
  %cmp23.i = icmp ult i32 %inc.i118, %77
  br i1 %cmp23.i, label %if.end32.i.for.body.i117_crit_edge, label %if.end32.i.for.end.i120_crit_edge

if.end32.i.for.end.i120_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i120

if.end32.i.for.body.i117_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117

for.end.i120:                                     ; preds = %if.end32.i.for.end.i120_crit_edge, %for.cond.preheader.i116.for.end.i120_crit_edge
  %call34.i119 = call ptr @irq_get_irq_data(i32 noundef %call2.i) #7
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call34.i119, i32 0, i32 3
  %78 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %common.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %and.i.i = and i32 %81, 15
  %switch.tableidx = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 8
  br i1 %82, label %switch.hole_check, label %for.end.i120.do.end39.i_crit_edge

for.end.i120.do.end39.i_crit_edge:                ; preds = %for.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end39.i:                                       ; preds = %switch.hole_check.do.end39.i_crit_edge, %for.end.i120.do.end39.i_crit_edge
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.28, i32 noundef %and.i.i) #10
  br label %out_remove_irqdomain.i

switch.hole_check:                                ; preds = %for.end.i120
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %85 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %switch.lobit.not = icmp eq i8 %85, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end39.i_crit_edge, label %switch.lookup

switch.hole_check.do.end39.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rtl8365mb_setup, i32 0, i32 %switch.tableidx
  %86 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %86)
  %switch.load = load i32, ptr %switch.gep, align 4
  %87 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map.i, align 4
  %call.i162.i = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 4352, i32 noundef 1, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %tobool63.not.i = icmp eq i32 %call.i162.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %switch.lookup.out_remove_irqdomain.i_crit_edge

switch.lookup.out_remove_irqdomain.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_remove_irqdomain.i

if.end65.i:                                       ; preds = %switch.lookup
  %89 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i, align 4
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 4353, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool67.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end65.i.out_remove_irqdomain.i_crit_edge

if.end65.i.out_remove_irqdomain.i_crit_edge:      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_remove_irqdomain.i

if.end69.i:                                       ; preds = %if.end65.i
  %91 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map.i, align 4
  %call71.i = call i32 @regmap_write(ptr noundef %92, i32 noundef 4354, i32 noundef 7167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end69.i.out_remove_irqdomain.i_crit_edge

if.end69.i.out_remove_irqdomain.i_crit_edge:      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_remove_irqdomain.i

if.end74.i:                                       ; preds = %if.end69.i
  %call75.i = call i32 @request_threaded_irq(i32 noundef %call2.i, ptr noundef null, ptr noundef nonnull @rtl8365mb_irq, i32 noundef 8192, ptr noundef nonnull @.str.30, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end82.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.32, i32 noundef %call75.i) #10
  br label %out_remove_irqdomain.i

if.end82.i:                                       ; preds = %if.end74.i
  %irq83.i = getelementptr inbounds %struct.rtl8365mb, ptr %56, i32 0, i32 1
  %95 = ptrtoint ptr %irq83.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call2.i, ptr %irq83.i, align 4
  %96 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map.i, align 4
  %call.i.i.i164.i = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 4353, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i164.i)
  %tobool85.not.i = icmp eq i32 %call.i.i.i164.i, 0
  br i1 %tobool85.not.i, label %rtl8365mb_irq_setup.exit.thread155, label %out_free_irq.i

rtl8365mb_irq_setup.exit.thread155:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call.i113) #7
  br label %if.end18

out_free_irq.i:                                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %irq83.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq83.i, align 4
  %call89.i = call ptr @free_irq(i32 noundef %99, ptr noundef %1) #7
  %100 = ptrtoint ptr %irq83.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %irq83.i, align 4
  br label %out_remove_irqdomain.i

out_remove_irqdomain.i:                           ; preds = %out_free_irq.i, %do.end80.i, %if.end69.i.out_remove_irqdomain.i_crit_edge, %if.end65.i.out_remove_irqdomain.i_crit_edge, %switch.lookup.out_remove_irqdomain.i_crit_edge, %do.end39.i, %do.end30.i
  %ret.0.i = phi i32 [ -22, %do.end30.i ], [ -22, %do.end39.i ], [ %call.i162.i, %switch.lookup.out_remove_irqdomain.i_crit_edge ], [ %call.i.i.i.i, %if.end65.i.out_remove_irqdomain.i_crit_edge ], [ %call71.i, %if.end69.i.out_remove_irqdomain.i_crit_edge ], [ %call75.i, %do.end80.i ], [ %call.i.i.i164.i, %out_free_irq.i ]
  %101 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp93168.not.i = icmp eq i32 %102, 0
  br i1 %cmp93168.not.i, label %out_remove_irqdomain.i.for.end99.i_crit_edge, label %out_remove_irqdomain.i.for.body94.i_crit_edge

out_remove_irqdomain.i.for.body94.i_crit_edge:    ; preds = %out_remove_irqdomain.i
  br label %for.body94.i

out_remove_irqdomain.i.for.end99.i_crit_edge:     ; preds = %out_remove_irqdomain.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

for.body94.i:                                     ; preds = %irq_find_mapping.exit.i.for.body94.i_crit_edge, %out_remove_irqdomain.i.for.body94.i_crit_edge
  %i.1169.i = phi i32 [ %inc98.i, %irq_find_mapping.exit.i.for.body94.i_crit_edge ], [ 0, %out_remove_irqdomain.i.for.body94.i_crit_edge ]
  %103 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %irqdomain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #7
  %105 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !368
  %call.i165.i = call ptr @__irq_resolve_mapping(ptr noundef %104, i32 noundef %i.1169.i, ptr noundef nonnull %irq.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i165.i, null
  br i1 %tobool.not.i.i, label %for.body94.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

for.body94.i.irq_find_mapping.exit.i_crit_edge:   ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %for.body94.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %107, %if.then.i.i ], [ 0, %for.body94.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i) #7
  %inc98.i = add nuw i32 %i.1169.i, 1
  %108 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_ports.i, align 4
  %cmp93.i = icmp ult i32 %inc98.i, %109
  br i1 %cmp93.i, label %irq_find_mapping.exit.i.for.body94.i_crit_edge, label %irq_find_mapping.exit.i.for.end99.i_crit_edge

irq_find_mapping.exit.i.for.end99.i_crit_edge:    ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

irq_find_mapping.exit.i.for.body94.i_crit_edge:   ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body94.i

for.end99.i:                                      ; preds = %irq_find_mapping.exit.i.for.end99.i_crit_edge, %out_remove_irqdomain.i.for.end99.i_crit_edge
  %110 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %irqdomain.i, align 4
  call void @irq_domain_remove(ptr noundef %111) #7
  %112 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %irqdomain.i, align 4
  br label %rtl8365mb_irq_setup.exit

rtl8365mb_irq_setup.exit.thread157:               ; preds = %do.end19.i, %do.end8.i.rtl8365mb_irq_setup.exit.thread157_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i113) #7
  br label %do.end15

rtl8365mb_irq_setup.exit:                         ; preds = %for.end99.i, %do.end8.i.rtl8365mb_irq_setup.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %for.end99.i ], [ %call2.i, %do.end8.i.rtl8365mb_irq_setup.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i113) #7
  %113 = zext i32 %ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.1.i, label %rtl8365mb_irq_setup.exit.do.end15_crit_edge [
    i32 -517, label %rtl8365mb_irq_setup.exit.cleanup65_crit_edge
    i32 0, label %rtl8365mb_irq_setup.exit.if.end18_crit_edge
  ]

rtl8365mb_irq_setup.exit.if.end18_crit_edge:      ; preds = %rtl8365mb_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

rtl8365mb_irq_setup.exit.cleanup65_crit_edge:     ; preds = %rtl8365mb_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

rtl8365mb_irq_setup.exit.do.end15_crit_edge:      ; preds = %rtl8365mb_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %rtl8365mb_irq_setup.exit.do.end15_crit_edge, %rtl8365mb_irq_setup.exit.thread157, %rtl8365mb_irq_setup.exit.thread
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.9) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %rtl8365mb_irq_setup.exit.if.end18_crit_edge, %rtl8365mb_irq_setup.exit.thread155
  %116 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chip_data, align 4
  %mask.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mask.i, align 4
  %120 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %map.i, align 4
  %and16.i = and i32 %119, 2047
  %call.i.i126 = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 4633, i32 noundef 2047, i32 noundef %and16.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool17.not.i = icmp eq i32 %call.i.i126, 0
  br i1 %tobool17.not.i, label %do.body26.i, label %if.end18.out_teardown_irq_crit_edge

if.end18.out_teardown_irq_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown_irq

do.body26.i:                                      ; preds = %if.end18
  %cpu1.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6
  %insert.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 3
  %122 = ptrtoint ptr %insert.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %insert.i, align 4
  %position.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 4
  %124 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %position.i, align 4
  %rx_length.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 5
  %126 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_length.i, align 4
  %format.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 6
  %128 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %format.i, align 4
  %trap_port.i = getelementptr inbounds %struct.rtl8365mb, ptr %117, i32 0, i32 6, i32 2
  %130 = ptrtoint ptr %trap_port.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %trap_port.i, align 4
  %shl75.i = shl i32 %123, 1
  %and76.i = and i32 %shl75.i, 6
  %132 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cpu1.i, align 4, !range !369
  %134 = zext i8 %133 to i32
  %shl101.i = shl i32 %125, 6
  %and102.i = and i32 %shl101.i, 64
  %shl128.i = shl i32 %127, 7
  %and129.i = and i32 %shl128.i, 128
  %shl155.i = shl i32 %129, 9
  %and156.i = and i32 %shl155.i, 512
  %shl182.i = shl i32 %131, 3
  %and183.i = and i32 %shl182.i, 56
  %135 = shl i32 %131, 7
  %and213.i = and i32 %135, 1024
  %or.i = or i32 %and102.i, %and76.i
  %or103.i = or i32 %or.i, %and129.i
  %or130.i = or i32 %or103.i, %and156.i
  %or157.i = or i32 %or130.i, %and183.i
  %or184.i = or i32 %or157.i, %and213.i
  %or214.i = or i32 %or184.i, %134
  %136 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map.i, align 4
  %call216.i = call i32 @regmap_write(ptr noundef %137, i32 noundef 4634, i32 noundef %or214.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216.i)
  %tobool20.not = icmp eq i32 %call216.i, 0
  br i1 %tobool20.not, label %for.cond.preheader, label %do.body26.i.out_teardown_irq_crit_edge

do.body26.i.out_teardown_irq_crit_edge:           ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown_irq

for.cond.preheader:                               ; preds = %do.body26.i
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 14
  %138 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp23170.not = icmp eq i32 %139, 0
  br i1 %cmp23170.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ds24 = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %140 = ptrtoint ptr %ds24 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ds24, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_unused_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_unused_port.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %145 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %146, %141
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %147 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %i.0171)
  %cmp5.i.i = icmp eq i32 %148, %i.0171
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %149 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i128 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i128, i32 0, i32 6
  %150 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp.i129 = icmp eq i32 %151, 0
  br i1 %cmp.i129, label %dsa_is_unused_port.exit.for.inc_crit_edge, label %if.end27

dsa_is_unused_port.exit.for.inc_crit_edge:        ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end27:                                         ; preds = %dsa_is_unused_port.exit
  %arrayidx = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %i.0171
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %1, ptr %arrayidx, align 8
  %index = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %i.0171, i32 1
  %153 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %i.0171, ptr %index, align 4
  %154 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu_port, align 4
  %shl = shl nuw i32 1, %155
  %156 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %map.i, align 4
  %add.i = add i32 %i.0171, 2210
  %call.i131 = call i32 @regmap_write(ptr noundef %157, i32 noundef %add.i, i32 noundef %shl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool30.not = icmp eq i32 %call.i131, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.out_teardown_irq_crit_edge

if.end27.out_teardown_irq_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown_irq

if.end32:                                         ; preds = %if.end27
  %add.i132 = add i32 %i.0171, 2592
  %158 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %map.i, align 4
  %call.i134 = call i32 @regmap_write(ptr noundef %159, i32 noundef %add.i132, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool34.not = icmp eq i32 %call.i134, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_teardown_irq_crit_edge

if.end32.out_teardown_irq_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown_irq

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %ds24 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ds24, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %priv.i, align 4
  %map.i136 = getelementptr inbounds %struct.realtek_smi, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %map.i136 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map.i136, align 4
  %shr.i137 = ashr i32 %i.0171, 3
  %add5.i = add nsw i32 %shr.i137, 2560
  %shl6.i = shl i32 %i.0171, 1
  %shl7.i = shl i32 3, %shl6.i
  %call.i.i138 = call i32 @regmap_update_bits_base(ptr noundef %165, i32 noundef %add5.i, i32 noundef %shl7.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %dsa_is_unused_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.0171, 1
  %166 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_ports, align 4
  %cmp23 = icmp ult i32 %inc, %167
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %168 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %map.i, align 4
  %call.i140 = call i32 @regmap_update_bits_base(ptr noundef %169, i32 noundef 2188, i32 noundef 16383, i32 noundef 1536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool54.not = icmp eq i32 %call.i140, 0
  br i1 %tobool54.not, label %if.end56, label %for.end.out_teardown_irq_crit_edge

for.end.out_teardown_irq_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown_irq

if.end56:                                         ; preds = %for.end
  %call57 = call i32 @realtek_smi_setup_mdio(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.13) #10
  br label %out_teardown_irq

if.end64:                                         ; preds = %if.end56
  %172 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %chip_data, align 4
  %mib_lock.i = getelementptr inbounds %struct.rtl8365mb, ptr %173, i32 0, i32 7
  call void @__mutex_init(ptr noundef %mib_lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @rtl8365mb_stats_setup.__key) #7
  %174 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp37.not.i = icmp eq i32 %175, 0
  br i1 %cmp37.not.i, label %if.end64.cleanup65_crit_edge, label %for.body.lr.ph.i143

if.end64.cleanup65_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

for.body.lr.ph.i143:                              ; preds = %if.end64
  %ds.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  br label %for.body.i144

for.body.i144:                                    ; preds = %cleanup.i.for.body.i144_crit_edge, %for.body.lr.ph.i143
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i143 ], [ %inc.i145, %cleanup.i.for.body.i144_crit_edge ]
  %176 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i144.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i144.for.body.i.i.i_crit_edge

for.body.i144.for.body.i.i.i_crit_edge:           ; preds = %for.body.i144
  br label %for.body.i.i.i

for.body.i144.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i144.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i144.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %181 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %182, %177
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %183 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %i.038.i)
  %cmp5.i.i.i = icmp eq i32 %184, %i.038.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %185 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i144.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i144.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %186 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i.i = icmp eq i32 %187, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.cleanup.i_crit_edge, label %do.body1.i

dsa_is_unused_port.exit.i.cleanup.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.body1.i:                                       ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %stats_lock.i = getelementptr %struct.rtl8365mb, ptr %173, i32 0, i32 8, i32 %i.038.i, i32 3
  call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @rtl8365mb_stats_setup.__key.37, i16 noundef signext 3) #7
  %mib_work.i = getelementptr %struct.rtl8365mb, ptr %173, i32 0, i32 8, i32 %i.038.i, i32 4
  call void @__init_work(ptr noundef %mib_work.i, i32 noundef 0) #7
  %188 = ptrtoint ptr %mib_work.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -64, ptr %mib_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %mib_work.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @rtl8365mb_stats_setup.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry13.i = getelementptr inbounds %struct.work_struct, ptr %mib_work.i, i32 0, i32 1
  %189 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %entry13.i, ptr %entry13.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %mib_work.i, i32 0, i32 1, i32 1
  %190 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %entry13.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %mib_work.i, i32 0, i32 2
  %191 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @rtl8365mb_stats_poll, ptr %func.i, align 4
  %timer.i = getelementptr %struct.rtl8365mb, ptr %173, i32 0, i32 8, i32 %i.038.i, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @rtl8365mb_stats_setup.__key.41) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body1.i, %dsa_is_unused_port.exit.i.cleanup.i_crit_edge
  %inc.i145 = add nuw i32 %i.038.i, 1
  %192 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %num_ports, align 4
  %cmp.i146 = icmp ult i32 %inc.i145, %193
  br i1 %cmp.i146, label %cleanup.i.for.body.i144_crit_edge, label %cleanup.i.cleanup65_crit_edge

cleanup.i.cleanup65_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

cleanup.i.for.body.i144_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i144

out_teardown_irq:                                 ; preds = %do.end62, %for.end.out_teardown_irq_crit_edge, %if.end32.out_teardown_irq_crit_edge, %if.end27.out_teardown_irq_crit_edge, %do.body26.i.out_teardown_irq_crit_edge, %if.end18.out_teardown_irq_crit_edge
  %ret.2 = phi i32 [ %call216.i, %do.body26.i.out_teardown_irq_crit_edge ], [ %call.i140, %for.end.out_teardown_irq_crit_edge ], [ %call57, %do.end62 ], [ %call.i.i126, %if.end18.out_teardown_irq_crit_edge ], [ %call.i134, %if.end32.out_teardown_irq_crit_edge ], [ %call.i131, %if.end27.out_teardown_irq_crit_edge ]
  call fastcc void @rtl8365mb_irq_teardown(ptr noundef %1)
  br label %cleanup65

cleanup65:                                        ; preds = %out_teardown_irq, %cleanup.i.cleanup65_crit_edge, %if.end64.cleanup65_crit_edge, %rtl8365mb_irq_setup.exit.cleanup65_crit_edge, %rtl8365mb_irq_setup.exit.thread164, %do.end6, %do.end
  %retval.0 = phi i32 [ %ret.1.i, %rtl8365mb_irq_setup.exit.cleanup65_crit_edge ], [ %tobool40.not58.i.ph, %do.end ], [ %retval.0.i153, %do.end6 ], [ %ret.2, %out_teardown_irq ], [ 0, %if.end64.cleanup65_crit_edge ], [ -517, %rtl8365mb_irq_setup.exit.thread164 ], [ 0, %cleanup.i.cleanup65_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_teardown(ptr nocapture noundef readonly %ds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %num_ports.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i, label %entry.rtl8365mb_stats_teardown.exit_crit_edge, label %for.body.lr.ph.i

entry.rtl8365mb_stats_teardown.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_stats_teardown.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ds.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %11 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %12, %7
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %i.09.i)
  %cmp5.i.i.i = icmp eq i32 %14, %i.09.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %15 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.cleanup.i_crit_edge, label %if.end.i

dsa_is_unused_port.exit.i.cleanup.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mib_work.i = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %i.09.i, i32 4
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_work.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %dsa_is_unused_port.exit.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %18 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.rtl8365mb_stats_teardown.exit_crit_edge

cleanup.i.rtl8365mb_stats_teardown.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_stats_teardown.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtl8365mb_stats_teardown.exit:                    ; preds = %cleanup.i.rtl8365mb_stats_teardown.exit_crit_edge, %entry.rtl8365mb_stats_teardown.exit_crit_edge
  tail call fastcc void @rtl8365mb_irq_teardown(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_phylink_validate(ptr noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #1 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #7
  %2 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %5 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %land.lhs.true.dsa_is_user_port.exit.i_crit_edge, label %land.lhs.true.for.body.i.i.i_crit_edge

land.lhs.true.for.body.i.i.i_crit_edge:           ; preds = %land.lhs.true
  br label %for.body.i.i.i

land.lhs.true.dsa_is_user_port.exit.i_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %land.lhs.true.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %land.lhs.true.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %8 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %9, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %10 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %11, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %12 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, %land.lhs.true.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %land.lhs.true.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 3
  br i1 %cmp.i.i, label %land.lhs.true.i, label %dsa_is_user_port.exit.i.if.else.i_crit_edge

dsa_is_user_port.exit.i.if.else.i_crit_edge:      ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dsa_is_user_port.exit.i
  %15 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %4, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 0, label %land.lhs.true.i.if.end_crit_edge
    i32 1, label %land.lhs.true.i.if.end_crit_edge48
    i32 3, label %land.lhs.true.i.if.end_crit_edge49
  ]

land.lhs.true.i.if.end_crit_edge49:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end_crit_edge48:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dsa_is_user_port.exit.i.if.else.i_crit_edge
  br i1 %cmp.not21.i.i.i, label %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge, label %if.else.i.for.body.i.i21.i_crit_edge

if.else.i.for.body.i.i21.i_crit_edge:             ; preds = %if.else.i
  br label %for.body.i.i21.i

if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_phy_mode_supported.exit

for.body.i.i21.i:                                 ; preds = %for.inc.i.i27.i.for.body.i.i21.i_crit_edge, %if.else.i.for.body.i.i21.i_crit_edge
  %.pn22.i.i18.i = phi ptr [ %.pn.i.i25.i, %for.inc.i.i27.i.for.body.i.i21.i_crit_edge ], [ %.pn20.i.i.i, %if.else.i.for.body.i.i21.i_crit_edge ]
  %ds3.i.i19.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -432
  %16 = ptrtoint ptr %ds3.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds3.i.i19.i, align 4
  %cmp4.i.i20.i = icmp eq ptr %17, %ds
  br i1 %cmp4.i.i20.i, label %land.lhs.true.i.i24.i, label %for.body.i.i21.i.for.inc.i.i27.i_crit_edge

for.body.i.i21.i.for.inc.i.i27.i_crit_edge:       ; preds = %for.body.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i27.i

land.lhs.true.i.i24.i:                            ; preds = %for.body.i.i21.i
  %index.i.i22.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -428
  %18 = ptrtoint ptr %index.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %port)
  %cmp5.i.i23.i = icmp eq i32 %19, %port
  br i1 %cmp5.i.i23.i, label %cleanup.split.loop.exit18.i.i29.i, label %land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge

land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge:  ; preds = %land.lhs.true.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i27.i

for.inc.i.i27.i:                                  ; preds = %land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge, %for.body.i.i21.i.for.inc.i.i27.i_crit_edge
  %20 = ptrtoint ptr %.pn22.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i25.i = load ptr, ptr %.pn22.i.i18.i, align 4
  %cmp.not.i.i26.i = icmp eq ptr %.pn.i.i25.i, %ports.i.i.i
  br i1 %cmp.not.i.i26.i, label %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge, label %for.inc.i.i27.i.for.body.i.i21.i_crit_edge

for.inc.i.i27.i.for.body.i.i21.i_crit_edge:       ; preds = %for.inc.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i21.i

for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge: ; preds = %for.inc.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_phy_mode_supported.exit

cleanup.split.loop.exit18.i.i29.i:                ; preds = %land.lhs.true.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i28.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -448
  br label %rtl8365mb_phy_mode_supported.exit

rtl8365mb_phy_mode_supported.exit:                ; preds = %cleanup.split.loop.exit18.i.i29.i, %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge, %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge
  %retval.0.i.i30.i = phi ptr [ %dp.0.le.i.i28.i, %cleanup.split.loop.exit18.i.i29.i ], [ null, %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge ], [ null, %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge ]
  %type.i31.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i30.i, i32 0, i32 6
  %21 = ptrtoint ptr %type.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i32.i = icmp eq i32 %22, 1
  %23 = add i32 %4, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %24 = icmp ult i32 %23, 4
  %or.cond.i = and i1 %24, %cmp.i32.i
  br i1 %or.cond.i, label %rtl8365mb_phy_mode_supported.exit.if.end_crit_edge, label %do.end

rtl8365mb_phy_mode_supported.exit.if.end_crit_edge: ; preds = %rtl8365mb_phy_mode_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %rtl8365mb_phy_mode_supported.exit
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %4)
  %27 = icmp ult i32 %4, 30
  br i1 %27, label %switch.lookup, label %do.end.phy_modes.exit_crit_edge

do.end.phy_modes.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.rtl8365mb_phylink_validate, i32 0, i32 %4
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %do.end.phy_modes.exit_crit_edge
  %retval.0.i33 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.133, %do.end.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.101, ptr noundef nonnull %retval.0.i33, i32 noundef %port) #10
  %29 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

if.end:                                           ; preds = %rtl8365mb_phy_mode_supported.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge48, %land.lhs.true.i.if.end_crit_edge49, %entry.if.end_crit_edge
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #7
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %or.i32 = or i32 %31, 24687
  store i32 %or.i32, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #7
  %call.i.i34 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %phy_modes.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_phylink_mac_config(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readonly %state) #1 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %entry.dsa_is_user_port.exit.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.dsa_is_user_port.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %entry.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %8, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %10, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, %entry.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %entry.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 3
  br i1 %cmp.i.i, label %land.lhs.true.i, label %dsa_is_user_port.exit.i.if.else.i_crit_edge

dsa_is_user_port.exit.i.if.else.i_crit_edge:      ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dsa_is_user_port.exit.i
  %14 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %3, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 0, label %land.lhs.true.i.if.end_crit_edge
    i32 1, label %land.lhs.true.i.if.end_crit_edge62
    i32 3, label %land.lhs.true.i.if.end_crit_edge63
  ]

land.lhs.true.i.if.end_crit_edge63:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end_crit_edge62:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dsa_is_user_port.exit.i.if.else.i_crit_edge
  br i1 %cmp.not21.i.i.i, label %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge, label %if.else.i.for.body.i.i21.i_crit_edge

if.else.i.for.body.i.i21.i_crit_edge:             ; preds = %if.else.i
  br label %for.body.i.i21.i

if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_phy_mode_supported.exit

for.body.i.i21.i:                                 ; preds = %for.inc.i.i27.i.for.body.i.i21.i_crit_edge, %if.else.i.for.body.i.i21.i_crit_edge
  %.pn22.i.i18.i = phi ptr [ %.pn.i.i25.i, %for.inc.i.i27.i.for.body.i.i21.i_crit_edge ], [ %.pn20.i.i.i, %if.else.i.for.body.i.i21.i_crit_edge ]
  %ds3.i.i19.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -432
  %15 = ptrtoint ptr %ds3.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds3.i.i19.i, align 4
  %cmp4.i.i20.i = icmp eq ptr %16, %ds
  br i1 %cmp4.i.i20.i, label %land.lhs.true.i.i24.i, label %for.body.i.i21.i.for.inc.i.i27.i_crit_edge

for.body.i.i21.i.for.inc.i.i27.i_crit_edge:       ; preds = %for.body.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i27.i

land.lhs.true.i.i24.i:                            ; preds = %for.body.i.i21.i
  %index.i.i22.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -428
  %17 = ptrtoint ptr %index.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %port)
  %cmp5.i.i23.i = icmp eq i32 %18, %port
  br i1 %cmp5.i.i23.i, label %cleanup.split.loop.exit18.i.i29.i, label %land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge

land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge:  ; preds = %land.lhs.true.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i27.i

for.inc.i.i27.i:                                  ; preds = %land.lhs.true.i.i24.i.for.inc.i.i27.i_crit_edge, %for.body.i.i21.i.for.inc.i.i27.i_crit_edge
  %19 = ptrtoint ptr %.pn22.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i25.i = load ptr, ptr %.pn22.i.i18.i, align 4
  %cmp.not.i.i26.i = icmp eq ptr %.pn.i.i25.i, %ports.i.i.i
  br i1 %cmp.not.i.i26.i, label %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge, label %for.inc.i.i27.i.for.body.i.i21.i_crit_edge

for.inc.i.i27.i.for.body.i.i21.i_crit_edge:       ; preds = %for.inc.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i21.i

for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge: ; preds = %for.inc.i.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_phy_mode_supported.exit

cleanup.split.loop.exit18.i.i29.i:                ; preds = %land.lhs.true.i.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i28.i = getelementptr i8, ptr %.pn22.i.i18.i, i32 -448
  br label %rtl8365mb_phy_mode_supported.exit

rtl8365mb_phy_mode_supported.exit:                ; preds = %cleanup.split.loop.exit18.i.i29.i, %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge, %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge
  %retval.0.i.i30.i = phi ptr [ %dp.0.le.i.i28.i, %cleanup.split.loop.exit18.i.i29.i ], [ null, %if.else.i.rtl8365mb_phy_mode_supported.exit_crit_edge ], [ null, %for.inc.i.i27.i.rtl8365mb_phy_mode_supported.exit_crit_edge ]
  %type.i31.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i30.i, i32 0, i32 6
  %20 = ptrtoint ptr %type.i31.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i32.i = icmp eq i32 %21, 1
  %22 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  %or.cond.i = and i1 %23, %cmp.i32.i
  br i1 %or.cond.i, label %rtl8365mb_phy_mode_supported.exit.if.end_crit_edge, label %do.end

rtl8365mb_phy_mode_supported.exit.if.end_crit_edge: ; preds = %rtl8365mb_phy_mode_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %rtl8365mb_phy_mode_supported.exit
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %3)
  %26 = icmp ult i32 %3, 30
  br i1 %26, label %switch.lookup, label %do.end.phy_modes.exit_crit_edge

do.end.phy_modes.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.rtl8365mb_phylink_mac_config, i32 0, i32 %3
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %do.end.phy_modes.exit_crit_edge
  %retval.0.i36 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.133, %do.end.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.101, ptr noundef nonnull %retval.0.i36, i32 noundef %port) #10
  br label %cleanup

if.end:                                           ; preds = %rtl8365mb_phy_mode_supported.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge62, %land.lhs.true.i.if.end_crit_edge63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch = icmp ult i32 %mode, 2
  br i1 %switch, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.136, i32 noundef %port) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %30 = add nsw i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i, align 4, !annotation !368
  %cpu_port.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %cpu_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu_port.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %port)
  %cmp.i = icmp eq i32 %34, %port
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then12
  %ds.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ds.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.then.i.dsa_to_port.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dsa_to_port.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.then.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %40 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %41, %36
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %port)
  %cmp5.i.i = icmp eq i32 %43, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %44 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.then.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.then.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %dn1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 12
  %45 = ptrtoint ptr %dn1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dn1.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.143, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then3.i, label %dsa_to_port.exit.i.if.end14.i_crit_edge

dsa_to_port.exit.i.if.end14.i_crit_edge:          ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.141) #10
  br label %rtl8365mb_ext_config_rgmii.exit.thread

if.then3.i:                                       ; preds = %dsa_to_port.exit.i
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %div.i = udiv i32 %50, 1000
  store i32 %div.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %50)
  %51 = icmp ult i32 %50, 1000
  %.off.i = add i32 %50, -2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %.off.i)
  %52 = icmp ult i32 %.off.i, 1000
  %or.cond.i37 = or i1 %51, %52
  br i1 %or.cond.i37, label %if.then6.i, label %do.end11.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = shl nuw nsw i32 %div.i, 2
  %phi.bo55 = and i32 %53, 8
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.145) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.then6.i, %dsa_to_port.exit.i.if.end14.i_crit_edge
  %tx_delay.0.i = phi i32 [ 0, %dsa_to_port.exit.i.if.end14.i_crit_edge ], [ %phi.bo55, %if.then6.i ], [ 0, %do.end11.i ]
  %call.i.i5.i = call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.148, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i5.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i5.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end28.i_crit_edge

if.end14.i.if.end28.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then17.i:                                      ; preds = %if.end14.i
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  %add.i = add i32 %57, 150
  %div19.i = udiv i32 %add.i, 300
  store i32 %div19.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %add.i)
  %cmp20.i = icmp ult i32 %add.i, 2400
  br i1 %cmp20.i, label %if.then17.i.if.end28.i_crit_edge, label %do.end25.i

if.then17.i.if.end28.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.150) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end25.i, %if.then17.i.if.end28.i_crit_edge, %if.end14.i.if.end28.i_crit_edge
  %rx_delay.0.i = phi i32 [ 0, %if.end14.i.if.end28.i_crit_edge ], [ 0, %do.end25.i ], [ %div19.i, %if.then17.i.if.end28.i_crit_edge ]
  %map.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %and73.i = and i32 %rx_delay.0.i, 7
  %or.i = or i32 %and73.i, %tx_delay.0.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 4871, i32 noundef 15, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool75.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool75.not.i, label %rtl8365mb_ext_config_rgmii.exit, label %if.end28.i.rtl8365mb_ext_config_rgmii.exit.thread_crit_edge

if.end28.i.rtl8365mb_ext_config_rgmii.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_ext_config_rgmii.exit.thread

rtl8365mb_ext_config_rgmii.exit.thread:           ; preds = %if.end28.i.rtl8365mb_ext_config_rgmii.exit.thread_crit_edge, %do.end.i
  %retval.0.i38.ph = phi i32 [ %call.i.i, %if.end28.i.rtl8365mb_ext_config_rgmii.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %do.end18

rtl8365mb_ext_config_rgmii.exit:                  ; preds = %if.end28.i
  %62 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map.i, align 4
  %call.i6.i = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 4869, i32 noundef 30, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool.not, label %rtl8365mb_ext_config_rgmii.exit.cleanup_crit_edge, label %rtl8365mb_ext_config_rgmii.exit.do.end18_crit_edge

rtl8365mb_ext_config_rgmii.exit.do.end18_crit_edge: ; preds = %rtl8365mb_ext_config_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

rtl8365mb_ext_config_rgmii.exit.cleanup_crit_edge: ; preds = %rtl8365mb_ext_config_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %rtl8365mb_ext_config_rgmii.exit.do.end18_crit_edge, %rtl8365mb_ext_config_rgmii.exit.thread
  %retval.0.i3842 = phi i32 [ %retval.0.i38.ph, %rtl8365mb_ext_config_rgmii.exit.thread ], [ %call.i6.i, %rtl8365mb_ext_config_rgmii.exit.do.end18_crit_edge ]
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.139, i32 noundef %port, i32 noundef %retval.0.i3842) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %rtl8365mb_ext_config_rgmii.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %phy_modes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_phylink_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %mib_work = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %port, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_work) #7
  %4 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %cpu_port.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %cpu_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_port.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %port)
  %cmp.i = icmp eq i32 %7, %port
  br i1 %cmp.i, label %rtl8365mb_ext_config_forcemode.exit, label %rtl8365mb_ext_config_forcemode.exit.thread

rtl8365mb_ext_config_forcemode.exit.thread:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.141) #10
  br label %do.end

rtl8365mb_ext_config_forcemode.exit:              ; preds = %if.then
  %map.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %call176.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 4881, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool.not = icmp eq i32 %call176.i, 0
  br i1 %tobool.not, label %rtl8365mb_ext_config_forcemode.exit.cleanup_crit_edge, label %rtl8365mb_ext_config_forcemode.exit.do.end_crit_edge

rtl8365mb_ext_config_forcemode.exit.do.end_crit_edge: ; preds = %rtl8365mb_ext_config_forcemode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

rtl8365mb_ext_config_forcemode.exit.cleanup_crit_edge: ; preds = %rtl8365mb_ext_config_forcemode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %rtl8365mb_ext_config_forcemode.exit.do.end_crit_edge, %rtl8365mb_ext_config_forcemode.exit.thread
  %retval.0.i15 = phi i32 [ -22, %rtl8365mb_ext_config_forcemode.exit.thread ], [ %call176.i, %rtl8365mb_ext_config_forcemode.exit.do.end_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.152, i32 noundef %port, i32 noundef %retval.0.i15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rtl8365mb_ext_config_forcemode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_phylink_mac_link_up(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %mib_work = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %port, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %mib_work, i32 noundef 0) #7
  %5 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @rtl8365mb_ext_config_forcemode(ptr noundef %1, i32 noundef %port, i1 noundef zeroext true, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef %port, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.05, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 32)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 58
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %mib_lock = getelementptr inbounds %struct.rtl8365mb, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mib_lock, i32 noundef 0) #7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 58
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %length = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.014, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %arrayidx1 = getelementptr i64, ptr %data, i32 %i.014
  %call = tail call fastcc i32 @rtl8365mb_mib_counter_read(ptr noundef %1, i32 noundef %port, i32 noundef %5, i32 noundef %7, ptr noundef %arrayidx1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.163, i32 noundef %port, i32 noundef %call) #10
  br label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mib_lock) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8365mb_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 58, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_phy_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %phy_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %mib_lock = getelementptr inbounds %struct.rtl8365mb, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mib_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @rtl8365mb_mib_counter_read(ptr noundef %1, i32 noundef %port, i32 noundef 6, i32 noundef 2, ptr noundef %phy_stats)
  tail call void @mutex_unlock(ptr noundef %mib_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_mac_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %mac_stats) #1 align 64 {
entry:
  %cnt = alloca [58 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %cnt) #7
  %0 = call ptr @memcpy(ptr %cnt, ptr @__const.rtl8365mb_get_mac_stats.cnt, i32 464)
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data, align 4
  %mib_lock = getelementptr inbounds %struct.rtl8365mb, ptr %4, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mib_lock, i32 noundef 0) #7
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %i.063 = phi i32 [ 0, %entry ], [ %i.063.be, %for.body.backedge ]
  %arrayidx1 = getelementptr [58 x i64], ptr %cnt, i32 0, i32 %i.063
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  %arrayidx = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.063
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %length = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.063, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %call = call fastcc i32 @rtl8365mb_mib_counter_read(ptr noundef %2, i32 noundef %port, i32 noundef %8, i32 noundef %10, ptr noundef %arrayidx1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not.not = icmp ne i32 %call, 0
  %inc = add nuw nsw i32 %i.063, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 58
  %or.cond = select i1 %tobool3.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %cleanup.for.end_crit_edge, label %cleanup.for.body.backedge_crit_edge

cleanup.for.body.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc.old = add nuw nsw i32 %i.063, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %inc.old)
  %exitcond.not.old = icmp eq i32 %inc.old, 58
  br i1 %exitcond.not.old, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %cleanup.for.body.backedge_crit_edge
  %i.063.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %cleanup.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mib_lock) #7
  %arrayidx7 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 38
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 39
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx8, align 8
  %add = add i64 %14, %12
  %arrayidx9 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 40
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %add, %16
  %arrayidx11 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 35
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %add10, %18
  %arrayidx13 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 36
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx13, align 8
  %sub = sub i64 %add12, %20
  %21 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub, ptr %mac_stats, align 8
  %arrayidx14 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 29
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx14, align 8
  %SingleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 1
  %24 = ptrtoint ptr %SingleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %SingleCollisionFrames, align 8
  %arrayidx15 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 30
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx15, align 8
  %MultipleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 2
  %27 = ptrtoint ptr %MultipleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %MultipleCollisionFrames, align 8
  %arrayidx16 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 9
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %31, %29
  %arrayidx19 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 10
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx19, align 8
  %add20 = add i64 %add18, %33
  %arrayidx21 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %add20, %35
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %36 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add22, ptr %FramesReceivedOK, align 8
  %arrayidx23 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx23, align 8
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %39 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %FrameCheckSequenceErrors, align 8
  %arrayidx24 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 28
  %40 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx24, align 8
  %mul.neg = mul i64 %sub, -18
  %sub26 = add i64 %41, %mul.neg
  %OctetsTransmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 6
  %42 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub26, ptr %OctetsTransmittedOK, align 8
  %arrayidx27 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 31
  %43 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx27, align 8
  %FramesWithDeferredXmissions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 7
  %45 = ptrtoint ptr %FramesWithDeferredXmissions to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %FramesWithDeferredXmissions, align 8
  %arrayidx28 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 32
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx28, align 8
  %LateCollisions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 8
  %48 = ptrtoint ptr %LateCollisions to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %LateCollisions, align 8
  %arrayidx29 = getelementptr inbounds [58 x i64], ptr %cnt, i32 0, i32 34
  %49 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx29, align 8
  %FramesAbortedDueToXSColls = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 9
  %51 = ptrtoint ptr %FramesAbortedDueToXSColls to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %FramesAbortedDueToXSColls, align 8
  %52 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cnt, align 8
  %mul32.neg = mul i64 %add22, -18
  %sub33 = add i64 %53, %mul32.neg
  %OctetsReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 12
  %54 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sub33, ptr %OctetsReceivedOK, align 8
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 14
  %55 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %14, ptr %MulticastFramesXmittedOK, align 8
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 15
  %56 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %16, ptr %BroadcastFramesXmittedOK, align 8
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 17
  %57 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %31, ptr %MulticastFramesReceivedOK, align 8
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 18
  %58 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %33, ptr %BroadcastFramesReceivedOK, align 8
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %cnt) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_ctrl_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %ctrl_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %mib_lock = getelementptr inbounds %struct.rtl8365mb, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mib_lock, i32 noundef 0) #7
  %UnsupportedOpcodesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 2
  %call = tail call fastcc i32 @rtl8365mb_mib_counter_read(ptr noundef %1, i32 noundef %port, i32 noundef 10, i32 noundef 2, ptr noundef %UnsupportedOpcodesReceived)
  tail call void @mutex_unlock(ptr noundef %mib_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_get_stats64(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %stats_lock = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %port, i32 3
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #7
  %stats = getelementptr %struct.rtl8365mb, ptr %3, i32 0, i32 8, i32 %port, i32 2
  %4 = call ptr @memcpy(ptr %s, ptr %stats, i32 192)
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %2 = icmp ult i8 %state, 5
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %state to i32
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.165, i32 noundef %conv) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl8365mb_port_stp_state_set, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %shr = ashr i32 %port, 3
  %add5 = add nsw i32 %shr, 2560
  %shl6 = shl i32 %port, 1
  %shl7 = shl i32 3, %shl6
  %shl9 = shl i32 %switch.load, %shl6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add5, i32 noundef %shl7, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @realtek_smi_setup_mdio(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8365mb_irq_teardown(ptr noundef %smi) unnamed_addr #1 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 22
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %irq = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %smi) #7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqdomain = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 11
  %5 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irqdomain, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %for.cond.preheader

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.cond.preheader:                               ; preds = %if.end
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20.not = icmp eq i32 %8, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %irq_find_mapping.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i, align 4, !annotation !368
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef %i.021, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #7
  %inc = add nuw i32 %i.021, 1
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.for.end_crit_edge

irq_find_mapping.exit.for.end_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqdomain, align 4
  call void @irq_domain_remove(ptr noundef %17) #7
  %18 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %irqdomain, align 4
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @realtek_smi_write_reg_noack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %line_changes = alloca i32, align 4
  %stat = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_changes) #7
  %0 = ptrtoint ptr %line_changes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %line_changes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #7
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stat, align 4, !annotation !368
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 22
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %map.i = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 4354, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rtl8365mb_get_and_clear_status_reg.exit, label %entry.do.end56_crit_edge

entry.do.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

rtl8365mb_get_and_clear_status_reg.exit:          ; preds = %entry
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %7, i32 noundef 4354, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %rtl8365mb_get_and_clear_status_reg.exit.do.end56_crit_edge

rtl8365mb_get_and_clear_status_reg.exit.do.end56_crit_edge: ; preds = %rtl8365mb_get_and_clear_status_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end:                                           ; preds = %rtl8365mb_get_and_clear_status_reg.exit
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end45thread-pre-split, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val, align 4, !annotation !368
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %call.i79 = call i32 @regmap_read(ptr noundef %14, i32 noundef 4359, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %rtl8365mb_get_and_clear_status_reg.exit84, label %if.then2.cleanup.thread_crit_edge

if.then2.cleanup.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

rtl8365mb_get_and_clear_status_reg.exit84:        ; preds = %if.then2
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %call2.i81 = call i32 @regmap_write(ptr noundef %16, i32 noundef 4359, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81)
  %tobool4.not = icmp eq i32 %call2.i81, 0
  br i1 %tobool4.not, label %do.end18, label %rtl8365mb_get_and_clear_status_reg.exit84.cleanup.thread_crit_edge

rtl8365mb_get_and_clear_status_reg.exit84.cleanup.thread_crit_edge: ; preds = %rtl8365mb_get_and_clear_status_reg.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.end18:                                         ; preds = %rtl8365mb_get_and_clear_status_reg.exit84
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %call.i86 = call i32 @regmap_read(ptr noundef %22, i32 noundef 4358, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %rtl8365mb_get_and_clear_status_reg.exit91, label %do.end18.cleanup.thread_crit_edge

do.end18.cleanup.thread_crit_edge:                ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

rtl8365mb_get_and_clear_status_reg.exit91:        ; preds = %do.end18
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %call2.i88 = call i32 @regmap_write(ptr noundef %24, i32 noundef 4358, i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i88)
  %tobool21.not = icmp eq i32 %call2.i88, 0
  br i1 %tobool21.not, label %cleanup, label %rtl8365mb_get_and_clear_status_reg.exit91.cleanup.thread_crit_edge

rtl8365mb_get_and_clear_status_reg.exit91.cleanup.thread_crit_edge: ; preds = %rtl8365mb_get_and_clear_status_reg.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %rtl8365mb_get_and_clear_status_reg.exit91.cleanup.thread_crit_edge, %do.end18.cleanup.thread_crit_edge, %rtl8365mb_get_and_clear_status_reg.exit84.cleanup.thread_crit_edge, %if.then2.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call2.i88, %rtl8365mb_get_and_clear_status_reg.exit91.cleanup.thread_crit_edge ], [ %call2.i81, %rtl8365mb_get_and_clear_status_reg.exit84.cleanup.thread_crit_edge ], [ %call.i79, %if.then2.cleanup.thread_crit_edge ], [ %call.i86, %do.end18.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %do.end56

cleanup:                                          ; preds = %rtl8365mb_get_and_clear_status_reg.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and1976 = or i32 %28, %20
  %or = and i32 %and1976, 2047
  %port_mask = getelementptr inbounds %struct.rtl8365mb, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_mask, align 8
  %and42 = and i32 %or, %30
  %31 = ptrtoint ptr %line_changes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and42, ptr %line_changes, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %if.end45

if.end45thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %line_changes to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %line_changes, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45thread-pre-split, %cleanup
  %33 = phi i32 [ %.pr, %if.end45thread-pre-split ], [ %and42, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %if.end45.cleanup57_crit_edge, label %if.end48

if.end45.cleanup57_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

if.end48:                                         ; preds = %if.end45
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 14
  %34 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ports, align 4
  %call49 = call i32 @_find_next_bit_be(ptr noundef nonnull %line_changes, i32 noundef %35, i32 noundef 0) #7
  %36 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call49, i32 %37)
  %cmp104 = icmp ult i32 %call49, %37
  br i1 %cmp104, label %for.body.lr.ph, label %if.end48.cleanup57_crit_edge

if.end48.cleanup57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %if.end48
  %irqdomain = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %line.0105 = phi i32 [ %call49, %for.body.lr.ph ], [ %call53, %irq_find_mapping.exit.for.body_crit_edge ]
  %38 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %irq.i, align 4, !annotation !368
  %call.i92 = call ptr @__irq_resolve_mapping(ptr noundef %39, i32 noundef %line.0105, ptr noundef nonnull %irq.i) #7
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i94 = phi i32 [ %42, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i94) #7
  %43 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_ports, align 4
  %add = add nuw i32 %line.0105, 1
  %call53 = call i32 @_find_next_bit_be(ptr noundef nonnull %line_changes, i32 noundef %44, i32 noundef %add) #7
  %45 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %call53, %46
  br i1 %cmp, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.cleanup57_crit_edge

irq_find_mapping.exit.cleanup57_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end56:                                         ; preds = %cleanup.thread, %rtl8365mb_get_and_clear_status_reg.exit.do.end56_crit_edge, %entry.do.end56_crit_edge
  %ret.1 = phi i32 [ %call2.i, %rtl8365mb_get_and_clear_status_reg.exit.do.end56_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ %call.i, %entry.do.end56_crit_edge ]
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.34, i32 noundef %ret.1) #10
  br label %cleanup57

cleanup57:                                        ; preds = %do.end56, %irq_find_mapping.exit.cleanup57_crit_edge, %if.end48.cleanup57_crit_edge, %if.end45.cleanup57_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45.cleanup57_crit_edge ], [ 0, %do.end56 ], [ 1, %if.end48.cleanup57_crit_edge ], [ 1, %irq_find_mapping.exit.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_changes) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_irq_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @rtl8365mb_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 32768, i32 noundef 0) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8365mb_stats_poll(ptr noundef %work) #1 align 64 {
entry:
  %cnt.i = alloca [58 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -244
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %index = getelementptr i8, ptr %work, i32 -240
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %cnt.i) #7
  %4 = call ptr @memcpy(ptr %cnt.i, ptr @__const.rtl8365mb_stats_update.cnt, i32 464)
  %chip_data.i = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_data.i, align 4
  %stats1.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2
  %mib_lock.i = getelementptr inbounds %struct.rtl8365mb, ptr %6, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mib_lock.i, i32 noundef 0) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.096.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.095.i = phi i32 [ -1, %entry ], [ %ret.194.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [58 x i64], ptr %cnt.i, i32 0, i32 %i.096.i
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %cleanup.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %arrayidx2.i = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.096.i
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %length.i = getelementptr [58 x %struct.rtl8365mb_mib_counter], ptr @rtl8365mb_mib_counters, i32 0, i32 %i.096.i, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %call.i = call fastcc i32 @rtl8365mb_mib_counter_read(ptr noundef %1, i32 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef %arrayidx3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.not.i, label %cleanup.i.for.inc.i_crit_edge, label %for.end.thread.i

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.end.thread.i:                                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mib_lock.i) #7
  br label %rtl8365mb_stats_update.exit

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.194.i = phi i32 [ 0, %cleanup.i.for.inc.i_crit_edge ], [ %ret.095.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 58
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @mutex_unlock(ptr noundef %mib_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.194.i)
  %tobool9.not.i = icmp eq i32 %ret.194.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %for.end.i.rtl8365mb_stats_update.exit_crit_edge

for.end.i.rtl8365mb_stats_update.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8365mb_stats_update.exit

if.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %stats_lock.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 3
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i) #7
  %arrayidx14.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx14.i, align 8
  %arrayidx15.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 9
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx15.i, align 8
  %add.i = add i64 %16, %14
  %arrayidx16.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx16.i, align 8
  %add17.i = add i64 %add.i, %18
  %arrayidx18.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 36
  %19 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx18.i, align 8
  %sub.i = sub i64 %add17.i, %20
  %21 = ptrtoint ptr %stats1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub.i, ptr %stats1.i, align 8
  %arrayidx19.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 38
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx19.i, align 8
  %arrayidx20.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 39
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx20.i, align 8
  %add21.i = add i64 %25, %23
  %arrayidx22.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 40
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx22.i, align 8
  %add23.i = add i64 %add21.i, %27
  %tx_packets.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 1
  %28 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add23.i, ptr %tx_packets.i, align 8
  %29 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cnt.i, align 8
  %mul.neg.i = mul i64 %sub.i, -4
  %sub26.i = add i64 %30, %mul.neg.i
  %rx_bytes.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 2
  %31 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub26.i, ptr %rx_bytes.i, align 8
  %arrayidx27.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 28
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx27.i, align 8
  %mul29.neg.i = mul i64 %add23.i, -4
  %sub30.i = add i64 %33, %mul29.neg.i
  %tx_bytes.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 3
  %34 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %sub30.i, ptr %tx_bytes.i, align 8
  %arrayidx31.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 8
  %35 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx31.i, align 8
  %rx_dropped.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 6
  %37 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %rx_dropped.i, align 8
  %tx_dropped.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 7
  %38 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %20, ptr %tx_dropped.i, align 8
  %multicast.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 8
  %39 = ptrtoint ptr %multicast.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %16, ptr %multicast.i, align 8
  %arrayidx34.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 33
  %40 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx34.i, align 8
  %collisions.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 9
  %42 = ptrtoint ptr %collisions.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %collisions.i, align 8
  %arrayidx35.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx35.i, align 8
  %arrayidx36.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx36.i, align 8
  %add37.i = add i64 %46, %44
  %rx_length_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 10
  %47 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add37.i, ptr %rx_length_errors.i, align 8
  %arrayidx38.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx38.i, align 8
  %rx_crc_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 12
  %50 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %rx_crc_errors.i, align 8
  %add41.i = add i64 %49, %add37.i
  %rx_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 4
  %51 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add41.i, ptr %rx_errors.i, align 8
  %tx_aborted_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 16
  %52 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %20, ptr %tx_aborted_errors.i, align 8
  %arrayidx43.i = getelementptr inbounds [58 x i64], ptr %cnt.i, i32 0, i32 32
  %53 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx43.i, align 8
  %tx_window_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 20
  %55 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %tx_window_errors.i, align 8
  %add46.i = add i64 %54, %20
  %tx_errors.i = getelementptr %struct.rtl8365mb, ptr %6, i32 0, i32 8, i32 %3, i32 2, i32 5
  %56 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add46.i, ptr %tx_errors.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #7
  br label %rtl8365mb_stats_update.exit

rtl8365mb_stats_update.exit:                      ; preds = %if.end11.i, %for.end.i.rtl8365mb_stats_update.exit_crit_edge, %for.end.thread.i
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %cnt.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %work, i32 noundef 300) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8365mb_mib_counter_read(ptr nocapture noundef readonly %smi, i32 noundef %port, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef writeonly %mibvalue) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !368
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %mul = mul i32 %port, 124
  %add = add i32 %mul, %offset
  %shr = lshr i32 %add, 2
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 4100, i32 noundef %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1109) #7
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call1292 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4101, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1292)
  %tobool13.not93 = icmp eq i32 %call1292, 0
  br i1 %tobool13.not93, label %if.end.lor.lhs.false_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call12 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4101, ptr noundef nonnull %val) #7
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then26.lor.lhs.false_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call23 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4101, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool30.not = icmp eq i32 %call23, 0
  br i1 %tobool30.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and31 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end38, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %lor.rhs
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and39 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp4894.not = icmp eq i32 %length, 0
  br i1 %cmp4894.not, label %if.end42.for.end56_crit_edge, label %for.body.lr.ph

if.end42.for.end56_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.body.lr.ph:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp43 = icmp eq i32 %length, 4
  %add45 = add i32 %offset, 1
  %rem = and i32 %add45, 3
  %rem.op = or i32 %rem, 4096
  %sub = select i1 %cmp43, i32 4099, i32 %rem.op
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end54.for.body_crit_edge ]
  %tmpvalue.095 = phi i64 [ 0, %for.body.lr.ph ], [ %or, %if.end54.for.body_crit_edge ]
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %add50 = sub i32 %sub, %i.096
  %call51 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add50, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %for.body
  %shl = shl i64 %tmpvalue.095, 16
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and55 = and i32 %18, 65535
  %conv = zext i32 %and55 to i64
  %or = or i64 %shl, %conv
  %inc = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %if.end54.for.end56_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end54.for.end56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.end56:                                        ; preds = %if.end54.for.end56_crit_edge, %if.end42.for.end56_crit_edge
  %tmpvalue.0.lcssa = phi i64 [ 0, %if.end42.for.end56_crit_edge ], [ %or, %if.end54.for.end56_crit_edge ]
  %19 = ptrtoint ptr %mibvalue to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %tmpvalue.0.lcssa, ptr %mibvalue, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %for.body.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end56 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end38.cleanup_crit_edge ], [ %call1292, %if.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call23, %for.end.cleanup_crit_edge ], [ %call51, %for.body.cleanup_crit_edge ], [ %call12, %if.then26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8365mb_ext_config_forcemode(ptr nocapture noundef readonly %smi, i32 noundef %port, i1 noundef zeroext %link, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 13
  %0 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %port)
  %cmp = icmp eq i32 %1, %port
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  br i1 %link, label %if.then3, label %if.then..thread_crit_edge

if.then..thread_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.141) #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %speed, label %do.end18 [
    i32 1000, label %if.then3.if.end22_crit_edge
    i32 100, label %if.then11
    i32 10, label %if.then14
  ]

if.then3.if.end22_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then14:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end18:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smi, align 4
  %call = tail call ptr @phy_speed_to_str(i32 noundef %speed) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.156, ptr noundef %call) #10
  br label %cleanup

if.end22:                                         ; preds = %if.then14, %if.then11, %if.then3.if.end22_crit_edge
  %r_speed.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.then14 ], [ 2, %if.then3.if.end22_crit_edge ]
  %7 = zext i32 %duplex to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %duplex, label %do.end31 [
    i32 1, label %do.end52
    i32 0, label %if.then27
  ]

if.then27:                                        ; preds = %if.end22
  br i1 %tx_pause, label %if.then27._crit_edge, label %if.then27._crit_edge235

if.then27._crit_edge235:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

if.then27._crit_edge:                             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %10

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smi, align 4
  %call33 = tail call ptr @phy_duplex_to_str(i32 noundef %duplex) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.159, ptr noundef %call33) #10
  br label %cleanup

do.end52:                                         ; preds = %if.end22
  br i1 %tx_pause, label %do.end52._crit_edge, label %do.end52._crit_edge236

do.end52._crit_edge236:                           ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

do.end52._crit_edge:                              ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %10

10:                                               ; preds = %do.end52._crit_edge, %if.then27._crit_edge
  br i1 %rx_pause, label %._crit_edge, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

._crit_edge:                                      ; preds = %10
  call void @__sanitizer_cov_trace_pc() #9
  br label %12

11:                                               ; preds = %do.end52._crit_edge236, %if.then27._crit_edge235
  br i1 %rx_pause, label %._crit_edge237, label %..thread_crit_edge238

..thread_crit_edge238:                            ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

._crit_edge237:                                   ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  br label %12

12:                                               ; preds = %._crit_edge237, %._crit_edge
  %13 = phi i32 [ 64, %._crit_edge ], [ 0, %._crit_edge237 ]
  br label %.thread

.thread:                                          ; preds = %12, %..thread_crit_edge238, %..thread_crit_edge, %if.then..thread_crit_edge
  %14 = phi i32 [ %13, %12 ], [ 0, %..thread_crit_edge238 ], [ 64, %..thread_crit_edge ], [ 0, %if.then..thread_crit_edge ]
  %r_link.0215231 = phi i32 [ 16, %12 ], [ 16, %..thread_crit_edge238 ], [ 16, %..thread_crit_edge ], [ 0, %if.then..thread_crit_edge ]
  %r_speed.1216230 = phi i32 [ %r_speed.0, %12 ], [ %r_speed.0, %..thread_crit_edge238 ], [ %r_speed.0, %..thread_crit_edge ], [ 0, %if.then..thread_crit_edge ]
  %r_duplex.0217229 = phi i32 [ %duplex, %12 ], [ %duplex, %..thread_crit_edge238 ], [ %duplex, %..thread_crit_edge ], [ 0, %if.then..thread_crit_edge ]
  %15 = phi i32 [ 32, %12 ], [ 0, %..thread_crit_edge238 ], [ 0, %..thread_crit_edge ], [ 0, %if.then..thread_crit_edge ]
  %shl145 = shl nuw nsw i32 %r_duplex.0217229, 2
  %or = or i32 %14, %r_link.0215231
  %or97 = or i32 %or, %r_speed.1216230
  %or122 = or i32 %or97, %15
  %or147 = or i32 %or122, %shl145
  %or172 = or i32 %or147, 4096
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call176 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4881, i32 noundef %or172) #7
  br label %cleanup

cleanup:                                          ; preds = %.thread, %do.end31, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %do.end18 ], [ -22, %do.end ], [ %call176, %.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_speed_to_str(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_duplex_to_str(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_detect(ptr noundef %smi) #1 align 64 {
entry:
  %chip_id = alloca i32, align 4
  %chip_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 22
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #7
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chip_id, align 4, !annotation !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_ver) #7
  %3 = ptrtoint ptr %chip_ver to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %chip_ver, align 4, !annotation !368
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 5058, i32 noundef 585) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 4864, ptr noundef nonnull %chip_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 4865, ptr noundef nonnull %chip_ver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %rtl8365mb_get_chip_id_and_ver.exit, label %if.end4.i.do.end_crit_edge

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

rtl8365mb_get_chip_id_and_ver.exit:               ; preds = %if.end4.i
  %call9.i = call i32 @regmap_write(ptr noundef %5, i32 noundef 5058, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %if.end, label %rtl8365mb_get_chip_id_and_ver.exit.do.end_crit_edge

rtl8365mb_get_chip_id_and_ver.exit.do.end_crit_edge: ; preds = %rtl8365mb_get_chip_id_and_ver.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %rtl8365mb_get_chip_id_and_ver.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i54 = phi i32 [ %call9.i, %rtl8365mb_get_chip_id_and_ver.exit.do.end_crit_edge ], [ %call5.i, %if.end4.i.do.end_crit_edge ], [ %call1.i, %if.end.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.167, i32 noundef %retval.0.i54) #10
  br label %cleanup

if.end:                                           ; preds = %rtl8365mb_get_chip_id_and_ver.exit
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25447, i32 %9)
  %cond = icmp eq i32 %9, 25447
  %10 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smi, align 4
  %12 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_ver, align 4
  br i1 %cond, label %do.end3, label %do.end21

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.170, i32 noundef %13) #10
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 13
  %14 = ptrtoint ptr %cpu_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %cpu_port, align 4
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %num_ports, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %smi, ptr %1, align 8
  %17 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip_id, align 4
  %chip_id7 = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %chip_id7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %chip_id7, align 8
  %20 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_ver, align 4
  %chip_ver8 = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %chip_ver8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %chip_ver8, align 4
  %23 = load i32, ptr %num_ports, align 4
  %notmask = shl nsw i32 -1, %23
  %sub = xor i32 %notmask, -1
  %port_mask = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %port_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %port_mask, align 8
  %learn_limit_max = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %learn_limit_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2112, ptr %learn_limit_max, align 4
  %jam_table = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %jam_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rtl8365mb_init_jam_8365mb_vc, ptr %jam_table, align 8
  %jam_size = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %jam_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %jam_size, align 4
  %cpu = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %cpu, align 8
  %29 = load i32, ptr %cpu_port, align 4
  %shl11 = shl nuw i32 1, %29
  %mask = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl11, ptr %mask, align 4
  %31 = load i32, ptr %cpu_port, align 4
  %trap_port = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %trap_port to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %trap_port, align 8
  %insert = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %insert to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %insert, align 4
  %position = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %position, align 8
  %rx_length = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %rx_length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %rx_length, align 4
  %format = getelementptr inbounds %struct.rtl8365mb, ptr %1, i32 0, i32 6, i32 6
  %36 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %format, align 8
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.173, i32 noundef %9, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end3, %do.end
  %retval.0 = phi i32 [ %retval.0.i54, %do.end ], [ 0, %do.end3 ], [ -19, %do.end21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_ver) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_phy_read(ptr nocapture noundef readonly %smi, i32 noundef %phy, i32 noundef %regnum) #1 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phy)
  %cmp = icmp sgt i32 %phy, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regnum)
  %cmp1 = icmp sgt i32 %regnum, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %mul = shl i32 %regnum, 1
  %add = add i32 %mul, 41984
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %call.i = tail call fastcc i32 @rtl8365mb_phy_poll_busy(ptr noundef %smi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end3
  %map.i.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %0 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map.i.i, align 4
  %2 = lshr i32 %add, 4
  %and30.i.i = and i32 %2, 4032
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 7445, i32 noundef 4032, i32 noundef %and30.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool31.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool31.not.i.i, label %do.end54.i.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end54.i.i:                                     ; preds = %if.end.i
  %shr65.i.i = lshr exact i32 %add, 1
  %shl56.i.i = shl i32 %phy, 5
  %and57.i.i = and i32 %shl56.i.i, 224
  %and84.i.i = and i32 %shr65.i.i, 31
  %3 = shl i32 %add, 2
  %and112.i.i = and i32 %3, 3840
  %or.i.i = or i32 %and57.i.i, %and84.i.i
  %or85.i.i = or i32 %or.i.i, %and112.i.i
  %or113.i.i = or i32 %or85.i.i, 8192
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call115.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 7938, i32 noundef %or113.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i)
  %tobool2.not.i = icmp eq i32 %call115.i.i, 0
  br i1 %tobool2.not.i, label %do.end16.i, label %do.end54.i.i.do.end_crit_edge

do.end54.i.i.do.end_crit_edge:                    ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end16.i:                                       ; preds = %do.end54.i.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %val.i, align 4
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call33.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 7936, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %do.end16.i.do.end_crit_edge

do.end16.i.do.end_crit_edge:                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end36.i:                                       ; preds = %do.end16.i
  %call37.i = tail call fastcc i32 @rtl8365mb_phy_poll_busy(ptr noundef %smi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.do.end_crit_edge

if.end36.i.do.end_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end40.i:                                       ; preds = %if.end36.i
  %9 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.i, align 4
  %call42.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 7940, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.body6, label %if.end40.i.do.end_crit_edge

if.end40.i.do.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end40.i.do.end_crit_edge, %if.end36.i.do.end_crit_edge, %do.end16.i.do.end_crit_edge, %do.end54.i.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end3.do.end_crit_edge
  %retval.0.i31.ph = phi i32 [ %call.i.i.i, %if.end.i.do.end_crit_edge ], [ %call42.i, %if.end40.i.do.end_crit_edge ], [ %call37.i, %if.end36.i.do.end_crit_edge ], [ %call33.i, %do.end16.i.do.end_crit_edge ], [ %call115.i.i, %do.end54.i.i.do.end_crit_edge ], [ %call.i, %if.end3.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.175, i32 noundef %phy, i32 noundef %regnum, i32 noundef %add, i32 noundef %retval.0.i31.ph) #10
  br label %cleanup

do.body6:                                         ; preds = %if.end40.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8365mb_phy_read.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8365mb_phy_read, %if.then11)) #7
          to label %do.end15 [label %if.then11], !srcloc !370

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smi, align 4
  %conv = and i32 %14, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8365mb_phy_read.__UNIQUE_ID_ddebug540, ptr noundef %16, ptr noundef nonnull @.str.178, i32 noundef %phy, i32 noundef %regnum, i32 noundef %add, i32 noundef %conv) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body6
  %conv16 = and i32 %14, 65535
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i31.ph, %do.end ], [ %conv16, %do.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8365mb_phy_write(ptr nocapture noundef readonly %smi, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phy)
  %cmp = icmp sgt i32 %phy, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regnum)
  %cmp1 = icmp sgt i32 %regnum, 31
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %mul = shl i32 %regnum, 1
  %add = add i32 %mul, 41984
  %call.i = tail call fastcc i32 @rtl8365mb_phy_poll_busy(ptr noundef %smi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end3
  %map.i.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %0 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map.i.i, align 4
  %2 = lshr i32 %add, 4
  %and30.i.i = and i32 %2, 4032
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 7445, i32 noundef 4032, i32 noundef %and30.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool31.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool31.not.i.i, label %do.end54.i.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end54.i.i:                                     ; preds = %if.end.i
  %shr65.i.i = lshr exact i32 %add, 1
  %shl56.i.i = shl i32 %phy, 5
  %and57.i.i = and i32 %shl56.i.i, 224
  %and84.i.i = and i32 %shr65.i.i, 31
  %3 = shl i32 %add, 2
  %and112.i.i = and i32 %3, 3840
  %or.i.i = or i32 %and57.i.i, %and84.i.i
  %or85.i.i = or i32 %or.i.i, %and112.i.i
  %or113.i.i = or i32 %or85.i.i, 8192
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call115.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 7938, i32 noundef %or113.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i)
  %tobool2.not.i = icmp eq i32 %call115.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end54.i.i.do.end_crit_edge

do.end54.i.i.do.end_crit_edge:                    ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i:                                        ; preds = %do.end54.i.i
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i.i, align 4
  %conv.i = zext i16 %val to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 7939, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.end20.i, label %if.end4.i.do.end_crit_edge

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end20.i:                                       ; preds = %if.end4.i
  %8 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i.i, align 4
  %call38.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 7936, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %rtl8365mb_phy_ocp_write.exit, label %do.end20.i.do.end_crit_edge

do.end20.i.do.end_crit_edge:                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

rtl8365mb_phy_ocp_write.exit:                     ; preds = %do.end20.i
  %call42.i = tail call fastcc i32 @rtl8365mb_phy_poll_busy(ptr noundef %smi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not = icmp eq i32 %call42.i, 0
  br i1 %tobool.not, label %do.body6, label %rtl8365mb_phy_ocp_write.exit.do.end_crit_edge

rtl8365mb_phy_ocp_write.exit.do.end_crit_edge:    ; preds = %rtl8365mb_phy_ocp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %rtl8365mb_phy_ocp_write.exit.do.end_crit_edge, %do.end20.i.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %do.end54.i.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end3.do.end_crit_edge
  %retval.0.i3033 = phi i32 [ %call42.i, %rtl8365mb_phy_ocp_write.exit.do.end_crit_edge ], [ %call.i.i.i, %if.end.i.do.end_crit_edge ], [ %call38.i, %do.end20.i.do.end_crit_edge ], [ %call5.i, %if.end4.i.do.end_crit_edge ], [ %call115.i.i, %do.end54.i.i.do.end_crit_edge ], [ %call.i, %if.end3.do.end_crit_edge ]
  %10 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.179, i32 noundef %phy, i32 noundef %regnum, i32 noundef %add, i32 noundef %retval.0.i3033) #10
  br label %cleanup

do.body6:                                         ; preds = %rtl8365mb_phy_ocp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8365mb_phy_write.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8365mb_phy_write, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !370

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8365mb_phy_write.__UNIQUE_ID_ddebug541, ptr noundef %13, ptr noundef nonnull @.str.181, i32 noundef %phy, i32 noundef %regnum, i32 noundef %add, i32 noundef %conv.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3033, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8365mb_phy_poll_busy(ptr nocapture noundef readonly %smi) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !368
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 570) #7
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call848 = call i32 @regmap_read(ptr noundef %2, i32 noundef 7937, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call848)
  %tobool.not49 = icmp eq i32 %call848, 0
  br i1 %tobool.not49, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 7937, ptr noundef nonnull %val) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.lor.end_crit_edge

if.then21.lor.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 7937, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  %phi.sel = select i1 %tobool24.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then21.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool23.not39 = phi i32 [ %call18, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call848, %entry.lor.end_crit_edge ], [ %call8, %if.then21.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %tobool23.not39
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !284, !285, !286, !287, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !356, !358}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !{ptr @rtl8365mb_variant, !1, !"rtl8365mb_variant", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1979, i32 34}
!2 = !{ptr @__ksymtab_rtl8365mb_variant, !3, !"__ksymtab_rtl8365mb_variant", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1987, i32 1}
!4 = !{ptr @rtl8365mb_switch_ops, !5, !"rtl8365mb_switch_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1955, i32 36}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1794, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtl8365mb_setup._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8365mb_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1801, i32 3}
!16 = !{ptr @rtl8365mb_setup._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8365mb_setup._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1810, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtl8365mb_setup._entry.8, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtl8365mb_setup._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1854, i32 3}
!25 = !{ptr @rtl8365mb_setup._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8365mb_setup._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"rtl8365mb_init_jam_common", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 459, i32 45}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1580, i32 49}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1582, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rtl8365mb_irq_setup._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtl8365mb_irq_setup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1590, i32 4}
!38 = !{ptr @rtl8365mb_irq_setup._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtl8365mb_irq_setup._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1599, i32 3}
!42 = !{ptr @rtl8365mb_irq_setup._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rtl8365mb_irq_setup._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1607, i32 4}
!46 = !{ptr @rtl8365mb_irq_setup._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rtl8365mb_irq_setup._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1628, i32 3}
!50 = !{ptr @rtl8365mb_irq_setup._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rtl8365mb_irq_setup._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1652, i32 8}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1654, i32 3}
!56 = !{ptr @rtl8365mb_irq_setup._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rtl8365mb_irq_setup._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @rtl8365mb_irqdomain_ops, !59, !"rtl8365mb_irqdomain_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1545, i32 36}
!60 = !{ptr @rtl8365mb_irq_chip, !61, !"rtl8365mb_irq_chip", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1522, i32 24}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1516, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl8365mb_irq._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtl8365mb_irq._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rtl8365mb_stats_setup.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1421, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rtl8365mb_stats_setup.__key.37, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1430, i32 3}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl8365mb_stats_setup.__key.39, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1435, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtl8365mb_stats_setup.__key.41, !74, !"__key", i1 false, i1 false}
!77 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 382, i32 2}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 383, i32 2}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 384, i32 2}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 385, i32 2}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 386, i32 2}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 387, i32 2}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 388, i32 2}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 389, i32 2}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 390, i32 2}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 391, i32 2}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 392, i32 2}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 393, i32 2}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 394, i32 2}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 395, i32 2}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 396, i32 2}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 397, i32 2}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 398, i32 2}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 399, i32 2}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 400, i32 2}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 401, i32 2}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 402, i32 2}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 403, i32 2}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 404, i32 2}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 405, i32 2}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 406, i32 2}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 407, i32 2}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 408, i32 2}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 409, i32 2}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 410, i32 2}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 411, i32 2}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 412, i32 2}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 413, i32 2}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 414, i32 2}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 415, i32 2}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 416, i32 2}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 417, i32 2}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 418, i32 2}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 419, i32 2}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 420, i32 2}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 421, i32 2}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 422, i32 2}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 423, i32 2}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 424, i32 2}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 425, i32 2}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 426, i32 2}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 427, i32 2}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 428, i32 2}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 429, i32 2}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 430, i32 2}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 431, i32 2}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 432, i32 2}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 433, i32 2}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 434, i32 2}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 435, i32 2}
!186 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 436, i32 2}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 437, i32 2}
!190 = !{ptr @.str.99, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 438, i32 2}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 439, i32 2}
!194 = !{ptr @rtl8365mb_mib_counters, !195, !"rtl8365mb_mib_counters", i1 false, i1 false}
!195 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 381, i32 37}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 928, i32 3}
!198 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @rtl8365mb_phylink_validate._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @rtl8365mb_phylink_validate._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/phy.h", i32 211, i32 10}
!203 = !{ptr @.str.104, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../include/linux/phy.h", i32 213, i32 10}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/phy.h", i32 215, i32 10}
!207 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/phy.h", i32 217, i32 10}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/phy.h", i32 219, i32 10}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/phy.h", i32 221, i32 10}
!213 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/phy.h", i32 223, i32 10}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/phy.h", i32 225, i32 10}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/phy.h", i32 227, i32 10}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/phy.h", i32 229, i32 10}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/phy.h", i32 231, i32 10}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../include/linux/phy.h", i32 233, i32 10}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../include/linux/phy.h", i32 235, i32 10}
!227 = !{ptr @.str.116, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/phy.h", i32 237, i32 10}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/linux/phy.h", i32 239, i32 10}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../include/linux/phy.h", i32 241, i32 10}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/linux/phy.h", i32 243, i32 10}
!235 = !{ptr @.str.120, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/phy.h", i32 245, i32 10}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../include/linux/phy.h", i32 247, i32 10}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/phy.h", i32 249, i32 10}
!241 = !{ptr @.str.123, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/phy.h", i32 251, i32 10}
!243 = !{ptr @.str.124, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../include/linux/phy.h", i32 253, i32 10}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/phy.h", i32 255, i32 10}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/phy.h", i32 257, i32 10}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/phy.h", i32 259, i32 10}
!251 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/phy.h", i32 261, i32 10}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../include/linux/phy.h", i32 263, i32 10}
!255 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../include/linux/phy.h", i32 265, i32 10}
!257 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/phy.h", i32 267, i32 10}
!259 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../include/linux/phy.h", i32 269, i32 10}
!261 = !{ptr @.str.133, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../include/linux/phy.h", i32 271, i32 10}
!263 = !{ptr @.str.134, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 958, i32 3}
!265 = !{ptr @rtl8365mb_phylink_mac_config._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @rtl8365mb_phylink_mac_config._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.136, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 964, i32 3}
!269 = !{ptr @rtl8365mb_phylink_mac_config._entry.135, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @rtl8365mb_phylink_mac_config._entry_ptr.137, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 973, i32 4}
!273 = !{ptr @rtl8365mb_phylink_mac_config._entry.138, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @rtl8365mb_phylink_mac_config._entry_ptr.140, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.141, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 754, i32 3}
!277 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @rtl8365mb_ext_config_rgmii._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @rtl8365mb_ext_config_rgmii._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.143, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 783, i32 32}
!282 = !{ptr @.str.145, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 789, i32 4}
!284 = !{ptr @.str.146, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @rtl8365mb_ext_config_rgmii._entry.144, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @rtl8365mb_ext_config_rgmii._entry_ptr.147, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 793, i32 32}
!289 = !{ptr @.str.150, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 799, i32 4}
!291 = !{ptr @rtl8365mb_ext_config_rgmii._entry.149, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @rtl8365mb_ext_config_rgmii._entry_ptr.151, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.152, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1001, i32 4}
!295 = !{ptr @.str.153, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @rtl8365mb_phylink_mac_link_down._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @rtl8365mb_phylink_mac_link_down._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.154, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 840, i32 3}
!300 = !{ptr @rtl8365mb_ext_config_forcemode._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @rtl8365mb_ext_config_forcemode._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.156, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 857, i32 4}
!304 = !{ptr @rtl8365mb_ext_config_forcemode._entry.155, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @rtl8365mb_ext_config_forcemode._entry_ptr.157, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 867, i32 4}
!308 = !{ptr @rtl8365mb_ext_config_forcemode._entry.158, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @rtl8365mb_ext_config_forcemode._entry_ptr.160, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.161, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1030, i32 4}
!312 = !{ptr @.str.162, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @rtl8365mb_phylink_mac_link_up._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @rtl8365mb_phylink_mac_link_up._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.163, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1159, i32 4}
!317 = !{ptr @.str.164, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @rtl8365mb_get_ethtool_stats._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @rtl8365mb_get_ethtool_stats._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.165, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1060, i32 3}
!322 = !{ptr @.str.166, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @rtl8365mb_port_stp_state_set._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @rtl8365mb_port_stp_state_set._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @rtl8365mb_smi_ops, !326, !"rtl8365mb_smi_ops", i1 false, i1 false}
!326 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1973, i32 37}
!327 = !{ptr @.str.167, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1914, i32 3}
!329 = !{ptr @.str.168, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @rtl8365mb_detect._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @rtl8365mb_detect._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1921, i32 3}
!334 = !{ptr @rtl8365mb_detect._entry.169, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @rtl8365mb_detect._entry_ptr.171, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.173, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 1946, i32 3}
!338 = !{ptr @rtl8365mb_detect._entry.172, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @rtl8365mb_detect._entry_ptr.174, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @rtl8365mb_init_jam_8365mb_vc, !341, !"rtl8365mb_init_jam_8365mb_vc", i1 false, i1 false}
!341 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 450, i32 45}
!342 = !{ptr @.str.175, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 693, i32 3}
!344 = !{ptr @.str.176, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @rtl8365mb_phy_read._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @rtl8365mb_phy_read._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.177, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 699, i32 2}
!349 = !{ptr @.str.178, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @rtl8365mb_phy_read.__UNIQUE_ID_ddebug540, !348, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!351 = !{ptr @.str.179, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 721, i32 3}
!353 = !{ptr @.str.180, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @rtl8365mb_phy_write._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @rtl8365mb_phy_write._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.181, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/dsa/rtl8365mb.c", i32 727, i32 2}
!358 = !{ptr @rtl8365mb_phy_write.__UNIQUE_ID_ddebug541, !357, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!359 = !{i32 1, !"wchar_size", i32 2}
!360 = !{i32 1, !"min_enum_size", i32 4}
!361 = !{i32 8, !"branch-target-enforcement", i32 0}
!362 = !{i32 8, !"sign-return-address", i32 0}
!363 = !{i32 8, !"sign-return-address-all", i32 0}
!364 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!365 = !{i32 7, !"uwtable", i32 1}
!366 = !{i32 7, !"frame-pointer", i32 2}
!367 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!368 = !{!"auto-init"}
!369 = !{i8 0, i8 2}
!370 = !{i64 2148807043, i64 2148807048, i64 2148807061, i64 2148807105, i64 2148807139, i64 2148807160}
