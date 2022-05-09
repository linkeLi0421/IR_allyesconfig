; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/rtl8366rb.c_pt.bc'
source_filename = "../drivers/net/dsa/rtl8366rb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rtl8366rb_variant\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl8366rb_variant\09\09\09\09"
module asm "\09.long\09__crc_rtl8366rb_variant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl8366rb_variant:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl8366rb_variant\22\09\09\09\09\09"
module asm "__kstrtabns_rtl8366rb_variant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.realtek_smi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.realtek_smi_variant = type { ptr, ptr, i32, i8, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl8366rb_jam_tbl_entry = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtl8366_mib_counter = type { i32, i32, i32, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.realtek_smi = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.spinlock, ptr, ptr, i8, i32, i32, i32, i32, ptr, ptr, i32, i32, [4096 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
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
%struct.rtl8366rb = type { [6 x i32], [6 x i8] }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rtl8366_vlan_mc = type { i16, i16, i16, i8, i8 }
%struct.rtl8366_vlan_4k = type { i16, i16, i16, i8 }

@rtl8366rb_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @rtl8366_get_tag_protocol, ptr null, ptr null, ptr @rtl8366rb_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8366rb_mac_link_down, ptr @rtl8366rb_mac_link_up, ptr null, ptr @rtl8366_get_strings, ptr @rtl8366_get_ethtool_stats, ptr @rtl8366_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8366rb_port_enable, ptr @rtl8366rb_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8366rb_port_bridge_join, ptr @rtl8366rb_port_bridge_leave, ptr @rtl8366rb_port_stp_state_set, ptr @rtl8366rb_port_fast_age, ptr @rtl8366rb_port_pre_bridge_flags, ptr @rtl8366rb_port_bridge_flags, ptr @rtl8366rb_vlan_filtering, ptr @rtl8366_vlan_add, ptr @rtl8366_vlan_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8366rb_change_mtu, ptr @rtl8366rb_max_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@rtl8366rb_smi_ops = internal constant { %struct.realtek_smi_ops, [60 x i8] } { %struct.realtek_smi_ops { ptr @rtl8366rb_detect, ptr null, ptr null, ptr null, ptr @rtl8366rb_get_mib_counter, ptr @rtl8366rb_get_vlan_mc, ptr @rtl8366rb_set_vlan_mc, ptr @rtl8366rb_get_vlan_4k, ptr @rtl8366rb_set_vlan_4k, ptr @rtl8366rb_get_mc_index, ptr @rtl8366rb_set_mc_index, ptr @rtl8366rb_is_vlan_valid, ptr @rtl8366rb_enable_vlan, ptr @rtl8366rb_enable_vlan4k, ptr null, ptr @rtl8366rb_phy_read, ptr @rtl8366rb_phy_write }, [60 x i8] zeroinitializer }, align 32
@rtl8366rb_variant = dso_local constant { %struct.realtek_smi_variant, [44 x i8] } { %struct.realtek_smi_variant { ptr @rtl8366rb_switch_ops, ptr @rtl8366rb_smi_ops, i32 10, i8 -87, i8 -88, i32 32 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_rtl8366rb_variant = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl8366rb_variant = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl8366rb_variant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl8366rb_variant to i32), ptr @__kstrtab_rtl8366rb_variant, ptr @__kstrtabns_rtl8366rb_variant }, section "___ksymtab_gpl+rtl8366rb_variant", align 4
@rtl8366rb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to read chip id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl8366rb_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/dsa/rtl8366rb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr = internal global ptr @rtl8366rb_setup._entry, section ".printk_index", align 4
@rtl8366rb_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 827, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown chip id (%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr.7 = internal global ptr @rtl8366rb_setup._entry.5, section ".printk_index", align 4
@rtl8366rb_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 834, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read chip version\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr.10 = internal global ptr @rtl8366rb_setup._entry.8, section ".printk_index", align 4
@rtl8366rb_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 839, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RTL%04x ver %u chip found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr.14 = internal global ptr @rtl8366rb_setup._entry.11, section ".printk_index", align 4
@rtl8366rb_init_jam_ver_0 = internal constant { [116 x %struct.rtl8366rb_jam_tbl_entry], [112 x i8] } { [116 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 11, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 934, i16 256 }, %struct.rtl8366rb_jam_tbl_entry { i16 935, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 721, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 722, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 723, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 724, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 725, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 726, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 727, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 728, i16 16383 }, %struct.rtl8366rb_jam_tbl_entry { i16 555, i16 1672 }, %struct.rtl8366rb_jam_tbl_entry { i16 556, i16 4012 }, %struct.rtl8366rb_jam_tbl_entry { i16 976, i16 18056 }, %struct.rtl8366rb_jam_tbl_entry { i16 977, i16 501 }, %struct.rtl8366rb_jam_tbl_entry { i16 0, i16 2096 }, %struct.rtl8366rb_jam_tbl_entry { i16 761, i16 512 }, %struct.rtl8366rb_jam_tbl_entry { i16 759, i16 32767 }, %struct.rtl8366rb_jam_tbl_entry { i16 760, i16 1023 }, %struct.rtl8366rb_jam_tbl_entry { i16 128, i16 1000 }, %struct.rtl8366rb_jam_tbl_entry { i16 129, i16 206 }, %struct.rtl8366rb_jam_tbl_entry { i16 130, i16 218 }, %struct.rtl8366rb_jam_tbl_entry { i16 131, i16 560 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16881, i16 8192 }, %struct.rtl8366rb_jam_tbl_entry { i16 561, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 562, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 563, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 564, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 565, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 566, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 567, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 568, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 569, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 570, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 571, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 572, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 573, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 574, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 575, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 576, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 577, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 578, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 579, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 580, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 581, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 582, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 583, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 584, i16 16938 }, %struct.rtl8366rb_jam_tbl_entry { i16 585, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 586, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 587, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16893, i16 -13983 }, %struct.rtl8366rb_jam_tbl_entry { i16 589, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 590, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 591, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 592, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16796, i16 550 }, %struct.rtl8366rb_jam_tbl_entry { i16 594, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 595, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 588, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 593, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 596, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16798, i16 16336 }, %struct.rtl8366rb_jam_tbl_entry { i16 132, i16 800 }, %struct.rtl8366rb_jam_tbl_entry { i16 597, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 598, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 599, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 600, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 601, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 602, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 603, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 604, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 605, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 606, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 607, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 608, i16 326 }, %struct.rtl8366rb_jam_tbl_entry { i16 609, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 610, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 611, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 612, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 613, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 614, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 615, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 616, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 617, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 618, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 619, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 620, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 621, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 622, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 623, i16 -24001 }, %struct.rtl8366rb_jam_tbl_entry { i16 624, i16 660 }, %struct.rtl8366rb_jam_tbl_entry { i16 757, i16 72 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16887, i16 3584 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16866, i16 4000 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16876, i16 -31672 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16875, i16 4103 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16822, i16 -23932 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15276, i16 16139 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15244, i16 16139 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16824, i16 13938 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16821, i16 6055 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16820, i16 2837 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16814, i16 3805 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16823, i16 -29696 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16805, i16 30812 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16804, i16 30812 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16803, i16 30812 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16799, i16 13962 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16797, i16 -25724 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15274, i16 -13293 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15242, i16 -13293 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16795, i16 12413 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16787, i16 5 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 -7904 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16850, i16 31663 }], [112 x i8] zeroinitializer }, align 32
@rtl8366rb_init_jam_ver_1 = internal constant { [42 x %struct.rtl8366rb_jam_tbl_entry], [56 x i8] } { [42 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 0, i16 2096 }, %struct.rtl8366rb_jam_tbl_entry { i16 1, i16 -32768 }, %struct.rtl8366rb_jam_tbl_entry { i16 1024, i16 -32464 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16776, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 1073, i16 21554 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16841, i16 3300 }, %struct.rtl8366rb_jam_tbl_entry { i16 762, i16 -33 }, %struct.rtl8366rb_jam_tbl_entry { i16 763, i16 -32 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 4485 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 4485 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15279, i16 8501 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15247, i16 8501 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16875, i16 7 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 -7904 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16791, i16 -11761 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16789, i16 800 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 -20480 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16861, i16 -175 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16862, i16 -8416 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16863, i16 320 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16864, i16 187 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 -18432 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 28672 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16861, i16 -175 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16862, i16 -8352 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16863, i16 320 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16864, i16 119 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 30720 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16850, i16 31610 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16842, i16 3300 }, %struct.rtl8366rb_jam_tbl_entry { i16 757, i16 72 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16777, i16 10560 }, %struct.rtl8366rb_jam_tbl_entry { i16 10, i16 -31776 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16775, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16896, i16 4928 }], [56 x i8] zeroinitializer }, align 32
@rtl8366rb_init_jam_ver_2 = internal constant { [42 x %struct.rtl8366rb_jam_tbl_entry], [56 x i8] } { [42 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 1104, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 1024, i16 -32464 }, %struct.rtl8366rb_jam_tbl_entry { i16 10, i16 -31763 }, %struct.rtl8366rb_jam_tbl_entry { i16 1073, i16 21554 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15281, i16 25168 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15249, i16 25168 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15274, i16 3092 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15242, i16 3092 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 7301 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 6277 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 7301 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 7301 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 6277 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 7301 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 2181 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 2177 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 2181 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 2181 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 2177 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 2181 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16850, i16 31655 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16842, i16 4096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16841, i16 4096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16791, i16 -10993 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16791, i16 -10993 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 800 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16777, i16 10560 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16776, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16775, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 -7904 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16875, i16 4103 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16875, i16 4103 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16876, i16 1096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16866, i16 160 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32416 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16896, i16 4928 }, %struct.rtl8366rb_jam_tbl_entry { i16 3921, i16 16 }], [56 x i8] zeroinitializer }, align 32
@rtl8366rb_init_jam_ver_3 = internal constant { [68 x %struct.rtl8366rb_jam_tbl_entry], [80 x i8] } { [68 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 0, i16 2096 }, %struct.rtl8366rb_jam_tbl_entry { i16 1024, i16 -32464 }, %struct.rtl8366rb_jam_tbl_entry { i16 10, i16 -31763 }, %struct.rtl8366rb_jam_tbl_entry { i16 1073, i16 21554 }, %struct.rtl8366rb_jam_tbl_entry { i16 3921, i16 23 }, %struct.rtl8366rb_jam_tbl_entry { i16 757, i16 72 }, %struct.rtl8366rb_jam_tbl_entry { i16 762, i16 -33 }, %struct.rtl8366rb_jam_tbl_entry { i16 763, i16 -32 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15274, i16 3092 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15242, i16 3092 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15276, i16 16267 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15244, i16 16267 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15280, i16 8305 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15248, i16 8305 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15279, i16 8811 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15247, i16 8811 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15278, i16 -23917 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15246, i16 -23917 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 4485 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 4485 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 5509 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 389 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 385 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15284, i16 389 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 389 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 385 }, %struct.rtl8366rb_jam_tbl_entry { i16 -15252, i16 389 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 -20480 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16861, i16 -175 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16862, i16 -8416 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16863, i16 320 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16864, i16 187 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 -18432 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 28672 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16861, i16 -175 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16862, i16 -8352 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16863, i16 320 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16864, i16 119 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 30720 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16860, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16850, i16 31655 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16842, i16 4096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16841, i16 4096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16791, i16 -10993 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16791, i16 -10993 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16789, i16 800 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16777, i16 10240 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16776, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16775, i16 15420 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 -7904 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 1 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16875, i16 4103 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16876, i16 1096 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16866, i16 160 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32416 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16880, i16 -32448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16896, i16 4928 }, %struct.rtl8366rb_jam_tbl_entry { i16 1104, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 1025, i16 0 }], [80 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"belkin,f5d8235-v1\00", [46 x i8] zeroinitializer }, align 32
@rtl8366rb_init_jam_f5d8235 = internal constant { [36 x %struct.rtl8366rb_jam_tbl_entry], [48 x i8] } { [36 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 578, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 581, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 584, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 587, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 590, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 593, i16 703 }, %struct.rtl8366rb_jam_tbl_entry { i16 596, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 598, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 600, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 602, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 604, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 606, i16 2623 }, %struct.rtl8366rb_jam_tbl_entry { i16 611, i16 124 }, %struct.rtl8366rb_jam_tbl_entry { i16 256, i16 4 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16805, i16 13568 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32754, i16 8207 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16867, i16 3840 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32767, i16 20497 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32758, i16 -23820 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32757, i16 6051 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16821, i16 6051 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16831, i16 20497 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16873, i16 8448 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32768, i16 -31996 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16832, i16 -31996 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16822, i16 -23820 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32756, i16 -22315 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32748, i16 21760 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32747, i16 4 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16820, i16 -22315 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16807, i16 8 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16887, i16 3584 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16842, i16 4150 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16841, i16 4150 }, %struct.rtl8366rb_jam_tbl_entry { i16 -32755, i16 255 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16819, i16 255 }], [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netgear,dgn3500\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netgear,dgn3500b\00", [47 x i8] zeroinitializer }, align 32
@rtl8366rb_init_jam_dgn3500 = internal constant { [10 x %struct.rtl8366rb_jam_tbl_entry], [56 x i8] } { [10 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 0, i16 2096 }, %struct.rtl8366rb_jam_tbl_entry { i16 1024, i16 -32464 }, %struct.rtl8366rb_jam_tbl_entry { i16 10, i16 -31763 }, %struct.rtl8366rb_jam_tbl_entry { i16 3921, i16 23 }, %struct.rtl8366rb_jam_tbl_entry { i16 757, i16 72 }, %struct.rtl8366rb_jam_tbl_entry { i16 762, i16 -33 }, %struct.rtl8366rb_jam_tbl_entry { i16 763, i16 -32 }, %struct.rtl8366rb_jam_tbl_entry { i16 1104, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 1025, i16 0 }, %struct.rtl8366rb_jam_tbl_entry { i16 1073, i16 2400 }], [56 x i8] zeroinitializer }, align 32
@rtl8366rb_green_jam = internal constant { [9 x %struct.rtl8366rb_jam_tbl_entry], [60 x i8] } { [9 x %struct.rtl8366rb_jam_tbl_entry] [%struct.rtl8366rb_jam_tbl_entry { i16 -16776, i16 12860 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16777, i16 20480 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16850, i16 31655 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16807, i16 13401 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16806, i16 29786 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16805, i16 30812 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16804, i16 30812 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16786, i16 -7904 }, %struct.rtl8366rb_jam_tbl_entry { i16 -16775, i16 12860 }], [60 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1031, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no interrupt support\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr.20 = internal global ptr @rtl8366rb_setup._entry.18, section ".printk_index", align 4
@rtl8366rb_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1035, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not set up MDIO bus\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8366rb_setup._entry_ptr.23 = internal global ptr @rtl8366rb_setup._entry.21, section ".printk_index", align 4
@rtl8366rb_jam_table.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"realtek_smi\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8366rb_jam_table\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jam %04x into register %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_set_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 626, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set MAC: %02X:%02X:%02X:%02X:%02X:%02X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8366rb_set_addr\00", [45 x i8] zeroinitializer }, align 32
@rtl8366rb_set_addr._entry_ptr = internal global ptr @rtl8366rb_set_addr._entry, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 552, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing child interrupt-controller node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8366rb_setup_cascaded_irq\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr = internal global ptr @rtl8366rb_setup_cascaded_irq._entry, section ".printk_index", align 4
@rtl8366rb_setup_cascaded_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get parent IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.34 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.32, section ".printk_index", align 4
@rtl8366rb_setup_cascaded_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't read interrupt status\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.37 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.35, section ".printk_index", align 4
@rtl8366rb_setup_cascaded_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 576, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active high/rising IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.40 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.38, section ".printk_index", align 4
@rtl8366rb_setup_cascaded_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.2, i32 581, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active low/falling IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.43 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.41, section ".printk_index", align 4
@rtl8366rb_setup_cascaded_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not configure IRQ polarity\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.46 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL8366RB\00", [22 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.31, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.50 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.48, section ".printk_index", align 4
@rtl8366rb_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @rtl8366rb_irq_map, ptr @rtl8366rb_irq_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.31, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_setup_cascaded_irq._entry_ptr.53 = internal global ptr @rtl8366rb_setup_cascaded_irq._entry.51, section ".printk_index", align 4
@rtl8366rb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.54, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8366rb_irq\00", [18 x i8] zeroinitializer }, align 32
@rtl8366rb_irq._entry_ptr = internal global ptr @rtl8366rb_irq._entry, section ".printk_index", align 4
@rtl8366rb_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8366rb_mask_irq, ptr null, ptr @rtl8366rb_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rtl8366rb_mask_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 464, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not mask IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8366rb_mask_irq\00", [45 x i8] zeroinitializer }, align 32
@rtl8366rb_mask_irq._entry_ptr = internal global ptr @rtl8366rb_mask_irq._entry, section ".printk_index", align 4
@rtl8366rb_unmask_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not unmask IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8366rb_unmask_irq\00", [43 x i8] zeroinitializer }, align 32
@rtl8366rb_unmask_irq._entry_ptr = internal global ptr @rtl8366rb_unmask_irq._entry, section ".printk_index", align 4
@rtl8366rb_mac_link_down.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8366rb_mac_link_down\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MAC link down on CPU port (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 1104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable the CPU port\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_down._entry_ptr = internal global ptr @rtl8366rb_mac_link_down._entry, section ".printk_index", align 4
@rtl8366rb_mac_link_up.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8366rb_mac_link_up\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC link up on CPU port (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1067, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to force 1Gbit on CPU port\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_up._entry_ptr = internal global ptr @rtl8366rb_mac_link_up._entry, section ".printk_index", align 4
@rtl8366rb_mac_link_up._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str.2, i32 1075, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set PAACR on CPU port\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_up._entry_ptr.67 = internal global ptr @rtl8366rb_mac_link_up._entry.65, section ".printk_index", align 4
@rtl8366rb_mac_link_up._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.2, i32 1083, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable the CPU port\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl8366rb_mac_link_up._entry_ptr.70 = internal global ptr @rtl8366rb_mac_link_up._entry.68, section ".printk_index", align 4
@rtl8366rb_port_enable.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8366rb_port_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable port %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rb8366rb_set_port_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no LED for port %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rb8366rb_set_port_led\00", [42 x i8] zeroinitializer }, align 32
@rb8366rb_set_port_led._entry_ptr = internal global ptr @rb8366rb_set_port_led._entry, section ".printk_index", align 4
@rb8366rb_set_port_led._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error updating LED on port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rb8366rb_set_port_led._entry_ptr.77 = internal global ptr @rb8366rb_set_port_led._entry.75, section ".printk_index", align 4
@rtl8366rb_port_disable.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl8366rb_port_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable port %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8366rb_port_bridge_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to join port %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8366rb_port_bridge_join\00", [37 x i8] zeroinitializer }, align 32
@rtl8366rb_port_bridge_join._entry_ptr = internal global ptr @rtl8366rb_port_bridge_join._entry, section ".printk_index", align 4
@rtl8366rb_port_bridge_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to leave port %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl8366rb_port_bridge_leave\00", [36 x i8] zeroinitializer }, align 32
@rtl8366rb_port_bridge_leave._entry_ptr = internal global ptr @rtl8366rb_port_bridge_leave._entry, section ".printk_index", align 4
@rtl8366rb_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown bridge state requested\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8366rb_port_stp_state_set\00", [35 x i8] zeroinitializer }, align 32
@rtl8366rb_port_stp_state_set._entry_ptr = internal global ptr @rtl8366rb_port_stp_state_set._entry, section ".printk_index", align 4
@rtl8366rb_vlan_filtering.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl8366rb_vlan_filtering\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port %d: %s VLAN filtering\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get chip ID (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8366rb_detect\00", [47 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry_ptr = internal global ptr @rtl8366rb_detect._entry, section ".printk_index", align 4
@rtl8366rb_detect._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 1743, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"found an RTL8366S switch\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry_ptr.94 = internal global ptr @rtl8366rb_detect._entry.92, section ".printk_index", align 4
@rtl8366rb_detect._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 1744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"this switch is not yet supported, submit patches!\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry_ptr.97 = internal global ptr @rtl8366rb_detect._entry.95, section ".printk_index", align 4
@rtl8366rb_detect._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.2, i32 1747, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found an RTL8366RB switch\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry_ptr.100 = internal global ptr @rtl8366rb_detect._entry.98, section ".printk_index", align 4
@rtl8366rb_mib_counters = internal global { [33 x %struct.rtl8366_mib_counter], [144 x i8] } { [33 x %struct.rtl8366_mib_counter] [%struct.rtl8366_mib_counter { i32 0, i32 0, i32 4, ptr @.str.104 }, %struct.rtl8366_mib_counter { i32 0, i32 4, i32 4, ptr @.str.105 }, %struct.rtl8366_mib_counter { i32 0, i32 8, i32 2, ptr @.str.106 }, %struct.rtl8366_mib_counter { i32 0, i32 10, i32 2, ptr @.str.107 }, %struct.rtl8366_mib_counter { i32 0, i32 12, i32 2, ptr @.str.108 }, %struct.rtl8366_mib_counter { i32 0, i32 14, i32 2, ptr @.str.109 }, %struct.rtl8366_mib_counter { i32 0, i32 16, i32 2, ptr @.str.110 }, %struct.rtl8366_mib_counter { i32 0, i32 18, i32 2, ptr @.str.111 }, %struct.rtl8366_mib_counter { i32 0, i32 20, i32 2, ptr @.str.112 }, %struct.rtl8366_mib_counter { i32 0, i32 22, i32 2, ptr @.str.113 }, %struct.rtl8366_mib_counter { i32 0, i32 24, i32 2, ptr @.str.114 }, %struct.rtl8366_mib_counter { i32 0, i32 26, i32 2, ptr @.str.115 }, %struct.rtl8366_mib_counter { i32 0, i32 28, i32 2, ptr @.str.116 }, %struct.rtl8366_mib_counter { i32 0, i32 30, i32 2, ptr @.str.117 }, %struct.rtl8366_mib_counter { i32 0, i32 32, i32 2, ptr @.str.118 }, %struct.rtl8366_mib_counter { i32 0, i32 34, i32 2, ptr @.str.119 }, %struct.rtl8366_mib_counter { i32 0, i32 36, i32 2, ptr @.str.120 }, %struct.rtl8366_mib_counter { i32 0, i32 38, i32 2, ptr @.str.121 }, %struct.rtl8366_mib_counter { i32 0, i32 40, i32 2, ptr @.str.122 }, %struct.rtl8366_mib_counter { i32 0, i32 42, i32 2, ptr @.str.123 }, %struct.rtl8366_mib_counter { i32 0, i32 44, i32 4, ptr @.str.124 }, %struct.rtl8366_mib_counter { i32 0, i32 48, i32 2, ptr @.str.125 }, %struct.rtl8366_mib_counter { i32 0, i32 50, i32 2, ptr @.str.126 }, %struct.rtl8366_mib_counter { i32 0, i32 52, i32 2, ptr @.str.127 }, %struct.rtl8366_mib_counter { i32 0, i32 54, i32 2, ptr @.str.128 }, %struct.rtl8366_mib_counter { i32 0, i32 56, i32 2, ptr @.str.129 }, %struct.rtl8366_mib_counter { i32 0, i32 58, i32 2, ptr @.str.130 }, %struct.rtl8366_mib_counter { i32 0, i32 60, i32 2, ptr @.str.131 }, %struct.rtl8366_mib_counter { i32 0, i32 62, i32 2, ptr @.str.132 }, %struct.rtl8366_mib_counter { i32 0, i32 64, i32 2, ptr @.str.133 }, %struct.rtl8366_mib_counter { i32 0, i32 66, i32 2, ptr @.str.134 }, %struct.rtl8366_mib_counter { i32 0, i32 68, i32 2, ptr @.str.135 }, %struct.rtl8366_mib_counter { i32 0, i32 70, i32 2, ptr @.str.136 }], [144 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.91, ptr @.str.2, i32 1756, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"found an Unknown Realtek switch (id=0x%04x)\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl8366rb_detect._entry_ptr.103 = internal global ptr @rtl8366rb_detect._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IfInOctets\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EtherStatsOctets\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EtherStatsUnderSizePkts\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EtherFragments\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EtherStatsPkts64Octets\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EtherStatsPkts65to127Octets\00", [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EtherStatsPkts128to255Octets\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EtherStatsPkts256to511Octets\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EtherStatsPkts512to1023Octets\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EtherStatsPkts1024to1518Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EtherOversizeStats\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EtherStatsJabbers\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IfInUcastPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EtherStatsMulticastPkts\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EtherStatsBroadcastPkts\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EtherStatsDropEvents\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dot3StatsFCSErrors\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dot3StatsSymbolErrors\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Dot3InPauseFrames\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dot3ControlInUnknownOpcodes\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IfOutOctets\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dot3StatsSingleCollisionFrames\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dot3StatMultipleCollisionFrames\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dot3sDeferredTransmissions\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dot3StatsLateCollisions\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EtherStatsCollisions\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dot3StatsExcessiveCollisions\00", [35 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dot3OutPauseFrames\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dot1dBasePortDelayExceededDiscards\00", [61 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dot1dTpPortInDiscards\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IfOutUcastPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IfOutMulticastPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IfOutBroadcastPkts\00", [45 x i8] zeroinitializer }, align 32
@rtl8366rb_reset_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timeout waiting for the switch to reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8366rb_reset_chip\00", [43 x i8] zeroinitializer }, align 32
@rtl8366rb_reset_chip._entry_ptr = internal global ptr @rtl8366rb_reset_chip._entry, section ".printk_index", align 4
@rtl8366rb_enable_vlan.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.139, ptr @.str.2, ptr @.str.140, i8 1, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8366rb_enable_vlan\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s VLAN\0A\00", [23 x i8] zeroinitializer }, align 32
@rtl8366rb_enable_vlan4k.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 1, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8366rb_enable_vlan4k\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s VLAN 4k\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl8366rb_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1662, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to write PHY%d reg %04x @ %04x, ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8366rb_phy_read\00", [45 x i8] zeroinitializer }, align 32
@rtl8366rb_phy_read._entry_ptr = internal global ptr @rtl8366rb_phy_read._entry, section ".printk_index", align 4
@rtl8366rb_phy_read.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 1, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"read PHY%d register 0x%04x @ %08x, val <- %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8366rb_phy_write.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.146, ptr @.str.2, ptr @.str.147, i8 1, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8366rb_phy_write\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"write PHY%d register 0x%04x @ %04x, val -> %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.rtl8366rb_setup = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @rtl8366rb_init_jam_ver_0, ptr @rtl8366rb_init_jam_ver_1, ptr @rtl8366rb_init_jam_ver_2], [20 x i8] zeroinitializer }, align 32
@switch.table.rtl8366rb_setup.148 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 116, i32 42, i32 42], [20 x i8] zeroinitializer }, align 32
@switch.table.rtl8366rb_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.149 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 22839, i64 24615]
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"rtl8366rb_switch_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1767, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"rtl8366rb_smi_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1790, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"rtl8366rb_variant\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1806, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 819, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 827, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 834, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 838, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [25 x i8] c"rtl8366rb_init_jam_ver_0\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 652, i32 45 }
@___asan_gen_.202 = private unnamed_addr constant [25 x i8] c"rtl8366rb_init_jam_ver_1\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 685, i32 45 }
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"rtl8366rb_init_jam_ver_2\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 700, i32 45 }
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"rtl8366rb_init_jam_ver_3\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 715, i32 45 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 865, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"rtl8366rb_init_jam_f5d8235\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 736, i32 45 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 869, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 870, i32 31 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"rtl8366rb_init_jam_dgn3500\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 749, i32 45 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"rtl8366rb_green_jam\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 760, i32 45 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1031, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1035, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 791, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 625, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 550, i32 49 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 552, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 558, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 567, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 576, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 581, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 589, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 595, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 597, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"rtl8366rb_irqdomain_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 535, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 605, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 489, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [19 x i8] c"rtl8366rb_irq_chip\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 511, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 464, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 476, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1098, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1104, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1061, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1067, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1075, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1083, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1162, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1148, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1152, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1178, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1209, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1240, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1347, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1273, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1737, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1743, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1744, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1747, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [23 x i8] c"rtl8366rb_mib_counters\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 363, i32 35 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1755, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 364, i32 14 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 365, i32 14 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 366, i32 14 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 367, i32 14 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 368, i32 14 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 369, i32 14 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 370, i32 14 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 371, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 372, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 373, i32 14 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 374, i32 14 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 375, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 376, i32 14 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 377, i32 14 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 378, i32 14 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 379, i32 14 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 380, i32 14 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 381, i32 14 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 382, i32 14 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 383, i32 14 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 384, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 385, i32 14 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 386, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 387, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 388, i32 14 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 389, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 390, i32 14 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 391, i32 14 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 392, i32 14 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 393, i32 14 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 394, i32 14 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 395, i32 14 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 396, i32 14 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1721, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1628, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1636, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1660, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1670, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.620 = private constant [31 x i8] c"../drivers/net/dsa/rtl8366rb.c\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.620, i32 1692, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant [29 x i8] c"switch.table.rtl8366rb_setup\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [33 x i8] c"switch.table.rtl8366rb_setup.148\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [42 x i8] c"switch.table.rtl8366rb_port_stp_state_set\00", align 1
@llvm.compiler.used = appending global [195 x ptr] [ptr @__ksymtab_rtl8366rb_variant, ptr @rb8366rb_set_port_led._entry, ptr @rb8366rb_set_port_led._entry.75, ptr @rb8366rb_set_port_led._entry_ptr, ptr @rb8366rb_set_port_led._entry_ptr.77, ptr @rtl8366rb_detect._entry, ptr @rtl8366rb_detect._entry.101, ptr @rtl8366rb_detect._entry.92, ptr @rtl8366rb_detect._entry.95, ptr @rtl8366rb_detect._entry.98, ptr @rtl8366rb_detect._entry_ptr, ptr @rtl8366rb_detect._entry_ptr.100, ptr @rtl8366rb_detect._entry_ptr.103, ptr @rtl8366rb_detect._entry_ptr.94, ptr @rtl8366rb_detect._entry_ptr.97, ptr @rtl8366rb_irq._entry, ptr @rtl8366rb_irq._entry_ptr, ptr @rtl8366rb_mac_link_down._entry, ptr @rtl8366rb_mac_link_down._entry_ptr, ptr @rtl8366rb_mac_link_up._entry, ptr @rtl8366rb_mac_link_up._entry.65, ptr @rtl8366rb_mac_link_up._entry.68, ptr @rtl8366rb_mac_link_up._entry_ptr, ptr @rtl8366rb_mac_link_up._entry_ptr.67, ptr @rtl8366rb_mac_link_up._entry_ptr.70, ptr @rtl8366rb_mask_irq._entry, ptr @rtl8366rb_mask_irq._entry_ptr, ptr @rtl8366rb_phy_read._entry, ptr @rtl8366rb_phy_read._entry_ptr, ptr @rtl8366rb_port_bridge_join._entry, ptr @rtl8366rb_port_bridge_join._entry_ptr, ptr @rtl8366rb_port_bridge_leave._entry, ptr @rtl8366rb_port_bridge_leave._entry_ptr, ptr @rtl8366rb_port_stp_state_set._entry, ptr @rtl8366rb_port_stp_state_set._entry_ptr, ptr @rtl8366rb_reset_chip._entry, ptr @rtl8366rb_reset_chip._entry_ptr, ptr @rtl8366rb_set_addr._entry, ptr @rtl8366rb_set_addr._entry_ptr, ptr @rtl8366rb_setup._entry, ptr @rtl8366rb_setup._entry.11, ptr @rtl8366rb_setup._entry.18, ptr @rtl8366rb_setup._entry.21, ptr @rtl8366rb_setup._entry.5, ptr @rtl8366rb_setup._entry.8, ptr @rtl8366rb_setup._entry_ptr, ptr @rtl8366rb_setup._entry_ptr.10, ptr @rtl8366rb_setup._entry_ptr.14, ptr @rtl8366rb_setup._entry_ptr.20, ptr @rtl8366rb_setup._entry_ptr.23, ptr @rtl8366rb_setup._entry_ptr.7, ptr @rtl8366rb_setup_cascaded_irq._entry, ptr @rtl8366rb_setup_cascaded_irq._entry.32, ptr @rtl8366rb_setup_cascaded_irq._entry.35, ptr @rtl8366rb_setup_cascaded_irq._entry.38, ptr @rtl8366rb_setup_cascaded_irq._entry.41, ptr @rtl8366rb_setup_cascaded_irq._entry.44, ptr @rtl8366rb_setup_cascaded_irq._entry.48, ptr @rtl8366rb_setup_cascaded_irq._entry.51, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.34, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.37, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.40, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.43, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.46, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.50, ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.53, ptr @rtl8366rb_unmask_irq._entry, ptr @rtl8366rb_unmask_irq._entry_ptr, ptr @rtl8366rb_switch_ops, ptr @rtl8366rb_smi_ops, ptr @rtl8366rb_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @rtl8366rb_init_jam_ver_0, ptr @rtl8366rb_init_jam_ver_1, ptr @rtl8366rb_init_jam_ver_2, ptr @rtl8366rb_init_jam_ver_3, ptr @.str.15, ptr @rtl8366rb_init_jam_f5d8235, ptr @.str.16, ptr @.str.17, ptr @rtl8366rb_init_jam_dgn3500, ptr @rtl8366rb_green_jam, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @rtl8366rb_irqdomain_ops, ptr @.str.52, ptr @.str.54, ptr @rtl8366rb_irq_chip, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @rtl8366rb_mib_counters, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @switch.table.rtl8366rb_setup, ptr @switch.table.rtl8366rb_setup.148, ptr @switch.table.rtl8366rb_port_stp_state_set], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_smi_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_ver_0 to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_ver_1 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_ver_2 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_ver_3 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_f5d8235 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_init_jam_dgn3500 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_green_jam to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_set_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_setup_cascaded_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mask_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_unmask_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mac_link_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mac_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mac_link_up._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mac_link_up._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb8366rb_set_port_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb8366rb_set_port_led._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_port_bridge_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_port_bridge_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_detect._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_detect._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_detect._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_mib_counters to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_detect._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_reset_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8366rb_setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8366rb_setup.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8366rb_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8366_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_setup(ptr noundef readonly %ds) #1 align 64 {
entry:
  %chip_ver = alloca i32, align 4
  %chip_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_ver) #7
  %2 = ptrtoint ptr %chip_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %chip_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #7
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %chip_id, align 4
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef 1289, ptr noundef nonnull %chip_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22839, i32 %11)
  %cond181 = icmp eq i32 %11, 22839
  br i1 %cond181, label %sw.epilog, label %do.end3

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %11) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call6 = call i32 @regmap_read(ptr noundef %15, i32 noundef 1290, ptr noundef nonnull %chip_ver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  br i1 %tobool7.not, label %do.end16, label %do.end11

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.end16:                                         ; preds = %sw.epilog
  %18 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_id, align 4
  %20 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_ver, align 4
  %and = and i32 %21, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %19, i32 noundef %and) #10
  %22 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup, label %do.end16.sw.epilog21_crit_edge

do.end16.sw.epilog21_crit_edge:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

switch.lookup:                                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.rtl8366rb_setup, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep290 = getelementptr inbounds [3 x i32], ptr @switch.table.rtl8366rb_setup.148, i32 0, i32 %23
  %26 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load291 = load i32, ptr %switch.gep290, align 4
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %switch.lookup, %do.end16.sw.epilog21_crit_edge
  %jam_table.0 = phi ptr [ %switch.load, %switch.lookup ], [ @rtl8366rb_init_jam_ver_3, %do.end16.sw.epilog21_crit_edge ]
  %jam_size.0 = phi i32 [ %switch.load291, %switch.lookup ], [ 68, %do.end16.sw.epilog21_crit_edge ]
  %call22 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.15) #7
  %call26 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %sw.epilog21.if.then30_crit_edge

sw.epilog21.if.then30_crit_edge:                  ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

lor.lhs.false:                                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select273 = select i1 %tobool23.not, i32 %jam_size.0, i32 36
  %spec.select = select i1 %tobool23.not, ptr %jam_table.0, ptr @rtl8366rb_init_jam_f5d8235
  %call28 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %sw.epilog21.if.then30_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false.if.end31_crit_edge
  %jam_table.2 = phi ptr [ @rtl8366rb_init_jam_dgn3500, %if.then30 ], [ %spec.select, %lor.lhs.false.if.end31_crit_edge ]
  %jam_size.2 = phi i32 [ 10, %if.then30 ], [ %spec.select273, %lor.lhs.false.if.end31_crit_edge ]
  %call32 = call fastcc i32 @rtl8366rb_jam_table(ptr noundef %jam_table.2, i32 noundef %jam_size.2, ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.body.preheader, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end31
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %call37 = call i32 @regmap_write(ptr noundef %28, i32 noundef 3848, i32 noundef 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %call37.1 = call i32 @regmap_write(ptr noundef %30, i32 noundef 3849, i32 noundef 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %tobool38.not.1 = icmp eq i32 %call37.1, 0
  br i1 %tobool38.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call37.2 = call i32 @regmap_write(ptr noundef %32, i32 noundef 3850, i32 noundef 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2)
  %tobool38.not.2 = icmp eq i32 %call37.2, 0
  br i1 %tobool38.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %33 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map, align 4
  %call37.3 = call i32 @regmap_write(ptr noundef %34, i32 noundef 3851, i32 noundef 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.3)
  %tobool38.not.3 = icmp eq i32 %call37.3, 0
  br i1 %tobool38.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %call37.4 = call i32 @regmap_write(ptr noundef %36, i32 noundef 3852, i32 noundef 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.4)
  %tobool38.not.4 = icmp eq i32 %call37.4, 0
  br i1 %tobool38.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %39 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn19.i = load ptr, ptr %ports.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %ports.i
  br i1 %cmp.not20.i, label %for.cond.4.dsa_user_ports.exit_crit_edge, label %for.cond.4.for.body.i_crit_edge

for.cond.4.for.body.i_crit_edge:                  ; preds = %for.cond.4
  br label %for.body.i

for.cond.4.dsa_user_ports.exit_crit_edge:         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_user_ports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.4.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %for.cond.4.for.body.i_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.4.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %42 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %43, %ds
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr i8, ptr %.pn22.i, i32 -424
  %44 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i.i = icmp eq i32 %45, 3
  br i1 %cmp.i.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %47
  %or.i = or i32 %shl.i, %mask.021.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i, %if.then5.i ], [ %mask.021.i, %if.then.i.for.inc.i_crit_edge ], [ %mask.021.i, %for.body.i.for.inc.i_crit_edge ]
  %48 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_user_ports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_user_ports.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_user_ports.exit

dsa_user_ports.exit:                              ; preds = %for.inc.i.dsa_user_ports.exit_crit_edge, %for.cond.4.dsa_user_ports.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %for.cond.4.dsa_user_ports.exit_crit_edge ], [ %mask.1.i, %for.inc.i.dsa_user_ports.exit_crit_edge ]
  %shl = shl i32 %mask.0.lcssa.i, 1
  %or = or i32 %shl, 1
  %call43 = call i32 @regmap_write(ptr noundef %38, i32 noundef 3853, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %dsa_user_ports.exit.cleanup_crit_edge

dsa_user_ports.exit.cleanup_crit_edge:            ; preds = %dsa_user_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %dsa_user_ports.exit
  %call47 = call fastcc i32 @rtl8366rb_jam_table(ptr noundef nonnull @rtl8366rb_green_jam, i32 noundef 9, ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %51 = ptrtoint ptr %chip_ver to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chip_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp52 = icmp eq i32 %52, 1
  %cond = select i1 %cmp52, i32 7, i32 3
  %call53 = call i32 @regmap_write(ptr noundef %50, i32 noundef 3921, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 4
  %call58 = call i32 @regmap_write(ptr noundef %54, i32 noundef 12, i32 noundef 576) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %55 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map, align 4
  %call63 = call i32 @regmap_write(ptr noundef %56, i32 noundef 13, i32 noundef 576) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %call67 = call fastcc i32 @rtl8366rb_set_addr(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu_port, align 4
  %shl72 = shl nuw i32 1, %60
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 97, i32 noundef 65535, i32 noundef %shl72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool74.not = icmp eq i32 %call.i, 0
  br i1 %tobool74.not, label %if.end76, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end70
  %61 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map, align 4
  %63 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu_port, align 4
  %shl79 = shl nuw i32 1, %64
  %call.i274 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 1, i32 noundef %shl79, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool81.not = icmp eq i32 %call.i274, 0
  br i1 %tobool81.not, label %if.end83, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 4
  %call.i275 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 0, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool86.not = icmp eq i32 %call.i275, 0
  br i1 %tobool86.not, label %for.body91.preheader, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body91.preheader:                             ; preds = %if.end83
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1532, ptr %5, align 4
  %arrayidx.1 = getelementptr [6 x i32], ptr %5, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1532, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr [6 x i32], ptr %5, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1532, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr [6 x i32], ptr %5, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1532, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr [6 x i32], ptr %5, i32 0, i32 4
  %71 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1532, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr [6 x i32], ptr %5, i32 0, i32 5
  %72 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1532, ptr %arrayidx.5, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 4
  %call96 = call i32 @regmap_write(ptr noundef %74, i32 noundef 2, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %for.body91.preheader.cleanup_crit_edge

for.body91.preheader.cleanup_crit_edge:           ; preds = %for.body91.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99:                                         ; preds = %for.body91.preheader
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 4
  %call101 = call i32 @regmap_write(ptr noundef %76, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end104:                                        ; preds = %if.end99
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 4
  %call.i276 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 5, i32 noundef 896, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool107.not = icmp eq i32 %call.i276, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.end104
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 4
  %call111 = call i32 @regmap_write(ptr noundef %80, i32 noundef 894, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end114:                                        ; preds = %if.end109
  %81 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map, align 4
  %call116 = call i32 @regmap_write(ptr noundef %82, i32 noundef 895, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end119:                                        ; preds = %if.end114
  %83 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map, align 4
  %call.i277 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool122.not = icmp eq i32 %call.i277, 0
  br i1 %tobool122.not, label %if.end124, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end124:                                        ; preds = %if.end119
  %85 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map, align 4
  %call.i278 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 1072, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %tobool127.not = icmp eq i32 %call.i278, 0
  br i1 %tobool127.not, label %if.end129, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129:                                        ; preds = %if.end124
  %leds_disabled = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 12
  %87 = ptrtoint ptr %leds_disabled to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %leds_disabled, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool130.not = icmp eq i8 %88, 0
  br i1 %tobool130.not, label %if.end129.if.end138_crit_edge, label %if.then131

if.end129.if.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map, align 4
  %call.i279 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 1074, i32 noundef 4095, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %91 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map, align 4
  %call.i280 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 1075, i32 noundef 4095, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %93 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map, align 4
  %call.i281 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 1088, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end138

if.end138:                                        ; preds = %if.then131, %if.end129.if.end138_crit_edge
  %val.0 = phi i32 [ 0, %if.then131 ], [ 15, %if.end129.if.end138_crit_edge ]
  %95 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map, align 4
  %call.i282 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 1073, i32 noundef 15, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool147.not = icmp eq i32 %call.i282, 0
  br i1 %tobool147.not, label %for.cond139, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond139:                                      ; preds = %if.end138
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map, align 4
  %shl145.1 = shl nuw nsw i32 %val.0, 4
  %call.i282.1 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 1073, i32 noundef 240, i32 noundef %shl145.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.1)
  %tobool147.not.1 = icmp eq i32 %call.i282.1, 0
  br i1 %tobool147.not.1, label %for.cond139.1, label %for.cond139.cleanup_crit_edge

for.cond139.cleanup_crit_edge:                    ; preds = %for.cond139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond139.1:                                    ; preds = %for.cond139
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 4
  %shl145.2 = shl nuw nsw i32 %val.0, 8
  %call.i282.2 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 1073, i32 noundef 3840, i32 noundef %shl145.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.2)
  %tobool147.not.2 = icmp eq i32 %call.i282.2, 0
  br i1 %tobool147.not.2, label %for.cond139.2, label %for.cond139.1.cleanup_crit_edge

for.cond139.1.cleanup_crit_edge:                  ; preds = %for.cond139.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond139.2:                                    ; preds = %for.cond139.1
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 4
  %shl145.3 = shl nuw nsw i32 %val.0, 12
  %call.i282.3 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 1073, i32 noundef 61440, i32 noundef %shl145.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.3)
  %tobool147.not.3 = icmp eq i32 %call.i282.3, 0
  br i1 %tobool147.not.3, label %for.cond139.3, label %for.cond139.2.cleanup_crit_edge

for.cond139.2.cleanup_crit_edge:                  ; preds = %for.cond139.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond139.3:                                    ; preds = %for.cond139.2
  %call153 = call i32 @rtl8366_reset_vlan(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %for.cond139.3.cleanup_crit_edge

for.cond139.3.cleanup_crit_edge:                  ; preds = %for.cond139.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end156:                                        ; preds = %for.cond139.3
  %call157 = call fastcc i32 @rtl8366rb_setup_cascaded_irq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end156.if.end164_crit_edge, label %do.end162

if.end156.if.end164_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

do.end162:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.19) #10
  br label %if.end164

if.end164:                                        ; preds = %do.end162, %if.end156.if.end164_crit_edge
  %call165 = call i32 @realtek_smi_setup_mdio(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end164.cleanup_crit_edge, label %do.end170

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end170, %if.end164.cleanup_crit_edge, %for.cond139.3.cleanup_crit_edge, %for.cond139.2.cleanup_crit_edge, %for.cond139.1.cleanup_crit_edge, %for.cond139.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %for.body91.preheader.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %dsa_user_ports.exit.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end11, %do.end3, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %do.end11 ], [ -19, %do.end170 ], [ -19, %do.end3 ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call43, %dsa_user_ports.exit.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call53, %if.end50.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call.i, %if.end70.cleanup_crit_edge ], [ %call.i274, %if.end76.cleanup_crit_edge ], [ %call.i275, %if.end83.cleanup_crit_edge ], [ %call96, %for.body91.preheader.cleanup_crit_edge ], [ %call101, %if.end99.cleanup_crit_edge ], [ %call.i276, %if.end104.cleanup_crit_edge ], [ %call111, %if.end109.cleanup_crit_edge ], [ %call116, %if.end114.cleanup_crit_edge ], [ %call.i277, %if.end119.cleanup_crit_edge ], [ %call.i278, %if.end124.cleanup_crit_edge ], [ %call153, %for.cond139.3.cleanup_crit_edge ], [ 0, %if.end164.cleanup_crit_edge ], [ %call.i282, %if.end138.cleanup_crit_edge ], [ %call.i282.1, %for.cond139.cleanup_crit_edge ], [ %call.i282.2, %for.cond139.1.cleanup_crit_edge ], [ %call.i282.3, %for.cond139.2.cleanup_crit_edge ], [ %call37, %for.body.preheader.cleanup_crit_edge ], [ %call37.1, %for.cond.cleanup_crit_edge ], [ %call37.2, %for.cond.1.cleanup_crit_edge ], [ %call37.3, %for.cond.2.cleanup_crit_edge ], [ %call37.4, %for.cond.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_ver) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp.not = icmp eq i32 %3, %port
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_mac_link_down.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_mac_link_down, %if.then3)) #7
          to label %do.end [label %if.then3], !srcloc !308

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_mac_link_down.__UNIQUE_ID_ddebug499, ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.61) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_mac_link_up(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp.not = icmp eq i32 %3, %port
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_mac_link_up.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_mac_link_up, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_mac_link_up.__UNIQUE_ID_ddebug498, ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3857, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end15, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end15:                                         ; preds = %do.end
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 18, i32 noundef 65280, i32 noundef 30208, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool18.not = icmp eq i32 %call.i49, 0
  br i1 %tobool18.not, label %if.end24, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool28.not = icmp eq i32 %call.i50, 0
  br i1 %tobool28.not, label %if.end24.cleanup_crit_edge, label %if.end24.cleanup.sink.split_crit_edge

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.64, %do.end.cleanup.sink.split_crit_edge ], [ @.str.66, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.69, %if.end24.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.69.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8366_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8366_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8366_get_sset_count(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_port_enable(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readnone %phy) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_port_enable.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_port_enable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_port_enable.__UNIQUE_ID_ddebug500, ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rb8366rb_set_port_led(ptr noundef %1, i32 noundef %port, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_port_disable.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_port_disable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_port_disable.__UNIQUE_ID_ddebug501, ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rb8366rb_set_port_led(ptr noundef %1, i32 noundef %port, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_port_bridge_join(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %map = getelementptr inbounds %struct.realtek_smi, ptr %2, i32 0, i32 4
  %shl5 = shl i32 2, %port
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %port_bitmap.033 = phi i32 [ 0, %entry ], [ %port_bitmap.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.034, i32 %port)
  %cmp1 = icmp eq i32 %i.034, %port
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.end.dsa_to_port.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.dsa_to_port.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %6 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %7, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.034)
  %cmp5.i = icmp eq i32 %9, %i.034
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.end.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.end.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %11 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge: ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %14, %cond.true.i.i ], [ null, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i, label %if.end4, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %dsa_port_offloads_bridge.exit
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %add = add nuw nsw i32 %i.034, 3848
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add, i32 noundef %shl5, i32 noundef %shl5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.80, i32 noundef %port) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end4.if.end10_crit_edge
  %shl11 = shl nuw i32 1, %i.034
  %or = or i32 %shl11, %port_bitmap.033
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port_bitmap.1 = phi i32 [ %port_bitmap.033, %for.body.for.inc_crit_edge ], [ %or, %if.end10 ], [ %port_bitmap.033, %dsa_port_offloads_bridge.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %add13 = add i32 %port, 3848
  %shl14 = shl i32 %port_bitmap.1, 1
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add13, i32 noundef %shl14, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_port_bridge_leave(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %map = getelementptr inbounds %struct.realtek_smi, ptr %2, i32 0, i32 4
  %shl5 = shl i32 2, %port
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %port_bitmap.028 = phi i32 [ 0, %entry ], [ %port_bitmap.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.029, i32 %port)
  %cmp1 = icmp eq i32 %i.029, %port
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.end.dsa_to_port.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.dsa_to_port.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %6 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %7, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.029)
  %cmp5.i = icmp eq i32 %9, %i.029
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.end.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.end.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %11 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge: ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %14, %cond.true.i.i ], [ null, %dsa_to_port.exit.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i, label %if.end4, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %dsa_port_offloads_bridge.exit
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %add = add nuw nsw i32 %i.029, 3848
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add, i32 noundef %shl5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %do.end

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.82, i32 noundef %port) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge
  %shl9 = shl nuw i32 1, %i.029
  %or = or i32 %shl9, %port_bitmap.028
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port_bitmap.1 = phi i32 [ %port_bitmap.028, %for.body.for.inc_crit_edge ], [ %or, %if.end8 ], [ %port_bitmap.028, %dsa_port_offloads_bridge.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %add11 = add i32 %port, 3848
  %shl12 = shl i32 %port_bitmap.1, 1
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add11, i32 noundef %shl12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #1 align 64 {
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
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.84) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl8366rb_port_stp_state_set, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %mul = shl i32 %port, 1
  %shl = shl i32 3, %mul
  %shl6 = shl i32 %switch.load, %mul
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 81, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 82, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 83, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 84, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 4
  %call.i.5 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 85, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %call.i.6 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 86, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %call.i.7 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 87, i32 noundef %shl, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_port_fast_age(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8366rb_port_pre_bridge_flags(ptr nocapture noundef readnone %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %and = and i32 %flags.coerce.fca.1.extract, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_port_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %and = and i32 %flags.coerce.fca.1.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %and1 = and i32 %flags.coerce.fca.0.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i32 %shl, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %vlan_filtering, ptr nocapture noundef readnone %extack) #1 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_vlan_filtering.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_vlan_filtering, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cond = select i1 %vlan_filtering, ptr @.str.88, ptr @.str.89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_vlan_filtering.__UNIQUE_ID_ddebug502, ptr noundef %5, ptr noundef nonnull @.str.87, i32 noundef %port, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %shl = shl nuw i32 1, %port
  %spec.select = select i1 %vlan_filtering, i32 %shl, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 895, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  br i1 %vlan_filtering, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rtl8366rb, ptr %3, i32 0, i32 1, i32 %port
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %add.i = add i32 %port, 6
  %shl1.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl1.i, %shl
  %spec.select.i = select i1 %tobool14.not, i32 %or.i, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 894, i32 noundef %or.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %add.i37 = add i32 %port, 6
  %shl1.i38 = shl nuw i32 1, %add.i37
  %or.i39 = or i32 %shl1.i38, %shl
  %call.i.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 894, i32 noundef %or.i39, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i.i, %if.then13 ], [ %call.i.i40, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8366_vlan_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8366_vlan_del(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_change_mtu(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #1 align 64 {
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
  %arrayidx = getelementptr [6 x i32], ptr %3, i32 0, i32 %port
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %arrayidx3.1 = getelementptr [6 x i32], ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.1, align 4
  %9 = call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %arrayidx3.2 = getelementptr [6 x i32], ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.2, align 4
  %12 = call i32 @llvm.umax.i32(i32 %9, i32 %11)
  %arrayidx3.3 = getelementptr [6 x i32], ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3.3, align 4
  %15 = call i32 @llvm.umax.i32(i32 %12, i32 %14)
  %arrayidx3.4 = getelementptr [6 x i32], ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.4, align 4
  %18 = call i32 @llvm.umax.i32(i32 %15, i32 %17)
  %arrayidx3.5 = getelementptr [6 x i32], ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.5, align 4
  %21 = call i32 @llvm.umax.i32(i32 %18, i32 %20)
  %22 = call i32 @llvm.umax.i32(i32 %21, i32 1518)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1519, i32 %22)
  %cmp7 = icmp ult i32 %22, 1519
  br i1 %cmp7, label %entry.if.end20_crit_edge, label %land.lhs.true

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1533, i32 %22)
  %cmp10 = icmp ult i32 %22, 1533
  br i1 %cmp10, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true14

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1549, i32 %22)
  %cmp15 = icmp ult i32 %22, 1549
  %. = select i1 %cmp15, i32 32, i32 48
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true14, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  %len.0 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ 16, %land.lhs.true.if.end20_crit_edge ], [ %., %land.lhs.true14 ]
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 48, i32 noundef %len.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8366rb_max_mtu(ptr nocapture noundef readnone %ds, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 15996
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8366rb_jam_table(ptr nocapture noundef readonly %jam_table, i32 noundef %jam_size, ptr nocapture noundef readonly %smi, i1 noundef zeroext %write_dbg) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !309
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jam_size)
  %cmp62 = icmp sgt i32 %jam_size, 0
  br i1 %cmp62, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %if.end29
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %jam_size
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtl8366rb_jam_tbl_entry, ptr %jam_table, i32 %i.063
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %3 = and i16 %2, -16896
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16896, i16 %3)
  %cmp1 = icmp eq i16 %3, -16896
  br i1 %cmp1, label %if.then, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 32769, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_write(ptr noundef %9, i32 noundef 32768, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge, %for.body.if.end13_crit_edge
  br i1 %write_dbg, label %do.body, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_jam_table.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_jam_table, %if.then21)) #7
          to label %if.end29 [label %if.then21], !srcloc !308

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smi, align 4
  %val23 = getelementptr %struct.rtl8366rb_jam_tbl_entry, ptr %jam_table, i32 %i.063, i32 1
  %12 = ptrtoint ptr %val23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val23, align 2
  %conv24 = zext i16 %13 to i32
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv27 = zext i16 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_jam_table.__UNIQUE_ID_ddebug497, ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef %conv24, i32 noundef %conv27) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %do.body, %if.end13.if.end29_crit_edge
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv33 = zext i16 %19 to i32
  %val35 = getelementptr %struct.rtl8366rb_jam_tbl_entry, ptr %jam_table, i32 %i.063, i32 1
  %20 = ptrtoint ptr %val35 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val35, align 2
  %conv36 = zext i16 %21 to i32
  %call37 = call i32 @regmap_write(ptr noundef %17, i32 noundef %conv33, i32 noundef %conv36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call37, %if.end29.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8366rb_set_addr(ptr nocapture noundef readonly %smi) unnamed_addr #1 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #7
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 1
  %8 = and i8 %7, -4
  %9 = or i8 %8, 2
  store i8 %9, ptr %addr, align 1
  %10 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smi, align 4
  %conv = zext i8 %9 to i32
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv2 = zext i8 %13 to i32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %conv4 = zext i8 %15 to i32
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv6 = zext i8 %17 to i32
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %conv8 = zext i8 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv10 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #10
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr, align 1
  %conv12 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %0, align 1
  %conv14 = zext i8 %25 to i32
  %or = or i32 %shl, %conv14
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_write(ptr noundef %27, i32 noundef 112, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  %conv18 = zext i8 %29 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %conv21 = zext i8 %31 to i32
  %or22 = or i32 %shl19, %conv21
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 4
  %call26 = call i32 @regmap_write(ptr noundef %33, i32 noundef 113, i32 noundef %or22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %conv31 = zext i8 %35 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv34 = zext i8 %37 to i32
  %or35 = or i32 %shl32, %conv34
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %call39 = call i32 @regmap_write(ptr noundef %39, i32 noundef 114, i32 noundef %or35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call26, %if.end.cleanup_crit_edge ], [ %call39, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8366_reset_vlan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8366rb_setup_cascaded_irq(ptr noundef %smi) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !309
  %1 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smi, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %4, ptr noundef nonnull @.str.29) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_irq_get(ptr noundef nonnull %call, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool8.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool8.not, i32 -22, i32 %call2
  br label %out_put_node

if.end9:                                          ; preds = %if.end
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call10 = call i32 @regmap_read(ptr noundef %10, i32 noundef 1090, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36) #10
  br label %out_put_node

if.end17:                                         ; preds = %if.end9
  %call18 = call ptr @irq_get_irq_data(i32 noundef %call2) #7
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call18, i32 0, i32 3
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, 15
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end17.sw.epilog_crit_edge [
    i32 1, label %if.end17.do.end22_crit_edge
    i32 4, label %if.end17.do.end22_crit_edge99
    i32 2, label %if.end17.do.end27_crit_edge
    i32 8, label %if.end17.do.end27_crit_edge100
  ]

if.end17.do.end27_crit_edge100:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end17.do.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end17.do.end22_crit_edge99:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.end17.do.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end22:                                         ; preds = %if.end17.do.end22_crit_edge, %if.end17.do.end22_crit_edge99
  %18 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.39) #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  br label %sw.epilog

do.end27:                                         ; preds = %if.end17.do.end27_crit_edge, %if.end17.do.end27_crit_edge100
  %21 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.42) #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %do.end22, %if.end17.sw.epilog_crit_edge
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 1088, i32 noundef 1, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  %28 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smi, align 4
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.45) #10
  br label %out_put_node

if.end37:                                         ; preds = %sw.epilog
  %call39 = call i32 @devm_request_threaded_irq(ptr noundef %29, i32 noundef %call2, ptr noundef null, ptr noundef nonnull @rtl8366rb_irq, i32 noundef 8192, ptr noundef nonnull @.str.47, ptr noundef %smi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.49, i32 noundef %call39) #10
  br label %out_put_node

if.end46:                                         ; preds = %if.end37
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call1.i = call ptr @__irq_domain_add(ptr noundef %fwnode.i.i, i32 noundef 14, i32 noundef 14, i32 noundef 0, ptr noundef nonnull @rtl8366rb_irqdomain_ops, ptr noundef %smi) #7
  %irqdomain = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 11
  %32 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i, ptr %irqdomain, align 4
  %tobool49.not = icmp eq ptr %call1.i, null
  br i1 %tobool49.not, label %do.end53, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end46
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %33 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5697.not = icmp eq i32 %34, 0
  br i1 %cmp5697.not, label %for.cond.preheader.out_put_node_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_put_node_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.52) #10
  br label %out_put_node

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %37 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irqdomain, align 4
  %call.i96 = call i32 @irq_create_mapping_affinity(ptr noundef %38, i32 noundef %i.098, ptr noundef null) #7
  %call59 = call i32 @irq_set_parent(i32 noundef %call.i96, i32 noundef %call2) #7
  %inc = add nuw i32 %i.098, 1
  %39 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ports, align 4
  %cmp56 = icmp ult i32 %inc, %40
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.out_put_node_crit_edge

for.body.out_put_node_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out_put_node:                                     ; preds = %for.body.out_put_node_crit_edge, %do.end53, %for.cond.preheader.out_put_node_crit_edge, %do.end44, %do.end35, %do.end15, %do.end6
  %ret.0 = phi i32 [ %spec.select, %do.end6 ], [ %call10, %do.end15 ], [ %call.i, %do.end35 ], [ %call39, %do.end44 ], [ -22, %do.end53 ], [ 0, %for.cond.preheader.out_put_node_crit_edge ], [ 0, %for.body.out_put_node_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %do.end
  %retval.0 = phi i32 [ %ret.0, %out_put_node ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @realtek_smi_setup_mdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #7
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !309
  %map = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1090, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %and = and i32 %6, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %irqdomain = getelementptr inbounds %struct.realtek_smi, ptr %data, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %while.cond.preheader
  %7 = phi i32 [ %and, %while.cond.preheader ], [ %.pr, %irq_find_mapping.exit.while.body_crit_edge ]
  %8 = call i32 @llvm.cttz.i32(i32 %7, i1 true) #7, !range !310
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %and6 = and i32 %7, %neg
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and6, ptr %stat, align 4
  %10 = add nsw i32 %8, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %11 = icmp ult i32 %10, 6
  %sub = add nsw i32 %8, -5
  %line.0 = select i1 %11, i32 %sub, i32 %8
  %12 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i, align 4, !annotation !309
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %13, i32 noundef %line.0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i) #7
  %17 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %stat, align 4
  %tobool4.not = icmp eq i32 %.pr, 0
  br i1 %tobool4.not, label %irq_find_mapping.exit.cleanup_crit_edge, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %irq_find_mapping.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_irq_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @rtl8366rb_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 32768, i32 noundef 0) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_mask_irq(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp.i = icmp slt i32 %5, 12
  %shl.i = shl nuw i32 1, %5
  %add.i = add nsw i32 %5, 6
  %shl1.i = shl nuw nsw i32 1, %add.i
  %or.i = select i1 %cmp.i, i32 %shl1.i, i32 0
  %val.0.i = or i32 %or.i, %shl.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1089, i32 noundef %val.0.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.55) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8366rb_unmask_irq(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %map = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp.i = icmp slt i32 %5, 12
  %shl.i = shl nuw i32 1, %5
  %add.i = add nsw i32 %5, 6
  %shl1.i = shl nuw nsw i32 1, %add.i
  %or.i = select i1 %cmp.i, i32 %shl1.i, i32 0
  %val.0.i = or i32 %or.i, %shl.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1089, i32 noundef %val.0.i, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.57) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rb8366rb_set_port_led(ptr nocapture noundef readonly %smi, i32 noundef %port, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %enable, i16 63, i16 0
  %leds_disabled = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 12
  %0 = ptrtoint ptr %leds_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %leds_disabled, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %port, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %conv2 = zext i16 %conv to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 1074, i32 noundef 63, i32 noundef %conv2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %map4 = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %5 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map4, align 4
  %7 = shl nuw nsw i16 %conv, 6
  %shl = zext i16 %7 to i32
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 1074, i32 noundef 4032, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %map8 = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %8 = ptrtoint ptr %map8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map8, align 4
  %conv9 = zext i16 %conv to i32
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1075, i32 noundef 63, i32 noundef %conv9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %map12 = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %10 = ptrtoint ptr %map12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map12, align 4
  %12 = shl nuw nsw i16 %conv, 6
  %shl14 = zext i16 %12 to i32
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1075, i32 noundef 4032, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %map17 = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %13 = ptrtoint ptr %map17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map17, align 4
  %cond20 = select i1 %enable, i32 4, i32 0
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1088, i32 noundef 4, i32 noundef %cond20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb
  %ret.0 = phi i32 [ %call.i46, %sw.bb16 ], [ %call.i45, %sw.bb11 ], [ %call.i44, %sw.bb7 ], [ %call.i43, %sw.bb3 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.76.sink = phi ptr [ @.str.73, %if.end.cleanup.sink.split_crit_edge ], [ @.str.76, %sw.epilog.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.76.sink, i32 noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_detect(ptr noundef %smi) #1 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !309
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 92, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %6, label %do.end14 [
    i32 24615, label %do.end4
    i32 22839, label %do.end11
  ]

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.93) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.96) #10
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.99) #10
  %cpu_port = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 13
  %8 = ptrtoint ptr %cpu_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %cpu_port, align 4
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %num_ports, align 4
  %num_vlan_mc = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 15
  %10 = ptrtoint ptr %num_vlan_mc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %num_vlan_mc, align 4
  %mib_counters = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 17
  %11 = ptrtoint ptr %mib_counters to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rtl8366rb_mib_counters, ptr %mib_counters, align 4
  %num_mib_counters = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 16
  %12 = ptrtoint ptr %num_mib_counters to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33, ptr %num_mib_counters, align 4
  br label %sw.epilog

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.102, i32 noundef %6) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %do.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !309
  %call.i = call i32 @realtek_smi_write_reg_noack(ptr noundef %smi, i32 noundef 256, i32 noundef 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sw.epilog
  %timeout.0.i = phi i32 [ 10, %sw.epilog ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #7
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 256, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.rtl8366rb_reset_chip.exit_crit_edge

do.body.i.rtl8366rb_reset_chip.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8366rb_reset_chip.exit

if.end.i:                                         ; preds = %do.body.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.rtl8366rb_reset_chip.exit_crit_edge, label %do.cond.i

if.end.i.rtl8366rb_reset_chip.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8366rb_reset_chip.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %do.end10.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end10.i:                                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.137) #10
  br label %rtl8366rb_reset_chip.exit

rtl8366rb_reset_chip.exit:                        ; preds = %do.end10.i, %if.end.i.rtl8366rb_reset_chip.exit_crit_edge, %do.body.i.rtl8366rb_reset_chip.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end10.i ], [ %call1.i, %do.body.i.rtl8366rb_reset_chip.exit_crit_edge ], [ 0, %if.end.i.rtl8366rb_reset_chip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl8366rb_reset_chip.exit, %do.end4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %do.end4 ], [ %retval.0.i, %rtl8366rb_reset_chip.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_get_mib_counter(ptr nocapture noundef readonly %smi, i32 noundef %port, ptr nocapture noundef readonly %mib, ptr nocapture noundef %mibvalue) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !309
  %mul = mul i32 %port, 80
  %add = add i32 %mul, 4096
  %offset = getelementptr inbounds %struct.rtl8366_mib_counter, ptr %mib, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %add1 = add i32 %add, %2
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 5104, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %and10 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %mibvalue to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %mibvalue, align 8
  %length = getelementptr inbounds %struct.rtl8366_mib_counter, ptr %mib, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36 = icmp sgt i32 %11, 0
  br i1 %cmp36, label %if.end13.for.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.037 = phi i32 [ %sub, %if.end19.for.body_crit_edge ], [ %11, %if.end13.for.body_crit_edge ]
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %sub = add nsw i32 %i.037, -1
  %add15 = add i32 %sub, %add1
  %call16 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add15, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %14 = ptrtoint ptr %mibvalue to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mibvalue, align 8
  %shl = shl i64 %15, 16
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and20 = and i32 %17, 65535
  %conv = zext i32 %and20 to i64
  %or = or i64 %shl, %conv
  store i64 %or, ptr %mibvalue, align 8
  %cmp = icmp ugt i32 %i.037, 1
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call16, %for.body.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_get_vlan_mc(ptr nocapture noundef readonly %smi, i32 noundef %index, ptr nocapture noundef writeonly %vlanmc) #1 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !309
  %1 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !309
  %3 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !309
  %5 = ptrtoint ptr %vlanmc to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %vlanmc, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index)
  %cmp = icmp ugt i32 %index, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %mul = mul nuw nsw i32 %index, 3
  %add = add nuw nsw i32 %mul, 32
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef %add, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %add2.1 = add nuw nsw i32 %mul, 33
  %call.1 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add2.1, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %add2.2 = add nuw nsw i32 %mul, 34
  %call.2 = call i32 @regmap_read(ptr noundef %11, i32 noundef %add2.2, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = trunc i32 %13 to i16
  %conv = and i16 %14, 4095
  %15 = ptrtoint ptr %vlanmc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %vlanmc, align 2
  %shr = lshr i32 %13, 12
  %16 = trunc i32 %shr to i8
  %conv8 = and i8 %16, 7
  %priority = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 4
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8, ptr %priority, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %20 = trunc i32 %19 to i16
  %21 = lshr i16 %20, 8
  %untag = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 1
  %22 = ptrtoint ptr %untag to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %untag, align 2
  %conv15 = and i16 %20, 255
  %member = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 2
  %23 = ptrtoint ptr %member to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv15, ptr %member, align 2
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %26 = trunc i32 %25 to i8
  %conv18 = and i8 %26, 7
  %fid = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 3
  %27 = ptrtoint ptr %fid to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18, ptr %fid, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.2 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_set_vlan_mc(ptr nocapture noundef readonly %smi, i32 noundef %index, ptr nocapture noundef readonly %vlanmc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index)
  %cmp = icmp ugt i32 %index, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %vlanmc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlanmc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp1 = icmp ugt i16 %1, 4095
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %priority = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 4
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp5 = icmp ugt i8 %3, 7
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %member = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 2
  %4 = ptrtoint ptr %member to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %member, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp9 = icmp ugt i16 %5, 255
  br i1 %cmp9, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %untag = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 1
  %6 = ptrtoint ptr %untag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %untag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp13 = icmp ugt i16 %7, 255
  br i1 %cmp13, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false15

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %fid = getelementptr inbounds %struct.rtl8366_vlan_mc, ptr %vlanmc, i32 0, i32 3
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp17 = icmp ugt i8 %9, 7
  br i1 %cmp17, label %lor.lhs.false15.cleanup_crit_edge, label %if.end

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false15
  %and = zext i16 %1 to i32
  %and23 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %and23, 12
  %or = or i32 %shl, %and
  %and35 = zext i8 %9 to i32
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %mul = mul nuw nsw i32 %index, 3
  %add = add nuw nsw i32 %mul, 32
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %12 = shl nuw i16 %7, 8
  %or3159 = or i16 %12, %5
  %or31 = zext i16 %or3159 to i32
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %add39.1 = add nuw nsw i32 %mul, 33
  %call.1 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %add39.1, i32 noundef %or31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %add39.2 = add nuw nsw i32 %mul, 34
  %call.2 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %add39.2, i32 noundef %and35) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_get_vlan_4k(ptr nocapture noundef readonly %smi, i32 noundef %vid, ptr nocapture noundef writeonly %vlan4k) #1 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !309
  %1 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !309
  %3 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !309
  %5 = ptrtoint ptr %vlan4k to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %vlan4k, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vid)
  %cmp = icmp ugt i32 %vid, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 389, i32 noundef %vid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 384, i32 noundef 3585) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.body.preheader, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call10 = call i32 @regmap_read(ptr noundef %11, i32 noundef 396, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %call10.1 = call i32 @regmap_read(ptr noundef %13, i32 noundef 397, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call10.2 = call i32 @regmap_read(ptr noundef %15, i32 noundef 398, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %tobool11.not.2 = icmp eq i32 %call10.2, 0
  br i1 %tobool11.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %vid to i16
  %16 = ptrtoint ptr %vlan4k to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %vlan4k, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %19 = trunc i32 %18 to i16
  %20 = lshr i16 %19, 8
  %untag = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 1
  %21 = ptrtoint ptr %untag to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %untag, align 2
  %conv20 = and i16 %19, 255
  %member = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 2
  %22 = ptrtoint ptr %member to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv20, ptr %member, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %25 = trunc i32 %24 to i8
  %conv23 = and i8 %25, 7
  %fid = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 3
  %26 = ptrtoint ptr %fid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv23, ptr %fid, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.2 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ], [ %call10, %for.body.preheader.cleanup_crit_edge ], [ %call10.1, %for.cond.cleanup_crit_edge ], [ %call10.2, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_set_vlan_4k(ptr nocapture noundef readonly %smi, ptr nocapture noundef readonly %vlan4k) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vlan4k to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan4k, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp = icmp ugt i16 %1, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %member = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 2
  %2 = ptrtoint ptr %member to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %member, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %3)
  %cmp3 = icmp ugt i16 %3, 255
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %untag = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 1
  %4 = ptrtoint ptr %untag to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %untag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp7 = icmp ugt i16 %5, 255
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %fid = getelementptr inbounds %struct.rtl8366_vlan_4k, ptr %vlan4k, i32 0, i32 3
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp11 = icmp ugt i8 %7, 7
  br i1 %cmp11, label %lor.lhs.false9.cleanup_crit_edge, label %if.end

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %and = zext i16 %1 to i32
  %and24 = zext i8 %7 to i32
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 389, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %10 = shl nuw i16 %5, 8
  %or48 = or i16 %10, %3
  %or = zext i16 %or48 to i32
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call.1 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 390, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call.2 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 391, i32 noundef %and24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 384, i32 noundef 3841) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %for.cond.2 ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_get_mc_index(ptr nocapture noundef readonly %smi, i32 noundef %port, ptr nocapture noundef writeonly %val) #1 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !309
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %1 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %port)
  %cmp.not = icmp ugt i32 %2, %port
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %div = sdiv i32 %port, 4
  %add = add nsw i32 %div, 99
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %7 = mul i32 %div, 4
  %rem.decomposed = sub i32 %port, %7
  %mul = shl nsw i32 %rem.decomposed, 2
  %shr = lshr i32 %6, %mul
  %and = and i32 %shr, 15
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_set_mc_index(ptr nocapture noundef readonly %smi, i32 noundef %port, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 22
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool = icmp ne i32 %index, 0
  %frombool = zext i1 %tobool to i8
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 14
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp.not = icmp ule i32 %3, %port
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index)
  %cmp2 = icmp sgt i32 %index, 15
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %div = sdiv i32 %port, 4
  %add = add nsw i32 %div, 99
  %6 = mul i32 %div, 4
  %rem.decomposed = sub i32 %port, %6
  %mul = shl nsw i32 %rem.decomposed, 2
  %shl = shl i32 15, %mul
  %and = and i32 %index, 15
  %shl5 = shl i32 %and, %mul
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %shl, i32 noundef %shl5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.rtl8366rb, ptr %1, i32 0, i32 1, i32 %port
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %arrayidx, align 1
  %ds = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 10
  %8 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.end8.dsa_to_port.exit_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.dsa_to_port.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end8.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %13 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %14, %9
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port)
  %cmp5.i = icmp eq i32 %16, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.end8.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.end8.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %21 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %dsa_port_is_vlan_filtering.exit, label %if.then.i

if.then.i:                                        ; preds = %dsa_to_port.exit
  %22 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool6.i.not = icmp eq i16 %22, 0
  br i1 %tobool6.i.not, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.then14_crit_edge

if.then.i.if.then14_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dsa_port_is_vlan_filtering.exit:                  ; preds = %dsa_to_port.exit
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %23 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.if.then14_crit_edge, label %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge

dsa_port_is_vlan_filtering.exit.cleanup_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dsa_port_is_vlan_filtering.exit.if.then14_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %dsa_port_is_vlan_filtering.exit.if.then14_crit_edge, %if.then.i.if.then14_crit_edge
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %shl.i = shl nuw i32 1, %port
  %add.i = add i32 %port, 6
  %shl1.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl1.i, %shl.i
  %spec.select.i = select i1 %tobool, i32 0, i32 %or.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 894, i32 noundef %or.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then14 ], [ 0, %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl8366rb_is_vlan_valid(ptr nocapture noundef readonly %smi, i32 noundef %vlan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan4k_enabled = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 20
  %0 = ptrtoint ptr %vlan4k_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlan4k_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.store.select = select i1 %tobool.not, i32 15, i32 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %vlan)
  %cmp = icmp uge i32 %spec.store.select, %vlan
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_enable_vlan(ptr nocapture noundef readonly %smi, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_enable_vlan.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_enable_vlan, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smi, align 4
  %cond = select i1 %enable, ptr @.str.88, ptr @.str.89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_enable_vlan.__UNIQUE_ID_ddebug503, ptr noundef %1, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %cond6 = select i1 %enable, i32 8192, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 8192, i32 noundef %cond6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_enable_vlan4k(ptr nocapture noundef readonly %smi, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_enable_vlan4k.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_enable_vlan4k, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smi, align 4
  %cond = select i1 %enable, ptr @.str.88, ptr @.str.89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_enable_vlan4k.__UNIQUE_ID_ddebug504, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %cond6 = select i1 %enable, i32 16384, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 16384, i32 noundef %cond6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_phy_read(ptr nocapture noundef readonly %smi, i32 noundef %phy, i32 noundef %regnum) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy)
  %cmp = icmp sgt i32 %phy, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 32768, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add = add nsw i32 %phy, 9
  %shl = shl nuw nsw i32 1, %add
  %or = or i32 %shl, %regnum
  %or3 = or i32 %or, 32768
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %or3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.143, i32 noundef %phy, i32 noundef %regnum, i32 noundef %or3, i32 noundef %call5) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call10 = call i32 @regmap_read(ptr noundef %8, i32 noundef 32770, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_phy_read.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_phy_read, %if.then19)) #7
          to label %do.end23 [label %if.then19], !srcloc !308

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smi, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_phy_read.__UNIQUE_ID_ddebug505, ptr noundef %10, ptr noundef nonnull @.str.145, i32 noundef %phy, i32 noundef %regnum, i32 noundef %or3, i32 noundef %12) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body14
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %14, %do.end23 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_phy_write(ptr nocapture noundef readonly %smi, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy)
  %cmp = icmp sgt i32 %phy, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 4
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 32768, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add = add nsw i32 %phy, 9
  %shl = shl nuw nsw i32 1, %add
  %or = or i32 %shl, %regnum
  %or3 = or i32 %or, 32768
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8366rb_phy_write.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8366rb_phy_write, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !308

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smi, align 4
  %conv = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8366rb_phy_write.__UNIQUE_ID_ddebug506, ptr noundef %3, ptr noundef nonnull @.str.147, i32 noundef %phy, i32 noundef %regnum, i32 noundef %or3, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end2
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %conv11 = zext i16 %val to i32
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %or3, i32 noundef %conv11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @realtek_smi_write_reg_noack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !291, !293, !294, !296, !297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @rtl8366rb_variant, !1, !"rtl8366rb_variant", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1806, i32 34}
!2 = !{ptr @__ksymtab_rtl8366rb_variant, !3, !"__ksymtab_rtl8366rb_variant", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1814, i32 1}
!4 = !{ptr @rtl8366rb_switch_ops, !5, !"rtl8366rb_switch_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1767, i32 36}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 819, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtl8366rb_setup._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8366rb_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 827, i32 3}
!16 = !{ptr @rtl8366rb_setup._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8366rb_setup._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 834, i32 3}
!20 = !{ptr @rtl8366rb_setup._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtl8366rb_setup._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 838, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl8366rb_setup._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8366rb_setup._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 865, i32 31}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 869, i32 31}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 870, i32 31}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1031, i32 3}
!35 = !{ptr @rtl8366rb_setup._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl8366rb_setup._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1035, i32 3}
!39 = !{ptr @rtl8366rb_setup._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtl8366rb_setup._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rtl8366rb_init_jam_ver_0, !42, !"rtl8366rb_init_jam_ver_0", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 652, i32 45}
!43 = !{ptr @rtl8366rb_init_jam_ver_1, !44, !"rtl8366rb_init_jam_ver_1", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 685, i32 45}
!45 = !{ptr @rtl8366rb_init_jam_ver_2, !46, !"rtl8366rb_init_jam_ver_2", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 700, i32 45}
!47 = !{ptr @rtl8366rb_init_jam_ver_3, !48, !"rtl8366rb_init_jam_ver_3", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 715, i32 45}
!49 = !{ptr @rtl8366rb_init_jam_f5d8235, !50, !"rtl8366rb_init_jam_f5d8235", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 736, i32 45}
!51 = !{ptr @rtl8366rb_init_jam_dgn3500, !52, !"rtl8366rb_init_jam_dgn3500", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 749, i32 45}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 791, i32 4}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rtl8366rb_jam_table.__UNIQUE_ID_ddebug497, !54, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!58 = !{ptr @rtl8366rb_green_jam, !59, !"rtl8366rb_green_jam", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 760, i32 45}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 625, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtl8366rb_set_addr._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rtl8366rb_set_addr._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 550, i32 49}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 552, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rtl8366rb_setup_cascaded_irq._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 558, i32 3}
!74 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 567, i32 3}
!78 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 576, i32 3}
!82 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 581, i32 3}
!86 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 589, i32 3}
!90 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 595, i32 6}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 597, i32 3}
!96 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 605, i32 3}
!100 = !{ptr @rtl8366rb_setup_cascaded_irq._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rtl8366rb_setup_cascaded_irq._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 489, i32 3}
!104 = !{ptr @rtl8366rb_irq._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtl8366rb_irq._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @rtl8366rb_irqdomain_ops, !107, !"rtl8366rb_irqdomain_ops", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 535, i32 36}
!108 = !{ptr @rtl8366rb_irq_chip, !109, !"rtl8366rb_irq_chip", i1 false, i1 false}
!109 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 511, i32 24}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 464, i32 3}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rtl8366rb_mask_irq._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @rtl8366rb_mask_irq._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 476, i32 3}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rtl8366rb_unmask_irq._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @rtl8366rb_unmask_irq._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1098, i32 2}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rtl8366rb_mac_link_down.__UNIQUE_ID_ddebug499, !121, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1104, i32 3}
!126 = !{ptr @rtl8366rb_mac_link_down._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @rtl8366rb_mac_link_down._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1061, i32 2}
!130 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rtl8366rb_mac_link_up.__UNIQUE_ID_ddebug498, !129, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1067, i32 3}
!134 = !{ptr @rtl8366rb_mac_link_up._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @rtl8366rb_mac_link_up._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1075, i32 3}
!138 = !{ptr @rtl8366rb_mac_link_up._entry.65, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rtl8366rb_mac_link_up._entry_ptr.67, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1083, i32 3}
!142 = !{ptr @rtl8366rb_mac_link_up._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rtl8366rb_mac_link_up._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1162, i32 2}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rtl8366rb_port_enable.__UNIQUE_ID_ddebug500, !145, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1148, i32 3}
!150 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @rb8366rb_set_port_led._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @rb8366rb_set_port_led._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1152, i32 3}
!155 = !{ptr @rb8366rb_set_port_led._entry.75, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @rb8366rb_set_port_led._entry_ptr.77, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1178, i32 2}
!159 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @rtl8366rb_port_disable.__UNIQUE_ID_ddebug501, !158, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1209, i32 4}
!163 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @rtl8366rb_port_bridge_join._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @rtl8366rb_port_bridge_join._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1240, i32 4}
!168 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rtl8366rb_port_bridge_leave._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @rtl8366rb_port_bridge_leave._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1347, i32 3}
!173 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @rtl8366rb_port_stp_state_set._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @rtl8366rb_port_stp_state_set._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1273, i32 2}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @rtl8366rb_vlan_filtering.__UNIQUE_ID_ddebug502, !177, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!180 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @rtl8366rb_smi_ops, !183, !"rtl8366rb_smi_ops", i1 false, i1 false}
!183 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1790, i32 37}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1737, i32 3}
!186 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rtl8366rb_detect._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rtl8366rb_detect._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1743, i32 3}
!191 = !{ptr @rtl8366rb_detect._entry.92, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rtl8366rb_detect._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1744, i32 3}
!195 = !{ptr @rtl8366rb_detect._entry.95, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rtl8366rb_detect._entry_ptr.97, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1747, i32 3}
!199 = !{ptr @rtl8366rb_detect._entry.98, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @rtl8366rb_detect._entry_ptr.100, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1755, i32 3}
!203 = !{ptr @rtl8366rb_detect._entry.101, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @rtl8366rb_detect._entry_ptr.103, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 364, i32 14}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 365, i32 14}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 366, i32 14}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 367, i32 14}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 368, i32 14}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 369, i32 14}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 370, i32 14}
!219 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 371, i32 14}
!221 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 372, i32 14}
!223 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 373, i32 14}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 374, i32 14}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 375, i32 14}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 376, i32 14}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 377, i32 14}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 378, i32 14}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 379, i32 14}
!237 = !{ptr @.str.120, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 380, i32 14}
!239 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 381, i32 14}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 382, i32 14}
!243 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 383, i32 14}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 384, i32 14}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 385, i32 14}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 386, i32 14}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 387, i32 14}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 388, i32 14}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 389, i32 14}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 390, i32 14}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 391, i32 14}
!261 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 392, i32 14}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 393, i32 14}
!265 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 394, i32 14}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 395, i32 14}
!269 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 396, i32 14}
!271 = !{ptr @rtl8366rb_mib_counters, !272, !"rtl8366rb_mib_counters", i1 false, i1 false}
!272 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 363, i32 35}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1721, i32 3}
!275 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @rtl8366rb_reset_chip._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @rtl8366rb_reset_chip._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1628, i32 2}
!280 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @rtl8366rb_enable_vlan.__UNIQUE_ID_ddebug503, !279, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1636, i32 2}
!284 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @rtl8366rb_enable_vlan4k.__UNIQUE_ID_ddebug504, !283, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1660, i32 3}
!288 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @rtl8366rb_phy_read._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @rtl8366rb_phy_read._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1670, i32 2}
!293 = !{ptr @rtl8366rb_phy_read.__UNIQUE_ID_ddebug505, !292, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/dsa/rtl8366rb.c", i32 1692, i32 2}
!296 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @rtl8366rb_phy_write.__UNIQUE_ID_ddebug506, !295, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i8 0, i8 2}
!308 = !{i64 2148902588, i64 2148902593, i64 2148902606, i64 2148902650, i64 2148902684, i64 2148902705}
!309 = !{!"auto-init"}
!310 = !{i32 0, i32 33}
