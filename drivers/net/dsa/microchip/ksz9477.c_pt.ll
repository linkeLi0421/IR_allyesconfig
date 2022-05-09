; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/microchip/ksz9477.c_pt.bc'
source_filename = "../drivers/net/dsa/microchip/ksz9477.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ksz9477_switch_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ksz9477_switch_register\09\09\09\09"
module asm "\09.long\09__crc_ksz9477_switch_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksz9477_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ksz9477_switch_register\22\09\09\09\09\09"
module asm "__kstrtabns_ksz9477_switch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ksz_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.166 = type { i32, [32 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ksz_chip_data = type { i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ksz_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, [3 x ptr], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i32, i8, i8, ptr, ptr, %struct.delayed_work, i32, i16, i16, i32, i32, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.ksz_port = type { i8, i32, %struct.phy_device, i8, %struct.ksz_port_mib, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ksz_port_mib = type { %struct.mutex, i8, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.alu_struct = type { [10 x i8], [6 x i8] }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.vlan_table = type { [3 x i32] }

@ksz9477_dev_ops = internal constant { %struct.ksz_dev_ops, [56 x i8] } { %struct.ksz_dev_ops { ptr @ksz9477_get_port_addr, ptr @ksz9477_cfg_port_member, ptr @ksz9477_flush_dyn_mac_table, ptr null, ptr @ksz9477_port_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz9477_r_mib_cnt, ptr @ksz9477_r_mib_pkt, ptr @ksz9477_freeze_mib, ptr @ksz9477_port_init_cnt, ptr @ksz9477_reset_switch, ptr @ksz9477_switch_detect, ptr @ksz9477_switch_init, ptr @ksz9477_switch_exit }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_ksz9477_switch_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksz9477_switch_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ksz9477_switch_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksz9477_switch_register to i32), ptr @__kstrtab_ksz9477_switch_register, ptr @__kstrtabns_ksz9477_switch_register }, section "___ksymtab+ksz9477_switch_register", align 4
@__UNIQUE_ID_author512 = internal constant [55 x i8] c"ksz9477.author=Woojung Huh <Woojung.Huh@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description513 = internal constant [63 x i8] c"ksz9477.description=Microchip KSZ9477 Series Switch DSA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file514 = internal constant [47 x i8] c"ksz9477.file=drivers/net/dsa/microchip/ksz9477\00", section ".modinfo", align 1
@__UNIQUE_ID_license515 = internal constant [20 x i8] c"ksz9477.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/dsa/microchip/ksz9477.c\00", [60 x i8] zeroinitializer }, align 32
@ksz9477_r_mib_cnt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksz9477\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksz9477_r_mib_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get MIB\0A\00", [45 x i8] zeroinitializer }, align 32
@ksz9477_mib_names = internal constant { [36 x %struct.anon.166], [336 x i8] } { [36 x %struct.anon.166] [%struct.anon.166 { i32 0, [32 x i8] c"rx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 1, [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 2, [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 3, [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 4, [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 5, [32 x i8] c"rx_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 6, [32 x i8] c"rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 7, [32 x i8] c"rx_align_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 8, [32 x i8] c"rx_mac_ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 9, [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 10, [32 x i8] c"rx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 11, [32 x i8] c"rx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 12, [32 x i8] c"rx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 13, [32 x i8] c"rx_64_or_less\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 14, [32 x i8] c"rx_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 15, [32 x i8] c"rx_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 16, [32 x i8] c"rx_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 17, [32 x i8] c"rx_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 18, [32 x i8] c"rx_1024_1522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 19, [32 x i8] c"rx_1523_2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 20, [32 x i8] c"rx_2001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 21, [32 x i8] c"tx_hi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 22, [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 23, [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 24, [32 x i8] c"tx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 25, [32 x i8] c"tx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 26, [32 x i8] c"tx_ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 27, [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 28, [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 29, [32 x i8] c"tx_exc_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 30, [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 31, [32 x i8] c"tx_mult_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 128, [32 x i8] c"rx_total\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 129, [32 x i8] c"tx_total\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 130, [32 x i8] c"rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.166 { i32 131, [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [336 x i8] zeroinitializer }, align 32
@ksz9477_switch_detect.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksz9477_switch_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Switch detect: ID=%08x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@ksz9477_switch_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 1409, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Found KSZ9893\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ksz9477_switch_detect._entry_ptr = internal global ptr @ksz9477_switch_detect._entry, section ".printk_index", align 4
@ksz9477_switch_detect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str, i32 1417, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found KSZ9477 or compatible\0A\00", [35 x i8] zeroinitializer }, align 32
@ksz9477_switch_detect._entry_ptr.11 = internal global ptr @ksz9477_switch_detect._entry.9, section ".printk_index", align 4
@ksz9477_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @ksz9477_get_tag_protocol, ptr null, ptr null, ptr @ksz9477_setup, ptr null, ptr null, ptr null, ptr null, ptr @ksz9477_phy_read16, ptr @ksz9477_phy_write16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz_mac_link_down, ptr null, ptr null, ptr @ksz9477_get_strings, ptr @ksz_get_ethtool_stats, ptr @ksz_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz_enable_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz_port_bridge_join, ptr @ksz_port_bridge_leave, ptr @ksz9477_port_stp_state_set, ptr @ksz_port_fast_age, ptr null, ptr null, ptr @ksz9477_port_vlan_filtering, ptr @ksz9477_port_vlan_add, ptr @ksz9477_port_vlan_del, ptr @ksz9477_port_fdb_add, ptr @ksz9477_port_fdb_del, ptr @ksz9477_port_fdb_dump, ptr @ksz9477_port_mdb_add, ptr @ksz9477_port_mdb_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz9477_port_mirror_add, ptr @ksz9477_port_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@ksz9477_switch_chips = internal constant { [4 x %struct.ksz_chip_data], [32 x i8] } { [4 x %struct.ksz_chip_data] [%struct.ksz_chip_data { i32 9729792, ptr @.str.73, i32 4096, i32 4096, i32 16, i32 127, i32 7, i8 1 }, %struct.ksz_chip_data { i32 10000128, ptr @.str.74, i32 4096, i32 4096, i32 16, i32 127, i32 7, i8 1 }, %struct.ksz_chip_data { i32 9999104, ptr @.str.75, i32 4096, i32 4096, i32 16, i32 7, i32 3, i8 0 }, %struct.ksz_chip_data { i32 9791232, ptr @.str.76, i32 4096, i32 4096, i32 16, i32 127, i32 7, i8 1 }], [32 x i8] zeroinitializer }, align 32
@ksz9477_switch_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&dev->ports[i].mib.cnt_mutex\00", [35 x i8] zeroinitializer }, align 32
@ksz9477_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1307, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset switch\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksz9477_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ksz9477_setup._entry_ptr = internal global ptr @ksz9477_setup._entry, section ".printk_index", align 4
@ksz9477_config_cpu_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 1251, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Using legacy switch \22phy-mode\22 property, because it is missing on port %d node. Please update your device tree.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksz9477_config_cpu_port\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ksz9477_config_cpu_port._entry_ptr = internal global ptr @ksz9477_config_cpu_port._entry, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" instead of \00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ksz9477_config_cpu_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str, i32 1269, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Port%d: using phy mode %s%s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@ksz9477_config_cpu_port._entry_ptr.23 = internal global ptr @ksz9477_config_cpu_port._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ksz9477_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 423, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid STP state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksz9477_port_stp_state_set\00", [37 x i8] zeroinitializer }, align 32
@ksz9477_port_stp_state_set._entry_ptr = internal global ptr @ksz9477_port_stp_state_set._entry, section ".printk_index", align 4
@ksz9477_port_vlan_add.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ksz9477: Failed to get vlan table\00", [62 x i8] zeroinitializer }, align 32
@ksz9477_port_vlan_add.__msg.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ksz9477: Failed to set vlan table\00", [62 x i8] zeroinitializer }, align 32
@ksz9477_get_vlan_table.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str, ptr @.str.58, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksz9477_get_vlan_table\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read vlan table\0A\00", [37 x i8] zeroinitializer }, align 32
@ksz9477_set_vlan_table.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str, ptr @.str.60, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksz9477_set_vlan_table\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write vlan table\0A\00", [36 x i8] zeroinitializer }, align 32
@ksz9477_port_vlan_del.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str, ptr @.str.62, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksz9477_port_vlan_del\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get vlan table\0A\00", [38 x i8] zeroinitializer }, align 32
@ksz9477_port_vlan_del.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str, ptr @.str.63, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set vlan table\0A\00", [38 x i8] zeroinitializer }, align 32
@ksz9477_port_fdb_add.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str, ptr @.str.65, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ksz9477_port_fdb_add\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to read ALU\0A\00", [44 x i8] zeroinitializer }, align 32
@ksz9477_port_fdb_add.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str, ptr @.str.66, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to write ALU\0A\00", [43 x i8] zeroinitializer }, align 32
@ksz9477_port_fdb_del.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str, ptr @.str.65, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ksz9477_port_fdb_del\00", [43 x i8] zeroinitializer }, align 32
@ksz9477_port_fdb_del.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str, ptr @.str.66, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ksz9477_port_fdb_dump.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str, ptr @.str.69, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksz9477_port_fdb_dump\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to search ALU\0A\00", [42 x i8] zeroinitializer }, align 32
@ksz9477_port_mdb_add.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ksz9477_port_mdb_add\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read ALU STATIC\0A\00", [37 x i8] zeroinitializer }, align 32
@ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ksz9477_port_mdb_del.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str, ptr @.str.71, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ksz9477_port_mdb_del\00", [43 x i8] zeroinitializer }, align 32
@ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str, ptr @.str.71, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ9477\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ9897\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ9893\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSZ9567\00", [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9477_setup = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.52, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@switch.table.ksz9477_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 2, i32 6, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 9729792, i64 9791232, i64 9999104, i64 10000128]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.82 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 10]
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"ksz9477_dev_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1545, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 246, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 251, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"ksz9477_mib_names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 28, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1404, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1409, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1417, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"ksz9477_switch_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1341, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"ksz9477_switch_chips\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1445, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1524, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1307, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1248, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1258, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1261, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1264, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 213, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 215, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 217, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 219, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 221, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 223, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 225, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 227, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 229, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 231, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 233, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 235, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 237, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 239, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 241, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 243, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 245, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 247, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 249, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 251, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 253, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 255, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 257, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 259, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 261, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 263, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 265, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 267, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 269, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 271, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 423, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 485, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 500, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 112, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 145, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 523, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 536, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 570, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 594, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 627, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 717, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 769, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 844, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1448, i32 15 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1458, i32 15 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1468, i32 15 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [39 x i8] c"../drivers/net/dsa/microchip/ksz9477.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1477, i32 15 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"switch.table.ksz9477_setup\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [40 x i8] c"switch.table.ksz9477_port_stp_state_set\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author512, ptr @__UNIQUE_ID_description513, ptr @__UNIQUE_ID_file514, ptr @__UNIQUE_ID_license515, ptr @__ksymtab_ksz9477_switch_register, ptr @ksz9477_config_cpu_port._entry, ptr @ksz9477_config_cpu_port._entry.21, ptr @ksz9477_config_cpu_port._entry_ptr, ptr @ksz9477_config_cpu_port._entry_ptr.23, ptr @ksz9477_port_stp_state_set._entry, ptr @ksz9477_port_stp_state_set._entry_ptr, ptr @ksz9477_setup._entry, ptr @ksz9477_setup._entry_ptr, ptr @ksz9477_switch_detect._entry, ptr @ksz9477_switch_detect._entry.9, ptr @ksz9477_switch_detect._entry_ptr, ptr @ksz9477_switch_detect._entry_ptr.11, ptr @ksz9477_dev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ksz9477_mib_names, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @ksz9477_switch_ops, ptr @ksz9477_switch_chips, ptr @ksz9477_switch_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @ksz9477_port_vlan_add.__msg, ptr @ksz9477_port_vlan_add.__msg.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.ksz9477_setup, ptr @switch.table.ksz9477_port_stp_state_set], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_dev_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_mib_names to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_switch_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_switch_detect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_switch_chips to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_switch_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_config_cpu_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_config_cpu_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_port_vlan_add.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_port_vlan_add.__msg.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9477_setup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9477_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksz9477_switch_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksz_switch_register(ptr noundef %dev, ptr noundef nonnull @ksz9477_dev_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %features = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %8, %3
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.028)
  %cmp5.i.i = icmp eq i32 %10, %i.028
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.for.body.i_crit_edge, label %dsa_is_user_port.exit.for.inc_crit_edge

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

dsa_is_user_port.exit.for.body.i_crit_edge:       ; preds = %dsa_is_user_port.exit
  br label %for.body.i

dsa_is_user_port.exit.thread:                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %14 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i24 = icmp eq i32 %14, 3
  br i1 %cmp.i24, label %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge, label %dsa_is_user_port.exit.thread.for.inc_crit_edge

dsa_is_user_port.exit.thread.for.inc_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dsa_is_user_port.exit.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %15 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %16, %3
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.028)
  %cmp5.i = icmp eq i32 %18, %i.028
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i, align 4
  %phydev6 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %phydev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev6, align 16
  tail call void @phy_remove_link_mode(ptr noundef %23, i32 noundef 4) #8
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %dsa_to_port.exit.for.inc_crit_edge

dsa_to_port.exit.for.inc_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_remove_link_mode(ptr noundef %23, i32 noundef 5) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %dsa_to_port.exit.for.inc_crit_edge, %dsa_is_user_port.exit.thread.for.inc_crit_edge, %dsa_is_user_port.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %26 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_port_cnt, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz9477_get_port_addr(i32 noundef %port, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %port, 12
  %shl = add i32 %add, 4096
  %or = or i32 %shl, %offset
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_cfg_port_member(ptr nocapture noundef readonly %dev, i32 noundef %port, i8 noundef zeroext %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %member to i32
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(i32 noundef %port, i32 noundef 2564) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %call.i, i32 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_flush_dyn_mac_table(ptr nocapture noundef readonly %dev, i32 noundef %port) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 786, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp = icmp sgt i32 %3, %port
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i14 = tail call i32 %7(i32 noundef %port, i32 noundef 2820) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %call.i14, ptr noundef nonnull %value.i.i) #8
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i16 = call i32 %17(i32 noundef %port, i32 noundef 2820) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %or = and i32 %12, 254
  %conv.i.i18 = or i32 %or, 1
  %call.i.i19 = call i32 @regmap_write(ptr noundef %19, i32 noundef %call.i16, i32 noundef %conv.i.i18) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i.i20 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 785, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i22 = call i32 %25(i32 noundef %port, i32 noundef 2820) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %conv.i.i24 = and i32 %12, 255
  %call.i.i25 = call i32 @regmap_write(ptr noundef %27, i32 noundef %call.i22, i32 noundef %conv.i.i24) #8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 785, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_port_setup(ptr noundef readonly %dev, i32 noundef %port, i1 noundef zeroext %cpu_port) #0 align 64 {
entry:
  %value.i.i232 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br i1 %cpu_port, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = shl i32 %port, 12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %add.i = shl i32 %port, 12
  %or.i = add i32 %add.i, 4128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %or.i, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.i120.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %add.i, %if.then ]
  %regmap.i119 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i119, align 4
  %shl.i121 = add i32 %add.i120.pre-phi, 4096
  %or.i122 = or i32 %shl.i121, 32
  %call.i.i123 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i122, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i119, align 4
  %or.i127 = or i32 %shl.i121, 1025
  %call.i.i128 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %or.i127, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i119, align 4
  %or.i132 = or i32 %shl.i121, 1024
  %call.i.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %or.i132, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i119, align 4
  %or.i137 = or i32 %shl.i121, 2049
  %call.i.i138 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %or.i137, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i119, align 4
  %or.i142 = or i32 %shl.i121, 2050
  %call.i.i143 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %or.i142, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or.i145 = add i32 %add.i120.pre-phi, 6404
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %or.i145, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i119, align 4
  %call.i.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %or.i137, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 18
  %20 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %port)
  %cmp = icmp sgt i32 %21, %port
  %22 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i119, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call.i.i156 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %or.i122, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %phy_errata_9477 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 25
  %24 = ptrtoint ptr %phy_errata_9477 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_errata_9477, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not = icmp eq i8 %25, 0
  br i1 %tobool3.not, label %if.then2.if.end48_crit_edge, label %if.then4

if.then2.if.end48_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then4:                                         ; preds = %if.then2
  %dev_ops.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %26 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_ops.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i.i.i = tail call i32 %29(i32 noundef %port, i32 noundef 282) #8
  %arrayidx.i.i.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %call.i.i.i, i32 noundef 1) #8
  %32 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_ops.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i13.i.i = tail call i32 %35(i32 noundef %port, i32 noundef 284) #8
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %call.i13.i.i, i32 noundef 111) #8
  %38 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_ops.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i18.i.i = tail call i32 %41(i32 noundef %port, i32 noundef 282) #8
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %call.i18.i.i, i32 noundef 16385) #8
  %44 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_ops.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call.i23.i.i = tail call i32 %47(i32 noundef %port, i32 noundef 284) #8
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %call.i23.i.i, i32 noundef 56587) #8
  %50 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_ops.i.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call.i.i45.i = tail call i32 %53(i32 noundef %port, i32 noundef 282) #8
  %54 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i47.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %call.i.i45.i, i32 noundef 1) #8
  %56 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_ops.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i13.i48.i = tail call i32 %59(i32 noundef %port, i32 noundef 284) #8
  %60 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i49.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef %call.i13.i48.i, i32 noundef 143) #8
  %62 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_ops.i.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call.i18.i50.i = tail call i32 %65(i32 noundef %port, i32 noundef 282) #8
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i51.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef %call.i18.i50.i, i32 noundef 16385) #8
  %68 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_ops.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call.i23.i52.i = tail call i32 %71(i32 noundef %port, i32 noundef 284) #8
  %72 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i53.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %call.i23.i52.i, i32 noundef 24626) #8
  %74 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_ops.i.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %call.i.i55.i = tail call i32 %77(i32 noundef %port, i32 noundef 282) #8
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i57.i = tail call i32 @regmap_write(ptr noundef %79, i32 noundef %call.i.i55.i, i32 noundef 1) #8
  %80 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_ops.i.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call.i13.i58.i = tail call i32 %83(i32 noundef %port, i32 noundef 284) #8
  %84 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i59.i = tail call i32 @regmap_write(ptr noundef %85, i32 noundef %call.i13.i58.i, i32 noundef 157) #8
  %86 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_ops.i.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call.i18.i60.i = tail call i32 %89(i32 noundef %port, i32 noundef 282) #8
  %90 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i61.i = tail call i32 @regmap_write(ptr noundef %91, i32 noundef %call.i18.i60.i, i32 noundef 16385) #8
  %92 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_ops.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %call.i23.i62.i = tail call i32 %95(i32 noundef %port, i32 noundef 284) #8
  %96 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i63.i = tail call i32 @regmap_write(ptr noundef %97, i32 noundef %call.i23.i62.i, i32 noundef 9356) #8
  %98 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_ops.i.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call.i.i65.i = tail call i32 %101(i32 noundef %port, i32 noundef 282) #8
  %102 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i67.i = tail call i32 @regmap_write(ptr noundef %103, i32 noundef %call.i.i65.i, i32 noundef 1) #8
  %104 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_ops.i.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %call.i13.i68.i = tail call i32 %107(i32 noundef %port, i32 noundef 284) #8
  %108 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i69.i = tail call i32 @regmap_write(ptr noundef %109, i32 noundef %call.i13.i68.i, i32 noundef 117) #8
  %110 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_ops.i.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call.i18.i70.i = tail call i32 %113(i32 noundef %port, i32 noundef 282) #8
  %114 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i71.i = tail call i32 @regmap_write(ptr noundef %115, i32 noundef %call.i18.i70.i, i32 noundef 16385) #8
  %116 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_ops.i.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %call.i23.i72.i = tail call i32 %119(i32 noundef %port, i32 noundef 284) #8
  %120 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i73.i = tail call i32 @regmap_write(ptr noundef %121, i32 noundef %call.i23.i72.i, i32 noundef 96) #8
  %122 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_ops.i.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %call.i.i75.i = tail call i32 %125(i32 noundef %port, i32 noundef 282) #8
  %126 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i77.i = tail call i32 @regmap_write(ptr noundef %127, i32 noundef %call.i.i75.i, i32 noundef 1) #8
  %128 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev_ops.i.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %call.i13.i78.i = tail call i32 %131(i32 noundef %port, i32 noundef 284) #8
  %132 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i79.i = tail call i32 @regmap_write(ptr noundef %133, i32 noundef %call.i13.i78.i, i32 noundef 211) #8
  %134 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_ops.i.i.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %call.i18.i80.i = tail call i32 %137(i32 noundef %port, i32 noundef 282) #8
  %138 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i81.i = tail call i32 @regmap_write(ptr noundef %139, i32 noundef %call.i18.i80.i, i32 noundef 16385) #8
  %140 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev_ops.i.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %call.i23.i82.i = tail call i32 %143(i32 noundef %port, i32 noundef 284) #8
  %144 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i83.i = tail call i32 @regmap_write(ptr noundef %145, i32 noundef %call.i23.i82.i, i32 noundef 30583) #8
  %146 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev_ops.i.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call.i.i85.i = tail call i32 %149(i32 noundef %port, i32 noundef 282) #8
  %150 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i87.i = tail call i32 @regmap_write(ptr noundef %151, i32 noundef %call.i.i85.i, i32 noundef 28) #8
  %152 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev_ops.i.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %call.i13.i88.i = tail call i32 %155(i32 noundef %port, i32 noundef 284) #8
  %156 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i89.i = tail call i32 @regmap_write(ptr noundef %157, i32 noundef %call.i13.i88.i, i32 noundef 6) #8
  %158 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_ops.i.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %call.i18.i90.i = tail call i32 %161(i32 noundef %port, i32 noundef 282) #8
  %162 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i91.i = tail call i32 @regmap_write(ptr noundef %163, i32 noundef %call.i18.i90.i, i32 noundef 16412) #8
  %164 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev_ops.i.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %call.i23.i92.i = tail call i32 %167(i32 noundef %port, i32 noundef 284) #8
  %168 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i93.i = tail call i32 @regmap_write(ptr noundef %169, i32 noundef %call.i23.i92.i, i32 noundef 12296) #8
  %170 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_ops.i.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %call.i.i95.i = tail call i32 %173(i32 noundef %port, i32 noundef 282) #8
  %174 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i97.i = tail call i32 @regmap_write(ptr noundef %175, i32 noundef %call.i.i95.i, i32 noundef 28) #8
  %176 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev_ops.i.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %call.i13.i98.i = tail call i32 %179(i32 noundef %port, i32 noundef 284) #8
  %180 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i99.i = tail call i32 @regmap_write(ptr noundef %181, i32 noundef %call.i13.i98.i, i32 noundef 8) #8
  %182 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev_ops.i.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call.i18.i100.i = tail call i32 %185(i32 noundef %port, i32 noundef 282) #8
  %186 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i101.i = tail call i32 @regmap_write(ptr noundef %187, i32 noundef %call.i18.i100.i, i32 noundef 16412) #8
  %188 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_ops.i.i.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %call.i23.i102.i = tail call i32 %191(i32 noundef %port, i32 noundef 284) #8
  %192 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i103.i = tail call i32 @regmap_write(ptr noundef %193, i32 noundef %call.i23.i102.i, i32 noundef 8193) #8
  %194 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev_ops.i.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %call.i.i105.i = tail call i32 %197(i32 noundef %port, i32 noundef 282) #8
  %198 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i107.i = tail call i32 @regmap_write(ptr noundef %199, i32 noundef %call.i.i105.i, i32 noundef 28) #8
  %200 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev_ops.i.i.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %call.i13.i108.i = tail call i32 %203(i32 noundef %port, i32 noundef 284) #8
  %204 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i109.i = tail call i32 @regmap_write(ptr noundef %205, i32 noundef %call.i13.i108.i, i32 noundef 4) #8
  %206 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_ops.i.i.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %call.i18.i110.i = tail call i32 %209(i32 noundef %port, i32 noundef 282) #8
  %210 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i111.i = tail call i32 @regmap_write(ptr noundef %211, i32 noundef %call.i18.i110.i, i32 noundef 16412) #8
  %212 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_ops.i.i.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %call.i23.i112.i = tail call i32 %215(i32 noundef %port, i32 noundef 284) #8
  %216 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i113.i = tail call i32 @regmap_write(ptr noundef %217, i32 noundef %call.i23.i112.i, i32 noundef 208) #8
  %features.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %218 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %features.i, align 4
  %and.i = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.ksz9477_phy_errata_setup.exit_crit_edge, label %if.then.i

if.then4.ksz9477_phy_errata_setup.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_phy_errata_setup.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %220 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev_ops.i.i.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %call.i.i115.i = tail call i32 %223(i32 noundef %port, i32 noundef 282) #8
  %224 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i117.i = tail call i32 @regmap_write(ptr noundef %225, i32 noundef %call.i.i115.i, i32 noundef 7) #8
  %226 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev_ops.i.i.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %call.i13.i118.i = tail call i32 %229(i32 noundef %port, i32 noundef 284) #8
  %230 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i119.i = tail call i32 @regmap_write(ptr noundef %231, i32 noundef %call.i13.i118.i, i32 noundef 60) #8
  %232 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev_ops.i.i.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %call.i18.i120.i = tail call i32 %235(i32 noundef %port, i32 noundef 282) #8
  %236 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i121.i = tail call i32 @regmap_write(ptr noundef %237, i32 noundef %call.i18.i120.i, i32 noundef 16391) #8
  %238 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev_ops.i.i.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  %call.i23.i122.i = tail call i32 %241(i32 noundef %port, i32 noundef 284) #8
  %242 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i123.i = tail call i32 @regmap_write(ptr noundef %243, i32 noundef %call.i23.i122.i, i32 noundef 0) #8
  br label %ksz9477_phy_errata_setup.exit

ksz9477_phy_errata_setup.exit:                    ; preds = %if.then.i, %if.then4.ksz9477_phy_errata_setup.exit_crit_edge
  %244 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev_ops.i.i.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %call.i.i125.i = tail call i32 %247(i32 noundef %port, i32 noundef 282) #8
  %248 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i127.i = tail call i32 @regmap_write(ptr noundef %249, i32 noundef %call.i.i125.i, i32 noundef 28) #8
  %250 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev_ops.i.i.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %call.i13.i128.i = tail call i32 %253(i32 noundef %port, i32 noundef 284) #8
  %254 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i129.i = tail call i32 @regmap_write(ptr noundef %255, i32 noundef %call.i13.i128.i, i32 noundef 19) #8
  %256 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev_ops.i.i.i, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %257, align 4
  %call.i18.i130.i = tail call i32 %259(i32 noundef %port, i32 noundef 282) #8
  %260 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i131.i = tail call i32 @regmap_write(ptr noundef %261, i32 noundef %call.i18.i130.i, i32 noundef 16412) #8
  %262 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev_ops.i.i.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %call.i23.i132.i = tail call i32 %265(i32 noundef %port, i32 noundef 284) #8
  %266 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i133.i = tail call i32 @regmap_write(ptr noundef %267, i32 noundef %call.i23.i132.i, i32 noundef 28415) #8
  %268 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev_ops.i.i.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %call.i.i135.i = tail call i32 %271(i32 noundef %port, i32 noundef 282) #8
  %272 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i137.i = tail call i32 @regmap_write(ptr noundef %273, i32 noundef %call.i.i135.i, i32 noundef 28) #8
  %274 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_ops.i.i.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %call.i13.i138.i = tail call i32 %277(i32 noundef %port, i32 noundef 284) #8
  %278 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i139.i = tail call i32 @regmap_write(ptr noundef %279, i32 noundef %call.i13.i138.i, i32 noundef 20) #8
  %280 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev_ops.i.i.i, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %call.i18.i140.i = tail call i32 %283(i32 noundef %port, i32 noundef 282) #8
  %284 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i141.i = tail call i32 @regmap_write(ptr noundef %285, i32 noundef %call.i18.i140.i, i32 noundef 16412) #8
  %286 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dev_ops.i.i.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %call.i23.i142.i = tail call i32 %289(i32 noundef %port, i32 noundef 284) #8
  %290 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i143.i = tail call i32 @regmap_write(ptr noundef %291, i32 noundef %call.i23.i142.i, i32 noundef 59135) #8
  %292 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev_ops.i.i.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %call.i.i145.i = tail call i32 %295(i32 noundef %port, i32 noundef 282) #8
  %296 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i147.i = tail call i32 @regmap_write(ptr noundef %297, i32 noundef %call.i.i145.i, i32 noundef 28) #8
  %298 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev_ops.i.i.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %call.i13.i148.i = tail call i32 %301(i32 noundef %port, i32 noundef 284) #8
  %302 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i149.i = tail call i32 @regmap_write(ptr noundef %303, i32 noundef %call.i13.i148.i, i32 noundef 21) #8
  %304 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev_ops.i.i.i, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %call.i18.i150.i = tail call i32 %307(i32 noundef %port, i32 noundef 282) #8
  %308 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i151.i = tail call i32 @regmap_write(ptr noundef %309, i32 noundef %call.i18.i150.i, i32 noundef 16412) #8
  %310 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev_ops.i.i.i, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %call.i23.i152.i = tail call i32 %313(i32 noundef %port, i32 noundef 284) #8
  %314 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i153.i = tail call i32 @regmap_write(ptr noundef %315, i32 noundef %call.i23.i152.i, i32 noundef 28415) #8
  %316 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev_ops.i.i.i, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  %call.i.i155.i = tail call i32 %319(i32 noundef %port, i32 noundef 282) #8
  %320 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i157.i = tail call i32 @regmap_write(ptr noundef %321, i32 noundef %call.i.i155.i, i32 noundef 28) #8
  %322 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev_ops.i.i.i, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %call.i13.i158.i = tail call i32 %325(i32 noundef %port, i32 noundef 284) #8
  %326 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i159.i = tail call i32 @regmap_write(ptr noundef %327, i32 noundef %call.i13.i158.i, i32 noundef 22) #8
  %328 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev_ops.i.i.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %call.i18.i160.i = tail call i32 %331(i32 noundef %port, i32 noundef 282) #8
  %332 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i161.i = tail call i32 @regmap_write(ptr noundef %333, i32 noundef %call.i18.i160.i, i32 noundef 16412) #8
  %334 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dev_ops.i.i.i, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %335, align 4
  %call.i23.i162.i = tail call i32 %337(i32 noundef %port, i32 noundef 284) #8
  %338 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i163.i = tail call i32 @regmap_write(ptr noundef %339, i32 noundef %call.i23.i162.i, i32 noundef 59135) #8
  %340 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev_ops.i.i.i, align 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %341, align 4
  %call.i.i165.i = tail call i32 %343(i32 noundef %port, i32 noundef 282) #8
  %344 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i167.i = tail call i32 @regmap_write(ptr noundef %345, i32 noundef %call.i.i165.i, i32 noundef 28) #8
  %346 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev_ops.i.i.i, align 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %347, align 4
  %call.i13.i168.i = tail call i32 %349(i32 noundef %port, i32 noundef 284) #8
  %350 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i169.i = tail call i32 @regmap_write(ptr noundef %351, i32 noundef %call.i13.i168.i, i32 noundef 23) #8
  %352 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %dev_ops.i.i.i, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %353, align 4
  %call.i18.i170.i = tail call i32 %355(i32 noundef %port, i32 noundef 282) #8
  %356 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i171.i = tail call i32 @regmap_write(ptr noundef %357, i32 noundef %call.i18.i170.i, i32 noundef 16412) #8
  %358 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev_ops.i.i.i, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %359, align 4
  %call.i23.i172.i = tail call i32 %361(i32 noundef %port, i32 noundef 284) #8
  %362 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i173.i = tail call i32 @regmap_write(ptr noundef %363, i32 noundef %call.i23.i172.i, i32 noundef 255) #8
  %364 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev_ops.i.i.i, align 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %365, align 4
  %call.i.i175.i = tail call i32 %367(i32 noundef %port, i32 noundef 282) #8
  %368 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i177.i = tail call i32 @regmap_write(ptr noundef %369, i32 noundef %call.i.i175.i, i32 noundef 28) #8
  %370 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev_ops.i.i.i, align 4
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %371, align 4
  %call.i13.i178.i = tail call i32 %373(i32 noundef %port, i32 noundef 284) #8
  %374 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i179.i = tail call i32 @regmap_write(ptr noundef %375, i32 noundef %call.i13.i178.i, i32 noundef 24) #8
  %376 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev_ops.i.i.i, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 4
  %call.i18.i180.i = tail call i32 %379(i32 noundef %port, i32 noundef 282) #8
  %380 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i181.i = tail call i32 @regmap_write(ptr noundef %381, i32 noundef %call.i18.i180.i, i32 noundef 16412) #8
  %382 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev_ops.i.i.i, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %383, align 4
  %call.i23.i182.i = tail call i32 %385(i32 noundef %port, i32 noundef 284) #8
  %386 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i183.i = tail call i32 @regmap_write(ptr noundef %387, i32 noundef %call.i23.i182.i, i32 noundef 17407) #8
  %388 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dev_ops.i.i.i, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %389, align 4
  %call.i.i185.i = tail call i32 %391(i32 noundef %port, i32 noundef 282) #8
  %392 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i187.i = tail call i32 @regmap_write(ptr noundef %393, i32 noundef %call.i.i185.i, i32 noundef 28) #8
  %394 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dev_ops.i.i.i, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %call.i13.i188.i = tail call i32 %397(i32 noundef %port, i32 noundef 284) #8
  %398 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i189.i = tail call i32 @regmap_write(ptr noundef %399, i32 noundef %call.i13.i188.i, i32 noundef 25) #8
  %400 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev_ops.i.i.i, align 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %401, align 4
  %call.i18.i190.i = tail call i32 %403(i32 noundef %port, i32 noundef 282) #8
  %404 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i191.i = tail call i32 @regmap_write(ptr noundef %405, i32 noundef %call.i18.i190.i, i32 noundef 16412) #8
  %406 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev_ops.i.i.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 4
  %call.i23.i192.i = tail call i32 %409(i32 noundef %port, i32 noundef 284) #8
  %410 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i193.i = tail call i32 @regmap_write(ptr noundef %411, i32 noundef %call.i23.i192.i, i32 noundef 50175) #8
  %412 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev_ops.i.i.i, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %413, align 4
  %call.i.i195.i = tail call i32 %415(i32 noundef %port, i32 noundef 282) #8
  %416 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i197.i = tail call i32 @regmap_write(ptr noundef %417, i32 noundef %call.i.i195.i, i32 noundef 28) #8
  %418 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev_ops.i.i.i, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 4
  %call.i13.i198.i = tail call i32 %421(i32 noundef %port, i32 noundef 284) #8
  %422 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i199.i = tail call i32 @regmap_write(ptr noundef %423, i32 noundef %call.i13.i198.i, i32 noundef 26) #8
  %424 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev_ops.i.i.i, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 4
  %call.i18.i200.i = tail call i32 %427(i32 noundef %port, i32 noundef 282) #8
  %428 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i201.i = tail call i32 @regmap_write(ptr noundef %429, i32 noundef %call.i18.i200.i, i32 noundef 16412) #8
  %430 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev_ops.i.i.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %431, align 4
  %call.i23.i202.i = tail call i32 %433(i32 noundef %port, i32 noundef 284) #8
  %434 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i203.i = tail call i32 @regmap_write(ptr noundef %435, i32 noundef %call.i23.i202.i, i32 noundef 28671) #8
  %436 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev_ops.i.i.i, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %call.i.i205.i = tail call i32 %439(i32 noundef %port, i32 noundef 282) #8
  %440 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i207.i = tail call i32 @regmap_write(ptr noundef %441, i32 noundef %call.i.i205.i, i32 noundef 28) #8
  %442 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev_ops.i.i.i, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 4
  %call.i13.i208.i = tail call i32 %445(i32 noundef %port, i32 noundef 284) #8
  %446 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i209.i = tail call i32 @regmap_write(ptr noundef %447, i32 noundef %call.i13.i208.i, i32 noundef 27) #8
  %448 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev_ops.i.i.i, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %call.i18.i210.i = tail call i32 %451(i32 noundef %port, i32 noundef 282) #8
  %452 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i211.i = tail call i32 @regmap_write(ptr noundef %453, i32 noundef %call.i18.i210.i, i32 noundef 16412) #8
  %454 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %dev_ops.i.i.i, align 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 4
  %call.i23.i212.i = tail call i32 %457(i32 noundef %port, i32 noundef 284) #8
  %458 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i213.i = tail call i32 @regmap_write(ptr noundef %459, i32 noundef %call.i23.i212.i, i32 noundef 2047) #8
  %460 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev_ops.i.i.i, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %461, align 4
  %call.i.i215.i = tail call i32 %463(i32 noundef %port, i32 noundef 282) #8
  %464 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i217.i = tail call i32 @regmap_write(ptr noundef %465, i32 noundef %call.i.i215.i, i32 noundef 28) #8
  %466 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev_ops.i.i.i, align 4
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 4
  %call.i13.i218.i = tail call i32 %469(i32 noundef %port, i32 noundef 284) #8
  %470 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i219.i = tail call i32 @regmap_write(ptr noundef %471, i32 noundef %call.i13.i218.i, i32 noundef 28) #8
  %472 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dev_ops.i.i.i, align 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %473, align 4
  %call.i18.i220.i = tail call i32 %475(i32 noundef %port, i32 noundef 282) #8
  %476 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i221.i = tail call i32 @regmap_write(ptr noundef %477, i32 noundef %call.i18.i220.i, i32 noundef 16412) #8
  %478 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dev_ops.i.i.i, align 4
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %479, align 4
  %call.i23.i222.i = tail call i32 %481(i32 noundef %port, i32 noundef 284) #8
  %482 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i223.i = tail call i32 @regmap_write(ptr noundef %483, i32 noundef %call.i23.i222.i, i32 noundef 4095) #8
  %484 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev_ops.i.i.i, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 4
  %call.i.i225.i = tail call i32 %487(i32 noundef %port, i32 noundef 282) #8
  %488 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i227.i = tail call i32 @regmap_write(ptr noundef %489, i32 noundef %call.i.i225.i, i32 noundef 28) #8
  %490 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dev_ops.i.i.i, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %491, align 4
  %call.i13.i228.i = tail call i32 %493(i32 noundef %port, i32 noundef 284) #8
  %494 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i229.i = tail call i32 @regmap_write(ptr noundef %495, i32 noundef %call.i13.i228.i, i32 noundef 29) #8
  %496 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev_ops.i.i.i, align 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %497, align 4
  %call.i18.i230.i = tail call i32 %499(i32 noundef %port, i32 noundef 282) #8
  %500 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i231.i = tail call i32 @regmap_write(ptr noundef %501, i32 noundef %call.i18.i230.i, i32 noundef 16412) #8
  %502 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %dev_ops.i.i.i, align 4
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 4
  %call.i23.i232.i = tail call i32 %505(i32 noundef %port, i32 noundef 284) #8
  %506 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i233.i = tail call i32 @regmap_write(ptr noundef %507, i32 noundef %call.i23.i232.i, i32 noundef 59391) #8
  %508 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %dev_ops.i.i.i, align 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %509, align 4
  %call.i.i235.i = tail call i32 %511(i32 noundef %port, i32 noundef 282) #8
  %512 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i237.i = tail call i32 @regmap_write(ptr noundef %513, i32 noundef %call.i.i235.i, i32 noundef 28) #8
  %514 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %dev_ops.i.i.i, align 4
  %516 = ptrtoint ptr %515 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %515, align 4
  %call.i13.i238.i = tail call i32 %517(i32 noundef %port, i32 noundef 284) #8
  %518 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i239.i = tail call i32 @regmap_write(ptr noundef %519, i32 noundef %call.i13.i238.i, i32 noundef 30) #8
  %520 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %dev_ops.i.i.i, align 4
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %521, align 4
  %call.i18.i240.i = tail call i32 %523(i32 noundef %port, i32 noundef 282) #8
  %524 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i241.i = tail call i32 @regmap_write(ptr noundef %525, i32 noundef %call.i18.i240.i, i32 noundef 16412) #8
  %526 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dev_ops.i.i.i, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %527, align 4
  %call.i23.i242.i = tail call i32 %529(i32 noundef %port, i32 noundef 284) #8
  %530 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i243.i = tail call i32 @regmap_write(ptr noundef %531, i32 noundef %call.i23.i242.i, i32 noundef 61439) #8
  %532 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dev_ops.i.i.i, align 4
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %533, align 4
  %call.i.i245.i = tail call i32 %535(i32 noundef %port, i32 noundef 282) #8
  %536 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i247.i = tail call i32 @regmap_write(ptr noundef %537, i32 noundef %call.i.i245.i, i32 noundef 28) #8
  %538 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %dev_ops.i.i.i, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %call.i13.i248.i = tail call i32 %541(i32 noundef %port, i32 noundef 284) #8
  %542 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i16.i249.i = tail call i32 @regmap_write(ptr noundef %543, i32 noundef %call.i13.i248.i, i32 noundef 32) #8
  %544 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %dev_ops.i.i.i, align 4
  %546 = ptrtoint ptr %545 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %545, align 4
  %call.i18.i250.i = tail call i32 %547(i32 noundef %port, i32 noundef 282) #8
  %548 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i21.i251.i = tail call i32 @regmap_write(ptr noundef %549, i32 noundef %call.i18.i250.i, i32 noundef 16412) #8
  %550 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %dev_ops.i.i.i, align 4
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %551, align 4
  %call.i23.i252.i = tail call i32 %553(i32 noundef %port, i32 noundef 284) #8
  %554 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i26.i253.i = tail call i32 @regmap_write(ptr noundef %555, i32 noundef %call.i23.i252.i, i32 noundef 61166) #8
  br label %if.end48

if.else:                                          ; preds = %if.end
  %call.i.i161 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %or.i122, i32 noundef 24, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %556 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %dev_ops.i, align 4
  %558 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %557, align 4
  %call.i = tail call i32 %559(i32 noundef %port, i32 noundef 769) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %560 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %561 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %regmap.i119, align 4
  %call.i.i162 = call i32 @regmap_read(ptr noundef %562, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %563 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %564 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %interface = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 5
  %565 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %interface, align 8
  %567 = zext i32 %566 to i64
  call void @__sanitizer_cov_trace_switch(i64 %567, ptr @__sancov_gen_cov_switch_values)
  switch i32 %566, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %sw.bb6
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %features.i163 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %568 = ptrtoint ptr %features.i163 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %features.i163, align 4
  %and.i164 = and i32 %569, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  %570 = and i8 %conv.i.i, -68
  %masksel = select i1 %tobool.not.i165, i8 0, i8 67
  %.sink.i = or i8 %570, %masksel
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %features.i173 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %571 = ptrtoint ptr %features.i173 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %features.i173, align 4
  %and.i174 = and i32 %572, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  %573 = and i8 %conv.i.i, -68
  %.sink.i187.v = select i1 %tobool.not.i175, i8 1, i8 65
  %.sink.i187 = or i8 %573, %.sink.i187.v
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %features.i189 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %574 = ptrtoint ptr %features.i189 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %features.i189, align 4
  %and.i190 = and i32 %575, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i191 = icmp eq i32 %and.i190, 0
  %576 = and i8 %conv.i.i, -68
  %.sink.i202.v = select i1 %tobool.not.i191, i8 66, i8 2
  %.sink.i202 = or i8 %576, %.sink.i202.v
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %features.i204 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %577 = ptrtoint ptr %features.i204 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %features.i204, align 4
  %and.i205 = and i32 %578, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i206 = icmp eq i32 %and.i205, 0
  %579 = and i8 %conv.i.i, -92
  %masksel258 = select i1 %tobool.not.i206, i8 67, i8 0
  %.sink.i217 = or i8 %579, %masksel258
  %580 = and i32 %566, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %580)
  %switch = icmp eq i32 %580, 10
  %581 = or i8 %.sink.i217, 16
  %spec.select = select i1 %switch, i8 %581, i8 %.sink.i217
  %582 = zext i32 %566 to i64
  call void @__sanitizer_cov_trace_switch(i64 %582, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %566, label %sw.default.if.end37_crit_edge [
    i32 10, label %sw.default.if.then33_crit_edge
    i32 12, label %sw.default.if.then33_crit_edge269
  ]

sw.default.if.then33_crit_edge269:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

sw.default.if.then33_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

sw.default.if.end37_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %sw.default.if.then33_crit_edge, %sw.default.if.then33_crit_edge269
  %583 = or i8 %spec.select, 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.default.if.end37_crit_edge
  %data8.1 = phi i8 [ %spec.select, %sw.default.if.end37_crit_edge ], [ %583, %if.then33 ]
  %and38 = and i32 %578, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %584 = and i8 %data8.1, -5
  %spec.select255 = select i1 %tobool39.not, i8 %data8.1, i8 %584
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end37, %sw.bb9, %sw.bb6, %sw.bb
  %.sink = phi i32 [ 1000, %if.end37 ], [ 1000, %sw.bb9 ], [ 100, %sw.bb6 ], [ 100, %sw.bb ]
  %data8.3 = phi i8 [ %spec.select255, %if.end37 ], [ %.sink.i202, %sw.bb9 ], [ %.sink.i187, %sw.bb6 ], [ %.sink.i, %sw.bb ]
  %speed46 = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 2, i32 8
  %585 = ptrtoint ptr %speed46 to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 %.sink, ptr %speed46, align 8
  %586 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %dev_ops.i, align 4
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %587, align 4
  %call.i220 = call i32 %589(i32 noundef %port, i32 noundef 769) #8
  %590 = ptrtoint ptr %regmap.i119 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %regmap.i119, align 4
  %conv.i.i222 = zext i8 %data8.3 to i32
  %call.i.i223 = call i32 @regmap_write(ptr noundef %591, i32 noundef %call.i220, i32 noundef %conv.i.i222) #8
  %duplex = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 2, i32 9
  %592 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 1, ptr %duplex, align 4
  br label %if.end48

if.end48:                                         ; preds = %sw.epilog, %ksz9477_phy_errata_setup.exit, %if.then2.if.end48_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %593 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %594, i32 0, i32 1
  %595 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %.pn19.i = load ptr, ptr %ports.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %ports.i
  br i1 %cpu_port, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.end48
  br i1 %cmp.not20.i, label %if.then50.if.end55_crit_edge, label %if.then50.for.body.i_crit_edge

if.then50.for.body.i_crit_edge:                   ; preds = %if.then50
  br label %for.body.i

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then50.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %if.then50.for.body.i_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then50.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %596 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %597, %3
  br i1 %cmp4.i, label %if.then.i224, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i224:                                     ; preds = %for.body.i
  %type.i.i = getelementptr i8, ptr %.pn22.i, i32 -424
  %598 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %599)
  %cmp.i.i = icmp eq i32 %599, 3
  br i1 %cmp.i.i, label %if.then5.i, label %if.then.i224.for.inc.i_crit_edge

if.then.i224.for.inc.i_crit_edge:                 ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %600 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %index.i, align 4
  %shl.i225 = shl nuw i32 1, %601
  %or.i226 = or i32 %shl.i225, %mask.021.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i224.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i226, %if.then5.i ], [ %mask.021.i, %if.then.i224.for.inc.i_crit_edge ], [ %mask.021.i, %for.body.i.for.inc.i_crit_edge ]
  %602 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.if.end55_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end55_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.else52:                                        ; preds = %if.end48
  br i1 %cmp.not20.i, label %if.else52.dsa_to_port.exit.i_crit_edge, label %if.else52.for.body.i.i_crit_edge

if.else52.for.body.i.i_crit_edge:                 ; preds = %if.else52
  br label %for.body.i.i

if.else52.dsa_to_port.exit.i_crit_edge:           ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else52.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn19.i, %if.else52.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %603 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %604, %3
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %605 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %606, i32 %port)
  %cmp5.i.i = icmp eq i32 %606, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %607 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i
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

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.else52.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.else52.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %608 = ptrtoint ptr %cpu_dp1.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cpu_dp1.i, align 4
  %tobool.not.i227 = icmp eq ptr %609, null
  br i1 %tobool.not.i227, label %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge, label %if.end.i

dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge: ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit

if.end.i:                                         ; preds = %dsa_to_port.exit.i
  %ds2.i = getelementptr inbounds %struct.dsa_port, ptr %609, i32 0, i32 4
  %610 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %ds2.i, align 4
  %index.i228 = getelementptr inbounds %struct.dsa_switch, ptr %611, i32 0, i32 2
  %612 = ptrtoint ptr %index.i228 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %index.i228, align 4
  %index3.i = getelementptr inbounds %struct.dsa_port, ptr %609, i32 0, i32 5
  %614 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %index3.i, align 4
  %index.i10.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 2
  %616 = ptrtoint ptr %index.i10.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %index.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %617, i32 %613)
  %cmp.i.i229 = icmp eq i32 %617, %613
  br i1 %cmp.i.i229, label %if.end.i.dsa_upstream_port.exit_crit_edge, label %if.else.i.i

if.end.i.dsa_upstream_port.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit

if.else.i.i:                                      ; preds = %if.end.i
  %rtable.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %594, i32 0, i32 10
  %618 = ptrtoint ptr %rtable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
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
  %619 = ptrtoint ptr %dl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %dl.0.i.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %620, i32 0, i32 4
  %621 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %622, %3
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %link_dp.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -4
  %623 = ptrtoint ptr %link_dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %link_dp.i.i.i, align 4
  %ds5.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %624, i32 0, i32 4
  %625 = ptrtoint ptr %ds5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %ds5.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %626, i32 0, i32 2
  %627 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %628, i32 %613)
  %cmp6.i.i.i = icmp eq i32 %628, %613
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index8.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %620, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %629 = ptrtoint ptr %.pn24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
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
  %num_ports.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i

dsa_routing_port.exit.i.i:                        ; preds = %for.end.i.i.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %index8.i.i.i, %if.then.i.i.i ], [ %num_ports.i.i.i, %for.end.i.i.i ]
  %630 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  br label %dsa_upstream_port.exit

dsa_upstream_port.exit:                           ; preds = %dsa_routing_port.exit.i.i, %if.end.i.dsa_upstream_port.exit_crit_edge, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge
  %retval.0.i = phi i32 [ %port, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge ], [ %retval.0.i.i.i, %dsa_routing_port.exit.i.i ], [ %615, %if.end.i.dsa_upstream_port.exit_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i
  br label %if.end55

if.end55:                                         ; preds = %dsa_upstream_port.exit, %for.inc.i.if.end55_crit_edge, %if.then50.if.end55_crit_edge
  %member.0.in = phi i32 [ %shl, %dsa_upstream_port.exit ], [ 0, %if.then50.if.end55_crit_edge ], [ %mask.1.i, %for.inc.i.if.end55_crit_edge ]
  %conv.i = and i32 %member.0.in, 255
  %dev_ops.i.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %631 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %dev_ops.i.i, align 4
  %633 = ptrtoint ptr %632 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %632, align 4
  %call.i.i230 = call i32 %634(i32 noundef %port, i32 noundef 2564) #8
  %635 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i231 = call i32 @regmap_write(ptr noundef %636, i32 noundef %call.i.i230, i32 noundef %conv.i) #8
  %637 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %638, i32 %port)
  %cmp57 = icmp sgt i32 %638, %port
  br i1 %cmp57, label %if.then59, label %if.end55.if.end60_crit_edge

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %639 = ptrtoint ptr %dev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %dev_ops.i.i, align 4
  %641 = ptrtoint ptr %640 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %640, align 4
  %call.i234 = call i32 %642(i32 noundef %port, i32 noundef 310) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i232) #8
  %643 = ptrtoint ptr %value.i.i232 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 -1, ptr %value.i.i232, align 4, !annotation !189
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %644 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i235 = call i32 @regmap_read(ptr noundef %645, i32 noundef %call.i234, ptr noundef nonnull %value.i.i232) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i232) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end55.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_r_mib_cnt(ptr nocapture noundef readonly %dev, i32 noundef %port, i16 noundef zeroext %addr, ptr nocapture noundef %cnt) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !189
  %freeze = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 3
  %3 = ptrtoint ptr %freeze to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %freeze, align 8
  %4 = and i8 %bf.load, 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 23
  %conv = zext i16 %addr to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, %6
  %or1 = or i32 %or, 33554432
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i = tail call i32 %10(i32 noundef %port, i32 noundef 1280) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %call.i, i32 noundef %or1) #8
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 248) #8
  %add = shl i32 %port, 12
  %or12 = add i32 %add, 5376
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %call1396 = call i32 @regmap_read(ptr noundef %14, i32 noundef %or12, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1396)
  %tobool14.not97 = icmp eq i32 %call1396, 0
  br i1 %tobool14.not97, label %entry.lor.lhs.false_crit_edge, label %entry.do.body44_crit_edge

entry.do.body44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call19 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %call13 = call i32 @regmap_read(ptr noundef %18, i32 noundef %or12, ptr noundef nonnull %val) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then32.lor.lhs.false_crit_edge, label %if.then32.do.body44_crit_edge

if.then32.do.body44_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then32.lor.lhs.false_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %call29 = call i32 @regmap_read(ptr noundef %20, i32 noundef %or12, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool35.not = icmp eq i32 %call29, 0
  br i1 %tobool35.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.body44_crit_edge

for.end.do.body44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and36 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end56, label %lor.rhs.do.body44_crit_edge

lor.rhs.do.body44_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

do.body44:                                        ; preds = %lor.rhs.do.body44_crit_edge, %for.end.do.body44_crit_edge, %if.then32.do.body44_crit_edge, %entry.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_r_mib_cnt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_r_mib_cnt, %if.then51)) #8
          to label %cleanup [label %if.then51], !srcloc !191

if.then51:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %dev52 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev52, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_r_mib_cnt.__UNIQUE_ID_ddebug499, ptr noundef %24, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end56:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i79 = call i32 %28(i32 noundef %port, i32 noundef 1284) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i81 = call i32 @regmap_read(ptr noundef %31, i32 noundef %call.i79, ptr noundef nonnull %value.i.i) #8
  %32 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %conv57 = zext i32 %33 to i64
  %34 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cnt, align 8
  %add58 = add i64 %35, %conv57
  store i64 %add58, ptr %cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then51, %do.body44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_r_mib_pkt(ptr nocapture noundef readonly %dev, i32 noundef %port, i16 noundef zeroext %addr, ptr nocapture noundef readnone %dropped, ptr nocapture noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %addr to i32
  %arrayidx = getelementptr [36 x %struct.anon.166], ptr @ksz9477_mib_names, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i16
  tail call void @ksz9477_r_mib_cnt(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %conv, ptr noundef %cnt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_freeze_mib(ptr nocapture noundef readonly %dev, i32 noundef %port, i1 noundef zeroext %freeze) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %freeze, i32 16777216, i32 0
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %mib = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mib, i32 noundef 0) #8
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(i32 noundef %port, i32 noundef 1280) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %call.i, i32 noundef %cond) #8
  %freeze2 = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 3
  %8 = ptrtoint ptr %freeze2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %freeze2, align 8
  %bf.shl = select i1 %freeze, i8 2, i8 0
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %freeze2, align 8
  tail call void @mutex_unlock(ptr noundef %mib) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_port_init_cnt(ptr nocapture noundef readonly %dev, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %mib1 = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mib1, i32 noundef 0) #8
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(i32 noundef %port, i32 noundef 1280) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %call.i, i32 noundef 16777216) #8
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 822, i32 noundef 128) #8
  %10 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i14 = tail call i32 %13(i32 noundef %port, i32 noundef 1280) #8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %call.i14, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %mib1) #8
  %cnt_ptr = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4, i32 1
  %16 = ptrtoint ptr %cnt_ptr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cnt_ptr, align 4
  %counters = getelementptr %struct.ksz_port, ptr %1, i32 %port, i32 4, i32 2
  %17 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %counters, align 4
  %mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 21
  %19 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mib_cnt, align 4
  %mul = shl i32 %20, 3
  %21 = call ptr @memset(ptr %18, i32 0, i32 %mul)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_reset_switch(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %value.i26 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 768, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 256, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value.i, align 4, !annotation !189
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i20 = call i32 @regmap_read(ptr noundef %6, i32 noundef 785, ptr noundef nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i22 = call i32 @regmap_write(ptr noundef %8, i32 noundef 785, i32 noundef 117) #8
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i23 = call i32 @regmap_write(ptr noundef %10, i32 noundef 20, i32 noundef 1610612736) #8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i25 = call i32 @regmap_write(ptr noundef %12, i32 noundef 28, i32 noundef 127) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i26) #8
  %13 = ptrtoint ptr %value.i26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i26, align 4, !annotation !189
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call.i28 = call i32 @regmap_read(ptr noundef %15, i32 noundef 24, ptr noundef nonnull %value.i26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i26) #8
  %arrayidx7 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %call.i29 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 818, i32 noundef 2047, i32 noundef 996, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %synclko_125 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 26
  %18 = ptrtoint ptr %synclko_125 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %synclko_125, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i31 = call i32 @regmap_write(ptr noundef %21, i32 noundef 259, i32 noundef 3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_switch_detect(ptr nocapture noundef %dev) #0 align 64 {
entry:
  %value.i91 = alloca i32, align 4
  %value.i89 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !189
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 256, ptr noundef nonnull %value.i) #8
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
  %5 = and i32 %4, 253
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i88 = call i32 @regmap_write(ptr noundef %7, i32 noundef 256, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool3.not = icmp eq i32 %call.i88, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i89) #8
  %8 = ptrtoint ptr %value.i89 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i89, align 4, !annotation !189
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i90 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %value.i89) #8
  %11 = ptrtoint ptr %value.i89 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i89, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool7.not = icmp eq i32 %call.i90, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i91) #8
  %13 = ptrtoint ptr %value.i91 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i91, align 4, !annotation !189
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i93 = call i32 @regmap_read(ptr noundef %15, i32 noundef 15, ptr noundef nonnull %value.i91) #8
  %16 = ptrtoint ptr %value.i91 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i91, align 4
  %conv.i94 = trunc i32 %17 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool11.not = icmp eq i32 %call.i93, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %phy_port_cnt, align 4
  %features = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 33
  %19 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %features, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_switch_detect.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_switch_detect, %if.then18)) #8
          to label %do.end [label %if.then18], !srcloc !191

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  %conv20 = and i32 %17, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_switch_detect.__UNIQUE_ID_ddebug511, ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %conv20) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end13
  %22 = and i32 %12, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %22)
  %cmp = icmp eq i32 %22, 768
  %dev32 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev32, align 4
  br i1 %cmp, label %do.end31, label %do.end44

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.6) #11
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features, align 4
  %or = or i32 %26, 4
  %27 = and i8 %conv.i94, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool36.not = icmp eq i8 %27, 0
  %and39 = and i32 %or, -2
  %spec.select = select i1 %tobool36.not, i32 %or, i32 %and39
  %28 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %features, align 4
  %29 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %phy_port_cnt, align 4
  br label %if.end55

do.end44:                                         ; preds = %do.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.10) #11
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features, align 4
  %or47 = or i32 %31, 2
  store i32 %or47, ptr %features, align 4
  %32 = and i8 %conv.i94, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool50.not = icmp eq i8 %32, 0
  br i1 %tobool50.not, label %if.then51, label %do.end44.if.end55_crit_edge

do.end44.if.end55_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  %and53 = and i32 %or47, -2
  %33 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and53, ptr %features, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.end44.if.end55_crit_edge, %do.end31
  %or59 = and i32 %12, 16776960
  %chip_id = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or59, ptr %chip_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i88, %if.end.cleanup_crit_edge ], [ %call.i90, %if.end5.cleanup_crit_edge ], [ %call.i93, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_switch_init(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ksz9477_switch_ops, ptr %ops, align 4
  %chip_id = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %4, label %entry.for.end_crit_edge [
    i32 9729792, label %entry.cleanup_crit_edge
    i32 10000128, label %cleanup.fold.split
    i32 9999104, label %cleanup.fold.split95
    i32 9791232, label %cleanup.fold.split96
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

cleanup.fold.split95:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split96:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split96, %cleanup.fold.split95, %cleanup.fold.split, %entry.cleanup_crit_edge
  %tobool = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %cleanup.fold.split ], [ false, %cleanup.fold.split95 ], [ true, %cleanup.fold.split96 ]
  %i.089.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split95 ], [ 3, %cleanup.fold.split96 ]
  %dev_name = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 1
  %6 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_name, align 4
  %name = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 4
  %num_vlans = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 2
  %9 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_vlans, align 4
  %num_vlans3 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %num_vlans3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_vlans3, align 4
  %num_alus = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 3
  %12 = ptrtoint ptr %num_alus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_alus, align 4
  %num_alus4 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 14
  %14 = ptrtoint ptr %num_alus4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_alus4, align 4
  %num_statics = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 4
  %15 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_statics, align 4
  %num_statics5 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %num_statics5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_statics5, align 4
  %port_cnt = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 6
  %18 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_cnt, align 4
  %port_cnt6 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %port_cnt6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %port_cnt6, align 4
  %cpu_ports = getelementptr [4 x %struct.ksz_chip_data], ptr @ksz9477_switch_chips, i32 0, i32 %i.089.lcssa, i32 5
  %21 = ptrtoint ptr %cpu_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu_ports, align 4
  %cpu_ports7 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 17
  %23 = ptrtoint ptr %cpu_ports7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cpu_ports7, align 4
  %phy_errata_94778 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 25
  %frombool = zext i1 %tobool to i8
  %24 = ptrtoint ptr %phy_errata_94778 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %phy_errata_94778, align 4
  br label %for.end

for.end:                                          ; preds = %cleanup, %entry.for.end_crit_edge
  %port_cnt9 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 19
  %25 = ptrtoint ptr %port_cnt9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_cnt9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %for.end.cleanup44_crit_edge, label %if.end12

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end12:                                         ; preds = %for.end
  %notmask = shl nsw i32 -1, %26
  %27 = trunc i32 %notmask to i16
  %conv = xor i16 %27, -1
  %port_mask = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 36
  %28 = ptrtoint ptr %port_mask to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %port_mask, align 2
  %reg_mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %reg_mib_cnt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %reg_mib_cnt, align 4
  %mib_cnt = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 21
  %30 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 36, ptr %mib_cnt, align 4
  %dev14 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %31 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev14, align 4
  %mul = mul i32 %26, 1624
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef %mul, i32 noundef 3520) #8
  %ports = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 28
  %33 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %ports, align 4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end12.cleanup44_crit_edge, label %for.cond20.preheader

if.end12.cleanup44_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

for.cond20.preheader:                             ; preds = %if.end12
  %34 = ptrtoint ptr %port_cnt9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_cnt9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2290 = icmp sgt i32 %35, 0
  br i1 %cmp2290, label %for.cond20.preheader.do.body_crit_edge, label %for.cond20.preheader.for.end41_crit_edge

for.cond20.preheader.for.end41_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.cond20.preheader.do.body_crit_edge:           ; preds = %for.cond20.preheader
  br label %do.body

for.cond20:                                       ; preds = %do.body
  %inc40 = add nuw nsw i32 %i.191, 1
  %36 = ptrtoint ptr %port_cnt9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_cnt9, align 4
  %cmp22 = icmp slt i32 %inc40, %37
  br i1 %cmp22, label %for.cond20.do.body_crit_edge, label %for.cond20.for.end41_crit_edge

for.cond20.for.end41_crit_edge:                   ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.cond20.do.body_crit_edge:                     ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.cond20.do.body_crit_edge, %for.cond20.preheader.do.body_crit_edge
  %i.191 = phi i32 [ %inc40, %for.cond20.do.body_crit_edge ], [ 0, %for.cond20.preheader.do.body_crit_edge ]
  %38 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ports, align 4
  %mib = getelementptr %struct.ksz_port, ptr %39, i32 %i.191, i32 4
  tail call void @__mutex_init(ptr noundef %mib, ptr noundef nonnull @.str.12, ptr noundef nonnull @ksz9477_switch_init.__key) #8
  %40 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev14, align 4
  %call.i84 = tail call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 296, i32 noundef 3520) #8
  %42 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ports, align 4
  %counters = getelementptr %struct.ksz_port, ptr %43, i32 %i.191, i32 4, i32 2
  %44 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i84, ptr %counters, align 4
  %45 = load ptr, ptr %ports, align 4
  %counters35 = getelementptr %struct.ksz_port, ptr %45, i32 %i.191, i32 4, i32 2
  %46 = ptrtoint ptr %counters35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %counters35, align 4
  %tobool36.not = icmp eq ptr %47, null
  br i1 %tobool36.not, label %do.body.cleanup44_crit_edge, label %for.cond20

do.body.cleanup44_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

for.end41:                                        ; preds = %for.cond20.for.end41_crit_edge, %for.cond20.preheader.for.end41_crit_edge
  %.lcssa = phi i32 [ %35, %for.cond20.preheader.for.end41_crit_edge ], [ %37, %for.cond20.for.end41_crit_edge ]
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.lcssa, ptr %num_ports, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %for.end41, %do.body.cleanup44_crit_edge, %if.end12.cleanup44_crit_edge, %for.end.cleanup44_crit_edge
  %retval.0 = phi i32 [ 0, %for.end41 ], [ -19, %for.end.cleanup44_crit_edge ], [ -12, %if.end12.cleanup44_crit_edge ], [ -12, %do.body.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_switch_exit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksz9477_reset_switch(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz9477_get_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %features = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 6, i32 7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_setup(ptr noundef %ds) #0 align 64 {
entry:
  %value.i.i.i142.i = alloca i32, align 4
  %value.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %num_vlans = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vlans, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !192

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_cache39 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %vlan_cache39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vlan_cache39, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %9 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %9, i32 noundef 3520) #8
  %vlan_cache = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %vlan_cache, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %call3 = tail call i32 @ksz9477_reset_switch(ptr noundef %1)
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 912, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 816, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 817, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %port_cnt.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp148.i = icmp sgt i32 %20, 0
  br i1 %cmp148.i, label %for.body.lr.ph.i, label %if.end.ksz9477_config_cpu_port.exit_crit_edge

if.end.ksz9477_config_cpu_port.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_config_cpu_port.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %cpu_ports.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 17
  %cpu_port.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 16
  %ports.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 28
  %phy_port_cnt.i.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 18
  %dev_ops.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 7
  %regmap.i.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 9
  %features.i.i.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 33
  %compat_interface.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 23
  %dev7.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 8
  br label %for.body.i

for.cond27.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp29152.i = icmp sgt i32 %71, 0
  br i1 %cmp29152.i, label %for.body30.lr.ph.i, label %for.cond27.preheader.i.ksz9477_config_cpu_port.exit_crit_edge

for.cond27.preheader.i.ksz9477_config_cpu_port.exit_crit_edge: ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_config_cpu_port.exit

for.body30.lr.ph.i:                               ; preds = %for.cond27.preheader.i
  %chip_id.i = getelementptr inbounds %struct.ksz_device, ptr %18, i32 0, i32 12
  br label %for.body30.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0149.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_cpu_port.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %24 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %25, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %26 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %i.0149.i)
  %cmp5.i.i.i = icmp eq i32 %27, %i.0149.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %28 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %for.body.i.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 1
  br i1 %cmp.i.i, label %land.lhs.true.i, label %dsa_is_cpu_port.exit.i.for.inc.i_crit_edge

dsa_is_cpu_port.exit.i.for.inc.i_crit_edge:       ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %dsa_is_cpu_port.exit.i
  %31 = ptrtoint ptr %cpu_ports.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu_ports.i, align 4
  %shl.i = shl nuw i32 1, %i.0149.i
  %and.i = and i32 %32, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %cpu_port.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0149.i, ptr %cpu_port.i, align 4
  %34 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ports.i, align 4
  %36 = ptrtoint ptr %phy_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_port_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %i.0149.i)
  %cmp.i106.i = icmp sgt i32 %37, %i.0149.i
  br i1 %cmp.i106.i, label %if.then.i.ksz9477_get_interface.exit.i_crit_edge, label %if.end.i.i28

if.then.i.ksz9477_get_interface.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_get_interface.exit.i

if.end.i.i28:                                     ; preds = %if.then.i
  %38 = ptrtoint ptr %dev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_ops.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i.i.i = call i32 %41(i32 noundef %i.0149.i, i32 noundef 769) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #8
  %42 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %value.i.i.i.i, align 4, !annotation !189
  %43 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %call.i.i.i, ptr noundef nonnull %value.i.i.i.i) #8
  %45 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %46 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #8
  %47 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %features.i.i.i, align 4
  %and.i.i.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %49 = and i8 %conv.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool2.not.i.i.i = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %extract.t11.i.i.i = icmp ne i8 %49, 0
  %gbit.0.off0.i.i.i = select i1 %tobool.not.i.i.i, i1 %extract.t11.i.i.i, i1 %tobool2.not.i.i.i
  %50 = and i32 %46, 3
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i28
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %50, label %if.then.i.i.i.sw.default.i.i_crit_edge [
    i32 3, label %if.then.i.i.i.sw.bb4.i.i_crit_edge
    i32 1, label %if.then.i.i.i.ksz9477_get_interface.exit.i_crit_edge
    i32 2, label %if.then.i.i.i.sw.bb.i.i_crit_edge
  ]

if.then.i.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.then.i.i.i.ksz9477_get_interface.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_get_interface.exit.i

if.then.i.i.i.sw.bb4.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i.i

if.then.i.i.i.sw.default.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i28
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %50, label %if.else.i.i.i.sw.default.i.i_crit_edge [
    i32 0, label %if.else.i.i.i.sw.bb4.i.i_crit_edge
    i32 1, label %if.else.i.i.i.ksz9477_get_interface.exit.i_crit_edge
    i32 2, label %if.else.i.i.i.sw.bb.i.i_crit_edge
  ]

if.else.i.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.else.i.i.i.ksz9477_get_interface.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_get_interface.exit.i

if.else.i.i.i.sw.bb4.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i.i

if.else.i.i.i.sw.default.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.else.i.i.i.sw.bb.i.i_crit_edge, %if.then.i.i.i.sw.bb.i.i_crit_edge
  br i1 %gbit.0.off0.i.i.i, label %sw.bb.i.i.ksz9477_get_interface.exit.i_crit_edge, label %sw.bb.i.i.sw.bb4.i.i_crit_edge

sw.bb.i.i.sw.bb4.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i.i

sw.bb.i.i.ksz9477_get_interface.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_get_interface.exit.i

sw.bb4.i.i:                                       ; preds = %sw.bb.i.i.sw.bb4.i.i_crit_edge, %if.else.i.i.i.sw.bb4.i.i_crit_edge, %if.then.i.i.i.sw.bb4.i.i_crit_edge
  br label %ksz9477_get_interface.exit.i

sw.default.i.i:                                   ; preds = %if.else.i.i.i.sw.default.i.i_crit_edge, %if.then.i.i.i.sw.default.i.i_crit_edge
  %and.i.i = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool6.not.i.i, i32 9, i32 12
  %and10.i.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %spec.store.select22.i.i = select i1 %tobool6.not.i.i, i32 11, i32 10
  %spec.select.i.i = select i1 %tobool11.not.i.i, i32 %spec.store.select.i.i, i32 %spec.store.select22.i.i
  br label %ksz9477_get_interface.exit.i

ksz9477_get_interface.exit.i:                     ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb.i.i.ksz9477_get_interface.exit.i_crit_edge, %if.else.i.i.i.ksz9477_get_interface.exit.i_crit_edge, %if.then.i.i.i.ksz9477_get_interface.exit.i_crit_edge, %if.then.i.ksz9477_get_interface.exit.i_crit_edge
  %retval.0.i.i29 = phi i32 [ 0, %if.then.i.ksz9477_get_interface.exit.i_crit_edge ], [ 2, %sw.bb4.i.i ], [ 3, %sw.bb.i.i.ksz9477_get_interface.exit.i_crit_edge ], [ %spec.select.i.i, %sw.default.i.i ], [ 7, %if.then.i.i.i.ksz9477_get_interface.exit.i_crit_edge ], [ 7, %if.else.i.i.i.ksz9477_get_interface.exit.i_crit_edge ]
  %interface2.i = getelementptr %struct.ksz_port, ptr %35, i32 %i.0149.i, i32 5
  %53 = ptrtoint ptr %interface2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interface2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i = icmp eq i32 %54, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %ksz9477_get_interface.exit.i.if.end11.i_crit_edge

ksz9477_get_interface.exit.i.if.end11.i_crit_edge: ; preds = %ksz9477_get_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then4.i:                                       ; preds = %ksz9477_get_interface.exit.i
  %55 = ptrtoint ptr %compat_interface.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %compat_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.not.i = icmp eq i32 %56, 0
  br i1 %tobool5.not.i, label %if.then4.i.if.end11.sink.split.i_crit_edge, label %do.end.i

if.then4.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev7.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.16, i32 noundef %i.0149.i) #11
  %59 = ptrtoint ptr %compat_interface.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %compat_interface.i, align 4
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %do.end.i, %if.then4.i.if.end11.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %60, %do.end.i ], [ %retval.0.i.i29, %if.then4.i.if.end11.sink.split.i_crit_edge ]
  %61 = ptrtoint ptr %interface2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink.i, ptr %interface2.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %ksz9477_get_interface.exit.i.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i29)
  %tobool12.not.i = icmp eq i32 %retval.0.i.i29, 0
  %62 = ptrtoint ptr %interface2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr.i = load i32, ptr %interface2.i, align 8
  br i1 %tobool12.not.i, label %if.end11.i.do.end22.i_crit_edge, label %land.lhs.true13.i

if.end11.i.do.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

land.lhs.true13.i:                                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i29, i32 %.pr.i)
  %cmp15.not.i = icmp eq i32 %retval.0.i.i29, %.pr.i
  br i1 %cmp15.not.i, label %land.lhs.true13.i.do.end22.i_crit_edge, label %if.then16.i

land.lhs.true13.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

if.then16.i:                                      ; preds = %land.lhs.true13.i
  %63 = zext i32 %retval.0.i.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %retval.0.i.i29, label %sw.default.i108.i [
    i32 12, label %sw.bb12.i.i
    i32 1, label %if.then16.i.do.end22.i_crit_edge
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 4, label %sw.bb4.i107.i
    i32 5, label %sw.bb5.i.i
    i32 6, label %sw.bb6.i.i
    i32 7, label %sw.bb7.i.i
    i32 8, label %sw.bb8.i.i
    i32 9, label %sw.bb9.i.i
    i32 10, label %sw.bb10.i.i
    i32 11, label %sw.bb11.i.i
  ]

if.then16.i.do.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb2.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb3.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb4.i107.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb5.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb6.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb7.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb8.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb9.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb10.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb11.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.bb12.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

sw.default.i108.i:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %sw.default.i108.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i107.i, %sw.bb3.i.i, %sw.bb2.i.i, %if.then16.i.do.end22.i_crit_edge, %land.lhs.true13.i.do.end22.i_crit_edge, %if.end11.i.do.end22.i_crit_edge
  %64 = phi i32 [ %.pr.i, %sw.default.i108.i ], [ %.pr.i, %sw.bb12.i.i ], [ %.pr.i, %sw.bb11.i.i ], [ %.pr.i, %sw.bb10.i.i ], [ %.pr.i, %sw.bb9.i.i ], [ %.pr.i, %sw.bb8.i.i ], [ %.pr.i, %sw.bb7.i.i ], [ %.pr.i, %sw.bb6.i.i ], [ %.pr.i, %sw.bb5.i.i ], [ %.pr.i, %sw.bb4.i107.i ], [ %.pr.i, %sw.bb3.i.i ], [ %.pr.i, %sw.bb2.i.i ], [ %retval.0.i.i29, %land.lhs.true13.i.do.end22.i_crit_edge ], [ %.pr.i, %if.then16.i.do.end22.i_crit_edge ], [ %.pr.i, %if.end11.i.do.end22.i_crit_edge ]
  %prev_msg.0.i = phi ptr [ @.str.19, %sw.default.i108.i ], [ @.str.19, %sw.bb12.i.i ], [ @.str.19, %sw.bb11.i.i ], [ @.str.19, %sw.bb10.i.i ], [ @.str.19, %sw.bb9.i.i ], [ @.str.19, %sw.bb8.i.i ], [ @.str.19, %sw.bb7.i.i ], [ @.str.19, %sw.bb6.i.i ], [ @.str.19, %sw.bb5.i.i ], [ @.str.19, %sw.bb4.i107.i ], [ @.str.19, %sw.bb3.i.i ], [ @.str.19, %sw.bb2.i.i ], [ @.str.20, %land.lhs.true13.i.do.end22.i_crit_edge ], [ @.str.19, %if.then16.i.do.end22.i_crit_edge ], [ @.str.20, %if.end11.i.do.end22.i_crit_edge ]
  %prev_mode.0.i = phi ptr [ @.str.53, %sw.default.i108.i ], [ @.str.35, %sw.bb12.i.i ], [ @.str.34, %sw.bb11.i.i ], [ @.str.33, %sw.bb10.i.i ], [ @.str.32, %sw.bb9.i.i ], [ @.str.31, %sw.bb8.i.i ], [ @.str.30, %sw.bb7.i.i ], [ @.str.29, %sw.bb6.i.i ], [ @.str.28, %sw.bb5.i.i ], [ @.str.27, %sw.bb4.i107.i ], [ @.str.26, %sw.bb3.i.i ], [ @.str.25, %sw.bb2.i.i ], [ @.str.20, %land.lhs.true13.i.do.end22.i_crit_edge ], [ @.str.24, %if.then16.i.do.end22.i_crit_edge ], [ @.str.20, %if.end11.i.do.end22.i_crit_edge ]
  %65 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %64)
  %67 = icmp ult i32 %64, 30
  br i1 %67, label %switch.lookup, label %do.end22.i.phy_modes.exit141.i_crit_edge

do.end22.i.phy_modes.exit141.i_crit_edge:         ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %phy_modes.exit141.i

switch.lookup:                                    ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.ksz9477_setup, i32 0, i32 %64
  %68 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit141.i

phy_modes.exit141.i:                              ; preds = %switch.lookup, %do.end22.i.phy_modes.exit141.i_crit_edge
  %retval.0.i140.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.53, %do.end22.i.phy_modes.exit141.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.22, i32 noundef %i.0149.i, ptr noundef nonnull %retval.0.i140.i, ptr noundef nonnull %prev_msg.0.i, ptr noundef nonnull %prev_mode.0.i) #11
  call void @ksz9477_port_setup(ptr noundef %18, i32 noundef %i.0149.i, i1 noundef zeroext true) #8
  %on.i = getelementptr %struct.ksz_port, ptr %35, i32 %i.0149.i, i32 3
  %69 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %on.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %on.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %phy_modes.exit141.i, %land.lhs.true.i.for.inc.i_crit_edge, %dsa_is_cpu_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0149.i, 1
  %70 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %71
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.cond27.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body30.i:                                     ; preds = %for.inc59.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %i.1153.i = phi i32 [ 0, %for.body30.lr.ph.i ], [ %inc60.i, %for.inc59.i.for.body30.i_crit_edge ]
  %72 = ptrtoint ptr %cpu_port.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu_port.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1153.i, i32 %73)
  %cmp32.i = icmp eq i32 %i.1153.i, %73
  br i1 %cmp32.i, label %for.body30.i.for.inc59.i_crit_edge, label %if.end34.i

for.body30.i.for.inc59.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i

if.end34.i:                                       ; preds = %for.body30.i
  %74 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ports.i, align 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 4
  %ports.i.i = getelementptr inbounds %struct.ksz_device, ptr %77, i32 0, i32 28
  %78 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ports.i.i, align 4
  %dev_ops.i.i143.i = getelementptr inbounds %struct.ksz_device, ptr %77, i32 0, i32 7
  %80 = ptrtoint ptr %dev_ops.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_ops.i.i143.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call.i.i144.i = call i32 %83(i32 noundef %i.1153.i, i32 noundef 2820) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i142.i) #8
  %84 = ptrtoint ptr %value.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %value.i.i.i142.i, align 4, !annotation !189
  %regmap.i.i.i145.i = getelementptr inbounds %struct.ksz_device, ptr %77, i32 0, i32 9
  %85 = ptrtoint ptr %regmap.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i.i.i145.i, align 4
  %call.i.i.i146.i = call i32 @regmap_read(ptr noundef %86, i32 noundef %call.i.i144.i, ptr noundef nonnull %value.i.i.i142.i) #8
  %87 = ptrtoint ptr %value.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %value.i.i.i142.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i142.i) #8
  %89 = and i32 %88, 248
  %90 = or i32 %89, 1
  %91 = ptrtoint ptr %dev_ops.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_ops.i.i143.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %call.i36.i.i = call i32 %94(i32 noundef %i.1153.i, i32 noundef 2820) #8
  %95 = ptrtoint ptr %regmap.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i.i.i145.i, align 4
  %call.i.i39.i.i = call i32 @regmap_write(ptr noundef %96, i32 noundef %call.i36.i.i, i32 noundef %90) #8
  %stp_state.i.i = getelementptr %struct.ksz_port, ptr %79, i32 %i.1153.i, i32 1
  %97 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %stp_state.i.i, align 4
  call void @ksz_update_port_member(ptr noundef %77, i32 noundef %i.1153.i) #8
  %on37.i = getelementptr %struct.ksz_port, ptr %75, i32 %i.1153.i, i32 3
  %98 = ptrtoint ptr %on37.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load38.i = load i8, ptr %on37.i, align 8
  %bf.set40.i = or i8 %bf.load38.i, -128
  store i8 %bf.set40.i, ptr %on37.i, align 8
  %99 = ptrtoint ptr %phy_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %phy_port_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1153.i, i32 %100)
  %cmp41.i = icmp slt i32 %i.1153.i, %100
  br i1 %cmp41.i, label %if.then42.i, label %if.end34.i.if.end46.i_crit_edge

if.end34.i.if.end46.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set45.i = or i8 %bf.load38.i, -64
  %101 = ptrtoint ptr %on37.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %bf.set45.i, ptr %on37.i, align 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end34.i.if.end46.i_crit_edge
  %102 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9729792, i32 %103)
  %cmp47.i = icmp eq i32 %103, 9729792
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1153.i)
  %cmp49.i = icmp eq i32 %i.1153.i, 6
  %or.cond.i = select i1 %cmp47.i, i1 %cmp49.i, i1 false
  br i1 %or.cond.i, label %if.then50.i, label %if.end46.i.for.inc59.i_crit_edge

if.end46.i.for.inc59.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %on37.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load51.i = load i8, ptr %on37.i, align 8
  %bf.set53.i = and i8 %bf.load51.i, -81
  %bf.clear56.i = or i8 %bf.set53.i, 16
  store i8 %bf.clear56.i, ptr %on37.i, align 8
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %if.then50.i, %if.end46.i.for.inc59.i_crit_edge, %for.body30.i.for.inc59.i_crit_edge
  %inc60.i = add nuw nsw i32 %i.1153.i, 1
  %105 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_cnt.i, align 4
  %cmp29.i = icmp slt i32 %inc60.i, %106
  br i1 %cmp29.i, label %for.inc59.i.for.body30.i_crit_edge, label %for.inc59.i.ksz9477_config_cpu_port.exit_crit_edge

for.inc59.i.ksz9477_config_cpu_port.exit_crit_edge: ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ksz9477_config_cpu_port.exit

for.inc59.i.for.body30.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

ksz9477_config_cpu_port.exit:                     ; preds = %for.inc59.i.ksz9477_config_cpu_port.exit_crit_edge, %for.cond27.preheader.i.ksz9477_config_cpu_port.exit_crit_edge, %if.end.ksz9477_config_cpu_port.exit_crit_edge
  %107 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i, align 4
  %call.i.i31 = call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 817, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 4
  %call.i.i33 = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 821, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  %call.i.i35 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 822, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %113 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i, align 4
  %call.i.i37 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 768, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @ksz_init_mib_timer(ptr noundef %1) #8
  %configure_vlan_while_not_filtering = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %115 = ptrtoint ptr %configure_vlan_while_not_filtering to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load = load i16, ptr %configure_vlan_while_not_filtering, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %configure_vlan_while_not_filtering, align 4
  br label %cleanup

cleanup:                                          ; preds = %ksz9477_config_cpu_port.exit, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %ksz9477_config_cpu_port.exit ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_phy_read16(ptr nocapture noundef readonly %ds, i32 noundef %addr, i32 noundef %reg) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.not = icmp sgt i32 %3, %addr
  br i1 %cmp.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %reg, label %if.then.if.end11_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 9, label %sw.bb6
    i32 10, label %sw.bb7
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ports = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %speed = getelementptr %struct.ksz_port, ptr %6, i32 %addr, i32 2, i32 8
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %8)
  %cmp8 = icmp eq i32 %8, 1000
  %spec.select = select i1 %cmp8, i32 14336, i32 0
  br label %if.end11

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %reg, 1
  %add = add i32 %shl, 256
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = tail call i32 %12(i32 noundef %addr, i32 noundef %add) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %16 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then.if.end11_crit_edge
  %val.0 = phi i32 [ %17, %if.else10 ], [ 65535, %if.then.if.end11_crit_edge ], [ 1792, %sw.bb6 ], [ 50657, %sw.bb5 ], [ 1505, %sw.bb4 ], [ 5681, %sw.bb3 ], [ 34, %sw.bb2 ], [ 31085, %sw.bb1 ], [ 4416, %sw.bb ], [ %spec.select, %sw.bb7 ]
  %conv = and i32 %val.0, 65535
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_phy_write16(ptr nocapture noundef readonly %ds, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy_port_cnt = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_port_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.not = icmp sgt i32 %3, %addr
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reg)
  %cmp1 = icmp eq i32 %reg, 9
  %or.cond = and i1 %cmp1, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %reg, 1
  %add = add i32 %shl, 256
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(i32 noundef %addr, i32 noundef %add) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %val to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %call.i, i32 noundef %conv.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_mac_link_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.05, 5
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %string = getelementptr [36 x %struct.anon.166], ptr @ksz9477_mib_names, i32 0, i32 %i.05, i32 1
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %string, i32 32)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_sset_count(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_enable_port(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz_port_bridge_join(ptr noundef, i32 noundef, [4 x i32], ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_port_bridge_leave(ptr noundef, i32 noundef, [4 x i32]) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 %7(i32 noundef %port, i32 noundef 2820) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %conv2 = zext i8 %state to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %13 = icmp ult i8 %state, 5
  br i1 %13, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef %conv2) #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i32 %12, 248
  %17 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ksz9477_port_stp_state_set, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %19 = or i32 %16, %switch.load
  %20 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_ops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i36 = call i32 %23(i32 noundef %port, i32 noundef 2820) #8
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i39 = call i32 @regmap_write(ptr noundef %25, i32 noundef %call.i36, i32 noundef %19) #8
  %stp_state = getelementptr %struct.ksz_port, ptr %3, i32 %port, i32 1
  %26 = ptrtoint ptr %stp_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv2, ptr %stp_state, align 4
  call void @ksz_update_port_member(ptr noundef %1, i32 noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_port_fast_age(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %flag, ptr nocapture noundef readnone %extack) #0 align 64 {
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
  br i1 %flag, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl i32 %port, 12
  %or.i = add i32 %add.i, 6912
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %or.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 784, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 784, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %add.i10 = shl i32 %port, 12
  %or.i12 = add i32 %add.i10, 6912
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %or.i12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_vlan_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %vlan_table = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vlan_table) #8
  %2 = getelementptr inbounds [3 x i32], ptr %vlan_table, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !189
  %4 = getelementptr inbounds [3 x i32], ptr %vlan_table, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !189
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid, align 2
  %call = call fastcc i32 @ksz9477_get_vlan_table(ptr noundef %1, i16 noundef zeroext %9, ptr noundef nonnull %vlan_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ksz9477_port_vlan_add.__msg) #8
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ksz9477_port_vlan_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %11 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  %12 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid, align 2
  %14 = and i16 %13, 127
  %and7 = zext i16 %14 to i32
  %or = or i32 %and7, -2147483648
  %15 = ptrtoint ptr %vlan_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %vlan_table, align 4
  %shl12 = shl nuw i32 1, %port
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %or11 = or i32 %17, %shl12
  br label %if.end15

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl12, -1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %and14 = and i32 %19, %neg
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ %and14, %if.else ], [ %or11, %if.then9 ]
  %cpu_port = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu_port, align 4
  %shl16 = shl nuw i32 1, %21
  %neg17 = xor i32 %shl16, -1
  %and19 = and i32 %storemerge, %neg17
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and19, ptr %2, align 4
  %or23 = or i32 %shl16, %shl12
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %or25 = or i32 %or23, %24
  store i32 %or25, ptr %4, align 4
  %call28 = call fastcc i32 @ksz9477_set_vlan_table(ptr noundef %1, i16 noundef zeroext %13, ptr noundef nonnull %vlan_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end39, label %do.body31

do.body31:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ksz9477_port_vlan_add.__msg.56) #8
  %tobool33.not = icmp eq ptr %extack, null
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %if.then34

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ksz9477_port_vlan_add.__msg.56, ptr %extack, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end15
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 4
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool43.not = icmp eq i16 %28, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.then44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid, align 2
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i = tail call i32 %34(i32 noundef %port, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %30 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %call.i, i32 noundef %conv.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end39.cleanup_crit_edge, %if.then34, %do.body31.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call, %do.body.cleanup_crit_edge ], [ %call28, %if.then34 ], [ %call28, %do.body31.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vlan_table) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %vlan_table = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vlan_table) #8
  %4 = ptrtoint ptr %vlan_table to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vlan_table, align 4, !annotation !189
  %5 = getelementptr inbounds [3 x i32], ptr %vlan_table, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !189
  %7 = getelementptr inbounds [3 x i32], ptr %vlan_table, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !189
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = tail call i32 %12(i32 noundef %port, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %arrayidx.i.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %16 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %18 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vid, align 2
  %call = call fastcc i32 @ksz9477_get_vlan_table(ptr noundef %1, i16 noundef zeroext %19, ptr noundef nonnull %vlan_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_vlan_del, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !191

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug500, ptr noundef %21, ptr noundef nonnull @.str.62) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %conv.i.i = trunc i32 %17 to i16
  %22 = and i16 %conv.i.i, 4095
  %23 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not = icmp eq i16 %23, 0
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %and13 = and i32 %25, %neg
  store i32 %and13, ptr %7, align 4
  %26 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %27)
  %cmp = icmp eq i16 %22, %27
  %spec.select = select i1 %cmp, i16 1, i16 %22
  br i1 %tobool.not, label %if.end12.if.end26_crit_edge, label %if.then21

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %and25 = and i32 %29, %neg
  store i32 %and25, ptr %5, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end12.if.end26_crit_edge
  %call29 = call fastcc i32 @ksz9477_set_vlan_table(ptr noundef %1, i16 noundef zeroext %27, ptr noundef nonnull %vlan_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end49, label %do.body32

do.body32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_vlan_del, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !191

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug501, ptr noundef %31, ptr noundef nonnull @.str.63) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_ops.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i68 = call i32 %35(i32 noundef %port, i32 noundef 0) #8
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i70 = zext i16 %spec.select to i32
  %call.i.i71 = call i32 @regmap_write(ptr noundef %37, i32 noundef %call.i68, i32 noundef %conv.i.i70) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then44, %do.body32, %if.then10, %do.body
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -110, %if.then10 ], [ -110, %if.then44 ], [ -110, %do.body ], [ -110, %do.body32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vlan_table) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  %value.i19.i = alloca i32, align 4
  %value.i16.i = alloca i32, align 4
  %value.i13.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %conv = zext i16 %vid to i32
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv1 = zext i8 %3 to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %arrayidx3 = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %or = or i32 %shl, %conv4
  %or5 = or i32 %or, %shl2
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1040, i32 noundef %or5) #8
  %arrayidx6 = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl8 = shl nuw i32 %conv7, 24
  %arrayidx9 = getelementptr i8, ptr %addr, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %arrayidx13 = getelementptr i8, ptr %addr, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %arrayidx16 = getelementptr i8, ptr %addr, i32 5
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %or18 = or i32 %shl11, %shl8
  %or12 = or i32 %or18, %conv17
  %or19 = or i32 %or12, %shl15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i123 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1044, i32 noundef %or19) #8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i125 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1048, i32 noundef 130) #8
  %call22 = tail call fastcc i32 @ksz9477_wait_alu_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end29, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_fdb_add, %if.then27)) #8
          to label %exit [label %if.then27], !srcloc !191

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug502, ptr noundef %21, ptr noundef nonnull @.str.65) #8
  br label %exit

if.end29:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %22 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 1056, ptr noundef nonnull %value.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i13.i) #8
  %25 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %value.i13.i, align 4, !annotation !189
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i15.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 1060, ptr noundef nonnull %value.i13.i) #8
  %28 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i13.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i16.i) #8
  %30 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %value.i16.i, align 4, !annotation !189
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 1064, ptr noundef nonnull %value.i16.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i19.i) #8
  %33 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %value.i19.i, align 4, !annotation !189
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call.i21.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 1068, ptr noundef nonnull %value.i19.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i19.i) #8
  %shl31 = shl nuw i32 1, %port
  %or33 = or i32 %29, %shl31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool34.not = icmp eq i16 %vid, 0
  %or37 = or i32 %or33, 1073741824
  %spec.select = select i1 %tobool34.not, i32 %or33, i32 %or37
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr, align 1
  %conv43 = zext i8 %37 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %38 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx3, align 1
  %conv46 = zext i8 %39 to i32
  %or47 = or i32 %shl, %conv46
  %or49 = or i32 %or47, %shl44
  %40 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6, align 1
  %conv51 = zext i8 %41 to i32
  %shl52 = shl nuw i32 %conv51, 24
  %42 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9, align 1
  %conv54 = zext i8 %43 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %44 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx13, align 1
  %conv59 = zext i8 %45 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %46 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx16, align 1
  %conv62 = zext i8 %47 to i32
  %or63 = or i32 %shl55, %shl52
  %or56 = or i32 %or63, %conv62
  %or65 = or i32 %or56, %shl60
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i127 = call i32 @regmap_write(ptr noundef %49, i32 noundef 1056, i32 noundef -2147483648) #8
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 1060, i32 noundef %spec.select) #8
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %call.i16.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 1064, i32 noundef %or49) #8
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i131 = call i32 @regmap_write(ptr noundef %55, i32 noundef 1068, i32 noundef %or65) #8
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %call.i133 = call i32 @regmap_write(ptr noundef %57, i32 noundef 1048, i32 noundef 129) #8
  %call68 = call fastcc i32 @ksz9477_wait_alu_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end29.exit_crit_edge, label %do.body71

if.end29.exit_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.body71:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_fdb_add, %if.then83)) #8
          to label %exit [label %if.then83], !srcloc !191

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %dev84 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev84, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug503, ptr noundef %59, ptr noundef nonnull @.str.66) #8
  br label %exit

exit:                                             ; preds = %if.then83, %do.body71, %if.end29.exit_crit_edge, %if.then27, %do.body
  %ret.0 = phi i32 [ %call22, %if.then27 ], [ %call68, %if.then83 ], [ 0, %if.end29.exit_crit_edge ], [ %call22, %do.body ], [ %call68, %do.body71 ]
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  %value.i120 = alloca i32, align 4
  %value.i117 = alloca i32, align 4
  %value.i114 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %conv = zext i16 %vid to i32
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv1 = zext i8 %3 to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %arrayidx3 = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %or = or i32 %shl2, %conv4
  %or5 = or i32 %or, %shl
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1040, i32 noundef %or5) #8
  %arrayidx6 = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl8 = shl nuw i32 %conv7, 24
  %arrayidx9 = getelementptr i8, ptr %addr, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %arrayidx13 = getelementptr i8, ptr %addr, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %arrayidx16 = getelementptr i8, ptr %addr, i32 5
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %or18 = or i32 %shl11, %shl8
  %or12 = or i32 %or18, %conv17
  %or19 = or i32 %or12, %shl15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i109 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1044, i32 noundef %or19) #8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i111 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1048, i32 noundef 130) #8
  %call22 = tail call fastcc i32 @ksz9477_wait_alu_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end29, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_fdb_del, %if.then27)) #8
          to label %exit [label %if.then27], !srcloc !191

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug504, ptr noundef %21, ptr noundef nonnull @.str.65) #8
  br label %exit

if.end29:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %value.i, align 4, !annotation !189
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call.i113 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1056, ptr noundef nonnull %value.i) #8
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool33.not = icmp sgt i32 %26, -1
  br i1 %tobool33.not, label %if.end29.if.end57_crit_edge, label %if.then34

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then34:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i114) #8
  %27 = ptrtoint ptr %value.i114 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %value.i114, align 4, !annotation !189
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %call.i116 = call i32 @regmap_read(ptr noundef %29, i32 noundef 1060, ptr noundef nonnull %value.i114) #8
  %30 = ptrtoint ptr %value.i114 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i114) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i117) #8
  %32 = ptrtoint ptr %value.i117 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %value.i117, align 4, !annotation !189
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %call.i119 = call i32 @regmap_read(ptr noundef %34, i32 noundef 1064, ptr noundef nonnull %value.i117) #8
  %35 = ptrtoint ptr %value.i117 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i117) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i120) #8
  %37 = ptrtoint ptr %value.i120 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %value.i120, align 4, !annotation !189
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %call.i122 = call i32 @regmap_read(ptr noundef %39, i32 noundef 1068, ptr noundef nonnull %value.i120) #8
  %40 = ptrtoint ptr %value.i120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value.i120, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i120) #8
  %shl41 = shl nuw i32 1, %port
  %neg = xor i32 %shl41, -1
  %and43 = and i32 %36, %neg
  %and45 = and i32 %and43, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp = icmp eq i32 %and45, 0
  br i1 %cmp, label %if.then47, label %if.then34.if.end57_crit_edge

if.then34.if.end57_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then47:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %if.then47, %if.then34.if.end57_crit_edge, %if.end29.if.end57_crit_edge
  %alu_table.sroa.20.0 = phi i32 [ 0, %if.then47 ], [ %41, %if.then34.if.end57_crit_edge ], [ 0, %if.end29.if.end57_crit_edge ]
  %alu_table.sroa.13.0 = phi i32 [ 0, %if.then47 ], [ %and43, %if.then34.if.end57_crit_edge ], [ 0, %if.end29.if.end57_crit_edge ]
  %alu_table.sroa.8.0 = phi i32 [ 0, %if.then47 ], [ %31, %if.then34.if.end57_crit_edge ], [ 0, %if.end29.if.end57_crit_edge ]
  %alu_table.sroa.0.0 = phi i32 [ 0, %if.then47 ], [ %26, %if.then34.if.end57_crit_edge ], [ 0, %if.end29.if.end57_crit_edge ]
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 1056, i32 noundef %alu_table.sroa.0.0) #8
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 1060, i32 noundef %alu_table.sroa.8.0) #8
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %call.i16.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 1064, i32 noundef %alu_table.sroa.13.0) #8
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 1068, i32 noundef %alu_table.sroa.20.0) #8
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %call.i124 = call i32 @regmap_write(ptr noundef %51, i32 noundef 1048, i32 noundef 129) #8
  %call59 = call fastcc i32 @ksz9477_wait_alu_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.exit_crit_edge, label %do.body62

if.end57.exit_crit_edge:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.body62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_fdb_del, %if.then74)) #8
          to label %exit [label %if.then74], !srcloc !191

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev75, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug505, ptr noundef %53, ptr noundef nonnull @.str.66) #8
  br label %exit

exit:                                             ; preds = %if.then74, %do.body62, %if.end57.exit_crit_edge, %if.then27, %do.body
  %ret.0 = phi i32 [ %call22, %if.then27 ], [ %call59, %if.then74 ], [ 0, %if.end57.exit_crit_edge ], [ %call22, %do.body ], [ %call59, %do.body62 ]
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #0 align 64 {
entry:
  %value.i19.i = alloca i32, align 4
  %value.i16.i = alloca i32, align 4
  %value.i13.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  %alu = alloca %struct.alu_struct, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %alu) #8
  %2 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1
  %3 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.alu_struct, ptr %alu, i32 0, i32 1, i32 5
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  %8 = call ptr @memset(ptr %alu, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 1048, i32 noundef 131) #8
  %shl = shl nuw i32 1, %port
  %bf.cast = and i32 %shl, 127
  br label %do.body1

do.body1:                                         ; preds = %do.body1.backedge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %timeout.0.be, %do.body1.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i, align 4, !annotation !189
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i51 = call i32 @regmap_read(ptr noundef %13, i32 noundef 1048, ptr noundef nonnull %value.i) #8
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %16 = and i32 %15, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %16)
  %.not = icmp eq i32 %16, 128
  br i1 %.not, label %if.end, label %do.end

if.end:                                           ; preds = %do.body1
  call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #8
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %if.end.do.body1.backedge_crit_edge

if.end.do.body1.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.backedge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body1.backedge:                                ; preds = %do.cond36.do.body1.backedge_crit_edge, %if.then21.do.body1.backedge_crit_edge, %if.end.do.body1.backedge_crit_edge
  %timeout.0.be = phi i32 [ %dec, %if.end.do.body1.backedge_crit_edge ], [ 1000, %do.cond36.do.body1.backedge_crit_edge ], [ 1000, %if.then21.do.body1.backedge_crit_edge ]
  br label %do.body1

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool5.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool5.not, label %do.body7, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_fdb_dump.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_fdb_dump, %if.then12)) #8
          to label %exit [label %if.then12], !srcloc !191

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_port_fdb_dump.__UNIQUE_ID_ddebug506, ptr noundef %18, ptr noundef nonnull @.str.69) #8
  br label %exit

if.end17:                                         ; preds = %do.end.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %tobool4.not70.in = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool4.not70.in)
  %tobool4.not70 = icmp eq i32 %tobool4.not70.in, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %19 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 1056, ptr noundef nonnull %value.i.i) #8
  %22 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i13.i) #8
  %24 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %value.i13.i, align 4, !annotation !189
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call.i15.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 1060, ptr noundef nonnull %value.i13.i) #8
  %27 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.i13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i13.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i16.i) #8
  %29 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %value.i16.i, align 4, !annotation !189
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 1064, ptr noundef nonnull %value.i16.i) #8
  %32 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.i16.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i19.i) #8
  %34 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %value.i19.i, align 4, !annotation !189
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call.i21.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 1068, ptr noundef nonnull %value.i19.i) #8
  %37 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i19.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i19.i) #8
  %.lobit.i = lshr i32 %23, 31
  %39 = zext i32 %.lobit.i to i80
  %40 = ptrtoint ptr %alu to i32
  call void @__asan_loadN_noabort(i32 %40, i32 10)
  %bf.load.i = load i80, ptr %alu, align 8
  %bf.shl.i = shl nuw i80 %39, 79
  %bf.clear.i = and i80 %bf.load.i, 18889463750047503024000
  %bf.set.i = or i80 %bf.clear.i, %bf.shl.i
  %and3.i = lshr i32 %23, 30
  %41 = trunc i32 %and3.i to i8
  %42 = and i8 %41, 1
  %bf.value11.i = zext i8 %42 to i80
  %bf.shl12.i = shl nuw nsw i80 %bf.value11.i, 78
  %bf.set14.i = or i80 %bf.set.i, %bf.shl12.i
  %and17.i = lshr i32 %23, 29
  %43 = trunc i32 %and17.i to i8
  %44 = and i8 %43, 1
  %bf.value25.i = zext i8 %44 to i80
  %bf.shl26.i = shl nuw nsw i80 %bf.value25.i, 77
  %bf.set28.i = or i80 %bf.set14.i, %bf.shl26.i
  %shr.i = lshr i32 %23, 26
  %45 = trunc i32 %shr.i to i8
  %46 = and i8 %45, 7
  %bf.value34.i = zext i8 %46 to i80
  %bf.shl35.i = shl nuw nsw i80 %bf.value34.i, 74
  %bf.set37.i = or i80 %bf.set28.i, %bf.shl35.i
  %47 = trunc i32 %23 to i8
  %48 = and i8 %47, 7
  %bf.value43.i = zext i8 %48 to i80
  %bf.shl44.i = shl nuw nsw i80 %bf.value43.i, 48
  %.lobit155.i = lshr i32 %28, 31
  %49 = zext i32 %.lobit155.i to i80
  %bf.shl58.i = shl nuw nsw i80 %49, 47
  %and63.i = lshr i32 %28, 30
  %50 = trunc i32 %and63.i to i8
  %51 = and i8 %50, 1
  %bf.value71.i = zext i8 %51 to i80
  %bf.shl72.i = shl nuw nsw i80 %bf.value71.i, 46
  %52 = shl i32 %28, 16
  %53 = and i32 %52, 8323072
  %bf.shl81.i = zext i32 %53 to i80
  %shr86.i = lshr i32 %33, 16
  %54 = and i32 %shr86.i, 127
  %bf.value90.i = zext i32 %54 to i80
  %bf.clear59.i.masked.masked.masked = or i80 %bf.set37.i, %bf.shl44.i
  %bf.clear73.i.masked.masked = or i80 %bf.clear59.i.masked.masked.masked, %bf.shl58.i
  %bf.clear82.i.masked = or i80 %bf.shl72.i, %bf.shl81.i
  %bf.clear91.i = or i80 %bf.clear82.i.masked, %bf.clear73.i.masked.masked
  %bf.set92.i = or i80 %bf.clear91.i, %bf.value90.i
  store i80 %bf.set92.i, ptr %alu, align 8
  %shr95.i = lshr i32 %33, 8
  %conv97.i = trunc i32 %shr95.i to i8
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv97.i, ptr %2, align 2
  %conv101.i = trunc i32 %33 to i8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv101.i, ptr %3, align 1
  %shr105.i = lshr i32 %38, 24
  %conv107.i = trunc i32 %shr105.i to i8
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv107.i, ptr %4, align 4
  %shr111.i = lshr i32 %38, 16
  %conv113.i = trunc i32 %shr111.i to i8
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv113.i, ptr %5, align 1
  %shr117.i = lshr i32 %38, 8
  %conv119.i = trunc i32 %shr117.i to i8
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv119.i, ptr %6, align 2
  %conv124.i = trunc i32 %38 to i8
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv124.i, ptr %7, align 1
  %61 = trunc i80 %bf.clear91.i to i32
  %62 = lshr i32 %61, 16
  %and19 = and i32 %bf.cast, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.cond36, label %if.then21

if.then21:                                        ; preds = %if.end17
  %63 = trunc i80 %bf.set92.i to i8
  %bf.cast25 = and i8 %63, 127
  %conv26 = zext i8 %bf.cast25 to i16
  %tobool30 = icmp slt i80 %bf.set92.i, 0
  %call31 = call i32 %cb(ptr noundef %2, i16 noundef zeroext %conv26, i1 noundef zeroext %tobool30, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp ne i32 %call31, 0
  %brmerge = select i1 %tobool32.not, i1 true, i1 %tobool4.not70
  br i1 %brmerge, label %if.then21.exit_crit_edge, label %if.then21.do.body1.backedge_crit_edge

if.then21.do.body1.backedge_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.backedge

if.then21.exit_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.cond36:                                        ; preds = %if.end17
  br i1 %tobool4.not70, label %do.cond36.exit_crit_edge, label %do.cond36.do.body1.backedge_crit_edge

do.cond36.do.body1.backedge_crit_edge:            ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.backedge

do.cond36.exit_crit_edge:                         ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %do.cond36.exit_crit_edge, %if.then21.exit_crit_edge, %if.then12, %do.body7
  %ret.2 = phi i32 [ -110, %if.then12 ], [ -110, %do.body7 ], [ 0, %do.cond36.exit_crit_edge ], [ %call31, %if.then21.exit_crit_edge ]
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %call.i53 = call i32 @regmap_write(ptr noundef %65, i32 noundef 1048, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %alu) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_mdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #0 align 64 {
entry:
  %value.i19.i = alloca i32, align 4
  %value.i16.i = alloca i32, align 4
  %value.i13.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %or = or i32 %shl, %conv3
  %arrayidx5 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 2
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx9 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %arrayidx14 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 4
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %arrayidx18 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %or20 = or i32 %shl11, %shl7
  %or12 = or i32 %or20, %conv19
  %or21 = or i32 %or12, %shl16
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %num_statics = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_statics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp148 = icmp sgt i32 %15, 0
  br i1 %cmp148, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl23 = shl i32 %index.0149, 16
  %or25 = or i32 %shl23, 129
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 1052, i32 noundef %or25) #8
  %call26 = call fastcc i32 @ksz9477_wait_alu_sta_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end33, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_mdb_add, %exit.sink.split)) #8
          to label %exit [label %exit.sink.split], !srcloc !191

if.end33:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %18 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 1056, ptr noundef nonnull %value.i.i) #8
  %21 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i13.i) #8
  %23 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %value.i13.i, align 4, !annotation !189
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call.i15.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 1060, ptr noundef nonnull %value.i13.i) #8
  %26 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.i13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i13.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i16.i) #8
  %28 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i16.i, align 4, !annotation !189
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 1064, ptr noundef nonnull %value.i16.i) #8
  %31 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value.i16.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i19.i) #8
  %33 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %value.i19.i, align 4, !annotation !189
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call.i21.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 1068, ptr noundef nonnull %value.i19.i) #8
  %36 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i19.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool35.not = icmp sgt i32 %22, -1
  br i1 %tobool35.not, label %if.end33.for.end_crit_edge, label %if.then36

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then36:                                        ; preds = %if.end33
  %shr = lshr i32 %32, 16
  %38 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid, align 2
  %conv38 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv38)
  %cmp39 = icmp eq i32 %shr, %conv38
  %and42 = and i32 %32, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %or)
  %cmp43 = icmp eq i32 %and42, %or
  %or.cond = select i1 %cmp39, i1 %cmp43, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or21)
  %cmp47 = icmp eq i32 %37, %or21
  %or.cond145 = select i1 %or.cond, i1 %cmp47, i1 false
  br i1 %or.cond145, label %if.then36.for.end_crit_edge, label %for.inc

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.then36
  %inc = add nuw nsw i32 %index.0149, 1
  %40 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_statics, align 4
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then36.for.end_crit_edge, %if.end33.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %index.0149, %if.then36.for.end_crit_edge ], [ %index.0149, %if.end33.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %static_table.sroa.7.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %27, %if.then36.for.end_crit_edge ], [ %27, %if.end33.for.end_crit_edge ], [ %27, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_statics, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa, i32 %43)
  %cmp53 = icmp eq i32 %index.0.lcssa, %43
  br i1 %cmp53, label %for.end.exit_crit_edge, label %if.end56

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end56:                                         ; preds = %for.end
  %shl58 = shl nuw i32 1, %port
  %or60 = or i32 %static_table.sroa.7.1, %shl58
  %vid61 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %44 = ptrtoint ptr %vid61 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vid61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool62.not = icmp eq i16 %45, 0
  %or65 = or i32 %or60, 1073741824
  %spec.select = select i1 %tobool62.not, i32 %or60, i32 %or65
  %conv68 = zext i16 %45 to i32
  %shl69 = shl nuw i32 %conv68, 16
  %or72 = or i32 %shl69, %or
  %arrayidx.i.i131 = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i.i132 = call i32 @regmap_write(ptr noundef %47, i32 noundef 1056, i32 noundef -2147483648) #8
  %48 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 1060, i32 noundef %spec.select) #8
  %50 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i16.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 1064, i32 noundef %or72) #8
  %52 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i18.i136 = call i32 @regmap_write(ptr noundef %53, i32 noundef 1068, i32 noundef %or21) #8
  %shl75 = shl i32 %index.0.lcssa, 16
  %or76 = or i32 %shl75, 128
  %54 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i138 = call i32 @regmap_write(ptr noundef %55, i32 noundef 1052, i32 noundef %or76) #8
  %call78 = call fastcc i32 @ksz9477_wait_alu_sta_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end56.exit_crit_edge, label %do.body81

if.end56.exit_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.body81:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_mdb_add, %exit.sink.split)) #8
          to label %exit [label %exit.sink.split], !srcloc !191

exit.sink.split:                                  ; preds = %do.body81, %do.body
  %ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508.sink = phi ptr [ @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug507, %do.body ], [ @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508, %do.body81 ]
  %err.2.ph = phi i32 [ %call26, %do.body ], [ 0, %do.body81 ]
  call void @__sanitizer_cov_trace_pc() #10
  %dev94 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508.sink, ptr noundef %57, ptr noundef nonnull @.str.71) #8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %do.body81, %if.end56.exit_crit_edge, %for.end.exit_crit_edge, %do.body
  %err.2 = phi i32 [ 0, %if.end56.exit_crit_edge ], [ -28, %for.end.exit_crit_edge ], [ %call26, %do.body ], [ 0, %do.body81 ], [ %err.2.ph, %exit.sink.split ]
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_mdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #0 align 64 {
entry:
  %value.i19.i = alloca i32, align 4
  %value.i16.i = alloca i32, align 4
  %value.i13.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %or = or i32 %shl, %conv3
  %arrayidx5 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 2
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx9 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %arrayidx14 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 4
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %arrayidx18 = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %or20 = or i32 %shl11, %shl7
  %or12 = or i32 %or20, %conv19
  %or21 = or i32 %or12, %shl16
  %alu_mutex = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %alu_mutex, i32 noundef 0) #8
  %num_statics = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_statics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp141 = icmp sgt i32 %15, 0
  br i1 %cmp141, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl23 = shl i32 %index.0142, 16
  %or25 = or i32 %shl23, 129
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 1052, i32 noundef %or25) #8
  %call26 = call fastcc i32 @ksz9477_wait_alu_sta_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end33, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_mdb_del, %exit.sink.split)) #8
          to label %exit [label %exit.sink.split], !srcloc !191

if.end33:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %18 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 1056, ptr noundef nonnull %value.i.i) #8
  %21 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i13.i) #8
  %23 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %value.i13.i, align 4, !annotation !189
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call.i15.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 1060, ptr noundef nonnull %value.i13.i) #8
  %26 = ptrtoint ptr %value.i13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.i13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i13.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i16.i) #8
  %28 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i16.i, align 4, !annotation !189
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i18.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 1064, ptr noundef nonnull %value.i16.i) #8
  %31 = ptrtoint ptr %value.i16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value.i16.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i19.i) #8
  %33 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %value.i19.i, align 4, !annotation !189
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call.i21.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 1068, ptr noundef nonnull %value.i19.i) #8
  %36 = ptrtoint ptr %value.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i19.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool35.not = icmp sgt i32 %22, -1
  br i1 %tobool35.not, label %if.end33.for.inc_crit_edge, label %if.then36

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %if.end33
  %shr = lshr i32 %32, 16
  %38 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid, align 2
  %conv38 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv38)
  %cmp39 = icmp eq i32 %shr, %conv38
  %and42 = and i32 %32, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %or)
  %cmp43 = icmp eq i32 %and42, %or
  %or.cond = select i1 %cmp39, i1 %cmp43, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or21)
  %cmp47 = icmp eq i32 %37, %or21
  %or.cond138 = select i1 %or.cond, i1 %cmp47, i1 false
  br i1 %or.cond138, label %if.then36.for.end_crit_edge, label %if.then36.for.inc_crit_edge

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.then36.for.inc_crit_edge, %if.end33.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.0142, 1
  %40 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_statics, align 4
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then36.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %index.0142, %if.then36.for.end_crit_edge ]
  %static_table.sroa.18.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %37, %for.inc.for.end_crit_edge ], [ %or21, %if.then36.for.end_crit_edge ]
  %static_table.sroa.13.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %32, %if.then36.for.end_crit_edge ], [ %32, %for.inc.for.end_crit_edge ]
  %static_table.sroa.7.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %27, %if.then36.for.end_crit_edge ], [ %27, %for.inc.for.end_crit_edge ]
  %static_table.sroa.0.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %22, %if.then36.for.end_crit_edge ], [ %22, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %num_statics to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_statics, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa, i32 %43)
  %cmp53 = icmp eq i32 %index.0.lcssa, %43
  br i1 %cmp53, label %for.end.exit_crit_edge, label %if.end56

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end56:                                         ; preds = %for.end
  %shl57 = shl nuw i32 1, %port
  %neg = xor i32 %shl57, -1
  %and59 = and i32 %static_table.sroa.7.1, %neg
  %and61 = and i32 %and59, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end56.if.end69_crit_edge
  %static_table.sroa.18.2 = phi i32 [ 0, %if.then64 ], [ %static_table.sroa.18.1, %if.end56.if.end69_crit_edge ]
  %static_table.sroa.13.2 = phi i32 [ 0, %if.then64 ], [ %static_table.sroa.13.1, %if.end56.if.end69_crit_edge ]
  %static_table.sroa.7.2 = phi i32 [ 0, %if.then64 ], [ %and59, %if.end56.if.end69_crit_edge ]
  %static_table.sroa.0.2 = phi i32 [ 0, %if.then64 ], [ %static_table.sroa.0.1, %if.end56.if.end69_crit_edge ]
  %arrayidx.i.i124 = getelementptr %struct.ksz_device, ptr %1, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i124, align 4
  %call.i.i125 = call i32 @regmap_write(ptr noundef %45, i32 noundef 1056, i32 noundef %static_table.sroa.0.2) #8
  %46 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i124, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 1060, i32 noundef %static_table.sroa.7.2) #8
  %48 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i124, align 4
  %call.i16.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 1064, i32 noundef %static_table.sroa.13.2) #8
  %50 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i124, align 4
  %call.i18.i129 = call i32 @regmap_write(ptr noundef %51, i32 noundef 1068, i32 noundef %static_table.sroa.18.2) #8
  %shl71 = shl i32 %index.0.lcssa, 16
  %or72 = or i32 %shl71, 128
  %52 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i124, align 4
  %call.i131 = call i32 @regmap_write(ptr noundef %53, i32 noundef 1052, i32 noundef %or72) #8
  %call74 = call fastcc i32 @ksz9477_wait_alu_sta_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end69.exit_crit_edge, label %do.body77

if.end69.exit_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.body77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_port_mdb_del, %exit.sink.split)) #8
          to label %exit [label %exit.sink.split], !srcloc !191

exit.sink.split:                                  ; preds = %do.body77, %do.body
  %ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510.sink = phi ptr [ @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug509, %do.body ], [ @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510, %do.body77 ]
  %ret.2.ph = phi i32 [ %call26, %do.body ], [ %call74, %do.body77 ]
  call void @__sanitizer_cov_trace_pc() #10
  %dev90 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev90, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510.sink, ptr noundef %55, ptr noundef nonnull @.str.71) #8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %do.body77, %if.end69.exit_crit_edge, %for.end.exit_crit_edge, %do.body
  %ret.2 = phi i32 [ 0, %for.end.exit_crit_edge ], [ 0, %if.end69.exit_crit_edge ], [ %call26, %do.body ], [ %call74, %do.body77 ], [ %ret.2.ph, %exit.sink.split ]
  call void @mutex_unlock(ptr noundef %alu_mutex) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_port_mirror_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror, i1 noundef zeroext %ingress) #0 align 64 {
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
  %add.i = shl i32 %port, 12
  %or.i = add i32 %add.i, 6144
  br i1 %ingress, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %or.i, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %or.i, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regmap.i12 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i12, align 4
  %call.i.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %or.i, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mirror, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i12, align 4
  %add.i18 = shl nuw nsw i32 %conv, 12
  %or.i20 = add nuw nsw i32 %add.i18, 6144
  %call.i.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %or.i20, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i12, align 4
  %call.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 880, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_port_mirror_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror) #0 align 64 {
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
  %3 = load i8, ptr %ingress, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %regmap.i11 = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i11, align 4
  %add.i12 = shl i32 %port, 12
  %or.i14 = add i32 %add.i12, 6144
  %. = select i1 %tobool.not, i32 32, i32 64
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %or.i14, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dev_ops.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(i32 noundef %port, i32 noundef 2048) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #8
  %10 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %value.i.i, align 4, !annotation !189
  %regmap.i.i = getelementptr inbounds %struct.ksz_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i16 = call i32 @regmap_read(ptr noundef %12, i32 noundef %call.i, ptr noundef nonnull %value.i.i) #8
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #8
  %15 = and i32 %14, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %if.then2, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mirror, align 1
  %conv3 = zext i8 %17 to i32
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %add.i18 = shl nuw nsw i32 %conv3, 12
  %or.i20 = add nuw nsw i32 %add.i18, 6144
  %call.i.i21 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %or.i20, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_init_mib_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_update_port_member(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9477_get_vlan_table(ptr noundef %dev, i16 noundef zeroext %vid, ptr nocapture noundef writeonly %vlan_table) unnamed_addr #0 align 64 {
entry:
  %value.i36 = alloca i32, align 4
  %value.i33 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_mutex = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vlan_mutex, i32 noundef 0) #8
  %0 = and i16 %vid, 4095
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %0 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 1036, i32 noundef %conv.i) #8
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i30 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1038, i32 noundef 130) #8
  %call3 = tail call fastcc i32 @ksz9477_wait_vlan_ctrl_ready(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_get_vlan_table.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_get_vlan_table, %if.then8)) #8
          to label %exit [label %if.then8], !srcloc !191

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_get_vlan_table.__UNIQUE_ID_ddebug497, ptr noundef %6, ptr noundef nonnull @.str.58) #8
  br label %exit

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value.i, align 4, !annotation !189
  %arrayidx.i31 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i31, align 4
  %call.i32 = call i32 @regmap_read(ptr noundef %9, i32 noundef 1024, ptr noundef nonnull %value.i) #8
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value.i, align 4
  %12 = ptrtoint ptr %vlan_table to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vlan_table, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %arrayidx12 = getelementptr i32, ptr %vlan_table, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i33) #8
  %13 = ptrtoint ptr %value.i33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i33, align 4, !annotation !189
  %14 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i31, align 4
  %call.i35 = call i32 @regmap_read(ptr noundef %15, i32 noundef 1028, ptr noundef nonnull %value.i33) #8
  %16 = ptrtoint ptr %value.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i33, align 4
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i33) #8
  %arrayidx14 = getelementptr i32, ptr %vlan_table, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i36) #8
  %19 = ptrtoint ptr %value.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i36, align 4, !annotation !189
  %20 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i31, align 4
  %call.i38 = call i32 @regmap_read(ptr noundef %21, i32 noundef 1032, ptr noundef nonnull %value.i36) #8
  %22 = ptrtoint ptr %value.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i36, align 4
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i36) #8
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i40 = call i32 @regmap_write(ptr noundef %26, i32 noundef 1038, i32 noundef 0) #8
  br label %exit

exit:                                             ; preds = %if.end10, %if.then8, %do.body
  call void @mutex_unlock(ptr noundef %vlan_mutex) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9477_set_vlan_table(ptr noundef %dev, i16 noundef zeroext %vid, ptr nocapture noundef readonly %vlan_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_mutex = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vlan_mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %vlan_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlan_table, align 4
  %arrayidx.i = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1024, i32 noundef %1) #8
  %arrayidx1 = getelementptr i32, ptr %vlan_table, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i55 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1028, i32 noundef %5) #8
  %arrayidx3 = getelementptr i32, ptr %vlan_table, i32 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i57 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 1032, i32 noundef %9) #8
  %and = and i16 %vid, 4095
  %arrayidx.i58 = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i58, align 4
  %conv.i = zext i16 %and to i32
  %call.i59 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 1036, i32 noundef %conv.i) #8
  %regmap.i = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i60 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1038, i32 noundef 129) #8
  %call8 = tail call fastcc i32 @ksz9477_wait_vlan_ctrl_ready(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ksz9477_set_vlan_table.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ksz9477_set_vlan_table, %if.then13)) #8
          to label %exit [label %if.then13], !srcloc !191

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ksz9477_set_vlan_table.__UNIQUE_ID_ddebug498, ptr noundef %17, ptr noundef nonnull @.str.60) #8
  br label %exit

if.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %vid to i32
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i62 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1038, i32 noundef 0) #8
  %20 = ptrtoint ptr %vlan_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vlan_table, align 4
  %vlan_cache = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 27
  %22 = ptrtoint ptr %vlan_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vlan_cache, align 4
  %arrayidx18 = getelementptr %struct.vlan_table, ptr %23, i32 %conv
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx18, align 4
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1, align 4
  %27 = load ptr, ptr %vlan_cache, align 4
  %arrayidx25 = getelementptr %struct.vlan_table, ptr %27, i32 %conv, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %arrayidx25, align 4
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3, align 4
  %31 = load ptr, ptr %vlan_cache, align 4
  %arrayidx31 = getelementptr %struct.vlan_table, ptr %31, i32 %conv, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %arrayidx31, align 4
  br label %exit

exit:                                             ; preds = %if.end15, %if.then13, %do.body
  tail call void @mutex_unlock(ptr noundef %vlan_mutex) #8
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9477_wait_vlan_ctrl_ready(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !189
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 96) #8
  %regmap = getelementptr inbounds %struct.ksz_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call850 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1038, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call850)
  %tobool.not51 = icmp eq i32 %call850, 0
  br i1 %tobool.not51, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1038, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.lor.end_crit_edge

if.then22.lor.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1038, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and25 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %phi.sel = select i1 %tobool26.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then22.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool24.not41 = phi i32 [ %call19, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call850, %entry.lor.end_crit_edge ], [ %call8, %if.then22.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %tobool24.not41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9477_wait_alu_ready(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !189
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 183) #8
  %arrayidx = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call850 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1048, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call850)
  %tobool.not51 = icmp eq i32 %call850, 0
  br i1 %tobool.not51, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1048, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.lor.end_crit_edge

if.then22.lor.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call19 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1048, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and25 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %phi.sel = select i1 %tobool26.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then22.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool24.not41 = phi i32 [ %call19, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call850, %entry.lor.end_crit_edge ], [ %call8, %if.then22.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %tobool24.not41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9477_wait_alu_sta_ready(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !189
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 193) #8
  %arrayidx = getelementptr %struct.ksz_device, ptr %dev, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call850 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1052, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call850)
  %tobool.not51 = icmp eq i32 %call850, 0
  br i1 %tobool.not51, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1052, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.lor.end_crit_edge

if.then22.lor.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call19 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1052, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and25 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %phi.sel = select i1 %tobool26.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then22.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool24.not41 = phi i32 [ %call19, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call850, %entry.lor.end_crit_edge ], [ %call8, %if.then22.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %tobool24.not41
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !157, !158, !159, !161, !162, !163, !165, !167, !168, !170, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__ksymtab_ksz9477_switch_register, !1, !"__ksymtab_ksz9477_switch_register", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1586, i32 1}
!2 = !{ptr @__UNIQUE_ID_author512, !3, !"__UNIQUE_ID_author512", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1588, i32 1}
!4 = !{ptr @__UNIQUE_ID_description513, !5, !"__UNIQUE_ID_description513", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1589, i32 1}
!6 = !{ptr @__UNIQUE_ID_file514, !7, !"__UNIQUE_ID_file514", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1590, i32 1}
!8 = !{ptr @__UNIQUE_ID_license515, !7, !"__UNIQUE_ID_license515", i1 false, i1 false}
!9 = !{ptr @ksz9477_dev_ops, !10, !"ksz9477_dev_ops", i1 false, i1 false}
!10 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1545, i32 33}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 246, i32 8}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 251, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ksz9477_r_mib_cnt.__UNIQUE_ID_ddebug499, !14, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!18 = !{ptr @ksz9477_mib_names, !19, !"ksz9477_mib_names", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 28, i32 3}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1404, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ksz9477_switch_detect.__UNIQUE_ID_ddebug511, !21, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1409, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ksz9477_switch_detect._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ksz9477_switch_detect._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1417, i32 3}
!32 = !{ptr @ksz9477_switch_detect._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ksz9477_switch_detect._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ksz9477_switch_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1524, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ksz9477_switch_ops, !38, !"ksz9477_switch_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1341, i32 36}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1307, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ksz9477_setup._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @ksz9477_setup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1248, i32 6}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ksz9477_config_cpu_port._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @ksz9477_config_cpu_port._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1258, i32 16}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1261, i32 16}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1264, i32 4}
!57 = !{ptr @ksz9477_config_cpu_port._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ksz9477_config_cpu_port._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/phy.h", i32 213, i32 10}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/phy.h", i32 215, i32 10}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/phy.h", i32 217, i32 10}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/phy.h", i32 219, i32 10}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/phy.h", i32 221, i32 10}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/phy.h", i32 223, i32 10}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/phy.h", i32 225, i32 10}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 227, i32 10}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 229, i32 10}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 231, i32 10}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/phy.h", i32 233, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/phy.h", i32 235, i32 10}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/phy.h", i32 237, i32 10}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/phy.h", i32 239, i32 10}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/phy.h", i32 241, i32 10}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/phy.h", i32 243, i32 10}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/phy.h", i32 245, i32 10}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/phy.h", i32 247, i32 10}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/phy.h", i32 249, i32 10}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/phy.h", i32 251, i32 10}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/phy.h", i32 253, i32 10}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/phy.h", i32 255, i32 10}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/phy.h", i32 257, i32 10}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/phy.h", i32 259, i32 10}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/phy.h", i32 261, i32 10}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/phy.h", i32 263, i32 10}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/phy.h", i32 265, i32 10}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/phy.h", i32 267, i32 10}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/phy.h", i32 269, i32 10}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/phy.h", i32 271, i32 10}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 423, i32 3}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ksz9477_port_stp_state_set._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ksz9477_port_stp_state_set._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ksz9477_port_vlan_add.__msg, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 485, i32 3}
!126 = !{ptr @ksz9477_port_vlan_add.__msg.56, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 500, i32 3}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 112, i32 3}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ksz9477_get_vlan_table.__UNIQUE_ID_ddebug497, !129, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 145, i32 3}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ksz9477_set_vlan_table.__UNIQUE_ID_ddebug498, !133, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 523, i32 3}
!138 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug500, !137, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 536, i32 3}
!142 = !{ptr @ksz9477_port_vlan_del.__UNIQUE_ID_ddebug501, !141, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 570, i32 3}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug502, !144, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 594, i32 3}
!149 = !{ptr @ksz9477_port_fdb_add.__UNIQUE_ID_ddebug503, !148, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 627, i32 3}
!152 = !{ptr @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug504, !151, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!153 = !{ptr @ksz9477_port_fdb_del.__UNIQUE_ID_ddebug505, !154, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 661, i32 3}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 717, i32 4}
!157 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ksz9477_port_fdb_dump.__UNIQUE_ID_ddebug506, !156, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 769, i32 4}
!161 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug507, !160, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!163 = !{ptr @ksz9477_port_mdb_add.__UNIQUE_ID_ddebug508, !164, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!164 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 812, i32 3}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 844, i32 4}
!167 = !{ptr @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug509, !166, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!168 = !{ptr @ksz9477_port_mdb_del.__UNIQUE_ID_ddebug510, !169, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!169 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 886, i32 3}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1448, i32 15}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1458, i32 15}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1468, i32 15}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1477, i32 15}
!178 = !{ptr @ksz9477_switch_chips, !179, !"ksz9477_switch_chips", i1 false, i1 false}
!179 = !{!"../drivers/net/dsa/microchip/ksz9477.c", i32 1445, i32 35}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i8 0, i8 2}
!191 = !{i64 2148730159, i64 2148730164, i64 2148730177, i64 2148730221, i64 2148730255, i64 2148730276}
!192 = !{!"branch_weights", i32 1, i32 2000}
