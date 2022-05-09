; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/microchip/ksz8795.c_pt.bc'
source_filename = "../drivers/net/dsa/microchip/ksz8795.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ksz8_switch_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ksz8_switch_register\09\09\09\09"
module asm "\09.long\09__crc_ksz8_switch_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksz8_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ksz8_switch_register\22\09\09\09\09\09"
module asm "__kstrtabns_ksz8_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ksz_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ksz_chip_data = type { i16, ptr, i32, i32, i32, i32, i32 }
%struct.mib_names = type { [32 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ksz_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, [3 x ptr], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i32, i8, i8, ptr, ptr, %struct.delayed_work, i32, i16, i16, i32, i32, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ksz_port = type { i8, i32, %struct.phy_device, i8, %struct.ksz_port_mib, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ksz_port_mib = type { %struct.mutex, i8, ptr }
%struct.ksz8 = type { ptr, ptr, ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.alu_struct = type { [10 x i8], [6 x i8] }
%struct.vlan_table = type { [3 x i32] }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }

@ksz8_dev_ops = internal constant { %struct.ksz_dev_ops, [56 x i8] } { %struct.ksz_dev_ops { ptr @ksz8_get_port_addr, ptr @ksz8_cfg_port_member, ptr @ksz8_flush_dyn_mac_table, ptr null, ptr @ksz8_port_setup, ptr @ksz8_r_phy, ptr @ksz8_w_phy, ptr @ksz8_r_dyn_mac_table, ptr @ksz8_r_sta_mac_table, ptr @ksz8_w_sta_mac_table, ptr @ksz8_r_mib_cnt, ptr @ksz8_r_mib_pkt, ptr @ksz8_freeze_mib, ptr @ksz8_port_init_cnt, ptr @ksz8_reset_switch, ptr @ksz8_switch_detect, ptr @ksz8_switch_init, ptr @ksz8_switch_exit }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_ksz8_switch_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksz8_switch_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ksz8_switch_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksz8_switch_register to i32), ptr @__kstrtab_ksz8_switch_register, ptr @__kstrtabns_ksz8_switch_register }, section "___ksymtab+ksz8_switch_register", align 4
@__UNIQUE_ID_author522 = internal constant [55 x i8] c"ksz8795.author=Tristram Ha <Tristram.Ha@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description523 = internal constant [63 x i8] c"ksz8795.description=Microchip KSZ8795 Series Switch DSA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file524 = internal constant [47 x i8] c"ksz8795.file=drivers/net/dsa/microchip/ksz8795\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [20 x i8] c"ksz8795.license=GPL\00", section ".modinfo", align 1
@ksz8795_cpu_interface_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Using legacy switch \22phy-mode\22 property, because it is missing on port %d node. Please update your device tree.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ksz8795_cpu_interface_select\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/dsa/microchip/ksz8795.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ksz8795_cpu_interface_select._entry_ptr = internal global ptr @ksz8795_cpu_interface_select._entry, section ".printk_index", align 4
@ksz8_switch_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1581, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid family id: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksz8_switch_detect\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ksz8_switch_detect._entry_ptr = internal global ptr @ksz8_switch_detect._entry, section ".printk_index", align 4
@ksz8_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @ksz8_get_tag_protocol, ptr null, ptr null, ptr @ksz8_setup, ptr null, ptr null, ptr null, ptr @ksz8_sw_get_phy_flags, ptr @ksz_phy_read16, ptr @ksz_phy_write16, ptr null, ptr null, ptr null, ptr @ksz8_validate, ptr null, ptr null, ptr null, ptr @ksz_mac_link_down, ptr null, ptr null, ptr @ksz8_get_strings, ptr @ksz_get_ethtool_stats, ptr @ksz_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz_enable_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz_port_bridge_join, ptr @ksz_port_bridge_leave, ptr @ksz8_port_stp_state_set, ptr @ksz_port_fast_age, ptr null, ptr null, ptr @ksz8_port_vlan_filtering, ptr @ksz8_port_vlan_add, ptr @ksz8_port_vlan_del, ptr null, ptr null, ptr @ksz_port_fdb_dump, ptr @ksz_port_mdb_add, ptr @ksz_port_mdb_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz8_port_mirror_add, ptr @ksz8_port_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@ksz8_switch_chips = internal constant { [4 x %struct.ksz_chip_data], [48 x i8] } { [4 x %struct.ksz_chip_data] [%struct.ksz_chip_data { i16 -30827, ptr @.str.46, i32 4096, i32 0, i32 8, i32 16, i32 5 }, %struct.ksz_chip_data { i16 -30828, ptr @.str.47, i32 4096, i32 0, i32 8, i32 16, i32 4 }, %struct.ksz_chip_data { i16 -30875, ptr @.str.48, i32 4096, i32 0, i32 8, i32 16, i32 5 }, %struct.ksz_chip_data { i16 -30672, ptr @.str.49, i32 16, i32 0, i32 8, i32 4, i32 3 }], [48 x i8] zeroinitializer }, align 32
@ksz8863_regs = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"y{{|\80\80\0C\0E\0C\0D\0E\0F\03", [19 x i8] zeroinitializer }, align 32
@ksz8863_masks = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 8, i32 64, i32 128, i32 64, i32 61440, i32 458752, i32 524288, i32 524288, i32 2097152, i32 1006632960, i32 1048576, i32 458752, i32 63, i32 128, i32 128, i32 -268435456, i32 983040, i32 3145728, i32 12582912], [52 x i8] zeroinitializer }, align 32
@ksz8863_shifts = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\10\00\10\16\03\18\10\18\14", [23 x i8] zeroinitializer }, align 32
@ksz88xx_mib_names = internal constant { [34 x %struct.mib_names], [256 x i8] } { [34 x %struct.mib_names] [%struct.mib_names { [32 x i8] c"rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_align_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_mac_ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_64_or_less\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_1024_1522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_exc_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_mult_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [256 x i8] zeroinitializer }, align 32
@ksz8795_regs = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nprqut\0C\0E\07\0D\08\09\0C", [19 x i8] zeroinitializer }, align 32
@ksz8795_masks = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 128, i32 2, i32 64, i32 32, i32 127, i32 3968, i32 4096, i32 2097152, i32 8388608, i32 2130706432, i32 67108864, i32 32505856, i32 127, i32 256, i32 128, i32 -536870912, i32 133169152, i32 117440512, i32 402653184], [52 x i8] zeroinitializer }, align 32
@ksz8795_shifts = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\07\10\10\18\03\1D\10\1B\18", [23 x i8] zeroinitializer }, align 32
@ksz87xx_mib_names = internal constant { [36 x %struct.mib_names], [288 x i8] } { [36 x %struct.mib_names] [%struct.mib_names { [32 x i8] c"rx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_align_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_mac_ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_64_or_less\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_1024_1522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_1523_2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_2001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_exc_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_mult_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_total\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_total\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mib_names { [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [288 x i8] zeroinitializer }, align 32
@ksz8_switch_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&dev->ports[i].mib.cnt_mutex\00", [35 x i8] zeroinitializer }, align 32
@ksz8_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1407, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset switch\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ksz8_setup\00", [21 x i8] zeroinitializer }, align 32
@ksz8_setup._entry_ptr = internal global ptr @ksz8_setup._entry, section ".printk_index", align 4
@ksz8_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1512, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported interface: %s, port: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksz8_validate\00", [18 x i8] zeroinitializer }, align 32
@ksz8_validate._entry_ptr = internal global ptr @ksz8_validate._entry, section ".printk_index", align 4
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ksz8_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1034, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid STP state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksz8_port_stp_state_set\00", [40 x i8] zeroinitializer }, align 32
@ksz8_port_stp_state_set._entry_ptr = internal global ptr @ksz8_port_stp_state_set._entry, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ8795\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ8794\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ8765\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"KSZ8863/KSZ8873\00", [16 x i8] zeroinitializer }, align 32
@switch.table.ksz8_validate = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.42, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [40 x i8] zeroinitializer }, align 32
@switch.table.ksz8_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 2, i32 6, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 29, i64 31]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 4, i64 29]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 135, i64 136]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 96, i64 144]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 34661, i64 34708, i64 34709, i64 34864]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"ksz8_dev_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1737, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1265, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1581, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ksz8_switch_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1515, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"ksz8_switch_chips\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1601, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"ksz8863_regs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 79, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"ksz8863_masks\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 95, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"ksz8863_shifts\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 117, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"ksz88xx_mib_names\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 171, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"ksz8795_regs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 29, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"ksz8795_masks\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 45, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"ksz8795_shifts\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 67, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"ksz87xx_mib_names\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 132, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1706, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1407, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1511, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 211, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 213, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 215, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 217, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 219, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 221, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 223, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 225, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 227, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 229, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 231, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 233, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 235, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 237, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 239, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 241, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 243, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 245, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 247, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 249, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 251, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 253, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 255, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 257, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 259, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 261, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 263, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 265, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 267, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 269, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 271, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1034, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1604, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1627, i32 15 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1636, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [39 x i8] c"../drivers/net/dsa/microchip/ksz8795.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1645, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"switch.table.ksz8_validate\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [37 x i8] c"switch.table.ksz8_port_stp_state_set\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author522, ptr @__UNIQUE_ID_description523, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__ksymtab_ksz8_switch_register, ptr @ksz8795_cpu_interface_select._entry, ptr @ksz8795_cpu_interface_select._entry_ptr, ptr @ksz8_port_stp_state_set._entry, ptr @ksz8_port_stp_state_set._entry_ptr, ptr @ksz8_setup._entry, ptr @ksz8_setup._entry_ptr, ptr @ksz8_switch_detect._entry, ptr @ksz8_switch_detect._entry_ptr, ptr @ksz8_validate._entry, ptr @ksz8_validate._entry_ptr, ptr @ksz8_dev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ksz8_switch_ops, ptr @ksz8_switch_chips, ptr @ksz8863_regs, ptr @ksz8863_masks, ptr @ksz8863_shifts, ptr @ksz88xx_mib_names, ptr @ksz8795_regs, ptr @ksz8795_masks, ptr @ksz8795_shifts, ptr @ksz87xx_mib_names, ptr @ksz8_switch_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @switch.table.ksz8_validate, ptr @switch.table.ksz8_port_stp_state_set], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_dev_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8795_cpu_interface_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_switch_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_switch_chips to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_regs to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_masks to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_shifts to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz88xx_mib_names to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8795_regs to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8795_masks to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8795_shifts to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz87xx_mib_names to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_switch_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz8_validate to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz8_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksz8_switch_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksz_switch_register(ptr noundef %dev, ptr noundef nonnull @ksz8_dev_ops) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz8_get_port_addr(i32 noundef %port, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 16
  %mul = shl i32 %port, 4
  %add1 = add i32 %add, %mul
  ret i32 %add1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_cfg_port_member(ptr nocapture noundef readonly %dev, i32 noundef %port, i8 noundef zeroext %member) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(i32 noundef %port, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %7 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %8 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %9 = and i8 %conv.i.i, -32
  %port_mask = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 36
  %10 = ptrtoint ptr %port_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_mask, align 2
  %conv3 = trunc i16 %11 to i8
  %and4 = and i8 %conv3, %member
  %or = or i8 %and4, %9
  %12 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i11 = call i32 %15(i32 noundef %port, i32 noundef 1) #8
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i13 = zext i8 %or to i32
  %call.i.i14 = call i32 @regmap_write(ptr noundef %17, i32 noundef %call.i11, i32 noundef %conv.i.i13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_flush_dyn_mac_table(ptr nocapture noundef readonly %dev, i32 noundef %port) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %learn = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %learn) #8
  %port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %0 = call ptr @memset(ptr %learn, i32 255, i32 12)
  %1 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %port)
  %cmp = icmp ugt i32 %2, %port
  %add = add i32 %port, 1
  %first.0 = select i1 %cmp, i32 %port, i32 0
  %cnt.0 = select i1 %cmp, i32 %add, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %first.0, i32 %cnt.0)
  %cmp272 = icmp slt i32 %first.0, %cnt.0
  br i1 %cmp272, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i79 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i79, align 4
  %call.i.i6680 = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.end35

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.073 = phi i32 [ %first.0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %on = getelementptr %struct.ksz_port, ptr %6, i32 %index.073, i32 3
  %7 = ptrtoint ptr %on to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %on, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %arrayidx5 = getelementptr [12 x i8], ptr %learn, i32 0, i32 %index.073
  %8 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = call i32 %11(i32 noundef %index.073, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %15 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %arrayidx5, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %18 = and i8 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not = icmp eq i8 %18, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i62 = call i32 %22(i32 noundef %index.073, i32 noundef 2) #8
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %or = and i32 %16, 254
  %conv.i.i64 = or i32 %or, 1
  %call.i.i65 = call i32 @regmap_write(ptr noundef %24, i32 noundef %call.i62, i32 noundef %conv.i.i64) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %index.073, 1
  %exitcond.not = icmp eq i32 %inc, %cnt.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i.i66 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 2, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %cmp272, label %for.body16.lr.ph, label %for.end.for.end35_crit_edge

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.body16.lr.ph:                                 ; preds = %for.end
  %ports17 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %dev_ops.i67 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  br label %for.body16

for.body16:                                       ; preds = %for.inc33.for.body16_crit_edge, %for.body16.lr.ph
  %index.176 = phi i32 [ %first.0, %for.body16.lr.ph ], [ %inc34, %for.inc33.for.body16_crit_edge ]
  %27 = ptrtoint ptr %ports17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports17, align 4
  %on19 = getelementptr %struct.ksz_port, ptr %28, i32 %index.176, i32 3
  %29 = ptrtoint ptr %on19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load20 = load i8, ptr %on19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %for.body16.for.inc33_crit_edge, label %if.end25

for.body16.for.inc33_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33

if.end25:                                         ; preds = %for.body16
  %arrayidx26 = getelementptr [12 x i8], ptr %learn, i32 0, i32 %index.176
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx26, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool29.not = icmp eq i8 %32, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.for.inc33_crit_edge

if.end25.for.inc33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev_ops.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_ops.i67, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i68 = call i32 %36(i32 noundef %index.176, i32 noundef 2) #8
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %conv.i.i70 = zext i8 %31 to i32
  %call.i.i71 = call i32 @regmap_write(ptr noundef %38, i32 noundef %call.i68, i32 noundef %conv.i.i70) #8
  br label %for.inc33

for.inc33:                                        ; preds = %if.then30, %if.end25.for.inc33_crit_edge, %for.body16.for.inc33_crit_edge
  %inc34 = add i32 %index.176, 1
  %exitcond78.not = icmp eq i32 %inc34, %cnt.0
  br i1 %exitcond78.not, label %for.inc33.for.end35_crit_edge, label %for.inc33.for.body16_crit_edge

for.inc33.for.body16_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %for.end.for.end35_crit_edge, %for.end.thread
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %learn) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_port_setup(ptr nocapture noundef readonly %dev, i32 noundef %port, i1 noundef zeroext %cpu_port) #0 align 64 {
entry:
  %value.i.i.i51 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %value.i.i1.i = alloca i32, align 4
  %value.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %masks2 = getelementptr inbounds %struct.ksz8, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %masks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %masks2, align 4
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %port, 4
  %add1.i = add i32 %mul.i, 16
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add1.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %9)
  %cmp.i = icmp eq i32 %9, 34864
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_ops.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_ops.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i.i30 = tail call i32 %13(i32 noundef %port, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i) #8
  %14 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %value.i.i.i, align 4, !annotation !144
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %call.i.i30, ptr noundef nonnull %value.i.i.i) #8
  %17 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #8
  %19 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_ops.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i3.i = call i32 %22(i32 noundef %port, i32 noundef 161) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i1.i) #8
  %23 = ptrtoint ptr %value.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %value.i.i1.i, align 4, !annotation !144
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i5.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %call.i3.i, ptr noundef nonnull %value.i.i1.i) #8
  %26 = ptrtoint ptr %value.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.i.i1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i1.i) #8
  %28 = and i32 %18, 254
  %29 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_ops.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i8.i = call i32 %32(i32 noundef %port, i32 noundef 0) #8
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i.i11.i = call i32 @regmap_write(ptr noundef %34, i32 noundef %call.i8.i, i32 noundef %28) #8
  %35 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_ops.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i13.i = call i32 %38(i32 noundef %port, i32 noundef 161) #8
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %41 = and i32 %27, 253
  %conv.i.i15.i = or i32 %41, 2
  %call.i.i16.i = call i32 @regmap_write(ptr noundef %40, i32 noundef %call.i13.i, i32 noundef %conv.i.i15.i) #8
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i.i17.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 135, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i.i34 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %add1.i, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %5, align 4
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %47, 255
  %add1.i37 = add i32 %mul.i, 18
  %call.i.i38 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %add1.i37, i32 noundef %conv.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i.i42 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %add1.i, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %cpu_port, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %52 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %53)
  %cmp.i44 = icmp eq i32 %53, 34864
  br i1 %cmp.i44, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %ports.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %54 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ports.i, align 4
  %interface.i = getelementptr %struct.ksz_port, ptr %55, i32 %port, i32 5
  %56 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %interface.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then5.if.end.i_crit_edge

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then5
  %compat_interface.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 23
  %58 = ptrtoint ptr %compat_interface.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %compat_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i = icmp eq i32 %59, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %60 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev2.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str, i32 noundef %port) #11
  %62 = ptrtoint ptr %compat_interface.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %compat_interface.i, align 4
  %64 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %interface.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then5.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %65 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %66 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i, align 4
  %call.i.i45 = call i32 @regmap_read(ptr noundef %67, i32 noundef 86, ptr noundef nonnull %value.i.i) #8
  %68 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %69 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %70 = and i8 %conv.i.i, -68
  %71 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %interface.i, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %sw.default.i [
    i32 2, label %if.end.i.ksz8795_cpu_interface_select.exit_crit_edge
    i32 7, label %sw.bb10.i
    i32 3, label %sw.bb15.i
  ]

if.end.i.ksz8795_cpu_interface_select.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8795_cpu_interface_select.exit

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = or i8 %70, 1
  br label %ksz8795_cpu_interface_select.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = or i8 %70, 66
  br label %ksz8795_cpu_interface_select.exit

sw.default.i:                                     ; preds = %if.end.i
  %76 = and i8 %conv.i.i, -92
  %77 = and i32 %72, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %77)
  %switch.i = icmp eq i32 %77, 10
  %78 = or i8 %76, 16
  %spec.select.i = select i1 %switch.i, i8 %78, i8 %76
  %79 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %72, label %sw.default.i.if.end51.i_crit_edge [
    i32 10, label %sw.default.i.if.then47.i_crit_edge
    i32 12, label %sw.default.i.if.then47.i_crit_edge69
  ]

sw.default.i.if.then47.i_crit_edge69:             ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47.i

sw.default.i.if.then47.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47.i

sw.default.i.if.end51.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then47.i:                                      ; preds = %sw.default.i.if.then47.i_crit_edge, %sw.default.i.if.then47.i_crit_edge69
  %80 = or i8 %spec.select.i, 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %sw.default.i.if.end51.i_crit_edge
  %data8.1.i = phi i8 [ %spec.select.i, %sw.default.i.if.end51.i_crit_edge ], [ %80, %if.then47.i ]
  %81 = or i8 %data8.1.i, 67
  br label %ksz8795_cpu_interface_select.exit

ksz8795_cpu_interface_select.exit:                ; preds = %if.end51.i, %sw.bb15.i, %sw.bb10.i, %if.end.i.ksz8795_cpu_interface_select.exit_crit_edge
  %.sink.i = phi i32 [ 1000, %if.end51.i ], [ 1000, %sw.bb15.i ], [ 100, %sw.bb10.i ], [ 100, %if.end.i.ksz8795_cpu_interface_select.exit_crit_edge ]
  %data8.2.i = phi i8 [ %81, %if.end51.i ], [ %75, %sw.bb15.i ], [ %74, %sw.bb10.i ], [ %70, %if.end.i.ksz8795_cpu_interface_select.exit_crit_edge ]
  %speed59.i = getelementptr %struct.ksz_port, ptr %55, i32 %port, i32 2, i32 8
  %82 = ptrtoint ptr %speed59.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i, ptr %speed59.i, align 8
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 4
  %conv.i81.i = zext i8 %data8.2.i to i32
  %call.i82.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 86, i32 noundef %conv.i81.i) #8
  %duplex.i = getelementptr %struct.ksz_port, ptr %55, i32 %port, i32 2, i32 9
  %85 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %duplex.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %ksz8795_cpu_interface_select.exit, %if.then3.if.end6_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dst.i, align 4
  %ports.i46 = getelementptr inbounds %struct.dsa_switch_tree, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ports.i46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn19.i = load ptr, ptr %ports.i46, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %ports.i46
  br i1 %cmp.not20.i, label %if.end6.if.end11_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %if.end6.for.body.i_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %89 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %90, %1
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr i8, ptr %.pn22.i, i32 -424
  %91 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp.i.i = icmp eq i32 %92, 3
  br i1 %cmp.i.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %93 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %94
  %or.i = or i32 %shl.i, %mask.021.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i, %if.then5.i ], [ %mask.021.i, %if.then.i.for.inc.i_crit_edge ], [ %mask.021.i, %for.body.i.for.inc.i_crit_edge ]
  %95 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i46
  br i1 %cmp.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %if.end
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.else.dsa_to_port.exit.i_crit_edge, label %if.else.for.body.i.i_crit_edge

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

if.else.dsa_to_port.exit.i_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.else.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %99 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %100, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %101 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %port)
  %cmp5.i.i = icmp eq i32 %102, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %103 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.else.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.else.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %104 = ptrtoint ptr %cpu_dp1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cpu_dp1.i, align 4
  %tobool.not.i47 = icmp eq ptr %105, null
  br i1 %tobool.not.i47, label %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge, label %if.end.i50

dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge: ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit

if.end.i50:                                       ; preds = %dsa_to_port.exit.i
  %ds2.i = getelementptr inbounds %struct.dsa_port, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ds2.i, align 4
  %index.i48 = getelementptr inbounds %struct.dsa_switch, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %index.i48 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i48, align 4
  %index3.i = getelementptr inbounds %struct.dsa_port, ptr %105, i32 0, i32 5
  %110 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index3.i, align 4
  %index.i10.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 2
  %112 = ptrtoint ptr %index.i10.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %109)
  %cmp.i.i49 = icmp eq i32 %113, %109
  br i1 %cmp.i.i49, label %if.end.i50.dsa_upstream_port.exit_crit_edge, label %if.else.i.i

if.end.i50.dsa_upstream_port.exit_crit_edge:      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit

if.else.i.i:                                      ; preds = %if.end.i50
  %rtable.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %97, i32 0, i32 10
  %114 = ptrtoint ptr %rtable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn22.i.i.i = load ptr, ptr %rtable.i.i.i, align 4
  %cmp.not23.i.i.i = icmp eq ptr %.pn22.i.i.i, %rtable.i.i.i
  br i1 %cmp.not23.i.i.i, label %if.else.i.i.for.end.i.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %.pn24.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn22.i.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %dl.0.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -8
  %115 = ptrtoint ptr %dl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dl.0.i.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %118, %1
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %link_dp.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -4
  %119 = ptrtoint ptr %link_dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %link_dp.i.i.i, align 4
  %ds5.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %ds5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ds5.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %109)
  %cmp6.i.i.i = icmp eq i32 %124, %109
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index8.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %116, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %125 = ptrtoint ptr %.pn24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i.i.i = load ptr, ptr %.pn24.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %rtable.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.else.i.i.for.end.i.i.i_crit_edge
  %num_ports.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i

dsa_routing_port.exit.i.i:                        ; preds = %for.end.i.i.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %index8.i.i.i, %if.then.i.i.i ], [ %num_ports.i.i.i, %for.end.i.i.i ]
  %126 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  br label %dsa_upstream_port.exit

dsa_upstream_port.exit:                           ; preds = %dsa_routing_port.exit.i.i, %if.end.i50.dsa_upstream_port.exit_crit_edge, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge
  %retval.0.i = phi i32 [ %port, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge ], [ %retval.0.i.i.i, %dsa_routing_port.exit.i.i ], [ %111, %if.end.i50.dsa_upstream_port.exit_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i
  br label %if.end11

if.end11:                                         ; preds = %dsa_upstream_port.exit, %for.inc.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %member.0.in = phi i32 [ %shl, %dsa_upstream_port.exit ], [ 0, %if.end6.if.end11_crit_edge ], [ %mask.1.i, %for.inc.i.if.end11_crit_edge ]
  %dev_ops.i.i52 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %127 = ptrtoint ptr %dev_ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_ops.i.i52, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %call.i.i53 = call i32 %130(i32 noundef %port, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i51) #8
  %131 = ptrtoint ptr %value.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %value.i.i.i51, align 4, !annotation !144
  %132 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i55 = call i32 @regmap_read(ptr noundef %133, i32 noundef %call.i.i53, ptr noundef nonnull %value.i.i.i51) #8
  %134 = ptrtoint ptr %value.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %value.i.i.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i51) #8
  %136 = and i32 %135, 224
  %port_mask.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 36
  %137 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %port_mask.i, align 2
  %conv3.i = zext i16 %138 to i32
  %139 = ptrtoint ptr %dev_ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_ops.i.i52, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %call.i11.i = call i32 %142(i32 noundef %port, i32 noundef 1) #8
  %143 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap.i, align 4
  %and4.i = and i32 %member.0.in, 255
  %and4.i.masked = and i32 %and4.i, %conv3.i
  %conv.i.i13.i = or i32 %and4.i.masked, %136
  %call.i.i14.i = call i32 @regmap_write(ptr noundef %144, i32 noundef %call.i11.i, i32 noundef %conv.i.i13.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_r_phy(ptr noundef readonly %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %value.i.i471 = alloca i32, align 4
  %value.i.i465 = alloca i32, align 4
  %value.i.i459 = alloca i32, align 4
  %value.i.i453 = alloca i32, align 4
  %value.i.i447 = alloca i32, align 4
  %value.i.i439 = alloca i32, align 4
  %value.i.i433 = alloca i32, align 4
  %value.i.i427 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %reg, label %entry.if.end354_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb104
    i16 2, label %entry.if.then353_crit_edge
    i16 3, label %sw.bb125
    i16 4, label %sw.bb130
    i16 5, label %sw.bb174
    i16 29, label %sw.bb226
    i16 31, label %sw.bb340
  ]

entry.if.then353_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then353

entry.if.end354_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %phy, 255
  %conv3 = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %3, i32 9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 %11(i32 noundef %conv3, i32 noundef %conv4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %15 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %16 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %arrayidx6 = getelementptr i8, ptr %3, i32 11
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %19 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i429 = call i32 %22(i32 noundef %conv3, i32 noundef %conv7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i427) #8
  %23 = ptrtoint ptr %value.i.i427 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %value.i.i427, align 4, !annotation !144
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i431 = call i32 @regmap_read(ptr noundef %25, i32 noundef %call.i429, ptr noundef nonnull %value.i.i427) #8
  %26 = ptrtoint ptr %value.i.i427 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.i.i427, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i427) #8
  %arrayidx9 = getelementptr i8, ptr %3, i32 6
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %29 to i32
  %30 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_ops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i435 = call i32 %33(i32 noundef %conv3, i32 noundef %conv10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i433) #8
  %34 = ptrtoint ptr %value.i.i433 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %value.i.i433, align 4, !annotation !144
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i437 = call i32 @regmap_read(ptr noundef %36, i32 noundef %call.i435, ptr noundef nonnull %value.i.i433) #8
  %37 = ptrtoint ptr %value.i.i433 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i.i433, align 4
  %conv.i.i438 = trunc i32 %38 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i433) #8
  %39 = trunc i32 %16 to i16
  %40 = shl i16 %39, 7
  %41 = and i16 %40, 16384
  %42 = and i8 %conv.i.i438, 64
  %43 = zext i8 %42 to i16
  %44 = shl nuw nsw i16 %43, 7
  %45 = or i16 %44, %41
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %46 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %47)
  %cmp.i = icmp eq i32 %47, 34864
  %48 = or i16 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i438)
  %tobool25.not506 = icmp slt i8 %conv.i.i438, 0
  %spec.select415 = select i1 %tobool25.not506, i16 %48, i16 %45
  %spec.select416 = select i1 %tobool25.not506, i16 %45, i16 %48
  %data.2 = select i1 %cmp.i, i16 %spec.select415, i16 %spec.select416
  %49 = and i8 %conv.i.i, 8
  %50 = zext i8 %49 to i16
  %51 = shl nuw nsw i16 %50, 8
  %52 = and i8 %conv.i.i, 32
  %53 = zext i8 %52 to i16
  %54 = shl nuw nsw i16 %53, 4
  %55 = and i8 %conv.i.i438, 32
  %56 = zext i8 %55 to i16
  %57 = shl nuw nsw i16 %56, 3
  %58 = trunc i32 %27 to i16
  %59 = lshr i16 %58, 2
  %60 = and i16 %59, 32
  %61 = shl i8 %conv.i.i, 3
  %62 = and i8 %61, 16
  %63 = zext i8 %62 to i16
  %64 = shl i8 %conv.i.i, 1
  %65 = and i8 %64, 8
  %66 = zext i8 %65 to i16
  %67 = lshr i8 %conv.i.i, 5
  %68 = and i8 %67, 2
  %69 = zext i8 %68 to i16
  %conv.i.i.lobit = lshr i8 %conv.i.i, 7
  %70 = zext i8 %conv.i.i.lobit to i16
  %71 = or i16 %51, %70
  %72 = or i16 %71, %54
  %73 = or i16 %72, %63
  %74 = or i16 %73, %66
  %75 = or i16 %74, %69
  %76 = or i16 %57, %60
  %77 = or i16 %76, %data.2
  %spec.select424 = or i16 %77, %75
  br label %if.then353

sw.bb104:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask414 = and i16 %phy, 255
  %conv105 = zext i16 %conv.mask414 to i32
  %arrayidx106 = getelementptr i8, ptr %3, i32 7
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %79 to i32
  %dev_ops.i440 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %80 = ptrtoint ptr %dev_ops.i440 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_ops.i440, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call.i441 = tail call i32 %83(i32 noundef %conv105, i32 noundef %conv107) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i439) #8
  %84 = ptrtoint ptr %value.i.i439 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %value.i.i439, align 4, !annotation !144
  %regmap.i.i442 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %85 = ptrtoint ptr %regmap.i.i442 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i.i442, align 4
  %call.i.i443 = call i32 @regmap_read(ptr noundef %86, i32 noundef %call.i441, ptr noundef nonnull %value.i.i439) #8
  %87 = ptrtoint ptr %value.i.i439 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %value.i.i439, align 4
  %conv.i.i444 = trunc i32 %88 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i439) #8
  %89 = and i8 %conv.i.i444, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool110.not = icmp eq i8 %89, 0
  %spec.select418 = select i1 %tobool110.not, i16 30728, i16 30760
  %90 = lshr i8 %conv.i.i444, 3
  %91 = and i8 %90, 4
  %92 = zext i8 %91 to i16
  %93 = or i16 %spec.select418, %92
  br label %if.then353

sw.bb125:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_id.i445 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %94 = ptrtoint ptr %chip_id.i445 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chip_id.i445, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %95)
  %cmp.i446 = icmp eq i32 %95, 34864
  %. = select i1 %cmp.i446, i16 5168, i16 5456
  br label %if.then353

sw.bb130:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask413 = and i16 %phy, 255
  %conv131 = zext i16 %conv.mask413 to i32
  %arrayidx132 = getelementptr i8, ptr %3, i32 8
  %96 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %97 to i32
  %dev_ops.i448 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %98 = ptrtoint ptr %dev_ops.i448 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_ops.i448, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call.i449 = tail call i32 %101(i32 noundef %conv131, i32 noundef %conv133) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i447) #8
  %102 = ptrtoint ptr %value.i.i447 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %value.i.i447, align 4, !annotation !144
  %regmap.i.i450 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %103 = ptrtoint ptr %regmap.i.i450 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i.i450, align 4
  %call.i.i451 = call i32 @regmap_read(ptr noundef %104, i32 noundef %call.i449, ptr noundef nonnull %value.i.i447) #8
  %105 = ptrtoint ptr %value.i.i447 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %value.i.i447, align 4
  %conv.i.i452 = trunc i32 %106 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i447) #8
  %107 = and i8 %conv.i.i452, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool136.not = icmp eq i8 %107, 0
  %spec.select419 = select i1 %tobool136.not, i16 1, i16 1025
  %108 = and i8 %conv.i.i452, 8
  %109 = zext i8 %108 to i16
  %110 = shl nuw nsw i16 %109, 5
  %111 = or i16 %110, %spec.select419
  %112 = shl i8 %conv.i.i452, 5
  %113 = and i8 %112, -128
  %114 = zext i8 %113 to i16
  %115 = or i16 %111, %114
  %116 = and i8 %112, 64
  %117 = zext i8 %116 to i16
  %118 = or i16 %115, %117
  %119 = and i8 %112, 32
  %120 = zext i8 %119 to i16
  %121 = or i16 %118, %120
  br label %if.then353

sw.bb174:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask412 = and i16 %phy, 255
  %conv175 = zext i16 %conv.mask412 to i32
  %arrayidx176 = getelementptr i8, ptr %3, i32 10
  %122 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %123 to i32
  %dev_ops.i454 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %124 = ptrtoint ptr %dev_ops.i454 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_ops.i454, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %call.i455 = tail call i32 %127(i32 noundef %conv175, i32 noundef %conv177) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i453) #8
  %128 = ptrtoint ptr %value.i.i453 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %value.i.i453, align 4, !annotation !144
  %regmap.i.i456 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %129 = ptrtoint ptr %regmap.i.i456 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i.i456, align 4
  %call.i.i457 = call i32 @regmap_read(ptr noundef %130, i32 noundef %call.i455, ptr noundef nonnull %value.i.i453) #8
  %131 = ptrtoint ptr %value.i.i453 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %value.i.i453, align 4
  %conv.i.i458 = trunc i32 %132 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i453) #8
  %133 = and i8 %conv.i.i458, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool180.not = icmp eq i8 %133, 0
  %spec.select420 = select i1 %tobool180.not, i16 31, i16 1055
  %134 = and i8 %conv.i.i458, 8
  %135 = zext i8 %134 to i16
  %136 = shl nuw nsw i16 %135, 5
  %137 = or i16 %136, %spec.select420
  %138 = shl i8 %conv.i.i458, 5
  %139 = and i8 %138, -128
  %140 = zext i8 %139 to i16
  %141 = or i16 %137, %140
  %142 = and i8 %138, 64
  %143 = zext i8 %142 to i16
  %144 = or i16 %141, %143
  %145 = and i8 %138, 32
  %146 = zext i8 %145 to i16
  %147 = or i16 %144, %146
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %147)
  %tobool220.not = icmp eq i16 %147, 31
  %or223 = or i16 %147, 16384
  %spec.select426 = select i1 %tobool220.not, i16 31, i16 %or223
  br label %if.then353

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask411 = and i16 %phy, 255
  %conv227 = zext i16 %conv.mask411 to i32
  %dev_ops.i460 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %148 = ptrtoint ptr %dev_ops.i460 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_ops.i460, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %call.i461 = tail call i32 %151(i32 noundef %conv227, i32 noundef 10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i459) #8
  %152 = ptrtoint ptr %value.i.i459 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %value.i.i459, align 4, !annotation !144
  %regmap.i.i462 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %153 = ptrtoint ptr %regmap.i.i462 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap.i.i462, align 4
  %call.i.i463 = call i32 @regmap_read(ptr noundef %154, i32 noundef %call.i461, ptr noundef nonnull %value.i.i459) #8
  %155 = ptrtoint ptr %value.i.i459 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %value.i.i459, align 4
  %conv.i.i464 = trunc i32 %156 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i459) #8
  %157 = ptrtoint ptr %dev_ops.i460 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_ops.i460, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %call.i467 = call i32 %160(i32 noundef %conv227, i32 noundef 11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i465) #8
  %161 = ptrtoint ptr %value.i.i465 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %value.i.i465, align 4, !annotation !144
  %162 = ptrtoint ptr %regmap.i.i462 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap.i.i462, align 4
  %call.i.i469 = call i32 @regmap_read(ptr noundef %163, i32 noundef %call.i467, ptr noundef nonnull %value.i.i465) #8
  %164 = ptrtoint ptr %value.i.i465 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %value.i.i465, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i465) #8
  %166 = and i8 %conv.i.i464, 16
  %167 = zext i8 %166 to i16
  %168 = shl nuw i16 %167, 11
  %169 = or i16 %168, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i464)
  %tobool239.not503 = icmp slt i8 %conv.i.i464, 0
  %data.21 = select i1 %tobool239.not503, i16 %169, i16 %168
  %170 = trunc i32 %156 to i16
  %conv273.tr = shl i16 %170, 8
  %171 = trunc i32 %165 to i16
  %conv331 = and i16 %171, 255
  %and336 = and i16 %conv273.tr, 24832
  %conv278 = or i16 %and336, %data.21
  %or338 = or i16 %conv278, %conv331
  br label %if.then353

sw.bb340:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.mask = and i16 %phy, 255
  %conv341 = zext i16 %conv.mask to i32
  %arrayidx342 = getelementptr i8, ptr %3, i32 7
  %172 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx342, align 1
  %conv343 = zext i8 %173 to i32
  %dev_ops.i472 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %174 = ptrtoint ptr %dev_ops.i472 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev_ops.i472, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %call.i473 = tail call i32 %177(i32 noundef %conv341, i32 noundef %conv343) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i471) #8
  %178 = ptrtoint ptr %value.i.i471 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %value.i.i471, align 4, !annotation !144
  %regmap.i.i474 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %179 = ptrtoint ptr %regmap.i.i474 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regmap.i.i474, align 4
  %call.i.i475 = call i32 @regmap_read(ptr noundef %180, i32 noundef %call.i473, ptr noundef nonnull %value.i.i471) #8
  %181 = ptrtoint ptr %value.i.i471 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %value.i.i471, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i471) #8
  %183 = trunc i32 %182 to i16
  %184 = lshr i16 %183, 3
  %185 = and i16 %184, 16
  br label %if.then353

if.then353:                                       ; preds = %sw.bb340, %sw.bb226, %sw.bb174, %sw.bb130, %sw.bb125, %sw.bb104, %sw.bb, %entry.if.then353_crit_edge
  %data.22.ph = phi i16 [ %spec.select426, %sw.bb174 ], [ %121, %sw.bb130 ], [ %spec.select424, %sw.bb ], [ %93, %sw.bb104 ], [ %185, %sw.bb340 ], [ %., %sw.bb125 ], [ 34, %entry.if.then353_crit_edge ], [ %or338, %sw.bb226 ]
  %186 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %data.22.ph, ptr %val, align 2
  br label %if.end354

if.end354:                                        ; preds = %if.then353, %entry.if.end354_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_w_phy(ptr nocapture noundef readonly %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  %value.i.i365 = alloca i32, align 4
  %value.i.i354 = alloca i32, align 4
  %value.i.i343 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %reg, label %entry.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 4, label %sw.bb190
    i16 29, label %sw.bb246
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %conv3 = zext i16 %val to i32
  %and = and i32 %conv3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %5 = and i16 %phy, 255
  %conv4 = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %3, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %7 to i32
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 %11(i32 noundef %conv4, i32 noundef %conv5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %15 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %16 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %17 = and i8 %conv.i.i, 127
  %18 = trunc i16 %val to i8
  %19 = shl i8 %18, 2
  %20 = and i8 %19, -128
  %data.0 = or i8 %17, %20
  call void @__sanitizer_cov_trace_cmp1(i8 %data.0, i8 %conv.i.i)
  %cmp.not = icmp eq i8 %data.0, %conv.i.i
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %if.then19

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %22 to i32
  %23 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i339 = call i32 %26(i32 noundef %conv4, i32 noundef %conv22) #8
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i341 = zext i8 %data.0 to i32
  %call.i.i342 = call i32 @regmap_write(ptr noundef %28, i32 noundef %call.i339, i32 noundef %conv.i.i341) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end.if.end23_crit_edge
  %arrayidx25 = getelementptr i8, ptr %3, i32 6
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %30 to i32
  %31 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i345 = call i32 %34(i32 noundef %conv4, i32 noundef %conv26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i343) #8
  %35 = ptrtoint ptr %value.i.i343 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %value.i.i343, align 4, !annotation !144
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i347 = call i32 @regmap_read(ptr noundef %37, i32 noundef %call.i345, ptr noundef nonnull %value.i.i343) #8
  %38 = ptrtoint ptr %value.i.i343 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value.i.i343, align 4
  %conv.i.i348 = trunc i32 %39 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i343) #8
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %40 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %41)
  %cmp.i = icmp eq i32 %41, 34864
  br i1 %cmp.i, label %if.then27, label %if.else40

if.then27:                                        ; preds = %if.end23
  %and29 = and i32 %conv3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %42 = or i8 %conv.i.i348, -128
  br label %if.end60

if.else35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %43 = and i8 %conv.i.i348, 127
  br label %if.end60

if.else40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %44 = and i8 %conv.i.i348, 127
  %and42 = lshr i16 %val, 5
  %45 = trunc i16 %and42 to i8
  %46 = and i8 %45, -128
  %47 = or i8 %44, %46
  %data.1 = xor i8 %47, -128
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %48 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ports, align 4
  %fiber = getelementptr %struct.ksz_port, ptr %49, i32 %conv4, i32 3
  %50 = ptrtoint ptr %fiber to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %fiber, align 8
  %51 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool54.not = icmp eq i8 %51, 0
  %52 = or i8 %conv.i.i348, -128
  %spec.select337 = select i1 %tobool54.not, i8 %data.1, i8 %52
  br label %if.end60

if.end60:                                         ; preds = %if.else40, %if.else35, %if.then31
  %data.2 = phi i8 [ %42, %if.then31 ], [ %43, %if.else35 ], [ %spec.select337, %if.else40 ]
  %53 = and i8 %data.2, -97
  %and62 = lshr i16 %val, 7
  %54 = trunc i16 %and62 to i8
  %55 = and i8 %54, 64
  %and74 = lshr i16 %val, 3
  %56 = trunc i16 %and74 to i8
  %57 = and i8 %56, 32
  %data.3 = or i8 %57, %55
  %data.4 = or i8 %data.3, %53
  call void @__sanitizer_cov_trace_cmp1(i8 %data.4, i8 %conv.i.i348)
  %cmp87.not = icmp eq i8 %data.4, %conv.i.i348
  br i1 %cmp87.not, label %if.end60.if.end93_crit_edge, label %if.then89

if.end60.if.end93_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then89:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx25, align 1
  %conv92 = zext i8 %59 to i32
  %60 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_ops.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i350 = call i32 %63(i32 noundef %conv4, i32 noundef %conv92) #8
  %64 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i352 = zext i8 %data.4 to i32
  %call.i.i353 = call i32 @regmap_write(ptr noundef %65, i32 noundef %call.i350, i32 noundef %conv.i.i352) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end60.if.end93_crit_edge
  %arrayidx95 = getelementptr i8, ptr %3, i32 9
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %67 to i32
  %68 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_ops.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call.i356 = call i32 %71(i32 noundef %conv4, i32 noundef %conv96) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i354) #8
  %72 = ptrtoint ptr %value.i.i354 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %value.i.i354, align 4, !annotation !144
  %73 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i358 = call i32 @regmap_read(ptr noundef %74, i32 noundef %call.i356, ptr noundef nonnull %value.i.i354) #8
  %75 = ptrtoint ptr %value.i.i354 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %value.i.i354, align 4
  %conv.i.i359 = trunc i32 %76 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i354) #8
  %77 = and i8 %conv.i.i359, 17
  %78 = shl i8 %18, 5
  %79 = and i8 %78, 64
  %and122 = lshr i16 %val, 4
  %80 = trunc i16 %and122 to i8
  %81 = and i8 %80, 32
  %and134 = lshr i16 %val, 8
  %82 = trunc i16 %and134 to i8
  %83 = and i8 %82, 8
  %84 = lshr i8 %18, 1
  %85 = and i8 %84, 4
  %86 = lshr i8 %18, 3
  %87 = and i8 %86, 2
  %88 = and i8 %54, -128
  %data.6 = or i8 %81, %79
  %data.7 = or i8 %data.6, %83
  %data.8 = or i8 %data.7, %85
  %.masked = or i8 %data.8, %87
  %89 = or i8 %.masked, %88
  %data.11 = or i8 %89, %77
  call void @__sanitizer_cov_trace_cmp1(i8 %data.11, i8 %conv.i.i359)
  %cmp183.not = icmp eq i8 %data.11, %conv.i.i359
  br i1 %cmp183.not, label %if.end93.sw.epilog_crit_edge, label %if.then185

if.end93.sw.epilog_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then185:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx95, align 1
  %conv188 = zext i8 %91 to i32
  %92 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_ops.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %call.i361 = call i32 %95(i32 noundef %conv4, i32 noundef %conv188) #8
  %96 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i363 = zext i8 %data.11 to i32
  %call.i.i364 = call i32 @regmap_write(ptr noundef %97, i32 noundef %call.i361, i32 noundef %conv.i.i363) #8
  br label %sw.epilog

sw.bb190:                                         ; preds = %entry
  %conv.mask336 = and i16 %phy, 255
  %conv191 = zext i16 %conv.mask336 to i32
  %arrayidx192 = getelementptr i8, ptr %3, i32 8
  %98 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %99 to i32
  %dev_ops.i366 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %100 = ptrtoint ptr %dev_ops.i366 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_ops.i366, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %call.i367 = tail call i32 %103(i32 noundef %conv191, i32 noundef %conv193) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i365) #8
  %104 = ptrtoint ptr %value.i.i365 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %value.i.i365, align 4, !annotation !144
  %regmap.i.i368 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %105 = ptrtoint ptr %regmap.i.i368 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i.i368, align 4
  %call.i.i369 = call i32 @regmap_read(ptr noundef %106, i32 noundef %call.i367, ptr noundef nonnull %value.i.i365) #8
  %107 = ptrtoint ptr %value.i.i365 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %value.i.i365, align 4
  %conv.i.i370 = trunc i32 %108 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i365) #8
  %109 = and i8 %conv.i.i370, -32
  %and198 = lshr i16 %val, 6
  %110 = trunc i16 %and198 to i8
  %111 = and i8 %110, 16
  %and206 = lshr i16 %val, 5
  %112 = trunc i16 %and206 to i8
  %113 = and i8 %112, 8
  %114 = trunc i16 %val to i8
  %115 = lshr i8 %114, 5
  %116 = and i8 %115, 4
  %117 = and i8 %115, 2
  %118 = and i8 %115, 1
  %119 = or i8 %113, %111
  %120 = or i8 %119, %116
  %121 = or i8 %120, %117
  %122 = or i8 %121, %118
  %123 = or i8 %122, %109
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %conv.i.i370)
  %cmp239.not = icmp eq i8 %123, %conv.i.i370
  br i1 %cmp239.not, label %sw.bb190.sw.epilog_crit_edge, label %if.then241

sw.bb190.sw.epilog_crit_edge:                     ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then241:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx192, align 1
  %conv244 = zext i8 %125 to i32
  %126 = ptrtoint ptr %dev_ops.i366 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_ops.i366, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %call.i372 = call i32 %129(i32 noundef %conv191, i32 noundef %conv244) #8
  %130 = ptrtoint ptr %regmap.i.i368 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap.i.i368, align 4
  %conv.i.i374 = zext i8 %123 to i32
  %call.i.i375 = call i32 @regmap_write(ptr noundef %131, i32 noundef %call.i372, i32 noundef %conv.i.i374) #8
  br label %sw.epilog

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %val)
  %tobool249.not = icmp sgt i16 %val, -1
  br i1 %tobool249.not, label %sw.bb246.sw.epilog_crit_edge, label %if.then250

sw.bb246.sw.epilog_crit_edge:                     ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then250:                                       ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %132 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap.i, align 4
  %conv.mask = shl i16 %phy, 4
  %134 = and i16 %conv.mask, 4080
  %narrow = add nuw nsw i16 %134, 26
  %add1.i = zext i16 %narrow to i32
  %call.i.i376 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef %add1.i, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then250, %sw.bb246.sw.epilog_crit_edge, %if.then241, %sw.bb190.sw.epilog_crit_edge, %if.then185, %if.end93.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_r_dyn_mac_table(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %mac_addr, ptr nocapture noundef writeonly %fid, ptr nocapture noundef writeonly %src_port, ptr nocapture noundef writeonly %timestamp, ptr nocapture noundef writeonly %entries) #0 align 64 {
entry:
  %value.i = alloca [2 x i32], align 4
  %value.i33.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %shifts1 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %shifts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shifts1, align 4
  %masks2 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %masks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %masks2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %or = or i16 %addr, 6144
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv5 = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %or to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv5, i32 noundef %conv.i) #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %masks1.i = getelementptr inbounds %struct.ksz8, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %masks1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %masks1.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %arrayidx.i109 = getelementptr i8, ptr %17, i32 2
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %arrayidx4.i = getelementptr i32, ptr %15, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 100, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i109, align 1
  %conv.i110 = zext i8 %19 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %20 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %21 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef %conv.i110, ptr noundef nonnull %value.i.i) #8
  %23 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %conv3.i = and i32 %24, 255
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i, align 4
  %and.i = and i32 %conv3.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then

if.else.i:                                        ; preds = %do.end.i
  %arrayidx10.i = getelementptr i8, ptr %17, i32 1
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %28 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i33.i) #8
  %29 = ptrtoint ptr %value.i33.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %value.i33.i, align 4, !annotation !144
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %call.i35.i = call i32 @regmap_read(ptr noundef %31, i32 noundef %conv11.i, ptr noundef nonnull %value.i33.i) #8
  %32 = ptrtoint ptr %value.i33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.i33.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i33.i) #8
  %conv13.i = and i32 %33, 255
  %arrayidx14.i = getelementptr i32, ptr %15, i32 13
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14.i, align 4
  %and15.i = and i32 %conv13.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else15, label %if.then14

if.then:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %addr)
  %cmp9 = icmp eq i16 %addr, 0
  br i1 %cmp9, label %if.then11, label %if.then.if.end67_crit_edge

if.then.if.end67_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %entries, align 2
  br label %if.end67

if.then14:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %entries, align 2
  br label %if.end67

if.else15:                                        ; preds = %if.else.i
  %arrayidx16 = getelementptr i8, ptr %7, i32 3
  %38 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  %40 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %value.i, align 4, !annotation !144
  %41 = getelementptr inbounds [2 x i32], ptr %value.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !144
  %arrayidx.i111 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i111, align 4
  %call.i112 = call i32 @regmap_bulk_read(ptr noundef %44, i32 noundef %conv17, ptr noundef nonnull %value.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.then.i, label %if.else15.ksz_read64.exit_crit_edge

if.else15.ksz_read64.exit_crit_edge:              ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz_read64.exit

if.then.i:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i, align 4
  %conv.i114 = zext i32 %46 to i64
  %shl.i = shl nuw i64 %conv.i114, 32
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %41, align 4
  %conv3.i115 = zext i32 %48 to i64
  %or.i = or i64 %shl.i, %conv3.i115
  br label %ksz_read64.exit

ksz_read64.exit:                                  ; preds = %if.then.i, %if.else15.ksz_read64.exit_crit_edge
  %buf.0 = phi i64 [ %or.i, %if.then.i ], [ 0, %if.else15.ksz_read64.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  %shr = lshr i64 %buf.0, 32
  %conv19 = trunc i64 %shr to i32
  %arrayidx22 = getelementptr i32, ptr %5, i32 12
  %49 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx22, align 4
  %and = and i32 %conv13.i, %50
  %arrayidx23 = getelementptr i8, ptr %3, i32 4
  %51 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %52 to i32
  %shl = shl i32 %and, %conv24
  %arrayidx25 = getelementptr i32, ptr %5, i32 15
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %54, %conv19
  %arrayidx27 = getelementptr i8, ptr %3, i32 5
  %55 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %56 to i32
  %shr29 = lshr i32 %and26, %conv28
  %or30 = or i32 %shr29, %shl
  %57 = trunc i32 %or30 to i16
  %conv31 = add i16 %57, 1
  %58 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv31, ptr %entries, align 2
  %arrayidx32 = getelementptr i32, ptr %5, i32 16
  %59 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx32, align 4
  %and33 = and i32 %60, %conv19
  %arrayidx34 = getelementptr i8, ptr %3, i32 6
  %61 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %62 to i32
  %shr36 = lshr i32 %and33, %conv35
  %conv37 = trunc i32 %shr36 to i8
  %63 = ptrtoint ptr %fid to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv37, ptr %fid, align 1
  %arrayidx38 = getelementptr i32, ptr %5, i32 17
  %64 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %65, %conv19
  %arrayidx40 = getelementptr i8, ptr %3, i32 8
  %66 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %67 to i32
  %shr42 = lshr i32 %and39, %conv41
  %conv43 = trunc i32 %shr42 to i8
  %68 = ptrtoint ptr %src_port to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv43, ptr %src_port, align 1
  %arrayidx44 = getelementptr i32, ptr %5, i32 18
  %69 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx44, align 4
  %and45 = and i32 %70, %conv19
  %arrayidx46 = getelementptr i8, ptr %3, i32 7
  %71 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %72 to i32
  %shr48 = lshr i32 %and45, %conv47
  %conv49 = trunc i32 %shr48 to i8
  %73 = ptrtoint ptr %timestamp to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv49, ptr %timestamp, align 1
  %conv50 = trunc i64 %buf.0 to i8
  %arrayidx51 = getelementptr i8, ptr %mac_addr, i32 5
  %74 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv50, ptr %arrayidx51, align 1
  %shr52105 = lshr i64 %buf.0, 8
  %conv53 = trunc i64 %shr52105 to i8
  %arrayidx54 = getelementptr i8, ptr %mac_addr, i32 4
  %75 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv53, ptr %arrayidx54, align 1
  %shr55106 = lshr i64 %buf.0, 16
  %conv56 = trunc i64 %shr55106 to i8
  %arrayidx57 = getelementptr i8, ptr %mac_addr, i32 3
  %76 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv56, ptr %arrayidx57, align 1
  %shr58107 = lshr i64 %buf.0, 24
  %conv59 = trunc i64 %shr58107 to i8
  %arrayidx60 = getelementptr i8, ptr %mac_addr, i32 2
  %77 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv59, ptr %arrayidx60, align 1
  %conv61 = trunc i64 %shr to i8
  %arrayidx62 = getelementptr i8, ptr %mac_addr, i32 1
  %78 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv61, ptr %arrayidx62, align 1
  %shr63108 = lshr i64 %buf.0, 40
  %conv64 = trunc i64 %shr63108 to i8
  %79 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv64, ptr %mac_addr, align 1
  br label %if.end67

if.end67:                                         ; preds = %ksz_read64.exit, %if.then14, %if.then11, %if.then.if.end67_crit_edge
  %rc.0 = phi i32 [ -11, %if.then11 ], [ -11, %if.then.if.end67_crit_edge ], [ -6, %if.then14 ], [ 0, %ksz_read64.exit ]
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_r_sta_mac_table(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef %alu) #0 align 64 {
entry:
  %value.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %shifts1 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %shifts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shifts1, align 4
  %masks2 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %masks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %masks2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %conv3.i = or i16 %addr, 4096
  %alu_mutex.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %conv3.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv4.i, i32 noundef %conv.i.i) #8
  %arrayidx5.i = getelementptr i8, ptr %7, i32 3
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %13 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #8
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %15 = getelementptr inbounds [2 x i32], ptr %value.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !144
  %arrayidx.i14.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i14.i, align 4
  %call.i15.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %conv6.i, ptr noundef nonnull %value.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.ksz8_r_table.exit_crit_edge

entry.ksz8_r_table.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_r_table.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i.i, align 4
  %conv.i16.i = zext i32 %20 to i64
  %shl.i.i = shl nuw i64 %conv.i16.i, 32
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %conv3.i.i = zext i32 %22 to i64
  %or.i.i = or i64 %shl.i.i, %conv3.i.i
  br label %ksz8_r_table.exit

ksz8_r_table.exit:                                ; preds = %if.then.i.i, %entry.ksz8_r_table.exit_crit_edge
  %data.0 = phi i64 [ %or.i.i, %if.then.i.i ], [ -1, %entry.ksz8_r_table.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  %shr = lshr i64 %data.0, 32
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr i32, ptr %5, i32 7
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 10
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4, align 4
  %or = or i32 %26, %24
  %and = and i32 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ksz8_r_table.exit.cleanup_crit_edge, label %if.then

ksz8_r_table.exit.cleanup_crit_edge:              ; preds = %ksz8_r_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %ksz8_r_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i64 %data.0 to i8
  %mac = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1
  %arrayidx6 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5, ptr %arrayidx6, align 1
  %shr7101 = lshr i64 %data.0, 8
  %conv8 = trunc i64 %shr7101 to i8
  %arrayidx10 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8, ptr %arrayidx10, align 2
  %shr11102 = lshr i64 %data.0, 16
  %conv12 = trunc i64 %shr11102 to i8
  %arrayidx14 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12, ptr %arrayidx14, align 1
  %shr15103 = lshr i64 %data.0, 24
  %conv16 = trunc i64 %shr15103 to i8
  %arrayidx18 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %arrayidx18, align 2
  %conv19 = trunc i64 %shr to i8
  %arrayidx21 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv19, ptr %arrayidx21, align 1
  %shr22104 = lshr i64 %data.0, 40
  %conv23 = trunc i64 %shr22104 to i8
  %32 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv23, ptr %mac, align 2
  %arrayidx26 = getelementptr i32, ptr %5, i32 11
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx26, align 4
  %and27 = and i32 %34, %conv
  %arrayidx28 = getelementptr i8, ptr %3, i32 2
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %36 to i32
  %shr30 = lshr i32 %and27, %conv29
  %37 = ptrtoint ptr %alu to i32
  call void @__asan_loadN_noabort(i32 %37, i32 10)
  %bf.load = load i80, ptr %alu, align 4
  %38 = shl i32 %shr30, 16
  %39 = and i32 %38, 8323072
  %bf.shl = zext i32 %39 to i80
  %bf.clear = and i80 %bf.load, -8323073
  %bf.set = or i80 %bf.clear, %bf.shl
  store i80 %bf.set, ptr %alu, align 4
  %40 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4, align 4
  %and33 = and i32 %41, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not.not = icmp eq i32 %and33, 0
  %bf.clear39 = and i80 %bf.set, 604462909666577098997759
  %shr42 = lshr i32 %conv, 1
  %bf.set40 = select i1 %tobool34.not.not, i80 -604462909807314587353088, i80 -604462909666577098997760
  %bf.set45 = or i80 %bf.set40, %bf.clear39
  %42 = ptrtoint ptr %alu to i32
  call void @__asan_storeN_noabort(i32 %42, i32 10)
  store i80 %bf.set45, ptr %alu, align 4
  %arrayidx46 = getelementptr i32, ptr %5, i32 8
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46, align 4
  %and47 = and i32 %44, %shr42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not.not = icmp eq i32 %and47, 0
  %bf.shl53 = select i1 %tobool48.not.not, i80 0, i80 70368744177664
  %bf.clear54 = and i80 %bf.set45, -70368744177665
  %bf.set55 = or i80 %bf.clear54, %bf.shl53
  %45 = ptrtoint ptr %alu to i32
  call void @__asan_storeN_noabort(i32 %45, i32 10)
  store i80 %bf.set55, ptr %alu, align 4
  %arrayidx57 = getelementptr i32, ptr %5, i32 9
  %46 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx57, align 4
  %and58 = and i32 %47, %shr42
  %arrayidx59 = getelementptr i8, ptr %3, i32 3
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %49 to i32
  %shr61 = lshr i32 %and58, %conv60
  %50 = and i32 %shr61, 127
  %bf.value64 = zext i32 %50 to i80
  %bf.clear65 = and i80 %bf.set55, -128
  %bf.set66 = or i80 %bf.clear65, %bf.value64
  store i80 %bf.set66, ptr %alu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ksz8_r_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -6, %ksz8_r_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_w_sta_mac_table(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef readonly %alu) #0 align 64 {
entry:
  %val.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %shifts1 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %shifts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shifts1, align 4
  %masks2 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %masks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %masks2, align 4
  %mac = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1
  %arrayidx = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %arrayidx4 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %arrayidx8 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 2
  %arrayidx13 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac, align 2
  %conv18 = zext i8 %15 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %arrayidx21 = getelementptr %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %or23 = or i32 %shl19, %conv22
  %18 = ptrtoint ptr %alu to i32
  call void @__asan_loadN_noabort(i32 %18, i32 10)
  %bf.load = load i80, ptr %alu, align 4
  %19 = trunc i80 %bf.load to i32
  %20 = lshr i32 %19, 16
  %bf.cast = and i32 %20, 127
  %arrayidx25 = getelementptr i8, ptr %3, i32 2
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %shl27 = shl i32 %bf.cast, %conv26
  %or28 = or i32 %or23, %shl27
  %23 = and i80 %bf.load, 140737488355328
  %tobool.not = icmp eq i80 %23, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx33 = getelementptr i32, ptr %5, i32 10
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx33, align 4
  %or34 = or i32 %25, %or28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data_hi.0 = phi i32 [ %or34, %if.then ], [ %or28, %entry.if.end_crit_edge ]
  %26 = and i80 %bf.load, 70368744177664
  %tobool39.not = icmp eq i80 %26, 0
  br i1 %tobool39.not, label %if.end.if.end51_crit_edge, label %if.then40

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx41 = getelementptr i32, ptr %5, i32 8
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx41, align 4
  %or42 = or i32 %28, %data_hi.0
  %bf.cast45 = and i32 %19, 127
  %arrayidx47 = getelementptr i8, ptr %3, i32 3
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %30 to i32
  %shl49 = shl i32 %bf.cast45, %conv48
  %or50 = or i32 %or42, %shl49
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %if.end.if.end51_crit_edge
  %data_hi.1 = phi i32 [ %or50, %if.then40 ], [ %data_hi.0, %if.end.if.end51_crit_edge ]
  %tobool55.not = icmp sgt i80 %bf.load, -1
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx57 = getelementptr i32, ptr %5, i32 7
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx57, align 4
  %or58 = or i32 %32, %data_hi.1
  br label %if.end60

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx59 = getelementptr i32, ptr %5, i32 10
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx59, align 4
  %neg = xor i32 %34, -1
  %and = and i32 %data_hi.1, %neg
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then56
  %data_hi.2 = phi i32 [ %or58, %if.then56 ], [ %and, %if.else ]
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %conv14 = zext i8 %13 to i32
  %or15 = or i32 %or11, %conv14
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %alu_mutex.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %arrayidx.i = getelementptr i8, ptr %36, i32 3
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %38 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #8
  %39 = getelementptr inbounds [2 x i32], ptr %val.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %data_hi.2, ptr %val.i.i, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or15, ptr %39, align 4
  %arrayidx3.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %42 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef %conv3.i, ptr noundef nonnull %val.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #8
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %36, align 1
  %conv5.i = zext i8 %45 to i32
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %addr to i32
  %call.i13.i = call i32 @regmap_write(ptr noundef %47, i32 noundef %conv5.i, i32 noundef %conv.i.i) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_r_mib_cnt(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %addr, ptr nocapture noundef %cnt) #0 align 64 {
entry:
  %value.i43 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %masks1 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %masks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %masks1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %reg_mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %reg_mib_cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_mib_cnt, align 4
  %conv3 = zext i8 %7 to i32
  %mul = mul i32 %conv3, %port
  %8 = trunc i32 %mul to i16
  %conv4 = add i16 %8, %addr
  %9 = or i16 %conv4, 7168
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 1
  %conv7 = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %conv7, i32 noundef %conv.i) #8
  %arrayidx9 = getelementptr i8, ptr %5, i32 5
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %arrayidx13 = getelementptr i32, ptr %3, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %value.i, align 4, !annotation !144
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i41 = call i32 @regmap_read(ptr noundef %18, i32 noundef %conv10, ptr noundef nonnull %value.i) #8
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %conv12 = and i32 %20, 255
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %22, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond:                                         ; preds = %entry
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9, align 1
  %conv10.1 = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %value.i, align 4, !annotation !144
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i41.1 = call i32 @regmap_read(ptr noundef %27, i32 noundef %conv10.1, ptr noundef nonnull %value.i) #8
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %conv12.1 = and i32 %29, 255
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13, align 4
  %and.1 = and i32 %31, %conv12.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.cond.for.end_crit_edge, label %for.cond.if.then_crit_edge

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %conv12.lcssa = phi i32 [ %conv12, %entry.if.then_crit_edge ], [ %conv12.1, %for.cond.if.then_crit_edge ]
  %arrayidx14 = getelementptr i8, ptr %5, i32 4
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %33 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i43) #8
  %34 = ptrtoint ptr %value.i43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %value.i43, align 4, !annotation !144
  %arrayidx.i44 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i44, align 4
  %call.i45 = call i32 @regmap_read(ptr noundef %36, i32 noundef %conv15, ptr noundef nonnull %value.i43) #8
  %37 = ptrtoint ptr %value.i43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i43) #8
  %arrayidx18 = getelementptr i32, ptr %3, i32 2
  %39 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx18, align 4
  %and19 = and i32 %40, %conv12.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cnt, align 8
  %add22 = add i64 %42, 1073741824
  store i64 %add22, ptr %cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %and23 = and i32 %38, 1073741823
  %conv24 = zext i32 %and23 to i64
  %43 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %cnt, align 8
  %add25 = add i64 %44, %conv24
  store i64 %add25, ptr %cnt, align 8
  br label %for.end

for.end:                                          ; preds = %if.end, %for.cond.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_r_mib_pkt(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %addr, ptr nocapture noundef %dropped, ptr nocapture noundef %cnt) #0 align 64 {
entry:
  %value.i3.i = alloca i32, align 4
  %value.i.i7 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %1)
  %cmp.i = icmp eq i32 %1, 34864
  %priv.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %reg_mib_cnt.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %reg_mib_cnt.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_mib_cnt.i, align 4
  %conv.i = zext i8 %7 to i16
  %sub.i = sub i16 %addr, %conv.i
  %conv4.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %addr)
  %tobool.not.i = icmp eq i16 %conv.i, %addr
  %conv5.i = select i1 %tobool.not.i, i32 261, i32 256
  %add.i = add i32 %conv5.i, %port
  %alu_mutex.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %conv10.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %conv9.i = and i32 %add.i, 58367
  %conv.i.i = or i32 %conv9.i, 7168
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv10.i, i32 noundef %conv.i.i) #8
  %arrayidx11.i = getelementptr i8, ptr %5, i32 4
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %13 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %arrayidx.i42.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i42.i, align 4
  %call.i43.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %conv12.i, ptr noundef nonnull %value.i.i) #8
  %17 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  %and.i = and i32 %18, 65535
  %arrayidx15.i = getelementptr i32, ptr %dropped, i32 %conv4.i
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %20)
  %cmp.not.i = icmp eq i32 %and.i, %20
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %20)
  %cmp19.i = icmp ult i32 %and.i, %20
  %add22.i = or i32 %and.i, 65536
  %spec.select.i = select i1 %cmp19.i, i32 %add22.i, i32 %and.i
  %sub23.i = sub i32 %spec.select.i, %20
  %conv24.i = zext i32 %sub23.i to i64
  %22 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cnt, align 8
  %add25.i = add i64 %23, %conv24.i
  store i64 %add25.i, ptr %cnt, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %masks1.i = getelementptr inbounds %struct.ksz8, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %masks1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %masks1.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %reg_mib_cnt.i9 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %28 = ptrtoint ptr %reg_mib_cnt.i9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_mib_cnt.i9, align 4
  %conv.i10 = zext i8 %29 to i16
  %sub.i11 = sub i16 %addr, %conv.i10
  %conv5.i12 = shl i32 %port, 2
  %conv6.i = zext i16 %sub.i11 to i32
  %add.i13 = add i32 %conv5.i12, 256
  %add8.i = add i32 %add.i13, %conv6.i
  %alu_mutex.i14 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i14, i32 noundef 0) #8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %27, align 1
  %conv12.i15 = zext i8 %31 to i32
  %arrayidx.i.i16 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i16, align 4
  %conv11.i = and i32 %add8.i, 58367
  %conv.i.i17 = or i32 %conv11.i, 7168
  %call.i.i18 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %conv12.i15, i32 noundef %conv.i.i17) #8
  %arrayidx14.i = getelementptr i8, ptr %27, i32 5
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %arrayidx18.i = getelementptr i32, ptr %25, i32 3
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %35 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i7) #8
  %36 = ptrtoint ptr %value.i.i7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %value.i.i7, align 4, !annotation !144
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %call.i1.i = call i32 @regmap_read(ptr noundef %38, i32 noundef %conv15.i, ptr noundef nonnull %value.i.i7) #8
  %39 = ptrtoint ptr %value.i.i7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i.i7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i7) #8
  %conv17.i = and i32 %40, 255
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx18.i, align 4
  %and.i19 = and i32 %42, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %for.cond.i, label %if.else.if.then.i21_crit_edge

if.else.if.then.i21_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

for.cond.i:                                       ; preds = %if.else
  %43 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx14.i, align 1
  %conv15.1.i = zext i8 %44 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i7) #8
  %45 = ptrtoint ptr %value.i.i7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %value.i.i7, align 4, !annotation !144
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %call.i1.1.i = call i32 @regmap_read(ptr noundef %47, i32 noundef %conv15.1.i, ptr noundef nonnull %value.i.i7) #8
  %48 = ptrtoint ptr %value.i.i7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value.i.i7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i7) #8
  %conv17.1.i = and i32 %49, 255
  %50 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx18.i, align 4
  %and.1.i = and i32 %51, %conv17.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.ksz8795_r_mib_pkt.exit_crit_edge, label %for.cond.i.if.then.i21_crit_edge

for.cond.i.if.then.i21_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

for.cond.i.ksz8795_r_mib_pkt.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8795_r_mib_pkt.exit

if.then.i21:                                      ; preds = %for.cond.i.if.then.i21_crit_edge, %if.else.if.then.i21_crit_edge
  %.lcssa.i = phi i32 [ %40, %if.else.if.then.i21_crit_edge ], [ %49, %for.cond.i.if.then.i21_crit_edge ]
  %conv17.lcssa.i = phi i32 [ %conv17.i, %if.else.if.then.i21_crit_edge ], [ %conv17.1.i, %for.cond.i.if.then.i21_crit_edge ]
  %arrayidx19.i = getelementptr i8, ptr %27, i32 4
  %52 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %53 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i3.i) #8
  %54 = ptrtoint ptr %value.i3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %value.i3.i, align 4, !annotation !144
  %arrayidx.i4.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i4.i, align 4
  %call.i5.i = call i32 @regmap_read(ptr noundef %56, i32 noundef %conv20.i, ptr noundef nonnull %value.i3.i) #8
  %57 = ptrtoint ptr %value.i3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value.i3.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i3.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %sub.i11)
  %cmp23.i = icmp ult i16 %sub.i11, 2
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.then.i21
  %conv.i2.le.i = trunc i32 %.lcssa.i to i8
  %59 = and i8 %conv.i2.le.i, 15
  %60 = zext i8 %59 to i64
  %shl.i = shl nuw nsw i64 %60, 32
  %61 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %cnt, align 8
  %conv30.i = zext i32 %58 to i64
  %add29.i = or i64 %shl.i, %conv30.i
  %add31.i = add i64 %add29.i, %62
  store i64 %add31.i, ptr %cnt, align 8
  %arrayidx33.i = getelementptr i32, ptr %25, i32 2
  %63 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx33.i, align 4
  %and34.i = and i32 %64, %conv17.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.then25.i.ksz8795_r_mib_pkt.exit_crit_edge, label %if.then36.i

if.then25.i.ksz8795_r_mib_pkt.exit_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8795_r_mib_pkt.exit

if.then36.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %add38.i = add i64 %add31.i, 68719476736
  br label %for.end.sink.split.i

if.else.i:                                        ; preds = %if.then.i21
  %arrayidx40.i = getelementptr i32, ptr %25, i32 2
  %65 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx40.i, align 4
  %and41.i = and i32 %66, %conv17.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else.i.if.end45.i_crit_edge, label %if.then43.i

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %cnt, align 8
  %add44.i = add i64 %68, 65536
  store i64 %add44.i, ptr %cnt, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.else.i.if.end45.i_crit_edge
  %and46.i = and i32 %58, 65535
  %conv47.i = zext i32 %and46.i to i64
  %69 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cnt, align 8
  %add48.i = add i64 %70, %conv47.i
  br label %for.end.sink.split.i

for.end.sink.split.i:                             ; preds = %if.end45.i, %if.then36.i
  %add38.sink.i = phi i64 [ %add38.i, %if.then36.i ], [ %add48.i, %if.end45.i ]
  %71 = ptrtoint ptr %cnt to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %add38.sink.i, ptr %cnt, align 8
  br label %ksz8795_r_mib_pkt.exit

ksz8795_r_mib_pkt.exit:                           ; preds = %for.end.sink.split.i, %if.then25.i.ksz8795_r_mib_pkt.exit_crit_edge, %for.cond.i.ksz8795_r_mib_pkt.exit_crit_edge
  call void @mutex_unlock(ptr noundef %alu_mutex.i14) #8
  br label %if.end

if.end:                                           ; preds = %ksz8795_r_mib_pkt.exit, %if.then.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_freeze_mib(ptr nocapture noundef readonly %dev, i32 noundef %port, i1 noundef zeroext %freeze) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %1)
  %cmp.i = icmp eq i32 %1, 34864
  br i1 %cmp.i, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end:                                           ; preds = %entry
  br i1 %freeze, label %if.then1, label %if.then5.critedge

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %port
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %shl, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8, i32 noundef %conv.i, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end8

if.then5.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i17 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i17, align 4
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl6 = shl nuw i32 1, %port
  %8 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i17, align 4
  %conv.i20 = and i32 %shl6, 255
  %call.i.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef %conv.i20, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5.critedge, %if.then1, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_port_init_cnt(ptr noundef %dev, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %3)
  %cmp.i = icmp eq i32 %3, 34864
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %port
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %shl, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef %conv.i, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef %conv.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cnt_ptr = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4, i32 1
  %reg_mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cnt_ptr, align 4
  %11 = ptrtoint ptr %reg_mib_cnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_mib_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp69.not = icmp eq i8 %12, 0
  br i1 %cmp69.not, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %dev_ops = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %counters = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %storemerge70 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %conv5 = zext i8 %storemerge70 to i32
  %13 = ptrtoint ptr %dev_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_ops, align 4
  %r_mib_cnt = getelementptr inbounds %struct.ksz_dev_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %r_mib_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_mib_cnt, align 4
  %conv9 = zext i8 %storemerge70 to i16
  %17 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %counters, align 4
  %arrayidx11 = getelementptr i64, ptr %18, i32 %conv5
  tail call void %16(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %conv9, ptr noundef %arrayidx11) #8
  %19 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cnt_ptr, align 4
  %inc = add i8 %20, 1
  store i8 %inc, ptr %cnt_ptr, align 4
  %21 = ptrtoint ptr %reg_mib_cnt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_mib_cnt, align 4
  %cmp = icmp ult i8 %inc, %22
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %counters13 = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4, i32 2
  %23 = ptrtoint ptr %counters13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %counters13, align 4
  %mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 21
  %25 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mib_cnt, align 4
  %arrayidx14 = getelementptr i64, ptr %24, i32 %26
  %27 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cnt_ptr, align 4
  %conv1771 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv1771)
  %cmp1972 = icmp sgt i32 %26, %conv1771
  br i1 %cmp1972, label %while.body21.lr.ph, label %while.end.while.end31_crit_edge

while.end.while.end31_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end31

while.body21.lr.ph:                               ; preds = %while.end
  %dev_ops22 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.body21.lr.ph
  %conv1773 = phi i32 [ %conv1771, %while.body21.lr.ph ], [ %conv17, %while.body21.while.body21_crit_edge ]
  %29 = phi i8 [ %28, %while.body21.lr.ph ], [ %inc30, %while.body21.while.body21_crit_edge ]
  %30 = ptrtoint ptr %dev_ops22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_ops22, align 4
  %r_mib_pkt = getelementptr inbounds %struct.ksz_dev_ops, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %r_mib_pkt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %r_mib_pkt, align 4
  %conv24 = zext i8 %29 to i16
  %34 = ptrtoint ptr %counters13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %counters13, align 4
  %arrayidx28 = getelementptr i64, ptr %35, i32 %conv1773
  tail call void %33(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %conv24, ptr noundef %arrayidx14, ptr noundef %arrayidx28) #8
  %36 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cnt_ptr, align 4
  %inc30 = add i8 %37, 1
  store i8 %inc30, ptr %cnt_ptr, align 4
  %conv17 = zext i8 %inc30 to i32
  %38 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mib_cnt, align 4
  %cmp19 = icmp sgt i32 %39, %conv17
  br i1 %cmp19, label %while.body21.while.body21_crit_edge, label %while.body21.while.end31_crit_edge

while.body21.while.end31_crit_edge:               ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end31

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body21

while.end31:                                      ; preds = %while.body21.while.end31_crit_edge, %while.end.while.end31_crit_edge
  %40 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %cnt_ptr, align 4
  %41 = ptrtoint ptr %counters13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %counters13, align 4
  %43 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mib_cnt, align 4
  %mul = shl i32 %44, 3
  %45 = call ptr @memset(ptr %42, i32 0, i32 %mul)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_reset_switch(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %1)
  %cmp.i = icmp eq i32 %1, 34864
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 67, i32 noundef 17, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 67, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 14, i32 noundef 16) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 14, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_switch_detect(ptr nocapture noundef %dev) #0 align 64 {
entry:
  %value.i56 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !144
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %value.i) #8
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = trunc i32 %4 to i16
  %5 = lshr i16 %conv.i, 8
  %6 = trunc i32 %4 to i8
  %conv3 = and i8 %6, -16
  %trunc = trunc i16 %5 to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %trunc, label %do.end [
    i8 -121, label %sw.bb
    i8 -120, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %8 = zext i8 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %conv3, label %sw.bb.cleanup_crit_edge [
    i8 -112, label %if.then15
    i8 96, label %sw.bb.sw.epilog_crit_edge
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i56) #8
  %9 = ptrtoint ptr %value.i56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %value.i56, align 4, !annotation !144
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i57 = call i32 @regmap_read(ptr noundef %11, i32 noundef 8, ptr noundef nonnull %value.i56) #8
  %12 = ptrtoint ptr %value.i56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i56, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i56) #8
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  %phi.cast = select i1 %tobool19.not, i32 149, i32 101
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv3)
  %cmp30.not = icmp eq i8 %conv3, 48
  br i1 %cmp30.not, label %sw.bb28.sw.epilog_crit_edge, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv1 = zext i16 %5 to i32
  %dev34 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %conv1) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28.sw.epilog_crit_edge, %if.then15, %sw.bb.sw.epilog_crit_edge
  %id2.1 = phi i32 [ 48, %sw.bb28.sw.epilog_crit_edge ], [ %phi.cast, %if.then15 ], [ 148, %sw.bb.sw.epilog_crit_edge ]
  %17 = and i32 %4, 65280
  %or = or i32 %id2.1, %17
  %chip_id = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %18 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %chip_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %sw.bb28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_switch_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ksz8_switch_ops, ptr %ops, align 4
  %chip_id = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %6, label %entry.for.end_crit_edge [
    i32 34709, label %entry.cleanup_crit_edge
    i32 34708, label %cleanup.fold.split
    i32 34661, label %cleanup.fold.split140
    i32 34864, label %cleanup.fold.split141
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split140:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split141:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split141, %cleanup.fold.split140, %cleanup.fold.split, %entry.cleanup_crit_edge
  %i.0134.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split140 ], [ 3, %cleanup.fold.split141 ]
  %dev_name = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz8_switch_chips, i32 0, i32 %i.0134.lcssa, i32 1
  %8 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_name, align 4
  %name = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name, align 4
  %num_vlans = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz8_switch_chips, i32 0, i32 %i.0134.lcssa, i32 2
  %11 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_vlans, align 4
  %num_vlans4 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %num_vlans4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_vlans4, align 4
  %num_alus = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz8_switch_chips, i32 0, i32 %i.0134.lcssa, i32 3
  %14 = ptrtoint ptr %num_alus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_alus, align 4
  %num_alus5 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %num_alus5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_alus5, align 4
  %num_statics = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz8_switch_chips, i32 0, i32 %i.0134.lcssa, i32 4
  %17 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_statics, align 4
  %num_statics6 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 15
  %19 = ptrtoint ptr %num_statics6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_statics6, align 4
  %cpu_ports = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz8_switch_chips, i32 0, i32 %i.0134.lcssa, i32 5
  %20 = ptrtoint ptr %cpu_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu_ports, align 4
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #8, !range !145
  %sub.i = sub nuw nsw i32 32, %22
  %port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %port_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %port_cnt, align 4
  %sub = xor i32 %22, 31
  %cpu_port = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 16
  %24 = ptrtoint ptr %cpu_port to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %cpu_port, align 4
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %phy_port_cnt, align 4
  %cpu_ports12 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 17
  %26 = ptrtoint ptr %cpu_ports12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %cpu_ports12, align 4
  %conv14 = trunc i32 %21 to i16
  %host_mask = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 35
  %27 = ptrtoint ptr %host_mask to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv14, ptr %host_mask, align 4
  %notmask = shl nsw i32 -1, %sub
  %sub16 = xor i32 %notmask, -1
  %or = or i32 %21, %sub16
  %conv18 = trunc i32 %or to i16
  %port_mask = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 36
  %28 = ptrtoint ptr %port_mask to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv18, ptr %port_mask, align 2
  br label %for.end

for.end:                                          ; preds = %cleanup, %entry.for.end_crit_edge
  %cpu_ports19 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 17
  %29 = ptrtoint ptr %cpu_ports19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu_ports19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %for.end.cleanup68_crit_edge, label %if.end21

for.end.cleanup68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end21:                                         ; preds = %for.end
  %31 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %32)
  %cmp.i = icmp eq i32 %32, 34864
  br i1 %cmp.i, label %if.end21.if.end29_crit_edge, label %if.else

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end21.if.end29_crit_edge
  %storemerge = phi ptr [ @ksz8795_regs, %if.else ], [ @ksz8863_regs, %if.end21.if.end29_crit_edge ]
  %ksz8795_masks.sink = phi ptr [ @ksz8795_masks, %if.else ], [ @ksz8863_masks, %if.end21.if.end29_crit_edge ]
  %ksz8795_shifts.sink = phi ptr [ @ksz8795_shifts, %if.else ], [ @ksz8863_shifts, %if.end21.if.end29_crit_edge ]
  %.sink = phi i32 [ 36, %if.else ], [ 34, %if.end21.if.end29_crit_edge ]
  %ksz87xx_mib_names.sink = phi ptr [ @ksz87xx_mib_names, %if.else ], [ @ksz88xx_mib_names, %if.end21.if.end29_crit_edge ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %storemerge, ptr %1, align 4
  %34 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ksz8795_masks.sink, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ksz8795_shifts.sink, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 21
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 22
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ksz87xx_mib_names.sink, ptr %40, align 4
  %reg_mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %42 = ptrtoint ptr %reg_mib_cnt to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 32, ptr %reg_mib_cnt, align 4
  %dev30 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %43 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev30, align 4
  %port_cnt31 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %45 = ptrtoint ptr %port_cnt31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_cnt31, align 4
  %mul = mul i32 %46, 1624
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %44, i32 noundef %mul, i32 noundef 3520) #8
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %47 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %ports, align 4
  %tobool34.not = icmp eq ptr %call.i, null
  br i1 %tobool34.not, label %if.end29.cleanup68_crit_edge, label %for.cond37.preheader

if.end29.cleanup68_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.cond37.preheader:                             ; preds = %if.end29
  %48 = ptrtoint ptr %port_cnt31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_cnt31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp39135 = icmp sgt i32 %49, 0
  br i1 %cmp39135, label %for.cond37.preheader.do.body_crit_edge, label %for.cond37.preheader.for.end60_crit_edge

for.cond37.preheader.for.end60_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.cond37.preheader.do.body_crit_edge:           ; preds = %for.cond37.preheader
  br label %do.body

for.cond37:                                       ; preds = %do.body
  %inc59 = add nuw nsw i32 %i.1136, 1
  %50 = ptrtoint ptr %port_cnt31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_cnt31, align 4
  %cmp39 = icmp slt i32 %inc59, %51
  br i1 %cmp39, label %for.cond37.do.body_crit_edge, label %for.cond37.for.end60_crit_edge

for.cond37.for.end60_crit_edge:                   ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.cond37.do.body_crit_edge:                     ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.cond37.do.body_crit_edge, %for.cond37.preheader.do.body_crit_edge
  %i.1136 = phi i32 [ %inc59, %for.cond37.do.body_crit_edge ], [ 0, %for.cond37.preheader.do.body_crit_edge ]
  %52 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ports, align 4
  %mib = getelementptr %struct.ksz_port, ptr %53, i32 %i.1136, i32 4
  tail call void @__mutex_init(ptr noundef %mib, ptr noundef nonnull @.str.8, ptr noundef nonnull @ksz8_switch_init.__key) #8
  %54 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev30, align 4
  %56 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %38, align 4
  %add = shl i32 %57, 3
  %mul46 = add i32 %add, 8
  %call.i129 = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %mul46, i32 noundef 3520) #8
  %58 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports, align 4
  %counters = getelementptr %struct.ksz_port, ptr %59, i32 %i.1136, i32 4, i32 2
  %60 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i129, ptr %counters, align 4
  %61 = load ptr, ptr %ports, align 4
  %counters54 = getelementptr %struct.ksz_port, ptr %61, i32 %i.1136, i32 4, i32 2
  %62 = ptrtoint ptr %counters54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %counters54, align 4
  %tobool55.not = icmp eq ptr %63, null
  br i1 %tobool55.not, label %do.body.cleanup68_crit_edge, label %for.cond37

do.body.cleanup68_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.end60:                                        ; preds = %for.cond37.for.end60_crit_edge, %for.cond37.preheader.for.end60_crit_edge
  %.lcssa = phi i32 [ %49, %for.cond37.preheader.for.end60_crit_edge ], [ %51, %for.cond37.for.end60_crit_edge ]
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.lcssa, ptr %num_ports, align 4
  %67 = load ptr, ptr %dev, align 4
  %untag_bridge_pvid = getelementptr inbounds %struct.dsa_switch, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %untag_bridge_pvid to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load = load i16, ptr %untag_bridge_pvid, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %untag_bridge_pvid, align 4
  %69 = load ptr, ptr %dev, align 4
  %vlan_filtering_is_global = getelementptr inbounds %struct.dsa_switch, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %vlan_filtering_is_global to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load65 = load i16, ptr %vlan_filtering_is_global, align 4
  %bf.set67 = or i16 %bf.load65, 16384
  store i16 %bf.set67, ptr %vlan_filtering_is_global, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %for.end60, %do.body.cleanup68_crit_edge, %if.end29.cleanup68_crit_edge, %for.end.cleanup68_crit_edge
  %retval.0 = phi i32 [ 0, %for.end60 ], [ -19, %for.end.cleanup68_crit_edge ], [ -12, %if.end29.cleanup68_crit_edge ], [ -12, %do.body.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_switch_exit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 34864
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 67, i32 noundef 17, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 67, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %ksz8_reset_switch.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 14, i32 noundef 16) #8
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 14, i32 noundef 0) #8
  br label %ksz8_reset_switch.exit

ksz8_reset_switch.exit:                           ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz8_get_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %3)
  %cmp.i = icmp eq i32 %3, 34864
  %cond = select i1 %cmp.i, i32 7, i32 14
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_setup(ptr nocapture noundef %ds) #0 align 64 {
entry:
  %value.i.i.i76 = alloca [2 x i32], align 4
  %value.i.i.i = alloca i32, align 4
  %value.i.i.i.i = alloca i32, align 4
  %alu = alloca %struct.alu_struct, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %alu) #8
  %2 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1
  %3 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 4
  %num_vlans = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 13
  %4 = call ptr @memset(ptr %alu, i32 255, i32 16)
  %5 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_vlans, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !146

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_cache81 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %vlan_cache81 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vlan_cache81, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %12 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #8
  %vlan_cache = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %vlan_cache, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %chip_id.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 34864
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 67, i32 noundef 17, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 67, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %ksz8_reset_switch.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 14, i32 noundef 16) #8
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 14, i32 noundef 0) #8
  br label %ksz8_reset_switch.exit

ksz8_reset_switch.exit:                           ; preds = %if.else.i, %if.then.i
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 6, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 2, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 3, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 4, i32 noundef 136, i32 noundef 136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %priv1.i = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %masks3.i = getelementptr inbounds %struct.ksz8, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %masks3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %masks3.i, align 4
  %regmap.i.i61 = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 9
  %38 = ptrtoint ptr %regmap.i.i61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i61, align 4
  %call.i.i.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 4, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %arrayidx.i = getelementptr i8, ptr %35, i32 12
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %41 to i32
  %arrayidx4.i = getelementptr i32, ptr %37, i32 1
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.i, align 4
  %44 = ptrtoint ptr %regmap.i.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i61, align 4
  %conv.i.i = and i32 %43, 255
  %call.i.i88.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %conv.i, i32 noundef %conv.i.i, i32 noundef %conv.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %ports.i = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 28
  %46 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ports.i, align 4
  %cpu_port.i = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 16
  %48 = ptrtoint ptr %cpu_port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu_port.i, align 4
  %on.i = getelementptr %struct.ksz_port, ptr %47, i32 %49, i32 3
  %50 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %on.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %on.i, align 8
  %51 = load i32, ptr %cpu_port.i, align 4
  tail call void @ksz8_port_setup(ptr noundef %31, i32 noundef %51, i1 noundef zeroext true) #8
  %phy_port_cnt.i = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 18
  %52 = ptrtoint ptr %phy_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_port_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp97.i = icmp sgt i32 %53, 0
  br i1 %cmp97.i, label %ksz8_reset_switch.exit.for.body.i_crit_edge, label %ksz8_reset_switch.exit.ksz8_config_cpu_port.exit_crit_edge

ksz8_reset_switch.exit.ksz8_config_cpu_port.exit_crit_edge: ; preds = %ksz8_reset_switch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_config_cpu_port.exit

ksz8_reset_switch.exit.for.body.i_crit_edge:      ; preds = %ksz8_reset_switch.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %ksz8_reset_switch.exit.for.body.i_crit_edge
  %i.098.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %ksz8_reset_switch.exit.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ports.i, align 4
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %dev_ops.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_ops.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call.i.i89.i = call i32 %61(i32 noundef %i.098.i, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #8
  %62 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %value.i.i.i.i, align 4, !annotation !144
  %regmap.i.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %57, i32 0, i32 9
  %63 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %64, i32 noundef %call.i.i89.i, ptr noundef nonnull %value.i.i.i.i) #8
  %65 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #8
  %67 = and i32 %66, 248
  %68 = or i32 %67, 1
  %69 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_ops.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call.i36.i.i = call i32 %72(i32 noundef %i.098.i, i32 noundef 2) #8
  %73 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.i39.i.i = call i32 @regmap_write(ptr noundef %74, i32 noundef %call.i36.i.i, i32 noundef %68) #8
  %ports.i.i = getelementptr inbounds %struct.ksz_device, ptr %57, i32 0, i32 28
  %75 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ports.i.i, align 4
  %stp_state.i.i = getelementptr %struct.ksz_port, ptr %76, i32 %i.098.i, i32 1
  %77 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %stp_state.i.i, align 4
  call void @ksz_update_port_member(ptr noundef %57, i32 noundef %i.098.i) #8
  %78 = ptrtoint ptr %phy_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %phy_port_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098.i, i32 %79)
  %cmp12.i = icmp eq i32 %i.098.i, %79
  br i1 %cmp12.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %on14.i = getelementptr %struct.ksz_port, ptr %55, i32 %i.098.i, i32 3
  %80 = ptrtoint ptr %on14.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load15.i = load i8, ptr %on14.i, align 8
  %bf.set20.i = or i8 %bf.load15.i, -64
  store i8 %bf.set20.i, ptr %on14.i, align 8
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %81 = ptrtoint ptr %phy_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %phy_port_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %82
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %83 = phi i32 [ %82, %if.end.i.for.end.i_crit_edge ], [ %i.098.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp23100.i = icmp sgt i32 %83, 0
  br i1 %cmp23100.i, label %for.body25.lr.ph.i, label %for.end.i.ksz8_config_cpu_port.exit_crit_edge

for.end.i.ksz8_config_cpu_port.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_config_cpu_port.exit

for.body25.lr.ph.i:                               ; preds = %for.end.i
  %chip_id.i.i63 = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 12
  %arrayidx33.i = getelementptr i8, ptr %35, i32 10
  %dev_ops.i.i = getelementptr inbounds %struct.ksz_device, ptr %31, i32 0, i32 7
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc51.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.1101.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc52.i, %for.inc51.i.for.body25.i_crit_edge ]
  %84 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ports.i, align 4
  %on28.i = getelementptr %struct.ksz_port, ptr %85, i32 %i.1101.i, i32 3
  %86 = ptrtoint ptr %on28.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load29.i = load i8, ptr %on28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29.i)
  %tobool.not.i = icmp sgt i8 %bf.load29.i, -1
  br i1 %tobool.not.i, label %for.body25.i.for.inc51.i_crit_edge, label %if.end31.i

for.body25.i.for.inc51.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51.i

if.end31.i:                                       ; preds = %for.body25.i
  %87 = ptrtoint ptr %chip_id.i.i63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chip_id.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %88)
  %cmp.i.i64 = icmp eq i32 %88, 34864
  br i1 %cmp.i.i64, label %if.end31.i.if.end42.i_crit_edge, label %if.then32.i

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then32.i:                                      ; preds = %if.end31.i
  %89 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %90 to i32
  %91 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_ops.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %call.i.i65 = call i32 %94(i32 noundef %i.1101.i, i32 noundef %conv34.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i) #8
  %95 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %value.i.i.i, align 4, !annotation !144
  %96 = ptrtoint ptr %regmap.i.i61 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i.i61, align 4
  %call.i.i90.i = call i32 @regmap_read(ptr noundef %97, i32 noundef %call.i.i65, ptr noundef nonnull %value.i.i.i) #8
  %98 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %value.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #8
  %100 = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool36.not.i = icmp eq i32 %100, 0
  br i1 %tobool36.not.i, label %if.then32.i.if.end42.i_crit_edge, label %if.then37.i

if.then32.i.if.end42.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %on28.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load38.i = load i8, ptr %on28.i, align 8
  %bf.set40.i = or i8 %bf.load38.i, 32
  store i8 %bf.set40.i, ptr %on28.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.then32.i.if.end42.i_crit_edge, %if.end31.i.if.end42.i_crit_edge
  %102 = ptrtoint ptr %on28.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load44.i = load i8, ptr %on28.i, align 8
  %103 = ptrtoint ptr %regmap.i.i61 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i.i61, align 4
  %mul.i94.i = shl i32 %i.1101.i, 4
  %add1.i95.i = add i32 %mul.i94.i, 18
  %105 = lshr i8 %bf.load44.i, 1
  %106 = and i8 %105, 16
  %107 = zext i8 %106 to i32
  %call.i.i92.i = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef %add1.i95.i, i32 noundef 16, i32 noundef %107, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %if.end42.i, %for.body25.i.for.inc51.i_crit_edge
  %inc52.i = add nuw nsw i32 %i.1101.i, 1
  %108 = ptrtoint ptr %phy_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phy_port_cnt.i, align 4
  %cmp23.i = icmp slt i32 %inc52.i, %109
  br i1 %cmp23.i, label %for.inc51.i.for.body25.i_crit_edge, label %for.inc51.i.ksz8_config_cpu_port.exit_crit_edge

for.inc51.i.ksz8_config_cpu_port.exit_crit_edge:  ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_config_cpu_port.exit

for.inc51.i.for.body25.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

ksz8_config_cpu_port.exit:                        ; preds = %for.inc51.i.ksz8_config_cpu_port.exit_crit_edge, %for.end.i.ksz8_config_cpu_port.exit_crit_edge, %ksz8_reset_switch.exit.ksz8_config_cpu_port.exit_crit_edge
  %110 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i67 = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 4, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %112 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i69 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 6, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %114 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %116 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %117)
  %cmp.i72 = icmp eq i32 %117, 34864
  br i1 %cmp.i72, label %ksz8_config_cpu_port.exit.if.end14_crit_edge, label %if.then13

ksz8_config_cpu_port.exit.if.end14_crit_edge:     ; preds = %ksz8_config_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %ksz8_config_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i74 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 135, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %ksz8_config_cpu_port.exit.if.end14_crit_edge
  %arrayidx16 = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %120 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx16, align 4
  %call.i75 = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 6, i32 noundef 2047, i32 noundef 996, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %122 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %123)
  %cmp84 = icmp sgt i32 %123, 3
  br i1 %cmp84, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %priv.i77 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 10
  %alu_mutex.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  %124 = getelementptr inbounds [2 x i32], ptr %value.i.i.i76, i32 0, i32 1
  %arrayidx.i14.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  br label %for.body

for.body:                                         ; preds = %ksz8_r_vlan_entries.exit.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ksz8_r_vlan_entries.exit.for.body_crit_edge ]
  %125 = ptrtoint ptr %priv.i77 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv.i77, align 4
  %shifts1.i = getelementptr inbounds %struct.ksz8, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %shifts1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %shifts1.i, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  call void @mutex_lock_nested(ptr noundef %alu_mutex.i.i, i32 noundef 0) #8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %130, align 1
  %conv4.i.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx16, align 4
  %conv3.i.i = and i32 %i.085, 60415
  %conv.i.i.i = or i32 %conv3.i.i, 5120
  %call.i.i.i78 = call i32 @regmap_write(ptr noundef %134, i32 noundef %conv4.i.i, i32 noundef %conv.i.i.i) #8
  %arrayidx5.i.i = getelementptr i8, ptr %130, i32 3
  %135 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx5.i.i, align 1
  %conv6.i.i = zext i8 %136 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i.i76) #8
  %137 = ptrtoint ptr %value.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %value.i.i.i76, align 4, !annotation !144
  %138 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %124, align 4, !annotation !144
  %139 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i14.i.i, align 4
  %call.i15.i.i = call i32 @regmap_bulk_read(ptr noundef %140, i32 noundef %conv6.i.i, ptr noundef nonnull %value.i.i.i76, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.ksz8_r_vlan_entries.exit_crit_edge

for.body.ksz8_r_vlan_entries.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_r_vlan_entries.exit

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %value.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %value.i.i.i76, align 4
  %conv.i16.i.i = zext i32 %142 to i64
  %shl.i.i.i = shl nuw i64 %conv.i16.i.i, 32
  %143 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %124, align 4
  %conv3.i.i.i = zext i32 %144 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv3.i.i.i
  br label %ksz8_r_vlan_entries.exit

ksz8_r_vlan_entries.exit:                         ; preds = %if.then.i.i.i, %for.body.ksz8_r_vlan_entries.exit_crit_edge
  %data.0.i = phi i64 [ %or.i.i.i, %if.then.i.i.i ], [ -1, %for.body.ksz8_r_vlan_entries.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i.i76) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i.i) #8
  %mul.i = shl i32 %i.085, 2
  %conv6.i = and i32 %mul.i, 65532
  %arrayidx8.i = getelementptr i8, ptr %128, i32 1
  %conv4.i = trunc i64 %data.0.i to i32
  %conv5.i = and i32 %conv4.i, 65535
  %145 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vlan_cache, align 4
  %arrayidx.i79 = getelementptr %struct.vlan_table, ptr %146, i32 %conv6.i
  %147 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv5.i, ptr %arrayidx.i79, align 4
  %148 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx8.i, align 1
  %sh_prom.i = zext i8 %149 to i64
  %shr.i = lshr i64 %data.0.i, %sh_prom.i
  %conv4.1.i = trunc i64 %shr.i to i32
  %conv5.1.i = and i32 %conv4.1.i, 65535
  %150 = load ptr, ptr %vlan_cache, align 4
  %add.1.i = or i32 %conv6.i, 1
  %arrayidx.1.i = getelementptr %struct.vlan_table, ptr %150, i32 %add.1.i
  %151 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv5.1.i, ptr %arrayidx.1.i, align 4
  %152 = load i8, ptr %arrayidx8.i, align 1
  %sh_prom.1.i = zext i8 %152 to i64
  %shr.1.i = lshr i64 %shr.i, %sh_prom.1.i
  %conv4.2.i = trunc i64 %shr.1.i to i32
  %conv5.2.i = and i32 %conv4.2.i, 65535
  %153 = load ptr, ptr %vlan_cache, align 4
  %add.2.i = or i32 %conv6.i, 2
  %arrayidx.2.i = getelementptr %struct.vlan_table, ptr %153, i32 %add.2.i
  %154 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv5.2.i, ptr %arrayidx.2.i, align 4
  %155 = load i8, ptr %arrayidx8.i, align 1
  %sh_prom.2.i = zext i8 %155 to i64
  %shr.2.i = lshr i64 %shr.1.i, %sh_prom.2.i
  %conv4.3.i = trunc i64 %shr.2.i to i32
  %conv5.3.i = and i32 %conv4.3.i, 65535
  %156 = load ptr, ptr %vlan_cache, align 4
  %add.3.i = or i32 %conv6.i, 3
  %arrayidx.3.i = getelementptr %struct.vlan_table, ptr %156, i32 %add.3.i
  %157 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv5.3.i, ptr %arrayidx.3.i, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %158 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_vlans, align 4
  %div = sdiv i32 %159, 4
  %cmp = icmp slt i32 %inc, %div
  br i1 %cmp, label %ksz8_r_vlan_entries.exit.for.body_crit_edge, label %ksz8_r_vlan_entries.exit.for.end_crit_edge

ksz8_r_vlan_entries.exit.for.end_crit_edge:       ; preds = %ksz8_r_vlan_entries.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ksz8_r_vlan_entries.exit.for.body_crit_edge:      ; preds = %ksz8_r_vlan_entries.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ksz8_r_vlan_entries.exit.for.end_crit_edge, %if.end14.for.end_crit_edge
  %160 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 25215488, ptr %2, align 4
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %3, align 2
  %host_mask = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 35
  %162 = ptrtoint ptr %host_mask to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %host_mask, align 4
  %164 = and i16 %163, 127
  %bf.value = zext i16 %164 to i80
  %bf.shl = shl nuw nsw i80 %bf.value, 16
  %bf.set25 = or i80 %bf.shl, -604462909666577098997760
  %165 = ptrtoint ptr %alu to i32
  call void @__asan_storeN_noabort(i32 %165, i32 10)
  store i80 %bf.set25, ptr %alu, align 8
  call void @ksz8_w_sta_mac_table(ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull %alu)
  call void @ksz_init_mib_timer(ptr noundef %1) #8
  %configure_vlan_while_not_filtering = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %166 = ptrtoint ptr %configure_vlan_while_not_filtering to i32
  call void @__asan_load2_noabort(i32 %166)
  %bf.load26 = load i16, ptr %configure_vlan_while_not_filtering, align 4
  %bf.clear27 = and i16 %bf.load26, -4097
  store i16 %bf.clear27, ptr %configure_vlan_while_not_filtering, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %alu) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz8_sw_get_phy_flags(ptr nocapture noundef readnone %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  %. = select i1 %tobool.not, i32 3, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_phy_read16(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_phy_write16(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #0 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #8
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %cpu_port = getelementptr inbounds %struct.ksz_device, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %port)
  %cmp = icmp eq i32 %4, %port
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %6, label %if.then.unsupported_crit_edge [
    i32 7, label %if.then.if.end15_crit_edge
    i32 2, label %if.then.if.end15_crit_edge62
    i32 0, label %if.then.if.end15_crit_edge63
  ]

if.then.if.end15_crit_edge63:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.if.end15_crit_edge62:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.unsupported_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %unsupported

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.else.if.end15_crit_edge, label %if.else.unsupported_crit_edge

if.else.unsupported_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %unsupported

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge, %if.then.if.end15_crit_edge62, %if.then.if.end15_crit_edge63
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #8
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %or.i = or i32 %9, 64
  store i32 %or.i, ptr %mask, align 4
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %2, i32 0, i32 12
  %10 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %11)
  %cmp.i = icmp eq i32 %11, 34864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  %or.cond = and i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end15.if.end23_crit_edge, label %if.end19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end19:                                         ; preds = %if.end15
  %or.i52 = or i32 %9, 8256
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i52, ptr %mask, align 4
  %13 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %.pr)
  %cmp.i59 = icmp eq i32 %.pr, 34864
  br i1 %cmp.i59, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %or.i53 = or i32 %15, 16384
  store i32 %or.i53, ptr %mask, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %or.i57 = or i32 %17, 15
  store i32 %or.i57, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #8
  %call.i.i60 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #8
  br label %cleanup

unsupported:                                      ; preds = %if.else.unsupported_crit_edge, %if.then.unsupported_crit_edge
  %18 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %19 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds, align 4
  %interface34 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %21 = ptrtoint ptr %interface34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interface34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %22)
  %23 = icmp ult i32 %22, 30
  br i1 %23, label %switch.lookup, label %unsupported.phy_modes.exit_crit_edge

unsupported.phy_modes.exit_crit_edge:             ; preds = %unsupported
  call void @__sanitizer_cov_trace_pc() #10
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %unsupported
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.ksz8_validate, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %unsupported.phy_modes.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %unsupported.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i, i32 noundef %port) #11
  br label %cleanup

cleanup:                                          ; preds = %phy_modes.exit, %if.end23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_mac_link_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mib_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mib_names = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.06, 5
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %4 = ptrtoint ptr %mib_names to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mib_names, align 4
  %arrayidx = getelementptr %struct.mib_names, ptr %5, i32 %i.06
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %i.06, 1
  %7 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mib_cnt, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_sset_count(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_enable_port(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_port_bridge_join(ptr noundef, i32 noundef, [4 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_port_bridge_leave(ptr noundef, i32 noundef, [4 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(i32 noundef %port, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %6 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %conv2 = zext i8 %state to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %11 = icmp ult i8 %state, 5
  br i1 %11, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef %conv2) #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i32 %10, 248
  %15 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ksz8_port_stp_state_set, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = or i32 %14, %switch.load
  %18 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i36 = call i32 %21(i32 noundef %port, i32 noundef 2) #8
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i39 = call i32 @regmap_write(ptr noundef %23, i32 noundef %call.i36, i32 noundef %17) #8
  %ports = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports, align 4
  %stp_state = getelementptr %struct.ksz_port, ptr %25, i32 %port, i32 1
  %26 = ptrtoint ptr %stp_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv2, ptr %stp_state, align 4
  call void @ksz_update_port_member(ptr noundef %1, i32 noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_port_fast_age(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_port_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %flag, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %3)
  %cmp.i = icmp eq i32 %3, 34864
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %spec.select.i = select i1 %flag, i32 128, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 5, i32 noundef 128, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %spec.select.i9 = select i1 %flag, i32 64, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %port.addr.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %port.addr.012, 4
  %add1.i = add i32 %mul.i, 18
  %call.i.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add1.i, i32 noundef 64, i32 noundef %spec.select.i9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %inc = add nuw nsw i32 %port.addr.012, 1
  %10 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_port_cnt, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_port_vlan_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 4
  %.lobit = lshr exact i16 %2, 2
  %3 = trunc i16 %.lobit to i8
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ksz_port, ptr %7, i32 %port
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %data, align 2, !annotation !144
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %10)
  %cmp.i = icmp eq i32 %10, 34864
  br i1 %cmp.i, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 8, !range !147
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %.lobit, i16 %13)
  %cmp.not = icmp eq i16 %.lobit, %13
  br i1 %cmp.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %14 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp7.not = icmp eq i16 %15, 0
  br i1 %cmp7.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true9

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true9:                                   ; preds = %land.lhs.true
  %cpu_port = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 16
  %16 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %port)
  %cmp10.not = icmp eq i32 %17, %port
  br i1 %cmp10.not, label %land.lhs.true9.if.end36_crit_edge, label %for.cond.preheader

land.lhs.true9.if.end36_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.cond.preheader:                               ; preds = %land.lhs.true9
  %num_vlans = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp14146 = icmp ugt i32 %19, 1
  br i1 %cmp14146, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv17 = zext i16 %15 to i32
  %vlan_cache = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 27
  %priv.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 10
  %shl = shl nuw i32 1, %port
  %conv27 = and i32 %shl, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vid13.0147 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vid13.0147, i32 %conv17)
  %cmp18 = icmp eq i32 %vid13.0147, %conv17
  br i1 %cmp18, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %20 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vlan_cache, align 4
  %arrayidx22 = getelementptr %struct.vlan_table, ptr %21, i32 %vid13.0147
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 4
  %masks2.i = getelementptr inbounds %struct.ksz8, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %masks2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %masks2.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %27, i32 6
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %29, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool.i.not, label %if.end21.for.inc_crit_edge, label %land.lhs.true26

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true26:                                  ; preds = %if.end21
  %arrayidx3.i = getelementptr i32, ptr %27, i32 5
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.i, align 4
  %and4.i = and i32 %31, %23
  %shifts1.i = getelementptr inbounds %struct.ksz8, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %shifts1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shifts1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv6.i = zext i8 %35 to i32
  %shr.i = lshr i32 %and4.i, %conv6.i
  %and28 = and i32 %conv27, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true26.for.inc_crit_edge, label %land.lhs.true26.cleanup64_crit_edge

land.lhs.true26.cleanup64_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true26.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %vid13.0147, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 9
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %38 = lshr exact i16 %2, 1
  %39 = zext i16 %38 to i32
  %mul.i = shl i32 %port, 4
  %add1.i = add i32 %mul.i, 16
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add1.i, i32 noundef 2, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %3, ptr %arrayidx, align 8
  br label %if.end36

if.end36:                                         ; preds = %for.end, %land.lhs.true9.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %vid37 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %41 = ptrtoint ptr %vid37 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid37, align 2
  call fastcc void @ksz8_r_vlan_table(ptr noundef %5, i16 noundef zeroext %42, ptr noundef nonnull %data)
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data, align 2
  %conv38 = zext i16 %44 to i32
  %priv.i107 = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 10
  %45 = ptrtoint ptr %priv.i107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i107, align 4
  %shifts1.i108 = getelementptr inbounds %struct.ksz8, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %shifts1.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %shifts1.i108, align 4
  %masks2.i109 = getelementptr inbounds %struct.ksz8, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %masks2.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %masks2.i109, align 4
  %arrayidx.i110 = getelementptr i32, ptr %50, i32 4
  %51 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i110, align 4
  %arrayidx3.i113 = getelementptr i32, ptr %50, i32 5
  %53 = ptrtoint ptr %arrayidx3.i113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx3.i113, align 4
  %and4.i114 = and i32 %54, %conv38
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %48, align 1
  %conv6.i115 = zext i8 %56 to i32
  %shr.i116 = lshr i32 %and4.i114, %conv6.i115
  %arrayidx8.i118 = getelementptr i32, ptr %50, i32 6
  %57 = ptrtoint ptr %arrayidx8.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx8.i118, align 4
  %and9.i119 = and i32 %58, %conv38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i119)
  %tobool.i120.not = icmp eq i32 %and9.i119, 0
  %shl42 = shl nuw i32 1, %port
  %conv44145 = or i32 %shr.i116, %shl42
  %conv4.i = and i32 %conv44145, 255
  %shl.i = shl i32 %conv4.i, %conv6.i115
  %and.i111 = and i32 %conv38, 255
  %59 = and i32 %and.i111, %52
  %conv6.i126 = select i1 %tobool.i120.not, i32 1, i32 %59
  %or.i = or i32 %conv6.i126, %58
  %or10.i = or i32 %or.i, %shl.i
  %conv11.i129 = trunc i32 %or10.i to i16
  %60 = ptrtoint ptr %vid37 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vid37, align 2
  tail call fastcc void @ksz8_w_vlan_table(ptr noundef %5, i16 noundef zeroext %61, i16 noundef zeroext %conv11.i129)
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags, align 4
  %64 = and i16 %63, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool49.not = icmp eq i16 %64, 0
  br i1 %tobool49.not, label %if.end36.cleanup64_crit_edge, label %if.end52

if.end36.cleanup64_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end52:                                         ; preds = %if.end36
  %65 = ptrtoint ptr %vid37 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vid37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool53.not = icmp eq i16 %66, 0
  br i1 %tobool53.not, label %if.end52.cleanup64_crit_edge, label %if.then54

if.end52.cleanup64_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.then54:                                        ; preds = %if.end52
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 7
  %67 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_ops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i = tail call i32 %70(i32 noundef %port, i32 noundef 3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %71 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %5, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i130 = call i32 @regmap_read(ptr noundef %73, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %74 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %75 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %76 = and i16 %conv.i.i, -4096
  %or61106 = or i16 %76, %66
  %77 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_ops.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call.i132 = call i32 %80(i32 noundef %port, i32 noundef 3) #8
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i134 = zext i16 %or61106 to i32
  %call.i.i135 = call i32 @regmap_write(ptr noundef %82, i32 noundef %call.i132, i32 noundef %conv.i.i134) #8
  %83 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %84)
  %cmp.i.i = icmp eq i32 %84, 34864
  br i1 %cmp.i.i, label %if.then.i138, label %if.else.i

if.then.i138:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %mul.neg.i = mul i32 %port, -2
  %sub.i = add i32 %mul.neg.i, 4
  %shl.i136 = shl i32 3, %sub.i
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 9
  %85 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i137 = and i32 %shl.i136, 255
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 194, i32 noundef %conv.i.i137, i32 noundef %conv.i.i137, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup64

if.else.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_ops.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call.i.i139 = call i32 %90(i32 noundef %port, i32 noundef 160) #8
  %regmap.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %5, i32 0, i32 9
  %91 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i8.i = call i32 @regmap_write(ptr noundef %92, i32 noundef %call.i.i139, i32 noundef 15) #8
  br label %cleanup64

cleanup64:                                        ; preds = %if.else.i, %if.then.i138, %if.end52.cleanup64_crit_edge, %if.end36.cleanup64_crit_edge, %land.lhs.true26.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.1 = phi i32 [ -524, %entry.cleanup64_crit_edge ], [ 0, %if.end52.cleanup64_crit_edge ], [ 0, %if.then.i138 ], [ 0, %if.else.i ], [ 0, %if.end36.cleanup64_crit_edge ], [ -22, %land.lhs.true26.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_port_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !144
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %4)
  %cmp.i = icmp eq i32 %4, 34864
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 %8(i32 noundef %port, i32 noundef 3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %12 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %13 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %14 = and i16 %conv.i.i, 4095
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid, align 2
  call fastcc void @ksz8_r_vlan_table(ptr noundef %1, i16 noundef zeroext %16, ptr noundef nonnull %data)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data, align 2
  %conv2 = zext i16 %18 to i32
  %priv.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 4
  %shifts1.i = getelementptr inbounds %struct.ksz8, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %shifts1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shifts1.i, align 4
  %masks2.i = getelementptr inbounds %struct.ksz8, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %masks2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %masks2.i, align 4
  %arrayidx.i = getelementptr i32, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %24, i32 5
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx3.i, align 4
  %and4.i = and i32 %28, %conv2
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %22, align 1
  %conv6.i = zext i8 %30 to i32
  %shr.i = lshr i32 %and4.i, %conv6.i
  %conv7.i = trunc i32 %shr.i to i8
  %arrayidx8.i = getelementptr i32, ptr %24, i32 6
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %32, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.i = icmp eq i32 %and9.i, 0
  %shl = shl nuw i32 1, %port
  %33 = trunc i32 %shl to i8
  %34 = xor i8 %33, -1
  %conv5 = and i8 %conv7.i, %34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %tobool.not = icmp eq i8 %conv5, 0
  %conv4.i = zext i8 %conv5 to i32
  %shl.i = shl i32 %conv4.i, %conv6.i
  %and.i = and i32 %conv2, 255
  %and.i.op = and i32 %and.i, %26
  %conv6.i34 = select i1 %tobool.not, i32 0, i32 %and.i.op
  %or.i = or i32 %shl.i, %conv6.i34
  %tobool.not.i = select i1 %tobool.not, i1 true, i1 %tobool.i
  %or10.i = select i1 %tobool.not.i, i32 0, i32 %32
  %spec.select = or i32 %or.i, %or10.i
  %storemerge = trunc i32 %spec.select to i16
  %35 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid, align 2
  call fastcc void @ksz8_w_vlan_table(ptr noundef %1, i16 noundef zeroext %36, i16 noundef zeroext %storemerge)
  %37 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %38)
  %cmp = icmp eq i16 %14, %38
  br i1 %cmp, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %39 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34864, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 34864
  br i1 %cmp.i.i, label %if.then.i40, label %if.else.i

if.then.i40:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %mul.neg.i = mul i32 %port, -2
  %sub.i = add i32 %mul.neg.i, 4
  %shl.i38 = shl i32 3, %sub.i
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i39 = and i32 %shl.i38, 255
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 194, i32 noundef %conv.i.i39, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_ops.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call.i.i41 = call i32 %46(i32 noundef %port, i32 noundef 160) #8
  %regmap.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i8.i = call i32 @regmap_write(ptr noundef %48, i32 noundef %call.i.i41, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i40 ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_port_fdb_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_port_mdb_add(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_port_mdb_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8_port_mirror_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %port, 4
  %add1.i = add i32 %mul.i, 17
  br i1 %ingress, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add1.i, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl = shl nuw i32 1, %port
  %mirror_rx = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mirror_rx, align 4
  %6 = trunc i32 %shl to i16
  %conv1 = or i16 %5, %6
  store i16 %conv1, ptr %mirror_rx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add1.i, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl2 = shl nuw i32 1, %port
  %mirror_tx = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mirror_tx, align 2
  %9 = trunc i32 %shl2 to i16
  %conv5 = or i16 %8, %9
  store i16 %conv5, ptr %mirror_tx, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regmap.i30 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i30, align 4
  %call.i.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add1.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mirror_rx6 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %mirror_rx6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mirror_rx6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %mirror_tx9 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %mirror_tx9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mirror_tx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool11.not = icmp eq i16 %15, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %16 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mirror, align 1
  %conv13 = zext i8 %17 to i32
  %18 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i30, align 4
  %mul.i35 = shl nuw nsw i32 %conv13, 4
  %add1.i36 = add nuw nsw i32 %mul.i35, 17
  %call.i.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add1.i36, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8_port_mirror_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ingress = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %mirror, i32 0, i32 1
  %2 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ingress, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %regmap.i26 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i26, align 4
  %mul.i27 = shl i32 %port, 4
  %add1.i28 = add i32 %mul.i27, 17
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add1.i28, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl = shl nuw i32 1, %port
  %mirror_rx = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mirror_rx, align 4
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv1 = and i16 %7, %9
  store i16 %conv1, ptr %mirror_rx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add1.i28, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl2 = shl nuw i32 1, %port
  %mirror_tx = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mirror_tx, align 2
  %12 = trunc i32 %shl2 to i16
  %13 = xor i16 %12, -1
  %conv6 = and i16 %11, %13
  store i16 %conv6, ptr %mirror_tx, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = tail call i32 %17(i32 noundef %port, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %18 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i30 = call i32 @regmap_read(ptr noundef %20, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %mirror_rx7 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %mirror_rx7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mirror_rx7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool8.not = icmp eq i16 %22, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %mirror_tx9 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 32
  %23 = ptrtoint ptr %mirror_tx9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mirror_tx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not = icmp eq i16 %24, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mirror, align 1
  %conv12 = zext i8 %26 to i32
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %mul.i32 = shl nuw nsw i32 %conv12, 4
  %add1.i33 = add nuw nsw i32 %mul.i32, 17
  %call.i.i34 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add1.i33, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_init_mib_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_update_port_member(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz8_r_vlan_table(ptr noundef %dev, i16 noundef zeroext %vid, ptr nocapture noundef writeonly %vlan) unnamed_addr #0 align 64 {
entry:
  %value.i.i = alloca [2 x i32], align 4
  %buf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8, !annotation !144
  %div4 = lshr i16 %vid, 2
  %priv.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %conv3.i = or i16 %div4, 5120
  %alu_mutex.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv4.i = zext i8 %6 to i32
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %conv3.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %conv4.i, i32 noundef %conv.i.i) #8
  %arrayidx5.i = getelementptr i8, ptr %4, i32 3
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #8
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %12 = getelementptr inbounds [2 x i32], ptr %value.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !144
  %arrayidx.i14.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i14.i, align 4
  %call.i15.i = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef %conv6.i, ptr noundef nonnull %value.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.ksz8_r_table.exit_crit_edge

entry.ksz8_r_table.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_r_table.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i.i, align 4
  %conv.i16.i = zext i32 %17 to i64
  %shl.i.i = shl nuw i64 %conv.i16.i, 32
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %conv3.i.i = zext i32 %19 to i64
  %or.i.i = or i64 %shl.i.i, %conv3.i.i
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or.i.i, ptr %buf, align 8
  br label %ksz8_r_table.exit

ksz8_r_table.exit:                                ; preds = %if.then.i.i, %entry.ksz8_r_table.exit_crit_edge
  %21 = and i16 %vid, 3
  %and = zext i16 %21 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  %arrayidx = getelementptr i16, ptr %buf, i32 %and
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %24 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vlan, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz8_w_vlan_table(ptr noundef %dev, i16 noundef zeroext %vid, i16 noundef zeroext %vlan) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca [2 x i32], align 4
  %value.i.i = alloca [2 x i32], align 4
  %buf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8, !annotation !144
  %div12 = lshr i16 %vid, 2
  %priv.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %conv3.i = or i16 %div12, 5120
  %alu_mutex.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv4.i = zext i8 %6 to i32
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %conv3.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %conv4.i, i32 noundef %conv.i.i) #8
  %arrayidx5.i = getelementptr i8, ptr %4, i32 3
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #8
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i.i, align 4, !annotation !144
  %12 = getelementptr inbounds [2 x i32], ptr %value.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !144
  %arrayidx.i14.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i14.i, align 4
  %call.i15.i = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef %conv6.i, ptr noundef nonnull %value.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.ksz8_r_table.exit_crit_edge

entry.ksz8_r_table.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz8_r_table.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i.i, align 4
  %conv.i16.i = zext i32 %17 to i64
  %shl.i.i = shl nuw i64 %conv.i16.i, 32
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %conv3.i.i = zext i32 %19 to i64
  %or.i.i = or i64 %shl.i.i, %conv3.i.i
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or.i.i, ptr %buf, align 8
  br label %ksz8_r_table.exit

ksz8_r_table.exit:                                ; preds = %if.then.i.i, %entry.ksz8_r_table.exit_crit_edge
  %21 = or i16 %div12, 1024
  %conv = zext i16 %vid to i32
  %and = and i32 %conv, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  %arrayidx = getelementptr i16, ptr %buf, i32 %and
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vlan, ptr %arrayidx, align 2
  %conv3 = zext i16 %vlan to i32
  %vlan_cache = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 27
  %23 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlan_cache, align 4
  %arrayidx4 = getelementptr %struct.vlan_table, ptr %24, i32 %conv
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv3, ptr %arrayidx4, align 4
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %buf, align 8
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  call void @mutex_lock_nested(ptr noundef %alu_mutex.i, i32 noundef 0) #8
  %arrayidx.i = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv3.i15 = zext i8 %33 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #8
  %34 = getelementptr inbounds [2 x i32], ptr %val.i.i, i32 0, i32 1
  %35 = call i64 @llvm.bswap.i64(i64 %27) #8
  %36 = lshr i64 %27, 32
  %37 = trunc i64 %36 to i32
  %38 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val.i.i, align 4
  %shr.i.i = lshr i64 %35, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %39 = call i32 @llvm.bswap.i32(i32 %conv1.i.i) #8
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %34, align 4
  %41 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i14.i, align 4
  %call.i.i16 = call i32 @regmap_bulk_write(ptr noundef %42, i32 noundef %conv3.i15, ptr noundef nonnull %val.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #8
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %31, align 1
  %conv5.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i18 = zext i16 %21 to i32
  %call.i13.i = call i32 @regmap_write(ptr noundef %46, i32 noundef %conv5.i, i32 noundef %conv.i.i18) #8
  call void @mutex_unlock(ptr noundef %alu_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__ksymtab_ksz8_switch_register, !1, !"__ksymtab_ksz8_switch_register", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1761, i32 1}
!2 = !{ptr @__UNIQUE_ID_author522, !3, !"__UNIQUE_ID_author522", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1763, i32 1}
!4 = !{ptr @__UNIQUE_ID_description523, !5, !"__UNIQUE_ID_description523", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1764, i32 1}
!6 = !{ptr @__UNIQUE_ID_file524, !7, !"__UNIQUE_ID_file524", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1765, i32 1}
!8 = !{ptr @__UNIQUE_ID_license525, !7, !"__UNIQUE_ID_license525", i1 false, i1 false}
!9 = !{ptr @ksz8_dev_ops, !10, !"ksz8_dev_ops", i1 false, i1 false}
!10 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1737, i32 33}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1265, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ksz8795_cpu_interface_select._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @ksz8795_cpu_interface_select._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1581, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ksz8_switch_detect._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @ksz8_switch_detect._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ksz8_switch_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1706, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ksz8_switch_ops, !29, !"ksz8_switch_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1515, i32 36}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1407, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ksz8_setup._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ksz8_setup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"eth_reserved_addr_base", i1 false, i1 false}
!36 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1511, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ksz8_validate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ksz8_validate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/phy.h", i32 211, i32 10}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/phy.h", i32 213, i32 10}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/phy.h", i32 215, i32 10}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/phy.h", i32 217, i32 10}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/phy.h", i32 219, i32 10}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/phy.h", i32 221, i32 10}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/phy.h", i32 223, i32 10}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/phy.h", i32 225, i32 10}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 227, i32 10}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 229, i32 10}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 231, i32 10}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 233, i32 10}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 235, i32 10}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 237, i32 10}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 239, i32 10}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 241, i32 10}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 243, i32 10}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 245, i32 10}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 247, i32 10}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 249, i32 10}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 251, i32 10}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 253, i32 10}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 255, i32 10}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 257, i32 10}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 259, i32 10}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 261, i32 10}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 263, i32 10}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 265, i32 10}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 267, i32 10}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 269, i32 10}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 271, i32 10}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1034, i32 3}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ksz8_port_stp_state_set._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ksz8_port_stp_state_set._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1604, i32 15}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1627, i32 15}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1636, i32 15}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1645, i32 15}
!117 = !{ptr @ksz8_switch_chips, !118, !"ksz8_switch_chips", i1 false, i1 false}
!118 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 1601, i32 35}
!119 = !{ptr @ksz8863_regs, !120, !"ksz8863_regs", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 79, i32 17}
!121 = !{ptr @ksz8863_masks, !122, !"ksz8863_masks", i1 false, i1 false}
!122 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 95, i32 18}
!123 = !{ptr @ksz8863_shifts, !124, !"ksz8863_shifts", i1 false, i1 false}
!124 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 117, i32 11}
!125 = !{ptr @ksz88xx_mib_names, !126, !"ksz88xx_mib_names", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 171, i32 31}
!127 = !{ptr @ksz8795_regs, !128, !"ksz8795_regs", i1 false, i1 false}
!128 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 29, i32 17}
!129 = !{ptr @ksz8795_masks, !130, !"ksz8795_masks", i1 false, i1 false}
!130 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 45, i32 18}
!131 = !{ptr @ksz8795_shifts, !132, !"ksz8795_shifts", i1 false, i1 false}
!132 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 67, i32 17}
!133 = !{ptr @ksz87xx_mib_names, !134, !"ksz87xx_mib_names", i1 false, i1 false}
!134 = !{!"../drivers/net/dsa/microchip/ksz8795.c", i32 132, i32 31}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{i32 0, i32 33}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i8 0, i8 2}
