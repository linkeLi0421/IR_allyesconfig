; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/micrel/ks8851_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8851_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ks8851_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_ks8851_suspend\09\09\09\09"
module asm "\09.long\09__crc_ks8851_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ks8851_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_ks8851_resume\09\09\09\09"
module asm "\09.long\09__crc_ks8851_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ks8851_probe_common\22, \22a\22\09"
module asm "\09.weak\09__crc_ks8851_probe_common\09\09\09\09"
module asm "\09.long\09__crc_ks8851_probe_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_probe_common\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ks8851_remove_common\22, \22a\22\09"
module asm "\09.weak\09__crc_ks8851_remove_common\09\09\09\09"
module asm "\09.long\09__crc_ks8851_remove_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_remove_common\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ks8851_net = type { ptr, %struct.spinlock, [80 x i8], %union.ks8851_tx_hdr, [8 x i8], [8 x i8], [106 x i8], i32, i16, i8, i16, i16, i16, %struct.mii_if_info, %struct.ks8851_rxctrl, %struct.work_struct, %struct.sk_buff_head, %struct.eeprom_93cx6, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8] }
%union.ks8851_tx_hdr = type { [3 x i16] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ks8851_rxctrl = type { [4 x i16], i16, i16 }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.110, %union.anon.111 }
%union.anon.110 = type { [16 x i8] }
%union.anon.111 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }

@__kstrtab_ks8851_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_suspend to i32), ptr @__kstrtab_ks8851_suspend, ptr @__kstrtabns_ks8851_suspend }, section "___ksymtab_gpl+ks8851_suspend", align 4
@__kstrtab_ks8851_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_resume to i32), ptr @__kstrtab_ks8851_resume, ptr @__kstrtabns_ks8851_resume }, section "___ksymtab_gpl+ks8851_resume", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks8851_rst_n\00", [19 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reset gpio request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ks8851_probe_common\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/micrel/ks8851_common.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr = internal global ptr @ks8851_probe_common._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-io\00", [25 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator vdd_io enable fail: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr.10 = internal global ptr @ks8851_probe_common._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regulator vdd enable fail: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr.14 = internal global ptr @ks8851_probe_common._entry.12, section ".printk_index", align 4
@ks8851_probe_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ks->statelock\00", [17 x i8] zeroinitializer }, align 32
@ks8851_probe_common.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ks->rxctrl_work)\00", [60 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1189, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"message enable is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr.21 = internal global ptr @ks8851_probe_common._entry.18, section ".printk_index", align 4
@ks8851_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ks8851_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_get_msglevel, ptr @ks8851_set_msglevel, ptr @ks8851_nway_reset, ptr @ks8851_get_link, ptr null, ptr @ks8851_get_eeprom_len, ptr @ks8851_get_eeprom, ptr @ks8851_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_get_link_ksettings, ptr @ks8851_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ks8851_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ks8851_net_open, ptr @ks8851_net_stop, ptr @ks8851_start_xmit, ptr null, ptr null, ptr null, ptr @ks8851_set_rx_mode, ptr @ks8851_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @ks8851_net_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read device ID\0A\00", [38 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr.24 = internal global ptr @ks8851_probe_common._entry.22, section ".printk_index", align 4
@ks8851_probe_common._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register network device\0A\00", [61 x i8] zeroinitializer }, align 32
@ks8851_probe_common._entry_ptr.27 = internal global ptr @ks8851_probe_common._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"revision %d, MAC %pM, IRQ %d, %s EEPROM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"has\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_ks8851_probe_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_probe_common = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_probe_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_probe_common to i32), ptr @__kstrtab_ks8851_probe_common, ptr @__kstrtabns_ks8851_probe_common }, section "___ksymtab_gpl+ks8851_probe_common", align 4
@ks8851_remove_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1259, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ks8851_remove_common\00", [43 x i8] zeroinitializer }, align 32
@ks8851_remove_common._entry_ptr = internal global ptr @ks8851_remove_common._entry, section ".printk_index", align 4
@__kstrtab_ks8851_remove_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_remove_common = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_remove_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_remove_common to i32), ptr @__kstrtab_ks8851_remove_common, ptr @__kstrtabns_ks8851_remove_common }, section "___ksymtab_gpl+ks8851_remove_common", align 4
@__UNIQUE_ID_description388 = internal constant [48 x i8] c"ks8851_common.description=KS8851 Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [50 x i8] c"ks8851_common.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [61 x i8] c"ks8851_common.file=drivers/net/ethernet/micrel/ks8851_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [26 x i8] c"ks8851_common.license=GPL\00", section ".modinfo", align 1
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shutting down\0A\00", [17 x i8] zeroinitializer }, align 32
@ks8851_net_stop.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ks8851_common\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks8851_net_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: freeing txb %p\0A\00", [44 x i8] zeroinitializer }, align 32
@ks8851_set_powermode.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ks8851_set_powermode\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting power mode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@ks8851_net_open.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks8851_net_open\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"opening\0A\00", [23 x i8] zeroinitializer }, align 32
@ks8851_net_open.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"network device up\0A\00", [45 x i8] zeroinitializer }, align 32
@ks8851_irq.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ks8851_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: status 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@ks8851_irq.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: txspace %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: spi bus error\0A\00", [45 x i8] zeroinitializer }, align 32
@ks8851_rx_pkts.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ks8851_rx_pkts\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %d packets\0A\00", [16 x i8] zeroinitializer }, align 32
@ks8851_rx_pkts.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.47, ptr @.str.4, ptr @.str.49, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx: stat 0x%04x, len 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@ks8851_dbg_dumpkkt.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ks8851_dbg_dumpkkt\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pkt %02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ks8851_eth_mii\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KS8851\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Memory selftest not finished\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX memory selftest fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX memory selftest fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid mac address read %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1126, i32 47 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1133, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1135, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1140, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1148, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1152, i32 40 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1160, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1169, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1171, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1189, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"ks8851_ethtool_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 895, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"ks8851_netdev_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 691, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1216, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1229, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1233, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1235, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1235, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1259, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 526, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 555, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 112, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 451, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 459, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 506, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 348, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 374, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 382, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 263, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 280, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 228, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1088, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1094, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1984, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 706, i32 22 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 707, i32 23 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1035, i32 27 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1040, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1043, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [47 x i8] c"../drivers/net/ethernet/micrel/ks8851_common.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 211, i32 26 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__ksymtab_ks8851_probe_common, ptr @__ksymtab_ks8851_remove_common, ptr @__ksymtab_ks8851_resume, ptr @__ksymtab_ks8851_suspend, ptr @ks8851_probe_common._entry, ptr @ks8851_probe_common._entry.12, ptr @ks8851_probe_common._entry.18, ptr @ks8851_probe_common._entry.22, ptr @ks8851_probe_common._entry.25, ptr @ks8851_probe_common._entry.8, ptr @ks8851_probe_common._entry_ptr, ptr @ks8851_probe_common._entry_ptr.10, ptr @ks8851_probe_common._entry_ptr.14, ptr @ks8851_probe_common._entry_ptr.21, ptr @ks8851_probe_common._entry_ptr.24, ptr @ks8851_probe_common._entry_ptr.27, ptr @ks8851_remove_common._entry, ptr @ks8851_remove_common._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @ks8851_probe_common.__key, ptr @.str.15, ptr @ks8851_probe_common.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @ks8851_ethtool_ops, ptr @ks8851_netdev_ops, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @skb_queue_head_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_common._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_remove_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks8851_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_detach(ptr noundef %3) #11
  %call3 = tail call i32 @ks8851_net_stop(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_net_stop(ptr noundef %dev) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 128
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %5 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock.i, align 8
  call void %6(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %wrreg16.i = getelementptr i8, ptr %dev, i32 2772
  %7 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wrreg16.i, align 4
  call void %8(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 0) #11
  %9 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wrreg16.i, align 4
  call void %10(ptr noundef %add.ptr.i, i32 noundef 146, i32 noundef 65535) #11
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %11 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unlock.i, align 4
  call void %12(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %flush_tx_work.i = getelementptr i8, ptr %dev, i32 2792
  %13 = ptrtoint ptr %flush_tx_work.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flush_tx_work.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.ks8851_flush_tx_work.exit_crit_edge, label %if.then.i

do.end.ks8851_flush_tx_work.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_flush_tx_work.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void %14(ptr noundef %add.ptr.i) #11
  br label %ks8851_flush_tx_work.exit

ks8851_flush_tx_work.exit:                        ; preds = %if.then.i, %do.end.ks8851_flush_tx_work.exit_crit_edge
  %rxctrl_work = getelementptr i8, ptr %dev, i32 2620
  %call1 = call zeroext i1 @flush_work(ptr noundef %rxctrl_work) #11
  %15 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i, align 8
  call void %16(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %17 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wrreg16.i, align 4
  call void %18(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 0) #11
  %19 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wrreg16.i, align 4
  call void %20(ptr noundef %add.ptr.i, i32 noundef 112, i32 noundef 0) #11
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 128
  %and.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i49 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i49, label %ks8851_flush_tx_work.exit.ks8851_set_powermode.exit_crit_edge, label %do.body1.i

ks8851_flush_tx_work.exit.ks8851_set_powermode.exit_crit_edge: ; preds = %ks8851_flush_tx_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_set_powermode.exit

do.body1.i:                                       ; preds = %ks8851_flush_tx_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_set_powermode.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_net_stop, %if.then5.i)) #11
          to label %ks8851_set_powermode.exit [label %if.then5.i], !srcloc !142

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_set_powermode.__UNIQUE_ID_ddebug379, ptr noundef %24, ptr noundef nonnull @.str.38, i32 noundef 2) #11
  br label %ks8851_set_powermode.exit

ks8851_set_powermode.exit:                        ; preds = %if.then5.i, %do.body1.i, %ks8851_flush_tx_work.exit.ks8851_set_powermode.exit_crit_edge
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %25 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %26(ptr noundef %add.ptr.i, i32 noundef 212) #11
  %and10.i = and i32 %call.i.i, -4
  %or.i = or i32 %and10.i, 2
  %27 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wrreg16.i, align 4
  call void %28(ptr noundef %add.ptr.i, i32 noundef 212, i32 noundef %or.i) #11
  %29 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock.i, align 4
  call void %30(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %txq = getelementptr i8, ptr %dev, i32 2664
  %31 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %txq, align 4
  %cmp.i.not52 = icmp eq ptr %32, %txq
  br i1 %cmp.i.not52, label %ks8851_set_powermode.exit.while.end_crit_edge, label %ks8851_set_powermode.exit.while.body_crit_edge

ks8851_set_powermode.exit.while.body_crit_edge:   ; preds = %ks8851_set_powermode.exit
  br label %while.body

ks8851_set_powermode.exit.while.end_crit_edge:    ; preds = %ks8851_set_powermode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %do.end23.while.body_crit_edge, %ks8851_set_powermode.exit.while.body_crit_edge
  %call5 = call ptr @skb_dequeue(ptr noundef %txq) #11
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 128
  %and8 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %while.body.do.end23_crit_edge, label %do.body11

while.body.do.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.body11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_net_stop.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_net_stop, %if.then17)) #11
          to label %do.end23 [label %if.then17], !srcloc !142

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_net_stop.__UNIQUE_ID_ddebug387, ptr noundef %36, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef %call5) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body11, %while.body.do.end23_crit_edge
  call void @consume_skb(ptr noundef %call5) #11
  %37 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %txq, align 4
  %cmp.i.not = icmp eq ptr %38, %txq
  br i1 %cmp.i.not, label %do.end23.while.end_crit_edge, label %do.end23.while.body_crit_edge

do.end23.while.body_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end23.while.end_crit_edge, %ks8851_set_powermode.exit.while.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call24 = call ptr @free_irq(i32 noundef %40, ptr noundef %add.ptr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks8851_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @ks8851_net_open(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_net_open(ptr noundef %dev) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef null, ptr noundef nonnull @ks8851_irq, i32 noundef 8200, ptr noundef %dev, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 8
  call void %4(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 128
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end12_crit_edge, label %do.body3

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_net_open.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_net_open, %if.then8)) #11
          to label %do.end12 [label %if.then8], !srcloc !142

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_net_open.__UNIQUE_ID_ddebug385, ptr noundef %8, ptr noundef nonnull @.str.41) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3, %if.end.do.end12_crit_edge
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 128
  %and.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end12.ks8851_set_powermode.exit_crit_edge, label %do.body1.i

do.end12.ks8851_set_powermode.exit_crit_edge:     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_set_powermode.exit

do.body1.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_set_powermode.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_net_open, %if.then5.i)) #11
          to label %ks8851_set_powermode.exit [label %if.then5.i], !srcloc !142

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_set_powermode.__UNIQUE_ID_ddebug379, ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef 0) #11
  br label %ks8851_set_powermode.exit

ks8851_set_powermode.exit:                        ; preds = %if.then5.i, %do.body1.i, %do.end12.ks8851_set_powermode.exit_crit_edge
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %13 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %14(ptr noundef %add.ptr.i, i32 noundef 212) #11
  %and10.i = and i32 %call.i.i, -4
  %wrreg16.i.i = getelementptr i8, ptr %dev, i32 2772
  %15 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wrreg16.i.i, align 4
  call void %16(ptr noundef %add.ptr.i, i32 noundef 212, i32 noundef %and10.i) #11
  %17 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wrreg16.i.i, align 4
  call void %18(ptr noundef %add.ptr.i, i32 noundef 38, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #11
  %20 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wrreg16.i.i, align 4
  call void %21(ptr noundef %add.ptr.i, i32 noundef 38, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #11
  %23 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wrreg16.i.i, align 4
  call void %24(ptr noundef %add.ptr.i, i32 noundef 112, i32 noundef 15) #11
  %25 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wrreg16.i.i, align 4
  call void %26(ptr noundef %add.ptr.i, i32 noundef 132, i32 noundef 16384) #11
  %27 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wrreg16.i.i, align 4
  call void %28(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 3233) #11
  %29 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wrreg16.i.i, align 4
  call void %30(ptr noundef %add.ptr.i, i32 noundef 118, i32 noundef 128) #11
  %31 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wrreg16.i.i, align 4
  call void %32(ptr noundef %add.ptr.i, i32 noundef 140, i32 noundef 1000) #11
  %33 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wrreg16.i.i, align 4
  call void %34(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 4096) #11
  %35 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wrreg16.i.i, align 4
  call void %36(ptr noundef %add.ptr.i, i32 noundef 156, i32 noundef 10) #11
  %rc_rxqcr = getelementptr i8, ptr %dev, i32 2570
  %37 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 224, ptr %rc_rxqcr, align 2
  %38 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wrreg16.i.i, align 4
  call void %39(ptr noundef %add.ptr.i, i32 noundef 130, i32 noundef 224) #11
  %rc_ier = getelementptr i8, ptr %dev, i32 2568
  %40 = ptrtoint ptr %rc_ier to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rc_ier, align 8
  %conv14 = zext i16 %41 to i32
  %42 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wrreg16.i.i, align 4
  call void %43(ptr noundef %add.ptr.i, i32 noundef 146, i32 noundef %conv14) #11
  %44 = ptrtoint ptr %rc_ier to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rc_ier, align 8
  %conv16 = zext i16 %45 to i32
  %46 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrreg16.i.i, align 4
  call void %47(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef %conv16) #11
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %52 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable, align 128
  %and20 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %ks8851_set_powermode.exit.do.end42_crit_edge, label %do.body23

ks8851_set_powermode.exit.do.end42_crit_edge:     ; preds = %ks8851_set_powermode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.body23:                                        ; preds = %ks8851_set_powermode.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_net_open.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_net_open, %if.then35)) #11
          to label %do.end42 [label %if.then35], !srcloc !142

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_net_open.__UNIQUE_ID_ddebug386, ptr noundef %55, ptr noundef nonnull @.str.42) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %do.body23, %ks8851_set_powermode.exit.do.end42_crit_edge
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %56 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %unlock.i, align 4
  call void %57(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %mii = getelementptr i8, ptr %dev, i32 2576
  call void @mii_check_link(ptr noundef %mii) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %do.end42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks8851_probe_common(ptr noundef %netdev, ptr noundef %dev, i32 noundef %msg_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %netdev, ptr %add.ptr.i, align 128
  %tx_space = getelementptr i8, ptr %netdev, i32 2564
  %1 = ptrtoint ptr %tx_space to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6144, ptr %tx_space, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_get_named_gpio_flags(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call2)
  %cmp = icmp eq i32 %call2, -517
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio3 = getelementptr i8, ptr %netdev, i32 2752
  %4 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %gpio3, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call2)
  %5 = icmp ult i32 %call2, 2048
  br i1 %5, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call2, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.if.end9_crit_edge, label %do.end

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %vdd_io = getelementptr i8, ptr %netdev, i32 2748
  %6 = ptrtoint ptr %vdd_io to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %vdd_io, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call i32 @regulator_enable(ptr noundef %call10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call18) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  %vdd_reg = getelementptr i8, ptr %netdev, i32 2744
  %8 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %vdd_reg, align 8
  %cmp.i189 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call25 to i32
  br label %err_reg

if.end31:                                         ; preds = %if.end24
  %call33 = tail call i32 @regulator_enable(ptr noundef %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call33) #14
  br label %err_reg

if.end39:                                         ; preds = %if.end31
  br i1 %5, label %if.then41, label %if.end39.do.body43_crit_edge

if.end39.do.body43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %call2) #11
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #11
  br label %do.body43

do.body43:                                        ; preds = %if.then41, %if.end39.do.body43_crit_edge
  %statelock = getelementptr i8, ptr %netdev, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %statelock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ks8851_probe_common.__key, i16 noundef signext 3) #11
  %rxctrl_work = getelementptr i8, ptr %netdev, i32 2620
  tail call void @__init_work(ptr noundef %rxctrl_work, i32 noundef 0) #11
  %10 = ptrtoint ptr %rxctrl_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %rxctrl_work, align 4
  %lockdep_map = getelementptr i8, ptr %netdev, i32 2636
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @ks8851_probe_common.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry51 = getelementptr i8, ptr %netdev, i32 2624
  %11 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i = getelementptr i8, ptr %netdev, i32 2628
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry51, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %netdev, i32 2632
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ks8851_rxctrl_work, ptr %func, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 8
  %eeprom = getelementptr i8, ptr %netdev, i32 2720
  %15 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %eeprom, align 32
  %width = getelementptr i8, ptr %netdev, i32 2732
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %width, align 4
  %register_read = getelementptr i8, ptr %netdev, i32 2724
  %17 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ks8851_eeprom_regread, ptr %register_read, align 4
  %register_write = getelementptr i8, ptr %netdev, i32 2728
  %18 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ks8851_eeprom_regwrite, ptr %register_write, align 8
  %mii = getelementptr i8, ptr %netdev, i32 2576
  %dev60 = getelementptr i8, ptr %netdev, i32 2596
  %19 = ptrtoint ptr %dev60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %netdev, ptr %dev60, align 4
  %20 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %mii, align 16
  %phy_id_mask = getelementptr i8, ptr %netdev, i32 2584
  %21 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %netdev, i32 2588
  %22 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 15, ptr %reg_num_mask, align 4
  %mdio_read = getelementptr i8, ptr %netdev, i32 2600
  %23 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ks8851_phy_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %netdev, i32 2604
  %24 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ks8851_phy_write, ptr %mdio_write, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %msg_en) #14
  %call69 = tail call fastcc i32 @ks8851_register_mdiobus(ptr noundef %add.ptr.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %do.body43.err_mdio_crit_edge

do.body43.err_mdio_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mdio

if.end72:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %msg_en)
  %cmp1.i = icmp ugt i32 %msg_en, 31
  br i1 %cmp1.i, label %if.end72.netif_msg_init.exit_crit_edge, label %if.end.i

if.end72.netif_msg_init.exit_crit_edge:           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_en)
  %cmp2.i = icmp eq i32 %msg_en, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %notmask.i = shl nsw i32 -1, %msg_en
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end72.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %if.end72.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %netdev, i32 2560
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %msg_enable, align 128
  %txq = getelementptr i8, ptr %netdev, i32 2664
  %lock.i = getelementptr i8, ptr %netdev, i32 2676
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %26 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr i8, ptr %netdev, i32 2668
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %netdev, i32 2672
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qlen.i.i, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %29 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ks8851_ethtool_ops, ptr %ethtool_ops, align 16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %driver_data.i, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_carrier_off(ptr noundef %32) #11
  %if_port = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 52
  %33 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %if_port, align 2
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %34 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ks8851_netdev_ops, ptr %netdev_ops, align 8
  %wrreg16.i.i = getelementptr i8, ptr %netdev, i32 2772
  %35 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wrreg16.i.i, align 4
  tail call void %36(ptr noundef %add.ptr.i, i32 noundef 38, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #11
  %38 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wrreg16.i.i, align 4
  tail call void %39(ptr noundef %add.ptr.i, i32 noundef 38, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #11
  %rdreg16.i = getelementptr i8, ptr %netdev, i32 2768
  %41 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdreg16.i, align 16
  %call.i190 = tail call i32 %42(ptr noundef %add.ptr.i, i32 noundef 192) #11
  %and = and i32 %call.i190, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 34928, i32 %and)
  %cmp76.not = icmp eq i32 %and, 34928
  br i1 %cmp76.not, label %if.end81, label %netif_msg_init.exit.err_id_crit_edge

netif_msg_init.exit.err_id_crit_edge:             ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_id

if.end81:                                         ; preds = %netif_msg_init.exit
  %43 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdreg16.i, align 16
  %call.i192 = tail call i32 %44(ptr noundef %add.ptr.i, i32 noundef 8) #11
  %conv = trunc i32 %call.i192 to i16
  %rc_ccr = getelementptr i8, ptr %netdev, i32 2572
  %45 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %rc_ccr, align 4
  tail call fastcc void @ks8851_read_selftest(ptr noundef %add.ptr.i)
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  tail call fastcc void @ks8851_init_mac(ptr noundef %add.ptr.i, ptr noundef %47)
  %call84 = tail call i32 @register_netdev(ptr noundef %netdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end90, label %if.end81.err_id_crit_edge

if.end81.err_id_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_id

if.end90:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %call.i190, 1
  %and91 = and i32 %shr, 7
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %52 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rc_ccr, align 4
  %54 = and i16 %53, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool95.not = icmp eq i16 %54, 0
  %cond = select i1 %tobool95.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.28, i32 noundef %and91, ptr noundef %49, i32 noundef %51, ptr noundef nonnull %cond) #14
  br label %cleanup

err_id:                                           ; preds = %if.end81.err_id_crit_edge, %netif_msg_init.exit.err_id_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %netif_msg_init.exit.err_id_crit_edge ], [ @.str.26, %if.end81.err_id_crit_edge ]
  %ret.0 = phi i32 [ -19, %netif_msg_init.exit.err_id_crit_edge ], [ %call84, %if.end81.err_id_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.26.sink) #14
  tail call fastcc void @ks8851_unregister_mdiobus(ptr noundef %add.ptr.i)
  br label %err_mdio

err_mdio:                                         ; preds = %err_id, %do.body43.err_mdio_crit_edge
  %ret.1 = phi i32 [ %call69, %do.body43.err_mdio_crit_edge ], [ %ret.0, %err_id ]
  br i1 %5, label %if.then97, label %err_mdio.if.end98_crit_edge

err_mdio.if.end98_crit_edge:                      ; preds = %err_mdio
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then97:                                        ; preds = %err_mdio
  call void @__sanitizer_cov_trace_pc() #13
  %call.i193 = tail call ptr @gpio_to_desc(i32 noundef %call2) #11
  tail call void @gpiod_set_raw_value(ptr noundef %call.i193, i32 noundef 0) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %err_mdio.if.end98_crit_edge
  %55 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vdd_reg, align 8
  %call100 = tail call i32 @regulator_disable(ptr noundef %56) #11
  br label %err_reg

err_reg:                                          ; preds = %if.end98, %do.end38, %if.then28
  %ret.2 = phi i32 [ %9, %if.then28 ], [ %call33, %do.end38 ], [ %ret.1, %if.end98 ]
  %57 = ptrtoint ptr %vdd_io to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vdd_io, align 4
  %call102 = tail call i32 @regulator_disable(ptr noundef %58) #11
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end90, %do.end23, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end90 ], [ -517, %entry.cleanup_crit_edge ], [ %7, %if.then13 ], [ %call18, %do.end23 ], [ %ret.2, %err_reg ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_rxctrl_work(ptr noundef %work) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %lock.i = getelementptr i8, ptr %work, i32 140
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 8
  call void %2(ptr noundef %add.ptr, ptr noundef nonnull %flags) #11
  %wrreg16.i = getelementptr i8, ptr %work, i32 152
  %3 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wrreg16.i, align 4
  call void %4(ptr noundef %add.ptr, i32 noundef 116, i32 noundef 0) #11
  %unlock.i = getelementptr i8, ptr %work, i32 144
  %5 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unlock.i, align 4
  call void %6(ptr noundef %add.ptr, ptr noundef nonnull %flags) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_eeprom_regread(ptr nocapture noundef %ee) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee, align 4
  %rdreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdreg16.i, align 16
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 34) #11
  %4 = trunc i32 %call.i to i8
  %5 = lshr i8 %4, 3
  %6 = and i8 %5, 1
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 6
  %7 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %reg_data_out, align 2
  %8 = lshr i8 %4, 1
  %9 = and i8 %8, 1
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 7
  %10 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %reg_data_clock, align 1
  %11 = and i8 %4, 1
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 8
  %12 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_eeprom_regwrite(ptr nocapture noundef readonly %ee) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee, align 4
  %drive_data = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 4
  %2 = ptrtoint ptr %drive_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drive_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 48
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 5
  %4 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %or3 = or i32 %spec.select, 4
  %val.1 = select i1 %tobool1.not, i32 %spec.select, i32 %or3
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 7
  %6 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %or7 = or i32 %val.1, 2
  %val.2 = select i1 %tobool5.not, i32 %val.1, i32 %or7
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %ee, i32 0, i32 8
  %8 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp ne i8 %9, 0
  %or11 = zext i1 %tobool9.not to i32
  %val.3 = or i32 %val.2, %or11
  %wrreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrreg16.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 34, i32 noundef %val.3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_phy_read(ptr noundef %dev, i32 noundef %phy_addr, i32 noundef %reg) #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %1 = icmp ult i32 %reg, 6
  br i1 %1, label %switch.lookup, label %ks8851_phy_read_common.exit.thread

ks8851_phy_read_common.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  br label %8

switch.lookup:                                    ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %switch.idx.mult = shl i32 %reg, 1
  %switch.offset = add i32 %switch.idx.mult, 228
  %lock.i.i = getelementptr i8, ptr %dev, i32 2760
  %2 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i.i, align 8
  call void %3(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %4 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %5(ptr noundef %add.ptr.i.i, i32 noundef %switch.offset) #11
  %unlock.i.i = getelementptr i8, ptr %dev, i32 2764
  %6 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unlock.i.i, align 4
  call void %7(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %switch.lookup._crit_edge, label %switch.lookup._crit_edge4

switch.lookup._crit_edge4:                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %9

switch.lookup._crit_edge:                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %8

8:                                                ; preds = %switch.lookup._crit_edge, %ks8851_phy_read_common.exit.thread
  br label %9

9:                                                ; preds = %8, %switch.lookup._crit_edge4
  %10 = phi i32 [ 0, %8 ], [ %call.i.i, %switch.lookup._crit_edge4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_phy_write(ptr noundef %dev, i32 noundef %phy, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %1 = icmp ult i32 %reg, 6
  br i1 %1, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %switch.idx.mult = shl i32 %reg, 1
  %switch.offset = add i32 %switch.idx.mult, 228
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 8
  call void %3(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %wrreg16.i = getelementptr i8, ptr %dev, i32 2772
  %4 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wrreg16.i, align 4
  call void %5(ptr noundef %add.ptr.i, i32 noundef %switch.offset, i32 noundef %value) #11
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %6 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unlock.i, align 4
  call void %7(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks8851_register_mdiobus(ptr noundef %ks, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.52, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ks8851_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ks8851_mdio_write, ptr %write, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ks, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2, ptr %phy_mask, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.53, ptr noundef %retval.0.i)
  %call3 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %err_mdiobus_register

if.end6:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mii_bus7 = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 21
  %10 = ptrtoint ptr %mii_bus7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %mii_bus7, align 4
  br label %cleanup

err_mdiobus_register:                             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_mdiobus_register, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %err_mdiobus_register ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8851_read_selftest(ptr noundef %ks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 24
  %0 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdreg16.i, align 16
  %call.i = tail call i32 %1(ptr noundef %ks, i32 noundef 36) #11
  %and = and i32 %call.i, 4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4112, i32 %and)
  %cmp.not = icmp eq i32 %and, 4112
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.58) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and5 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.59) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8851_init_mac(ptr nocapture noundef readonly %ks, ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  %addr.i21 = alloca [6 x i8], align 1
  %flags.i = alloca i32, align 4
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ks, align 128
  %call = tail call i32 @of_get_ethdev_address(ptr noundef %np, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ks8851_write_mac_addr(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %rc_ccr = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 12
  %2 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rc_ccr, align 4
  %4 = and i16 %3, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %flags.i, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %6 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %lock.i.i = getelementptr i8, ptr %1, i32 2760
  %11 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock.i.i, align 8
  call void %12(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  %rdreg16.i.i = getelementptr i8, ptr %1, i32 2768
  %13 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %14(ptr noundef %add.ptr.i.i, i32 noundef 20) #11
  %15 = lshr i32 %call.i.i, 8
  %conv3.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %addr.i, align 1
  %conv5.i = trunc i32 %call.i.i to i8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5.i, ptr %6, align 1
  %18 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.1.i = call i32 %19(ptr noundef %add.ptr.i.i, i32 noundef 18) #11
  %20 = lshr i32 %call.i.1.i, 8
  %conv3.1.i = trunc i32 %20 to i8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.1.i, ptr %7, align 1
  %conv5.1.i = trunc i32 %call.i.1.i to i8
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.1.i, ptr %8, align 1
  %23 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.2.i = call i32 %24(ptr noundef %add.ptr.i.i, i32 noundef 16) #11
  %25 = lshr i32 %call.i.2.i, 8
  %conv3.2.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.2.i, ptr %9, align 1
  %conv5.2.i = trunc i32 %call.i.2.i to i8
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.2.i, ptr %10, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %unlock.i.i = getelementptr i8, ptr %1, i32 2764
  %28 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i.i, align 4
  call void %29(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

is_valid_ether_addr.exit:                         ; preds = %if.then3
  %add.ptr.i.i20 = getelementptr i8, ptr %31, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i20, align 2
  %conv.i.i = zext i16 %36 to i32
  %or.i.i = or i32 %33, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end6_crit_edge, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit.if.end6_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %is_valid_ether_addr.exit.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %37 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ks, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.60, ptr noundef %31) #14
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %if.end.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i21) #11
  %39 = call ptr @memset(ptr %addr.i21, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i21, i32 noundef 6) #11
  %40 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr.i21, align 1
  %42 = and i8 %41, -4
  %43 = or i8 %42, 2
  store i8 %43, ptr %addr.i21, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr.i21, i32 noundef 6) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %44 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i21) #11
  call fastcc void @ks8851_write_mac_addr(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8851_unregister_mdiobus(ptr nocapture noundef readonly %ks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_bus = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 21
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #11
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ks8851_remove_common(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mii_bus.i = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #11
  %4 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus.i, align 4
  tail call void @mdiobus_free(ptr noundef %5) #11
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 128
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  tail call void @unregister_netdev(ptr noundef %9) #11
  %gpio = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %11) #11
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %vdd_reg = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdd_reg, align 8
  %call5 = tail call i32 @regulator_disable(ptr noundef %14) #11
  %vdd_io = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %vdd_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdd_io, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %16) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_irq(i32 noundef %irq, ptr noundef %_ks) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %lock.i = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 22
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 8
  call void %2(ptr noundef %_ks, ptr noundef nonnull %flags) #11
  %rdreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 24
  %3 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdreg16.i, align 16
  %call.i = call i32 %4(ptr noundef %_ks, i32 noundef 146) #11
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 7
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 128
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_irq.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_irq, %if.then6)) #11
          to label %do.end9 [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %_ks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_ks, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_irq.__UNIQUE_ID_ddebug383, ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %call.i) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %and10 = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and14 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end9.if.end24_crit_edge, label %if.then16

do.end9.if.end24_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdreg16.i, align 16
  %call.i155 = call i32 %10(ptr noundef %_ks, i32 noundef 212) #11
  %conv20 = and i32 %call.i155, 65475
  %or22 = or i32 %conv20, 8
  %wrreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 25
  %11 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wrreg16.i, align 4
  call void %12(ptr noundef %_ks, i32 noundef 212, i32 noundef %or22) #11
  %or23 = or i32 %and10, 8
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %do.end9.if.end24_crit_edge
  %handled.1 = phi i32 [ %or23, %if.then16 ], [ %and10, %do.end9.if.end24_crit_edge ]
  %and25 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %13 = or i32 %handled.1, %and25
  %and30 = and i32 %call.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end24.if.end63_crit_edge, label %if.then32

if.end24.if.end63_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then32:                                        ; preds = %if.end24
  %or33 = or i32 %13, 16384
  %14 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdreg16.i, align 16
  %call.i157 = call i32 %15(ptr noundef %_ks, i32 noundef 120) #11
  %conv35 = trunc i32 %call.i157 to i16
  %tx_space = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 8
  %16 = ptrtoint ptr %tx_space to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv35, ptr %tx_space, align 4
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 128
  %and38 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then32.if.end63_crit_edge, label %do.body41

if.then32.if.end63_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.body41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_irq.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_irq, %if.then53)) #11
          to label %if.end63 [label %if.then53], !srcloc !142

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %_ks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_ks, align 128
  %21 = ptrtoint ptr %tx_space to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_space, align 4
  %conv56 = zext i16 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_irq.__UNIQUE_ID_ddebug384, ptr noundef %20, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv56) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %do.body41, %if.then32.if.end63_crit_edge, %if.end24.if.end63_crit_edge
  %handled.3 = phi i32 [ %or33, %if.then53 ], [ %or33, %if.then32.if.end63_crit_edge ], [ %13, %if.end24.if.end63_crit_edge ], [ %or33, %do.body41 ]
  %and64 = and i32 %call.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %23 = or i32 %handled.3, %and64
  %and69 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end63.if.end74_crit_edge, label %if.then71

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then71:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %_ks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_ks, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #14
  %or73 = or i32 %23, 2
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end63.if.end74_crit_edge
  %handled.5 = phi i32 [ %or73, %if.then71 ], [ %23, %if.end63.if.end74_crit_edge ]
  %wrreg16.i158 = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 25
  %26 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wrreg16.i158, align 4
  call void %27(ptr noundef %_ks, i32 noundef 146, i32 noundef %handled.5) #11
  br i1 %tobool65.not, label %if.end74.if.end78_crit_edge, label %if.then77

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ks8851_rx_pkts(ptr noundef %_ks)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74.if.end78_crit_edge
  br i1 %tobool26.not, label %if.end78.if.end94_crit_edge, label %if.then81

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %rxctrl = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 14
  %28 = ptrtoint ptr %rxctrl to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rxctrl, align 2
  %conv82 = zext i16 %29 to i32
  %30 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wrreg16.i158, align 4
  call void %31(ptr noundef %_ks, i32 noundef 160, i32 noundef %conv82) #11
  %arrayidx84 = getelementptr %struct.ks8851_net, ptr %_ks, i32 0, i32 14, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx84, align 2
  %conv85 = zext i16 %33 to i32
  %34 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wrreg16.i158, align 4
  call void %35(ptr noundef %_ks, i32 noundef 162, i32 noundef %conv85) #11
  %arrayidx87 = getelementptr %struct.ks8851_net, ptr %_ks, i32 0, i32 14, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx87, align 2
  %conv88 = zext i16 %37 to i32
  %38 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wrreg16.i158, align 4
  call void %39(ptr noundef %_ks, i32 noundef 164, i32 noundef %conv88) #11
  %arrayidx90 = getelementptr %struct.ks8851_net, ptr %_ks, i32 0, i32 14, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx90, align 2
  %conv91 = zext i16 %41 to i32
  %42 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wrreg16.i158, align 4
  call void %43(ptr noundef %_ks, i32 noundef 166, i32 noundef %conv91) #11
  %rxcr2 = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 14, i32 2
  %44 = ptrtoint ptr %rxcr2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rxcr2, align 2
  %conv92 = zext i16 %45 to i32
  %46 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrreg16.i158, align 4
  call void %47(ptr noundef %_ks, i32 noundef 118, i32 noundef %conv92) #11
  %rxcr1 = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 14, i32 1
  %48 = ptrtoint ptr %rxcr1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rxcr1, align 2
  %conv93 = zext i16 %49 to i32
  %50 = ptrtoint ptr %wrreg16.i158 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wrreg16.i158, align 4
  call void %51(ptr noundef %_ks, i32 noundef 116, i32 noundef %conv93) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then81, %if.end78.if.end94_crit_edge
  %unlock.i = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 23
  %52 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %unlock.i, align 4
  call void %53(ptr noundef %_ks, ptr noundef nonnull %flags) #11
  br i1 %tobool11.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %mii = getelementptr inbounds %struct.ks8851_net, ptr %_ks, i32 0, i32 13
  call void @mii_check_link(ptr noundef %mii) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  br i1 %tobool31.not, label %if.end98.if.end103_crit_edge, label %if.then101

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %_ks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_ks, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %57) #11
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98.if.end103_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_check_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8851_rx_pkts(ptr noundef %ks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 24
  %0 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdreg16.i, align 16
  %call.i = tail call i32 %1(ptr noundef %ks, i32 noundef 156) #11
  %shr = lshr i32 %call.i, 8
  %and = and i32 %shr, 255
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 7
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 128
  %and1 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_rx_pkts.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_rx_pkts, %if.then7)) #11
          to label %do.end10 [label %if.then7], !srcloc !142

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_rx_pkts.__UNIQUE_ID_ddebug381, ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %and) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not109 = icmp eq i32 %and, 0
  br i1 %cmp.not109, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %wrreg16.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 25
  %rc_rxqcr = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 11
  %rdfifo = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 26
  %rx_skb.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %for.body.lr.ph
  %rxfc.0110 = phi i32 [ %and, %for.body.lr.ph ], [ %dec, %if.end61.for.body_crit_edge ]
  %6 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdreg16.i, align 16
  %call.i102 = tail call i32 %7(ptr noundef %ks, i32 noundef 124) #11
  %8 = ptrtoint ptr %rdreg16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdreg16.i, align 16
  %call.i104 = tail call i32 %9(ptr noundef %ks, i32 noundef 126) #11
  %and13 = and i32 %call.i104, 4095
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 128
  %and16 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.do.end38_crit_edge, label %do.body19

for.body.do.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_rx_pkts.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_rx_pkts, %if.then31)) #11
          to label %do.end38 [label %if.then31], !srcloc !142

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_rx_pkts.__UNIQUE_ID_ddebug382, ptr noundef %13, ptr noundef nonnull @.str.49, i32 noundef %call.i102, i32 noundef %and13) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body19, %for.body.do.end38_crit_edge
  %14 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wrreg16.i, align 4
  tail call void %15(ptr noundef %ks, i32 noundef 134, i32 noundef 16384) #11
  %16 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rc_rxqcr, align 2
  %18 = or i16 %17, 8
  %or = zext i16 %18 to i32
  %19 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wrreg16.i, align 4
  tail call void %20(ptr noundef %ks, i32 noundef 130, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and13)
  %cmp39 = icmp ugt i32 %and13, 4
  br i1 %cmp39, label %if.then41, label %do.end38.if.end61_crit_edge

do.end38.if.end61_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then41:                                        ; preds = %do.end38
  %sub = add nsw i32 %and13, -4
  %add = add nsw i32 %and13, -1
  %and42 = and i32 %add, -4
  %21 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ks, align 128
  %add.i.i = or i32 %and42, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %22, i32 noundef %add.i.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then41.if.end61_crit_edge, label %if.then46

if.then41.if.end61_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then46:                                        ; preds = %if.then41
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call47 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub) #11
  %add.ptr = getelementptr i8, ptr %call47, i32 -8
  %27 = ptrtoint ptr %rdfifo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdfifo, align 8
  %add48 = add nuw nsw i32 %and42, 8
  tail call void %28(ptr noundef %ks, ptr noundef %add.ptr, i32 noundef %add48) #11
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 128
  %and50 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then46.if.end53_crit_edge, label %if.then52

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_dbg_dumpkkt.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_rx_pkts, %if.then.i)) #11
          to label %if.end53 [label %if.then.i], !srcloc !142

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ks, align 128
  %arrayidx.i = getelementptr i8, ptr %call47, i32 -4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %34 to i32
  %arrayidx4.i = getelementptr i8, ptr %call47, i32 -3
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %36 to i32
  %arrayidx6.i = getelementptr i8, ptr %call47, i32 -2
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %38 to i32
  %arrayidx8.i = getelementptr i8, ptr %call47, i32 -1
  %39 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %call47 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call47, align 1
  %conv11.i = zext i8 %42 to i32
  %arrayidx12.i = getelementptr i8, ptr %call47, i32 1
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %44 to i32
  %arrayidx14.i = getelementptr i8, ptr %call47, i32 2
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %46 to i32
  %arrayidx16.i = getelementptr i8, ptr %call47, i32 3
  %47 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %48 to i32
  %arrayidx18.i = getelementptr i8, ptr %call47, i32 4
  %49 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %50 to i32
  %arrayidx20.i = getelementptr i8, ptr %call47, i32 5
  %51 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %52 to i32
  %arrayidx22.i = getelementptr i8, ptr %call47, i32 6
  %53 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %54 to i32
  %arrayidx24.i = getelementptr i8, ptr %call47, i32 7
  %55 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_dbg_dumpkkt.__UNIQUE_ID_ddebug380, ptr noundef %32, ptr noundef nonnull @.str.51, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv23.i, i32 noundef %conv25.i) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then.i, %if.then52, %if.then46.if.end53_crit_edge
  %57 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ks, align 128
  %call55 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %58) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %59 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %call55, ptr %protocol, align 8
  %60 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb.i, align 4
  tail call void %61(ptr noundef %ks, ptr noundef nonnull %call.i.i) #11
  %62 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ks, align 128
  %stats = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 36
  %64 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stats, align 8
  %inc = add i32 %65, 1
  store i32 %inc, ptr %stats, align 8
  %66 = load ptr, ptr %ks, align 128
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 2
  %67 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_bytes, align 8
  %add59 = add i32 %68, %sub
  store i32 %add59, ptr %rx_bytes, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %if.then41.if.end61_crit_edge, %do.end38.if.end61_crit_edge
  %69 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rc_rxqcr, align 2
  %71 = or i16 %70, 1
  %or64 = zext i16 %71 to i32
  %72 = ptrtoint ptr %wrreg16.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wrreg16.i, align 4
  tail call void %73(ptr noundef %ks, i32 noundef 130, i32 noundef %or64) #11
  %dec = add nsw i32 %rxfc.0110, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end61.for.end_crit_edge, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %do.end10.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %cmp.not = icmp eq i32 %phy_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp1 = icmp eq i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg)
  %cmp3 = icmp eq i32 %reg, 3
  %spec.store.select = select i1 %cmp3, i32 2, i32 %reg
  %reg.addr.0 = select i1 %cmp1, i32 3, i32 %spec.store.select
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags.i, align 4, !annotation !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg.addr.0)
  %5 = icmp ult i32 %reg.addr.0, 6
  br i1 %5, label %switch.lookup, label %if.end.ks8851_phy_read_common.exit_crit_edge

if.end.ks8851_phy_read_common.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_phy_read_common.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %switch.idx.mult = shl i32 %reg.addr.0, 1
  %switch.offset = add i32 %switch.idx.mult, 228
  %lock.i.i = getelementptr i8, ptr %3, i32 2760
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 8
  call void %7(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  %rdreg16.i.i = getelementptr i8, ptr %3, i32 2768
  %8 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %9(ptr noundef %add.ptr.i.i, i32 noundef %switch.offset) #11
  %unlock.i.i = getelementptr i8, ptr %3, i32 2764
  %10 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock.i.i, align 4
  call void %11(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  br label %ks8851_phy_read_common.exit

ks8851_phy_read_common.exit:                      ; preds = %switch.lookup, %if.end.ks8851_phy_read_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %switch.lookup ], [ -95, %if.end.ks8851_phy_read_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ks8851_phy_read_common.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ks8851_phy_read_common.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags.i, align 4, !annotation !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %5 = icmp ult i32 %reg, 6
  br i1 %5, label %switch.lookup, label %entry.ks8851_phy_write.exit_crit_edge

entry.ks8851_phy_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_phy_write.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %conv = zext i16 %val to i32
  %switch.idx.mult = shl i32 %reg, 1
  %switch.offset = add i32 %switch.idx.mult, 228
  %lock.i.i = getelementptr i8, ptr %3, i32 2760
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 8
  call void %7(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  %wrreg16.i.i = getelementptr i8, ptr %3, i32 2772
  %8 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wrreg16.i.i, align 4
  call void %9(ptr noundef %add.ptr.i.i, i32 noundef %switch.offset, i32 noundef %conv) #11
  %unlock.i.i = getelementptr i8, ptr %3, i32 2764
  %10 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock.i.i, align 4
  call void %11(ptr noundef %add.ptr.i.i, ptr noundef nonnull %flags.i) #11
  br label %ks8851_phy_write.exit

ks8851_phy_write.exit:                            ; preds = %switch.lookup, %entry.ks8851_phy_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %di) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %di, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.55, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %di, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.56, i32 noundef 32) #11
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %di, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks8851_get_msglevel(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ks8851_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %to) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %to, ptr %msg_enable, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_nway_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2576
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_get_link(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2576
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #11
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks8851_get_eeprom_len(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_ccr = getelementptr i8, ptr %dev, i32 2572
  %0 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rc_ccr, align 4
  %2 = lshr i16 %1, 2
  %3 = and i16 %2, 128
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_get_eeprom(ptr noundef %dev, ptr nocapture noundef %ee, ptr noundef %data) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %3 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len2, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rc_ccr = getelementptr i8, ptr %dev, i32 2572
  %5 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rc_ccr, align 4
  %7 = and i16 %6, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %8 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i, align 8
  call void %9(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %wrreg16.i.i = getelementptr i8, ptr %dev, i32 2772
  %10 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrreg16.i.i, align 4
  call void %11(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef 17) #11
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %12 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 34897, ptr %magic, align 4
  %eeprom = getelementptr i8, ptr %dev, i32 2720
  %div = sdiv i32 %1, 2
  %conv10 = trunc i32 %div to i8
  %div11 = sdiv i32 %4, 2
  %conv12 = trunc i32 %div11 to i16
  call void @eeprom_93cx6_multiread(ptr noundef %eeprom, i8 noundef zeroext %conv10, ptr noundef %data, i16 noundef zeroext %conv12) #11
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %13 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %14(ptr noundef %add.ptr.i, i32 noundef 34) #11
  %and.i = and i32 %call.i.i, -17
  %15 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wrreg16.i.i, align 4
  call void %16(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %and.i) #11
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %17 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlock.i, align 4
  call void %18(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_set_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %ee, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %3 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #11
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %tmp, align 2, !annotation !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34897, i32 %7)
  %cmp3.not = icmp eq i32 %7, 34897
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rc_ccr = getelementptr i8, ptr %dev, i32 2572
  %8 = ptrtoint ptr %rc_ccr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rc_ccr, align 4
  %10 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %11 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock.i, align 8
  call void %12(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %wrreg16.i.i = getelementptr i8, ptr %dev, i32 2772
  %13 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wrreg16.i.i, align 4
  call void %14(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef 17) #11
  %eeprom = getelementptr i8, ptr %dev, i32 2720
  call void @eeprom_93cx6_wren(ptr noundef %eeprom, i1 noundef zeroext true) #11
  %div = sdiv i32 %1, 2
  %conv10 = trunc i32 %div to i8
  call void @eeprom_93cx6_read(ptr noundef %eeprom, i8 noundef zeroext %conv10, ptr noundef nonnull %tmp) #11
  %and11 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tmp, align 2
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %17 = and i16 %16, 255
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv17 = zext i8 %19 to i16
  %shl = shl nuw i16 %conv17, 8
  %or = or i16 %shl, %17
  br label %if.end27

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %20 = and i16 %16, -256
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 1
  %conv23 = zext i8 %22 to i16
  %or25 = or i16 %20, %conv23
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then13
  %storemerge = phi i16 [ %or25, %if.else ], [ %or, %if.then13 ]
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %storemerge, ptr %tmp, align 2
  call void @eeprom_93cx6_write(ptr noundef %eeprom, i8 noundef zeroext %conv10, i16 noundef zeroext %storemerge) #11
  call void @eeprom_93cx6_wren(ptr noundef %eeprom, i1 noundef zeroext false) #11
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %24 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %25(ptr noundef %add.ptr.i, i32 noundef 34) #11
  %and.i = and i32 %call.i.i, -17
  %26 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wrreg16.i.i, align 4
  call void %27(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %and.i) #11
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %28 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i, align 4
  call void %29(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2576
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2576
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #11
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_wren(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_write(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %start_xmit = getelementptr i8, ptr %dev, i32 2784
  %0 = ptrtoint ptr %start_xmit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_xmit, align 32
  %call1 = tail call i32 %1(ptr noundef %skb, ptr noundef %dev) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  %rxctrl = alloca %struct.ks8851_rxctrl, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rxctrl) #11
  %0 = getelementptr inbounds %struct.ks8851_rxctrl, ptr %rxctrl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ks8851_rxctrl, ptr %rxctrl, i32 0, i32 2
  %2 = call ptr @memset(ptr %rxctrl, i32 0, i32 12)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end55_crit_edge

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.else:                                          ; preds = %entry
  %and2 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else6, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.else6:                                         ; preds = %if.else
  %and8 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else6.if.end55_crit_edge, label %land.lhs.true

if.else6.if.end55_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true:                                    ; preds = %if.else6
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true.if.end55_crit_edge, label %for.cond.preheader

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

for.cond.preheader:                               ; preds = %land.lhs.true
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.098 = load ptr, ptr %mc, align 4
  %cmp15.not99 = icmp eq ptr %ha.098, %mc
  br i1 %cmp15.not99, label %for.cond.preheader.if.end55_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.if.end55_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %ha.0100 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.098, %for.cond.preheader.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0100, i32 0, i32 2
  %call16 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %8 = and i32 %call16, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %10 to i32
  %shr40 = lshr i32 %conv2.i.i, 2
  %and41 = and i32 %shr40, 15
  %shl42 = shl nuw nsw i32 1, %and41
  %shr43 = lshr i32 %conv2.i.i, 6
  %arrayidx = getelementptr [4 x i16], ptr %rxctrl, i32 0, i32 %shr43
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = trunc i32 %shl42 to i16
  %conv45 = or i16 %12, %13
  store i16 %conv45, ptr %arrayidx, align 2
  %14 = ptrtoint ptr %ha.0100 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.0100, align 4
  %cmp15.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp15.not, label %cond.end.if.end55_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.end.if.end55_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %cond.end.if.end55_crit_edge, %for.cond.preheader.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.else6.if.end55_crit_edge, %if.else.if.end55_crit_edge, %entry.if.end55_crit_edge
  %.sink = phi i16 [ 1203, %entry.if.end55_crit_edge ], [ 3569, %if.else.if.end55_crit_edge ], [ 3297, %for.cond.preheader.if.end55_crit_edge ], [ 3233, %land.lhs.true.if.end55_crit_edge ], [ 3233, %if.else6.if.end55_crit_edge ], [ 3297, %cond.end.if.end55_crit_edge ]
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %0, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 2
  %18 = or i16 %17, 128
  store i16 %18, ptr %1, align 2
  %statelock = getelementptr i8, ptr %dev, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %statelock) #11
  %rxctrl63 = getelementptr i8, ptr %dev, i32 2608
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %rxctrl, ptr noundef dereferenceable(12) %rxctrl63, i32 12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp65.not = icmp eq i32 %bcmp, 0
  br i1 %cmp65.not, label %if.end55.if.end70_crit_edge, label %if.then67

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %19 = call ptr @memcpy(ptr %rxctrl63, ptr %rxctrl, i32 12)
  %rxctrl_work = getelementptr i8, ptr %dev, i32 2620
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %rxctrl_work) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end55.if.end70_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %statelock) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rxctrl) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end3

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  tail call fastcc void @ks8851_write_mac_addr(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_net_ioctl(ptr noundef %dev, ptr noundef %req, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mii = getelementptr i8, ptr %dev, i32 2576
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8851_write_mac_addr(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !141
  %lock.i = getelementptr i8, ptr %dev, i32 2760
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 8
  call void %2(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2560
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 128
  %and.i = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ks8851_set_powermode.exit_crit_edge, label %do.body1.i

entry.ks8851_set_powermode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_set_powermode.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_set_powermode.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_write_mac_addr, %if.then5.i)) #11
          to label %ks8851_set_powermode.exit [label %if.then5.i], !srcloc !142

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_set_powermode.__UNIQUE_ID_ddebug379, ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef 0) #11
  br label %ks8851_set_powermode.exit

ks8851_set_powermode.exit:                        ; preds = %if.then5.i, %do.body1.i, %entry.ks8851_set_powermode.exit_crit_edge
  %rdreg16.i.i = getelementptr i8, ptr %dev, i32 2768
  %7 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i = call i32 %8(ptr noundef %add.ptr.i, i32 noundef 212) #11
  %and10.i = and i32 %call.i.i, -4
  %wrreg16.i.i = getelementptr i8, ptr %dev, i32 2772
  %9 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wrreg16.i.i, align 4
  call void %10(ptr noundef %add.ptr.i, i32 noundef 212, i32 noundef %and10.i) #11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %12, i32 1
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %16 to i32
  %or = or i32 %shl, %conv3
  %17 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wrreg16.i.i, align 4
  call void %18(ptr noundef %add.ptr.i, i32 noundef 20, i32 noundef %or) #11
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %22 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %arrayidx2.1 = getelementptr i8, ptr %20, i32 3
  %23 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.1, align 1
  %conv3.1 = zext i8 %24 to i32
  %or.1 = or i32 %shl.1, %conv3.1
  %25 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wrreg16.i.i, align 4
  call void %26(ptr noundef %add.ptr.i, i32 noundef 18, i32 noundef %or.1) #11
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %30 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 8
  %arrayidx2.2 = getelementptr i8, ptr %28, i32 5
  %31 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.2, align 1
  %conv3.2 = zext i8 %32 to i32
  %or.2 = or i32 %shl.2, %conv3.2
  %33 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wrreg16.i.i, align 4
  call void %34(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef %or.2) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %ks8851_set_powermode.exit.if.end_crit_edge

ks8851_set_powermode.exit.if.end_crit_edge:       ; preds = %ks8851_set_powermode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ks8851_set_powermode.exit
  %37 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i, align 128
  %and.i2 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.then.ks8851_set_powermode.exit10_crit_edge, label %do.body1.i4

if.then.ks8851_set_powermode.exit10_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks8851_set_powermode.exit10

do.body1.i4:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_set_powermode.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_write_mac_addr, %if.then5.i5)) #11
          to label %ks8851_set_powermode.exit10 [label %if.then5.i5], !srcloc !142

if.then5.i5:                                      ; preds = %do.body1.i4
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_set_powermode.__UNIQUE_ID_ddebug379, ptr noundef %40, ptr noundef nonnull @.str.38, i32 noundef 2) #11
  br label %ks8851_set_powermode.exit10

ks8851_set_powermode.exit10:                      ; preds = %if.then5.i5, %do.body1.i4, %if.then.ks8851_set_powermode.exit10_crit_edge
  %41 = ptrtoint ptr %rdreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdreg16.i.i, align 16
  %call.i.i7 = call i32 %42(ptr noundef %add.ptr.i, i32 noundef 212) #11
  %and10.i8 = and i32 %call.i.i7, -4
  %or.i = or i32 %and10.i8, 2
  %43 = ptrtoint ptr %wrreg16.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wrreg16.i.i, align 4
  call void %44(ptr noundef %add.ptr.i, i32 noundef 212, i32 noundef %or.i) #11
  br label %if.end

if.end:                                           ; preds = %ks8851_set_powermode.exit10, %ks8851_set_powermode.exit.if.end_crit_edge
  %unlock.i = getelementptr i8, ptr %dev, i32 2764
  %45 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %unlock.i, align 4
  call void %46(ptr noundef %add.ptr.i, ptr noundef nonnull %flags) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__ksymtab_ks8851_suspend, !1, !"__ksymtab_ks8851_suspend", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1062, i32 1}
!2 = !{ptr @__ksymtab_ks8851_resume, !3, !"__ksymtab_ks8851_resume", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1076, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1126, i32 47}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1133, i32 30}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1135, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ks8851_probe_common._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @ks8851_probe_common._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1140, i32 39}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1148, i32 3}
!20 = !{ptr @ks8851_probe_common._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ks8851_probe_common._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1152, i32 40}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1160, i32 3}
!26 = !{ptr @ks8851_probe_common._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ks8851_probe_common._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ks8851_probe_common.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1169, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ks8851_probe_common.__key.16, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1171, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1189, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ks8851_probe_common._entry.18, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ks8851_probe_common._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1216, i32 3}
!41 = !{ptr @ks8851_probe_common._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ks8851_probe_common._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1229, i32 3}
!45 = !{ptr @ks8851_probe_common._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ks8851_probe_common._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1233, i32 22}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1235, i32 33}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1235, i32 41}
!53 = !{ptr @__ksymtab_ks8851_probe_common, !54, !"__ksymtab_ks8851_probe_common", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1250, i32 1}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1259, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ks8851_remove_common._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ks8851_remove_common._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_ks8851_remove_common, !61, !"__ksymtab_ks8851_remove_common", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1267, i32 1}
!62 = !{ptr @__UNIQUE_ID_description388, !63, !"__UNIQUE_ID_description388", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1269, i32 1}
!64 = !{ptr @__UNIQUE_ID_author389, !65, !"__UNIQUE_ID_author389", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1270, i32 1}
!66 = !{ptr @__UNIQUE_ID_file390, !67, !"__UNIQUE_ID_file390", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1271, i32 1}
!68 = !{ptr @__UNIQUE_ID_license391, !67, !"__UNIQUE_ID_license391", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 526, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 555, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ks8851_net_stop.__UNIQUE_ID_ddebug387, !72, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 112, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ks8851_set_powermode.__UNIQUE_ID_ddebug379, !77, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 451, i32 19}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 459, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ks8851_net_open.__UNIQUE_ID_ddebug385, !83, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 506, i32 2}
!88 = !{ptr @ks8851_net_open.__UNIQUE_ID_ddebug386, !87, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 348, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ks8851_irq.__UNIQUE_ID_ddebug383, !90, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 374, i32 3}
!95 = !{ptr @ks8851_irq.__UNIQUE_ID_ddebug384, !94, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 382, i32 26}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 263, i32 2}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ks8851_rx_pkts.__UNIQUE_ID_ddebug381, !99, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 280, i32 3}
!104 = !{ptr @ks8851_rx_pkts.__UNIQUE_ID_ddebug382, !103, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 228, i32 2}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ks8851_dbg_dumpkkt.__UNIQUE_ID_ddebug380, !106, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1088, i32 18}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1094, i32 41}
!113 = !{ptr @skb_queue_head_init.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ks8851_ethtool_ops, !117, !"ks8851_ethtool_ops", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 895, i32 33}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 706, i32 22}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 707, i32 23}
!122 = !{ptr @ks8851_netdev_ops, !123, !"ks8851_netdev_ops", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 691, i32 36}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1035, i32 27}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1040, i32 26}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 1043, i32 26}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/micrel/ks8851_common.c", i32 211, i32 26}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i64 2148746887, i64 2148746892, i64 2148746905, i64 2148746949, i64 2148746983, i64 2148747004}
