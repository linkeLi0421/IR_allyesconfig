; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_stats = type { [32 x i8], i32, i32 }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.qlcnic_recv_context = type { ptr, ptr, i32, i16, i16 }
%struct.qlcnic_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], ptr, i32, i32, [28 x i8], [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.qlcnic_host_tx_ring = type { i32, ptr, [28 x i8], i16, i32, i32, i32, i32, %struct.qlcnic_tx_queue_stats, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, ptr, %struct.spinlock, [112 x i8] }
%struct.qlcnic_tx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.qlcnic_host_rds_ring = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, [40 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct._cdrp_cmd = type { i32, ptr }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_esw_statistics = type { %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics }
%struct.__qlcnic_esw_statistics = type { i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.qlcnic_mac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qlcnic_do_lb_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1074, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LB Test: packet #%d was not received\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qlcnic_do_lb_test\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_do_lb_test._entry_ptr = internal global ptr @qlcnic_do_lb_test._entry, section ".printk_index", align 4
@qlcnic_do_lb_test._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1081, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LB Test: failed, TX[%d], RX[%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_do_lb_test._entry_ptr.8 = internal global ptr @qlcnic_do_lb_test._entry.5, section ".printk_index", align 4
@qlcnic_do_lb_test._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1084, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WARNING: Please check loopback cable\0A\00", [58 x i8] zeroinitializer }, align 32
@qlcnic_do_lb_test._entry_ptr.11 = internal global ptr @qlcnic_do_lb_test._entry.9, section ".printk_index", align 4
@qlcnic_enable_fw_dump_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1609, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FW dump enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_enable_fw_dump_state\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_enable_fw_dump_state._entry_ptr = internal global ptr @qlcnic_enable_fw_dump_state._entry, section ".printk_index", align 4
@qlcnic_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @qlcnic_get_drvinfo, ptr @qlcnic_get_regs_len, ptr @qlcnic_get_regs, ptr @qlcnic_get_wol, ptr @qlcnic_set_wol, ptr @qlcnic_get_msglevel, ptr @qlcnic_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @qlcnic_get_eeprom_len, ptr @qlcnic_get_eeprom, ptr null, ptr @qlcnic_get_intr_coalesce, ptr @qlcnic_set_intr_coalesce, ptr @qlcnic_get_ringparam, ptr @qlcnic_set_ringparam, ptr null, ptr @qlcnic_get_pauseparam, ptr @qlcnic_set_pauseparam, ptr @qlcnic_diag_test, ptr @qlcnic_get_strings, ptr @qlcnic_set_led, ptr @qlcnic_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_channels, ptr @qlcnic_set_channels, ptr @qlcnic_get_dump_flag, ptr @qlcnic_get_dump_data, ptr @qlcnic_set_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_link_ksettings, ptr @qlcnic_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @qlcnic_get_drvinfo, ptr @qlcnic_get_regs_len, ptr @qlcnic_get_regs, ptr @qlcnic_get_wol, ptr null, ptr @qlcnic_get_msglevel, ptr @qlcnic_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @qlcnic_get_eeprom_len, ptr @qlcnic_get_eeprom, ptr null, ptr @qlcnic_get_intr_coalesce, ptr @qlcnic_set_intr_coalesce, ptr @qlcnic_get_ringparam, ptr @qlcnic_set_ringparam, ptr null, ptr @qlcnic_get_pauseparam, ptr null, ptr null, ptr @qlcnic_get_strings, ptr null, ptr @qlcnic_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@qlcnic_ethtool_failed_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @qlcnic_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_msglevel, ptr @qlcnic_set_msglevel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_set_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_driver_name = external dso_local global [0 x i8], align 1
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.3.66\00", [25 x i8] zeroinitializer }, align 32
@diag_registers = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 16, i32 17, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 2, i32 0, i32 1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx jumbo\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_validate_ringparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: setting %s ring size %d instead of %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_validate_ringparam\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_validate_ringparam._entry_ptr = internal global ptr @qlcnic_validate_ringparam._entry, section ".printk_index", align 4
@qlcnic_get_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 839, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown board type: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_get_pauseparam\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_get_pauseparam._entry_ptr = internal global ptr @qlcnic_get_pauseparam._entry, section ".printk_index", align 4
@qlcnic_set_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.24, ptr @.str.2, i32 928, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_set_pauseparam\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_set_pauseparam._entry_ptr = internal global ptr @qlcnic_set_pauseparam._entry, section ".printk_index", align 4
@qlcnic_loopback_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1105, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Firmware do not support loopback test\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_loopback_test\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_loopback_test._entry_ptr = internal global ptr @qlcnic_loopback_test._entry, section ".printk_index", align 4
@qlcnic_loopback_test._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s loopback test in progress\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_loopback_test._entry_ptr.29 = internal global ptr @qlcnic_loopback_test._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_loopback_test._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.2, i32 1113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Loopback test not supported in nonprivileged mode\0A\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_loopback_test._entry_ptr.34 = internal global ptr @qlcnic_loopback_test._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware didn't sent link up event to loopback request\0A\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_gstrings_test = internal constant { [6 x [32 x i8]], [32 x i8] } { [6 x [32 x i8]] [[32 x i8] c"Register_Test_on_offline\00\00\00\00\00\00\00\00", [32 x i8] c"Link_Test_on_offline\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt_Test_offline\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Internal_Loopback_offline\00\00\00\00\00\00\00", [32 x i8] c"External_Loopback_offline\00\00\00\00\00\00\00", [32 x i8] c"EEPROM_Test_offline\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_queue_%d %s\00", [17 x i8] zeroinitializer }, align 32
@qlcnic_tx_queue_stats_strings = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"xmit_on\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xmit_off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xmit_called\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xmit_finished\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@qlcnic_gstrings_stats = internal constant { [23 x %struct.qlcnic_stats], [232 x i8] } { [23 x %struct.qlcnic_stats] [%struct.qlcnic_stats { [32 x i8] c"xmit_on\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 736 }, %struct.qlcnic_stats { [32 x i8] c"xmit_off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 744 }, %struct.qlcnic_stats { [32 x i8] c"xmit_called\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 624 }, %struct.qlcnic_stats { [32 x i8] c"xmit_finished\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 632 }, %struct.qlcnic_stats { [32 x i8] c"tx dma map error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 776 }, %struct.qlcnic_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 688 }, %struct.qlcnic_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 648 }, %struct.qlcnic_stats { [32 x i8] c"rx dma map error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 768 }, %struct.qlcnic_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 664 }, %struct.qlcnic_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 680 }, %struct.qlcnic_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 640 }, %struct.qlcnic_stats { [32 x i8] c"null rxbuf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 760 }, %struct.qlcnic_stats { [32 x i8] c"csummed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 656 }, %struct.qlcnic_stats { [32 x i8] c"lro_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 672 }, %struct.qlcnic_stats { [32 x i8] c"lrobytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 696 }, %struct.qlcnic_stats { [32 x i8] c"lso_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 704 }, %struct.qlcnic_stats { [32 x i8] c"encap_lso_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 712 }, %struct.qlcnic_stats { [32 x i8] c"encap_tx_csummed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 720 }, %struct.qlcnic_stats { [32 x i8] c"encap_rx_csummed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 728 }, %struct.qlcnic_stats { [32 x i8] c"skb_alloc_failure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 752 }, %struct.qlcnic_stats { [32 x i8] c"mac_filter_limit_overrun\00\00\00\00\00\00\00\00", i32 8, i32 792 }, %struct.qlcnic_stats { [32 x i8] c"spurious intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 784 }, %struct.qlcnic_stats { [32 x i8] c"mbx spurious intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 800 }], [232 x i8] zeroinitializer }, align 32
@qlcnic_83xx_tx_stats_strings = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"ctx_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_tx_dropped_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_tx_num_buffers\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@qlcnic_83xx_mac_stats_strings = internal constant { [40 x [32 x i8]], [320 x i8] } { [40 x [32 x i8]] [[32 x i8] c"mac_tx_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_pause_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_ctrl_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_64b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_127b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_255b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_511b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_1023b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_lt_1518b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_tx_gt_1518b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_pause_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_ctrl_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_64b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_127b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_255b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_511b_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_1023b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_lt_1518b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_gt_1518b_pkts\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_length_error\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_length_small\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_length_large\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_crc_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_align_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_multicast_frames\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_broadcast_frames\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_unicast_frames\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eswitch_error_free_frames\00\00\00\00\00\00\00", [32 x i8] c"eswitch_error_free_bytes\00\00\00\00\00\00\00\00"], [320 x i8] zeroinitializer }, align 32
@qlcnic_83xx_rx_stats_strings = internal constant { [17 x [32 x i8]], [128 x i8] } { [17 x [32 x i8]] [[32 x i8] c"ctx_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_lro_pkt_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_ip_csum_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_rx_pkts_wo_ctx\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_rx_pkts_drop_wo_sds_on_card\00", [32 x i8] c"ctx_rx_pkts_drop_wo_sds_on_host\00", [32 x i8] c"ctx_rx_osized_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_rx_pkts_dropped_wo_rds\00\00\00\00\00\00", [32 x i8] c"ctx_rx_unexpected_mcast_pkts\00\00\00\00", [32 x i8] c"ctx_invalid_mac_address\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_rx_rds_ring_prim_attempted\00\00", [32 x i8] c"ctx_rx_rds_ring_prim_success\00\00\00\00", [32 x i8] c"ctx_num_lro_flows_added\00\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_num_lro_flows_removed\00\00\00\00\00\00\00", [32 x i8] c"ctx_num_lro_flows_active\00\00\00\00\00\00\00\00", [32 x i8] c"ctx_pkts_dropped_unknown\00\00\00\00\00\00\00\00"], [128 x i8] zeroinitializer }, align 32
@qlcnic_device_gstrings_stats = internal constant { [14 x [32 x i8]], [96 x i8] } { [14 x [32 x i8]] [[32 x i8] c"tx unicast frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx multicast frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx broadcast frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx dropped frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx local frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx numbytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx unicast frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx multicast frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx broadcast frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx dropped frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx local frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx numbytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [96 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LED test not supported for non privilege function\0A\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1440, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set LED blink state.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qlcnic_set_led\00", [17 x i8] zeroinitializer }, align 32
@qlcnic_set_led._entry_ptr = internal global ptr @qlcnic_set_led._entry, section ".printk_index", align 4
@qlcnic_set_led._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1457, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to reset LED blink state.\0A\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_set_led._entry_ptr.42 = internal global ptr @qlcnic_set_led._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No RSS/TSS support in non MSI-X mode\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to configure %u SDS rings\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to configure %u Tx rings\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Allocated %d SDS rings and %d Tx rings\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Invalid ring count, SDS ring count %d should not be greater than max %d driver sds rings.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Invalid ring count, Tx ring count %d should not be greater than max %d driver Tx rings.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW Dump not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dump not available\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"extracted the FW dump Successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW dump not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW dump not enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Previous dump not cleared, not forcing dump\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Forcing a FW dump\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Forcing a FW reset\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device is in non-operational state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid dump level: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_disable_fw_dump_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1632, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW dump disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_disable_fw_dump_state\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_disable_fw_dump_state._entry_ptr = internal global ptr @qlcnic_disable_fw_dump_state._entry, section ".printk_index", align 4
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Can not change driver mask to 0x%x. FW dump not enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Driver mask changed to: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 405, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported board model %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qlcnic_82xx_get_link_ksettings\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_link_ksettings._entry_ptr = internal global ptr @qlcnic_82xx_get_link_ksettings._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.76 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [9 x i64] [i64 7, i64 16, i64 32800, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.85 = internal global [8 x i64] [i64 6, i64 32, i64 182320877, i64 195952365, i64 2916089872, i64 2916089888, i64 3735936685, i64 3735944941]
@__sancov_gen_cov_switch_values.86 = internal global [9 x i64] [i64 7, i64 32, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255]
@__sancov_gen_cov_switch_values.87 = internal global [9 x i64] [i64 7, i64 16, i64 32800, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [16 x i64] [i64 14, i64 16, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 49, i64 50, i64 128]
@__sancov_gen_cov_switch_values.90 = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1072, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1080, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1083, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1609, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"qlcnic_ethtool_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1827, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant [28 x i8] c"qlcnic_sriov_vf_ethtool_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1860, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"qlcnic_ethtool_failed_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1884, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 278, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 283, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"diag_registers\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 211, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 679, i32 43 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 683, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 686, i32 46 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 659, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 838, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 927, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1104, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1109, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1112, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1135, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"qlcnic_gstrings_test\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 165, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1209, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"qlcnic_tx_queue_stats_strings\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 135, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"qlcnic_gstrings_stats\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 28, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"qlcnic_83xx_tx_stats_strings\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 82, i32 19 }
@___asan_gen_.236 = private unnamed_addr constant [30 x i8] c"qlcnic_83xx_mac_stats_strings\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 90, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant [29 x i8] c"qlcnic_83xx_rx_stats_strings\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 145, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant [29 x i8] c"qlcnic_device_gstrings_stats\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 65, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1415, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1439, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1456, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 744, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 760, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 771, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 781, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 708, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 717, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1660, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1694, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1714, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1750, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1756, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1763, i32 9 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1767, i32 23 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1791, i32 23 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1799, i32 24 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1819, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1632, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1725, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1735, i32 22 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [55 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 404, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @qlcnic_82xx_get_link_ksettings._entry, ptr @qlcnic_82xx_get_link_ksettings._entry_ptr, ptr @qlcnic_disable_fw_dump_state._entry, ptr @qlcnic_disable_fw_dump_state._entry_ptr, ptr @qlcnic_do_lb_test._entry, ptr @qlcnic_do_lb_test._entry.5, ptr @qlcnic_do_lb_test._entry.9, ptr @qlcnic_do_lb_test._entry_ptr, ptr @qlcnic_do_lb_test._entry_ptr.11, ptr @qlcnic_do_lb_test._entry_ptr.8, ptr @qlcnic_enable_fw_dump_state._entry, ptr @qlcnic_enable_fw_dump_state._entry_ptr, ptr @qlcnic_get_pauseparam._entry, ptr @qlcnic_get_pauseparam._entry_ptr, ptr @qlcnic_loopback_test._entry, ptr @qlcnic_loopback_test._entry.27, ptr @qlcnic_loopback_test._entry.32, ptr @qlcnic_loopback_test._entry_ptr, ptr @qlcnic_loopback_test._entry_ptr.29, ptr @qlcnic_loopback_test._entry_ptr.34, ptr @qlcnic_set_led._entry, ptr @qlcnic_set_led._entry.40, ptr @qlcnic_set_led._entry_ptr, ptr @qlcnic_set_led._entry_ptr.42, ptr @qlcnic_set_pauseparam._entry, ptr @qlcnic_set_pauseparam._entry_ptr, ptr @qlcnic_validate_ringparam._entry, ptr @qlcnic_validate_ringparam._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @qlcnic_ethtool_ops, ptr @qlcnic_sriov_vf_ethtool_ops, ptr @qlcnic_ethtool_failed_ops, ptr @.str.15, ptr @.str.16, ptr @diag_registers, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @qlcnic_gstrings_test, ptr @.str.36, ptr @qlcnic_tx_queue_stats_strings, ptr @qlcnic_gstrings_stats, ptr @qlcnic_83xx_tx_stats_strings, ptr @qlcnic_83xx_mac_stats_strings, ptr @qlcnic_83xx_rx_stats_strings, ptr @qlcnic_device_gstrings_stats, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_do_lb_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_do_lb_test._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_do_lb_test._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_enable_fw_dump_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_ethtool_failed_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diag_registers to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_ringparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_set_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_loopback_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_loopback_test._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_loopback_test._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_gstrings_test to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_tx_queue_stats_strings to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_gstrings_stats to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_tx_stats_strings to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_mac_stats_strings to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_rx_stats_strings to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_device_gstrings_stats to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_set_led._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_disable_fw_dump_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnic_check_loopback_buff(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %buff = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buff) #15
  %0 = call ptr @memcpy(ptr %buff, ptr %mac, i32 6)
  %add.ptr.i = getelementptr inbounds i8, ptr %buff, i32 6
  %1 = getelementptr inbounds i8, ptr %buff, i32 16
  %2 = call ptr @memset(ptr %1, i32 78, i32 48)
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %mac, i32 6)
  %add.ptr1.i = getelementptr inbounds i8, ptr %buff, i32 12
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1475984128, ptr %add.ptr1.i, align 1
  %call = call i32 @memcmp(ptr noundef dereferenceable(64) %data, ptr noundef nonnull dereferenceable(64) %buff, i32 noundef 64) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buff) #15
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_do_lb_test(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sds_rings, align 4
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %mac_addr = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 34
  %adapter.i = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %3, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cnt.067 = phi i32 [ 0, %entry ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %entry ], [ %inc20.pre-phi, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 64, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.do.end25_crit_edge, label %if.end

for.body.do.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memset(ptr %7, i32 78, i32 64)
  %9 = call ptr @memcpy(ptr %7, ptr %mac_addr, i32 6)
  %add.ptr.i = getelementptr i8, ptr %7, i32 6
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %mac_addr, i32 6)
  %add.ptr1.i = getelementptr i8, ptr %7, i32 12
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 -1475984128, ptr %add.ptr1.i, align 1
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 64) #15
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %diag_cnt = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %diag_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %diag_cnt, align 4
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  %call4 = tail call i32 @qlcnic_xmit_frame(ptr noundef nonnull %call.i, ptr noundef %16) #15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %loop.0 = phi i32 [ 0, %if.end ], [ %inc, %do.cond.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #15
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i, align 4
  %process_lb_rcv_ring_diag.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %process_lb_rcv_ring_diag.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %process_lb_rcv_ring_diag.i, align 4
  tail call void %24(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %loop.0)
  %exitcond = icmp eq i32 %loop.0, 21
  br i1 %exitcond, label %do.body.do.end_crit_edge, label %do.cond

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.cond:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %loop.0, 1
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %diag_cnt9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %diag_cnt9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %diag_cnt9, align 4
  %tobool10.not = icmp eq i32 %28, 0
  br i1 %tobool10.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #15
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %diag_cnt12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %diag_cnt12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %diag_cnt12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not = icmp eq i32 %32, 0
  br i1 %tobool13.not, label %do.end17, label %if.else

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %add = add nuw nsw i32 %i.066, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %add) #19
  br label %for.inc

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %inc18 = add i32 %cnt.067, 1
  %.pre = add nuw nsw i32 %i.066, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end17
  %inc20.pre-phi = phi i32 [ %add, %do.end17 ], [ %.pre, %if.else ]
  %cnt.1 = phi i32 [ %cnt.067, %do.end17 ], [ %inc18, %if.else ]
  %exitcond70.not = icmp eq i32 %inc20.pre-phi, 16
  br i1 %exitcond70.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cnt.1)
  %cmp21.not = icmp eq i32 %cnt.1, 16
  br i1 %cmp21.not, label %for.end.cleanup_crit_edge, label %for.end.do.end25_crit_edge

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end25:                                         ; preds = %for.end.do.end25_crit_edge, %for.body.do.end25_crit_edge
  %i.065 = phi i32 [ 16, %for.end.do.end25_crit_edge ], [ %i.066, %for.body.do.end25_crit_edge ]
  %cnt.063 = phi i32 [ %cnt.1, %for.end.do.end25_crit_edge ], [ %cnt.067, %for.body.do.end25_crit_edge ]
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.6, i32 noundef %i.065, i32 noundef %cnt.063) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp28.not = icmp eq i8 %mode, 1
  br i1 %cmp28.not, label %do.end25.cleanup_crit_edge, label %do.end33

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end33:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef nonnull @.str.10) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end25.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end33 ], [ -1, %do.end25.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_xmit_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_update_stats(ptr nocapture noundef %adapter) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp54.not = icmp eq i8 %1, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ring.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tx_stats.sroa.20.059 = phi i64 [ 0, %for.body.lr.ph ], [ %add16, %for.body.for.body_crit_edge ]
  %tx_stats.sroa.16.058 = phi i64 [ 0, %for.body.lr.ph ], [ %add13, %for.body.for.body_crit_edge ]
  %tx_stats.sroa.12.057 = phi i64 [ 0, %for.body.lr.ph ], [ %add10, %for.body.for.body_crit_edge ]
  %tx_stats.sroa.8.056 = phi i64 [ 0, %for.body.lr.ph ], [ %add7, %for.body.for.body_crit_edge ]
  %tx_stats.sroa.0.055 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %tx_stats3 = getelementptr %struct.qlcnic_host_tx_ring, ptr %3, i32 %ring.060, i32 8
  %4 = ptrtoint ptr %tx_stats3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_stats3, align 8
  %add = add i64 %5, %tx_stats.sroa.0.055
  %xmit_off = getelementptr %struct.qlcnic_host_tx_ring, ptr %3, i32 %ring.060, i32 8, i32 1
  %6 = ptrtoint ptr %xmit_off to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %xmit_off, align 8
  %add7 = add i64 %7, %tx_stats.sroa.8.056
  %xmit_called = getelementptr %struct.qlcnic_host_tx_ring, ptr %3, i32 %ring.060, i32 8, i32 2
  %8 = ptrtoint ptr %xmit_called to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %xmit_called, align 8
  %add10 = add i64 %9, %tx_stats.sroa.12.057
  %xmit_finished = getelementptr %struct.qlcnic_host_tx_ring, ptr %3, i32 %ring.060, i32 8, i32 3
  %10 = ptrtoint ptr %xmit_finished to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %xmit_finished, align 8
  %add13 = add i64 %11, %tx_stats.sroa.16.058
  %tx_bytes = getelementptr %struct.qlcnic_host_tx_ring, ptr %3, i32 %ring.060, i32 8, i32 4
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bytes, align 8
  %add16 = add i64 %13, %tx_stats.sroa.20.059
  %inc = add nuw nsw i32 %ring.060, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_stats.sroa.0.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tx_stats.sroa.8.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add7, %for.body.for.end_crit_edge ]
  %tx_stats.sroa.12.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add10, %for.body.for.end_crit_edge ]
  %tx_stats.sroa.16.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add13, %for.body.for.end_crit_edge ]
  %tx_stats.sroa.20.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add16, %for.body.for.end_crit_edge ]
  %stats = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44
  %xmit_on18 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 14
  %14 = ptrtoint ptr %xmit_on18 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %tx_stats.sroa.0.0.lcssa, ptr %xmit_on18, align 8
  %xmit_off21 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 15
  %15 = ptrtoint ptr %xmit_off21 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %tx_stats.sroa.8.0.lcssa, ptr %xmit_off21, align 8
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %tx_stats.sroa.12.0.lcssa, ptr %stats, align 8
  %xmitfinished = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 1
  %17 = ptrtoint ptr %xmitfinished to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %tx_stats.sroa.16.0.lcssa, ptr %xmitfinished, align 8
  %txbytes = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 8
  %18 = ptrtoint ptr %txbytes to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %tx_stats.sroa.20.0.lcssa, ptr %txbytes, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_enable_fw_dump_state(ptr noundef %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = and i16 %3, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %4)
  %5 = icmp eq i16 %4, -32704
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 56
  %10 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %11, i32 15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !161
  %15 = and i32 %14, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ext_reg_tbl11 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 56
  %20 = ptrtoint ptr %ext_reg_tbl11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext_reg_tbl11, align 8
  %arrayidx12 = getelementptr i32, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #15, !srcloc !163
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #15
  br label %do.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 48, i32 1
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %enable, align 1
  br label %do.end17

do.end17:                                         ; preds = %if.else, %if.end
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17 ], [ -16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lock_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_unlock_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qlcnic_check_fw_dump_state(ptr nocapture noundef readonly %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = and i16 %5, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %6)
  %7 = icmp eq i16 %6, -32704
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %10 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %11, i32 15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6 = icmp eq i32 %15, 0
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 1
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %extract.t13 = icmp ne i8 %17, 0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state.0.off0 = phi i1 [ %tobool6, %if.then ], [ %extract.t13, %if.else ]
  ret i1 %state.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !160
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !166
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %reg_tbl9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 55
  %14 = ptrtoint ptr %reg_tbl9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_tbl9, align 4
  %arrayidx10 = getelementptr i32, ptr %15, i32 12
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #15, !srcloc !160
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !167
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %reg_tbl20 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 55
  %24 = ptrtoint ptr %reg_tbl20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_tbl20, align 4
  %arrayidx21 = getelementptr i32, ptr %25, i32 13
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  %add.ptr22 = getelementptr i8, ptr %23, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #15, !srcloc !160
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %9, i32 noundef %19, i32 noundef %29)
  %pdev = getelementptr i8, ptr %dev, i32 2320
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call29 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call31 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @qlcnic_driver_name, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call33 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.16, i32 noundef 32) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_get_regs_len(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge10
    i16 -32704, label %entry.if.then_crit_edge11
    i16 -31680, label %entry.if.then_crit_edge12
    i16 -31696, label %entry.if.then_crit_edge13
    i16 -29648, label %entry.if.then_crit_edge14
  ]

entry.if.then_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge10, %entry.if.then_crit_edge11, %entry.if.then_crit_edge12, %entry.if.then_crit_edge13, %entry.if.then_crit_edge14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call2 = tail call i32 @qlcnic_83xx_get_regs_len(ptr noundef %add.ptr.i) #15
  %phi.bo9 = add i32 %call2, 36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %phi.bo9, %if.then ], [ 116, %entry.if.end_crit_edge ]
  %drv_tx_rings.i = getelementptr i8, ptr %dev, i32 2345
  %5 = ptrtoint ptr %drv_tx_rings.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %drv_tx_rings.i, align 1
  %conv.i = zext i8 %6 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %max_rds_rings.i = getelementptr i8, ptr %dev, i32 2342
  %7 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_rds_rings.i, align 2
  %conv1.i = zext i8 %8 to i32
  %mul2.i = shl nuw nsw i32 %conv1.i, 1
  %add.i = add nuw nsw i32 %mul2.i, %mul.i
  %drv_sds_rings.i = getelementptr i8, ptr %dev, i32 2346
  %9 = ptrtoint ptr %drv_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drv_sds_rings.i, align 2
  %conv3.i = zext i8 %10 to i32
  %mul4.i = mul nuw nsw i32 %conv3.i, 3
  %add5.i = add nuw nsw i32 %add.i, %mul4.i
  %add6.i = shl nuw nsw i32 %add5.i, 2
  %add4 = add i32 %len.0, %add6.i
  ret i32 %add4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #3 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %recv_ctx1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %pdev.i.i = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %5, label %entry.qlcnic_get_regs_len.exit_crit_edge [
    i16 -32720, label %entry.if.then.i_crit_edge
    i16 -30672, label %entry.if.then.i_crit_edge202
    i16 -32704, label %entry.if.then.i_crit_edge203
    i16 -31680, label %entry.if.then.i_crit_edge204
    i16 -31696, label %entry.if.then.i_crit_edge205
    i16 -29648, label %entry.if.then.i_crit_edge206
  ]

entry.if.then.i_crit_edge206:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge205:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge204:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge203:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge202:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.qlcnic_get_regs_len.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_get_regs_len.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge202, %entry.if.then.i_crit_edge203, %entry.if.then.i_crit_edge204, %entry.if.then.i_crit_edge205, %entry.if.then.i_crit_edge206
  %call2.i = tail call i32 @qlcnic_83xx_get_regs_len(ptr noundef %add.ptr.i) #15
  %phi.bo9.i = add i32 %call2.i, 36
  br label %qlcnic_get_regs_len.exit

qlcnic_get_regs_len.exit:                         ; preds = %if.then.i, %entry.qlcnic_get_regs_len.exit_crit_edge
  %len.0.i = phi i32 [ %phi.bo9.i, %if.then.i ], [ 116, %entry.qlcnic_get_regs_len.exit_crit_edge ]
  %drv_tx_rings.i.i = getelementptr i8, ptr %dev, i32 2345
  %7 = ptrtoint ptr %drv_tx_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_tx_rings.i.i, align 1
  %conv.i.i = zext i8 %8 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 5
  %max_rds_rings.i.i = getelementptr i8, ptr %dev, i32 2342
  %9 = ptrtoint ptr %max_rds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_rds_rings.i.i, align 2
  %conv1.i.i = zext i8 %10 to i32
  %mul2.i.i = shl nuw nsw i32 %conv1.i.i, 1
  %add.i.i = add nuw nsw i32 %mul2.i.i, %mul.i.i
  %drv_sds_rings.i.i = getelementptr i8, ptr %dev, i32 2346
  %11 = ptrtoint ptr %drv_sds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drv_sds_rings.i.i, align 2
  %conv3.i.i = zext i8 %12 to i32
  %mul4.i.i = mul nuw nsw i32 %conv3.i.i, 3
  %add5.i.i = add nuw nsw i32 %add.i.i, %mul4.i.i
  %add6.i.i = shl nuw nsw i32 %add5.i.i, 2
  %add4.i = add i32 %add6.i.i, %len.0.i
  %13 = call ptr @memset(ptr %p, i32 0, i32 %add4.i)
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %revision_id = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %18 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  %conv3 = zext i16 %21 to i32
  %or = or i32 %shl, %conv3
  %or4 = or i32 %or, 67108864
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or4, ptr %version, align 4
  %23 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -889323518, ptr %p, align 4
  %arrayidx5 = getelementptr i32, ptr %p, i32 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %arrayidx5, align 4
  %25 = load ptr, ptr %add.ptr.i, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 40
  %26 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %capabilities, align 4
  %and = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %qlcnic_get_regs_len.exit.if.end_crit_edge, label %if.then

qlcnic_get_regs_len.exit.if.end_crit_edge:        ; preds = %qlcnic_get_regs_len.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %qlcnic_get_regs_len.exit
  call void @__sanitizer_cov_trace_pc() #17
  %max_vnic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 38
  %28 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_vnic_func, align 4
  %arrayidx8 = getelementptr i32, ptr %p, i32 2
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_get_regs_len.exit.if.end_crit_edge
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %34)
  %cmp.i = icmp eq i16 %34, -32736
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #15
  %35 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %err.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then10
  %i.028.i = phi i32 [ 3, %if.then10 ], [ %inc6.i, %for.body.i.for.body.i_crit_edge ]
  %j.027.i = phi i32 [ 0, %if.then10 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [13 x i32], ptr @diag_registers, i32 0, i32 %j.027.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 55
  %42 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_tbl.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %43, i32 %37
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx3.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %41, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #15, !srcloc !160
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !169
  %arrayidx5.i = getelementptr i32, ptr %p, i32 %i.028.i
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %j.027.i, 1
  %inc6.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.i, label %qlcnic_82xx_get_registers.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

qlcnic_82xx_get_registers.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg.i, align 4
  %call12.i = call i32 %54(ptr noundef %add.ptr.i, i32 noundef 136323736, ptr noundef nonnull %err.i) #15
  %arrayidx14.i = getelementptr i32, ptr %p, i32 15
  %55 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call12.i, ptr %arrayidx14.i, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %hw_ops.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_ops.1.i, align 4
  %read_reg.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %read_reg.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_reg.1.i, align 4
  %call12.1.i = call i32 %61(ptr noundef %add.ptr.i, i32 noundef 101785708, ptr noundef nonnull %err.i) #15
  %arrayidx14.1.i = getelementptr i32, ptr %p, i32 16
  %62 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call12.1.i, ptr %arrayidx14.1.i, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %hw_ops.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_ops.2.i, align 4
  %read_reg.2.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %read_reg.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_reg.2.i, align 4
  %call12.2.i = call i32 %68(ptr noundef %add.ptr.i, i32 noundef 118489148, ptr noundef nonnull %err.i) #15
  %arrayidx14.2.i = getelementptr i32, ptr %p, i32 17
  %69 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call12.2.i, ptr %arrayidx14.2.i, align 4
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %hw_ops.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_ops.3.i, align 4
  %read_reg.3.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %read_reg.3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg.3.i, align 4
  %call12.3.i = call i32 %75(ptr noundef %add.ptr.i, i32 noundef 119537724, ptr noundef nonnull %err.i) #15
  %arrayidx14.3.i = getelementptr i32, ptr %p, i32 18
  %76 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call12.3.i, ptr %arrayidx14.3.i, align 4
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.4.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %78, i32 0, i32 46
  %79 = ptrtoint ptr %hw_ops.4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_ops.4.i, align 4
  %read_reg.4.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read_reg.4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_reg.4.i, align 4
  %call12.4.i = call i32 %82(ptr noundef %add.ptr.i, i32 noundef 120586300, ptr noundef nonnull %err.i) #15
  %arrayidx14.4.i = getelementptr i32, ptr %p, i32 19
  %83 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call12.4.i, ptr %arrayidx14.4.i, align 4
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.5.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %hw_ops.5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_ops.5.i, align 4
  %read_reg.5.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %read_reg.5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read_reg.5.i, align 4
  %call12.5.i = call i32 %89(ptr noundef %add.ptr.i, i32 noundef 116391996, ptr noundef nonnull %err.i) #15
  %arrayidx14.5.i = getelementptr i32, ptr %p, i32 20
  %90 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call12.5.i, ptr %arrayidx14.5.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 @qlcnic_83xx_get_registers(ptr noundef %add.ptr.i, ptr noundef %p) #15
  br label %if.end13

if.end13:                                         ; preds = %if.else, %qlcnic_82xx_get_registers.exit
  %i.0 = phi i32 [ 21, %qlcnic_82xx_get_registers.exit ], [ %call12, %if.else ]
  %state = getelementptr i8, ptr %dev, i32 2324
  %91 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool15.not = icmp eq i32 %93, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %inc = add i32 %i.0, 1
  %arrayidx18 = getelementptr i32, ptr %p, i32 %i.0
  %94 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1061461, ptr %arrayidx18, align 4
  %95 = ptrtoint ptr %drv_tx_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %drv_tx_rings.i.i, align 1
  %conv19 = zext i8 %96 to i32
  %inc20 = add i32 %i.0, 2
  %arrayidx21 = getelementptr i32, ptr %p, i32 %inc
  %97 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv19, ptr %arrayidx21, align 4
  %98 = load i8, ptr %drv_tx_rings.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp182.not = icmp eq i8 %98, 0
  br i1 %cmp182.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %tx_ring25 = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc51, %for.inc.for.body_crit_edge ]
  %i.1183 = phi i32 [ %inc20, %for.body.lr.ph ], [ %i.2, %for.inc.for.body_crit_edge ]
  %99 = ptrtoint ptr %tx_ring25 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_ring25, align 8
  %hw_consumer = getelementptr %struct.qlcnic_host_tx_ring, ptr %100, i32 %ring.0184, i32 14
  %101 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw_consumer, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %inc27 = add i32 %i.1183, 1
  %arrayidx28 = getelementptr i32, ptr %p, i32 %i.1183
  %106 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx28, align 4
  %sw_consumer = getelementptr %struct.qlcnic_host_tx_ring, ptr %100, i32 %ring.0184, i32 6
  %107 = ptrtoint ptr %sw_consumer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sw_consumer, align 16
  %inc29 = add i32 %i.1183, 2
  %arrayidx30 = getelementptr i32, ptr %p, i32 %inc27
  %109 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx30, align 4
  %crb_cmd_producer = getelementptr %struct.qlcnic_host_tx_ring, ptr %100, i32 %ring.0184, i32 9
  %110 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %crb_cmd_producer, align 32
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #15, !srcloc !160
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %inc33 = add i32 %i.1183, 3
  %arrayidx34 = getelementptr i32, ptr %p, i32 %inc29
  %114 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx34, align 4
  %producer = getelementptr %struct.qlcnic_host_tx_ring, ptr %100, i32 %ring.0184, i32 5
  %115 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %producer, align 4
  %inc35 = add i32 %i.1183, 4
  %arrayidx36 = getelementptr i32, ptr %p, i32 %inc33
  %117 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx36, align 4
  %crb_intr_mask = getelementptr %struct.qlcnic_host_tx_ring, ptr %100, i32 %ring.0184, i32 1
  %118 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %crb_intr_mask, align 4
  %tobool37.not = icmp eq ptr %119, null
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %if.then38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %119) #15, !srcloc !160
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !171
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %121, %if.then38 ], [ 2018915346, %for.body.for.inc_crit_edge ]
  %122 = getelementptr i32, ptr %p, i32 %inc35
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink, ptr %122, align 4
  %i.2 = add i32 %i.1183, 5
  %inc51 = add nuw nsw i32 %ring.0184, 1
  %124 = ptrtoint ptr %drv_tx_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %drv_tx_rings.i.i, align 1
  %conv23 = zext i8 %125 to i32
  %cmp = icmp ult i32 %inc51, %conv23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %inc20, %if.end17.for.end_crit_edge ], [ %i.2, %for.inc.for.end_crit_edge ]
  %126 = ptrtoint ptr %max_rds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %max_rds_rings.i.i, align 2
  %conv52 = zext i8 %127 to i32
  %arrayidx54 = getelementptr i32, ptr %p, i32 %i.1.lcssa
  %128 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv52, ptr %arrayidx54, align 4
  %i.3185 = add i32 %i.1.lcssa, 1
  %129 = load i8, ptr %max_rds_rings.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp58187.not = icmp eq i8 %129, 0
  br i1 %cmp58187.not, label %for.end.for.end75_crit_edge, label %for.end.for.body60_crit_edge

for.end.for.body60_crit_edge:                     ; preds = %for.end
  br label %for.body60

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.end.for.body60_crit_edge
  %i.3190 = phi i32 [ %i.3, %for.body60.for.body60_crit_edge ], [ %i.3185, %for.end.for.body60_crit_edge ]
  %ring.1189 = phi i32 [ %inc74, %for.body60.for.body60_crit_edge ], [ 0, %for.end.for.body60_crit_edge ]
  %i.3.in188 = phi i32 [ %inc68, %for.body60.for.body60_crit_edge ], [ %i.1.lcssa, %for.end.for.body60_crit_edge ]
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %arrayidx62 = getelementptr %struct.qlcnic_host_rds_ring, ptr %131, i32 %ring.1189
  %132 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx62, align 128
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #15, !srcloc !160
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !172
  %inc68 = add i32 %i.3.in188, 2
  %arrayidx69 = getelementptr i32, ptr %p, i32 %i.3190
  %136 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx69, align 4
  %producer70 = getelementptr %struct.qlcnic_host_rds_ring, ptr %131, i32 %ring.1189, i32 4
  %137 = ptrtoint ptr %producer70 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %producer70, align 16
  %arrayidx72 = getelementptr i32, ptr %p, i32 %inc68
  %139 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx72, align 4
  %inc74 = add nuw nsw i32 %ring.1189, 1
  %i.3 = add i32 %i.3.in188, 3
  %140 = ptrtoint ptr %max_rds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %max_rds_rings.i.i, align 2
  %conv57 = zext i8 %141 to i32
  %cmp58 = icmp ult i32 %inc74, %conv57
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.for.end75_crit_edge

for.body60.for.end75_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body60

for.end75:                                        ; preds = %for.body60.for.end75_crit_edge, %for.end.for.end75_crit_edge
  %i.3.in.lcssa = phi i32 [ %i.1.lcssa, %for.end.for.end75_crit_edge ], [ %inc68, %for.body60.for.end75_crit_edge ]
  %i.3.lcssa = phi i32 [ %i.3185, %for.end.for.end75_crit_edge ], [ %i.3, %for.body60.for.end75_crit_edge ]
  %142 = ptrtoint ptr %drv_sds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %drv_sds_rings.i.i, align 2
  %conv76 = zext i8 %143 to i32
  %arrayidx78 = getelementptr i32, ptr %p, i32 %i.3.lcssa
  %144 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv76, ptr %arrayidx78, align 4
  %145 = load i8, ptr %drv_sds_rings.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp82194.not = icmp eq i8 %145, 0
  br i1 %cmp82194.not, label %for.end75.cleanup_crit_edge, label %for.body84.lr.ph

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body84.lr.ph:                                 ; preds = %for.end75
  %inc77 = add i32 %i.3.in.lcssa, 2
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %ring.2196 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc104, %for.body84.for.body84_crit_edge ]
  %i.4195 = phi i32 [ %inc77, %for.body84.lr.ph ], [ %inc101, %for.body84.for.body84_crit_edge ]
  %146 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sds_rings, align 4
  %arrayidx85 = getelementptr %struct.qlcnic_host_sds_ring, ptr %147, i32 %ring.2196
  %crb_sts_consumer = getelementptr %struct.qlcnic_host_sds_ring, ptr %147, i32 %ring.2196, i32 2
  %148 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %crb_sts_consumer, align 8
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #15, !srcloc !160
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !173
  %inc91 = add i32 %i.4195, 1
  %arrayidx92 = getelementptr i32, ptr %p, i32 %i.4195
  %152 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx92, align 4
  %153 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx85, align 128
  %inc93 = add i32 %i.4195, 2
  %arrayidx94 = getelementptr i32, ptr %p, i32 %inc91
  %155 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx94, align 4
  %crb_intr_mask97 = getelementptr %struct.qlcnic_host_sds_ring, ptr %147, i32 %ring.2196, i32 8
  %156 = ptrtoint ptr %crb_intr_mask97 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %crb_intr_mask97, align 16
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #15, !srcloc !160
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  %inc101 = add i32 %i.4195, 3
  %arrayidx102 = getelementptr i32, ptr %p, i32 %inc93
  %160 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx102, align 4
  %inc104 = add nuw nsw i32 %ring.2196, 1
  %161 = ptrtoint ptr %drv_sds_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %drv_sds_rings.i.i, align 2
  %conv81 = zext i8 %162 to i32
  %cmp82 = icmp ult i32 %inc104, %conv81
  br i1 %cmp82, label %for.body84.for.body84_crit_edge, label %for.body84.cleanup_crit_edge

for.body84.cleanup_crit_edge:                     ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body84

cleanup:                                          ; preds = %for.body84.cleanup_crit_edge, %for.end75.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_wol(ptr noundef %dev, ptr nocapture noundef %wol) #3 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device1.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %4, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge33
    i16 -32704, label %entry.cleanup_crit_edge34
    i16 -31680, label %entry.cleanup_crit_edge35
    i16 -31696, label %entry.cleanup_crit_edge36
    i16 -29648, label %entry.cleanup_crit_edge37
  ]

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wolopts, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call2 = call i32 %13(ptr noundef %add.ptr.i, i32 noundef 136323460, ptr noundef nonnull %err) #15
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %15)
  %cmp = icmp eq i32 %15, -5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %portnum = getelementptr i8, ptr %dev, i32 2350
  %16 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %portnum, align 2
  %conv = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end7_crit_edge, label %if.then5

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %supported, align 4
  %or = or i32 %19, 32
  store i32 %or, ptr %supported, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4.if.end7_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %hw_ops9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops9, align 4
  %read_reg10 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_reg10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg10, align 4
  %call11 = call i32 %25(ptr noundef %add.ptr.i, i32 noundef 136323464, ptr noundef nonnull %err) #15
  %26 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %portnum, align 2
  %conv13 = zext i8 %27 to i32
  %shl14 = shl nuw i32 1, %conv13
  %and15 = and i32 %shl14, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end7.cleanup_crit_edge, label %if.then17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wolopts, align 4
  %or19 = or i32 %29, 32
  store i32 %or19, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge33, %entry.cleanup_crit_edge34, %entry.cleanup_crit_edge35, %entry.cleanup_crit_edge36, %entry.cleanup_crit_edge37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device1.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %4, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge50
    i16 -32704, label %entry.cleanup_crit_edge51
    i16 -31680, label %entry.cleanup_crit_edge52
    i16 -31696, label %entry.cleanup_crit_edge53
    i16 -29648, label %entry.cleanup_crit_edge54
  ]

entry.cleanup_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %and = and i32 %7, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call4 = call i32 %13(ptr noundef %add.ptr.i, i32 noundef 136323460, ptr noundef nonnull %err) #15
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %15)
  %cmp = icmp eq i32 %15, -5
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %portnum = getelementptr i8, ptr %dev, i32 2350
  %16 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %portnum, align 2
  %conv = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv
  %and7 = and i32 %shl, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops12, align 4
  %read_reg13 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read_reg13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_reg13, align 4
  %call14 = call i32 %23(ptr noundef %add.ptr.i, i32 noundef 136323464, ptr noundef nonnull %err) #15
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %25)
  %cmp15 = icmp eq i32 %25, -5
  br i1 %cmp15, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wolopts, align 4
  %and20 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %28 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %portnum, align 2
  %conv27 = zext i8 %29 to i32
  %shl28 = shl nuw i32 1, %conv27
  %or = or i32 %shl28, %call14
  %neg = xor i32 %shl28, -1
  %and29 = and i32 %call14, %neg
  %wol_cfg.0 = select i1 %tobool21.not, i32 %and29, i32 %or
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops32 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %hw_ops32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ops32, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg, align 4
  %call33 = call i32 %35(ptr noundef %add.ptr.i, i32 noundef 136323464, i32 noundef %wol_cfg.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge50, %entry.cleanup_crit_edge51, %entry.cleanup_crit_edge52, %entry.cleanup_crit_edge53, %entry.cleanup_crit_edge54
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge50 ], [ -95, %entry.cleanup_crit_edge51 ], [ -95, %entry.cleanup_crit_edge52 ], [ -95, %entry.cleanup_crit_edge53 ], [ -95, %entry.cleanup_crit_edge54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_get_msglevel(ptr nocapture noundef readonly %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlcnic_set_msglevel(ptr nocapture noundef readonly %netdev, i32 noundef %msglvl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %msglvl, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_get_eeprom_len(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4194304
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr noundef %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %3, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge31
    i16 -32704, label %entry.cleanup_crit_edge32
    i16 -31680, label %entry.cleanup_crit_edge33
    i16 -31696, label %entry.cleanup_crit_edge34
    i16 -29648, label %entry.cleanup_crit_edge35
  ]

entry.cleanup_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 8
  %conv = zext i16 %8 to i32
  %conv5 = zext i16 %3 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %9 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %magic, align 4
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %device1.i27 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device1.i27 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device1.i27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %13)
  %cmp.i = icmp eq i16 %13, -32736
  br i1 %cmp.i, label %if.end11, label %if.end3.if.end11.thread_crit_edge

if.end3.if.end11.thread_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.end11:                                         ; preds = %if.end3
  %offset6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %14 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset6, align 4
  %call10 = tail call i32 @qlcnic_rom_fast_read_words(ptr noundef %add.ptr.i, i32 noundef %15, ptr noundef %bytes, i32 noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %if.end11.if.end11.thread_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11.if.end11.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end11.if.end11.thread_crit_edge, %if.end3.if.end11.thread_crit_edge
  %ret.030 = phi i32 [ %call10, %if.end11.if.end11.thread_crit_edge ], [ -1, %if.end3.if.end11.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end11.thread, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge31, %entry.cleanup_crit_edge32, %entry.cleanup_crit_edge33, %entry.cleanup_crit_edge34, %entry.cleanup_crit_edge35
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %ret.030, %if.end11.thread ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge31 ], [ 0, %entry.cleanup_crit_edge32 ], [ 0, %entry.cleanup_crit_edge33 ], [ 0, %entry.cleanup_crit_edge34 ], [ 0, %entry.cleanup_crit_edge35 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_get_intr_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ethcoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %1)
  %cmp.not = icmp eq i16 %1, 777
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %rx_time_us = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 47, i32 3
  %4 = ptrtoint ptr %rx_time_us to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_time_us, align 4
  %conv2 = zext i16 %5 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %rx_coalesce_usecs, align 4
  %7 = load ptr, ptr %add.ptr.i, align 8
  %rx_packets = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_packets, align 2
  %conv5 = zext i16 %9 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 2
  %10 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %rx_max_coalesced_frames, align 4
  %11 = load ptr, ptr %add.ptr.i, align 8
  %tx_time_us = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 47, i32 5
  %12 = ptrtoint ptr %tx_time_us to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_time_us, align 8
  %conv8 = zext i16 %13 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 5
  %14 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %tx_coalesce_usecs, align 4
  %15 = load ptr, ptr %add.ptr.i, align 8
  %tx_packets = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 47, i32 4
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_packets, align 2
  %conv11 = zext i16 %17 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 6
  %18 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv11, ptr %tx_max_coalesced_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_intr_coalesce(ptr noundef %netdev, ptr noundef %ethcoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 1
  %3 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp = icmp ugt i32 %4, 65535
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 2
  %5 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp2 = icmp ugt i32 %6, 65535
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 5
  %7 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %8)
  %cmp4 = icmp ugt i32 %8, 65535
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 6
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %10)
  %cmp6 = icmp ugt i32 %10, 65535
  br i1 %cmp6, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i, align 4
  %config_intr_coal.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %config_intr_coal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config_intr_coal.i, align 4
  %call.i = tail call i32 %16(ptr noundef %add.ptr.i, ptr noundef %ethcoal) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlcnic_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rxd = getelementptr i8, ptr %dev, i32 2334
  %0 = ptrtoint ptr %num_rxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rxd, align 2
  %conv = zext i16 %1 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rx_pending, align 4
  %num_jumbo_rxd = getelementptr i8, ptr %dev, i32 2336
  %3 = ptrtoint ptr %num_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_jumbo_rxd, align 8
  %conv1 = zext i16 %4 to i32
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %rx_jumbo_pending, align 4
  %num_txd = getelementptr i8, ptr %dev, i32 2332
  %6 = ptrtoint ptr %num_txd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_txd, align 4
  %conv2 = zext i16 %7 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %tx_pending, align 4
  %max_rxd = getelementptr i8, ptr %dev, i32 2338
  %9 = ptrtoint ptr %max_rxd to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_rxd, align 2
  %conv3 = zext i16 %10 to i32
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %11 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %rx_max_pending, align 4
  %max_jumbo_rxd = getelementptr i8, ptr %dev, i32 2340
  %12 = ptrtoint ptr %max_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_jumbo_rxd, align 4
  %conv4 = zext i16 %13 to i32
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %14 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %15 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %tx_max_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 64) #15
  %max_rxd = getelementptr i8, ptr %dev, i32 2338
  %5 = ptrtoint ptr %max_rxd to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_rxd, align 2
  %conv = zext i16 %6 to i32
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %conv) #15
  %sub.i50.i = add nsw i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i50.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i50.i, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i50.i, i1 true) #15, !range !175
  %sub.i.i.i.i = sub nuw nsw i32 32, %8
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %3)
  %cmp30.not.i = icmp eq i32 %shl.i.i, %3
  br i1 %cmp30.not.i, label %if.end.qlcnic_validate_ringparam.exit_crit_edge, label %do.end.i

if.end.qlcnic_validate_ringparam.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_validate_ringparam.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @qlcnic_driver_name, ptr noundef nonnull @.str.17, i32 noundef %shl.i.i, i32 noundef %3) #19
  br label %qlcnic_validate_ringparam.exit

qlcnic_validate_ringparam.exit:                   ; preds = %do.end.i, %if.end.qlcnic_validate_ringparam.exit_crit_edge
  %conv2 = trunc i32 %shl.i.i to i16
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %9 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_jumbo_pending, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 32) #15
  %max_jumbo_rxd = getelementptr i8, ptr %dev, i32 2340
  %12 = ptrtoint ptr %max_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_jumbo_rxd, align 4
  %conv3 = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %conv3) #15
  %sub.i50.i60 = add nsw i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i50.i60)
  %tobool.not.i.i.i.i61 = icmp eq i32 %sub.i50.i60, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i50.i60, i1 true) #15, !range !175
  %sub.i.i.i.i62 = sub nuw nsw i32 32, %15
  %sub.i.i.op.i.i63 = shl nuw i32 1, %sub.i.i.i.i62
  %shl.i.i64 = select i1 %tobool.not.i.i.i.i61, i32 1, i32 %sub.i.i.op.i.i63
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i64, i32 %10)
  %cmp30.not.i67 = icmp eq i32 %shl.i.i64, %10
  br i1 %cmp30.not.i67, label %qlcnic_validate_ringparam.exit.qlcnic_validate_ringparam.exit71_crit_edge, label %do.end.i70

qlcnic_validate_ringparam.exit.qlcnic_validate_ringparam.exit71_crit_edge: ; preds = %qlcnic_validate_ringparam.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_validate_ringparam.exit71

do.end.i70:                                       ; preds = %qlcnic_validate_ringparam.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call33.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @qlcnic_driver_name, ptr noundef nonnull @.str.18, i32 noundef %shl.i.i64, i32 noundef %10) #19
  br label %qlcnic_validate_ringparam.exit71

qlcnic_validate_ringparam.exit71:                 ; preds = %do.end.i70, %qlcnic_validate_ringparam.exit.qlcnic_validate_ringparam.exit71_crit_edge
  %conv5 = trunc i32 %shl.i.i64 to i16
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %16 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pending, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 64) #15
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 1024) #15
  %sub.i74 = add nsw i32 %19, -1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %sub.i74, i1 true) #15, !range !175
  %sub.i.i.i.i88.pn = sub nuw nsw i32 32, %20
  %cond29.i92 = shl nuw i32 1, %sub.i.i.i.i88.pn
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29.i92, i32 %17)
  %cmp30.not.i93 = icmp eq i32 %cond29.i92, %17
  br i1 %cmp30.not.i93, label %qlcnic_validate_ringparam.exit71.qlcnic_validate_ringparam.exit97_crit_edge, label %do.end.i96

qlcnic_validate_ringparam.exit71.qlcnic_validate_ringparam.exit97_crit_edge: ; preds = %qlcnic_validate_ringparam.exit71
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_validate_ringparam.exit97

do.end.i96:                                       ; preds = %qlcnic_validate_ringparam.exit71
  call void @__sanitizer_cov_trace_pc() #17
  %call33.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @qlcnic_driver_name, ptr noundef nonnull @.str.19, i32 noundef %cond29.i92, i32 noundef %17) #19
  br label %qlcnic_validate_ringparam.exit97

qlcnic_validate_ringparam.exit97:                 ; preds = %do.end.i96, %qlcnic_validate_ringparam.exit71.qlcnic_validate_ringparam.exit97_crit_edge
  %conv7 = trunc i32 %cond29.i92 to i16
  %num_rxd9 = getelementptr i8, ptr %dev, i32 2334
  %21 = ptrtoint ptr %num_rxd9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_rxd9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv2)
  %cmp = icmp eq i16 %22, %conv2
  br i1 %cmp, label %land.lhs.true, label %qlcnic_validate_ringparam.exit97.if.end24_crit_edge

qlcnic_validate_ringparam.exit97.if.end24_crit_edge: ; preds = %qlcnic_validate_ringparam.exit97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %qlcnic_validate_ringparam.exit97
  %num_txd13 = getelementptr i8, ptr %dev, i32 2332
  %23 = ptrtoint ptr %num_txd13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_txd13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %conv7)
  %cmp15 = icmp eq i16 %24, %conv7
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true17:                                  ; preds = %land.lhs.true
  %num_jumbo_rxd19 = getelementptr i8, ptr %dev, i32 2336
  %25 = ptrtoint ptr %num_jumbo_rxd19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_jumbo_rxd19, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %conv5)
  %cmp21 = icmp eq i16 %26, %conv5
  br i1 %cmp21, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end24_crit_edge

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true17.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %qlcnic_validate_ringparam.exit97.if.end24_crit_edge
  %27 = ptrtoint ptr %num_rxd9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv2, ptr %num_rxd9, align 2
  %num_jumbo_rxd26 = getelementptr i8, ptr %dev, i32 2336
  %28 = ptrtoint ptr %num_jumbo_rxd26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv5, ptr %num_jumbo_rxd26, align 8
  %num_txd27 = getelementptr i8, ptr %dev, i32 2332
  %29 = ptrtoint ptr %num_txd27 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv7, ptr %num_txd27, align 4
  %call28 = tail call i32 @qlcnic_reset_context(ptr noundef %add.ptr.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %land.lhs.true17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end24 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_pauseparam(ptr noundef %netdev, ptr noundef %pause) #3 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device1.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %8, label %if.end [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge132
    i16 -32704, label %entry.if.then_crit_edge133
    i16 -31680, label %entry.if.then_crit_edge134
    i16 -31696, label %entry.if.then_crit_edge135
    i16 -29648, label %entry.if.then_crit_edge136
  ]

entry.if.then_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge132, %entry.if.then_crit_edge133, %entry.if.then_crit_edge134, %entry.if.then_crit_edge135, %entry.if.then_crit_edge136
  tail call void @qlcnic_83xx_get_pauseparam(ptr noundef %add.ptr.i, ptr noundef %pause) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_type, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %11, label %do.end [
    i16 1, label %lor.lhs.false
    i16 2, label %lor.lhs.false57
  ]

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp8 = icmp ugt i8 %3, 4
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg, align 4
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107151360
  %call13 = call i32 %16(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef nonnull %err) #15
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %18)
  %cmp14 = icmp eq i32 %18, -5
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %shr = lshr i32 %call13, 5
  %and = and i32 %shr, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %19 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %rx_pause, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %hw_ops19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops19, align 4
  %read_reg20 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_reg20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg20, align 4
  %call21 = call i32 %25(ptr noundef %add.ptr.i, i32 noundef 106955532, ptr noundef nonnull %err) #15
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %27)
  %cmp22 = icmp eq i32 %27, -5
  br i1 %cmp22, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %28 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb28
    i8 2, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %and27 = and i32 %call21, 1
  %29 = xor i32 %and27, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %30 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_pause, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %31 = lshr i32 %call21, 2
  %.lobit130 = and i32 %31, 1
  %32 = xor i32 %.lobit130, 1
  %tx_pause34 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %33 = ptrtoint ptr %tx_pause34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx_pause34, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %34 = lshr i32 %call21, 4
  %.lobit129 = and i32 %34, 1
  %35 = xor i32 %.lobit129, 1
  %tx_pause41 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %36 = ptrtoint ptr %tx_pause41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tx_pause41, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %37 = lshr i32 %call21, 6
  %.lobit131 = and i32 %37, 1
  %38 = xor i32 %.lobit131, 1
  %tx_pause48 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %39 = ptrtoint ptr %tx_pause48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_pause48, align 4
  br label %cleanup

lor.lhs.false57:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp58 = icmp ugt i8 %3, 2
  br i1 %cmp58, label %lor.lhs.false57.cleanup_crit_edge, label %if.end61

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false57
  %rx_pause62 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %40 = ptrtoint ptr %rx_pause62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %rx_pause62, align 4
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops64 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %hw_ops64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_ops64, align 4
  %read_reg65 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %read_reg65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg65, align 4
  %call66 = call i32 %46(ptr noundef %add.ptr.i, i32 noundef 106954904, ptr noundef nonnull %err) #15
  %47 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %48)
  %cmp67 = icmp eq i32 %48, -5
  br i1 %cmp67, label %if.end61.cleanup_crit_edge, label %if.end70

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp71 = icmp eq i8 %3, 0
  br i1 %cmp71, label %if.then73, label %if.else80

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %and75 = and i32 %call66, 1
  %49 = xor i32 %and75, 1
  %tx_pause79 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %50 = ptrtoint ptr %tx_pause79 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tx_pause79, align 4
  br label %cleanup

if.else80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %51 = lshr i32 %call66, 3
  %.lobit = and i32 %51, 1
  %52 = xor i32 %.lobit, 1
  %tx_pause86 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %53 = ptrtoint ptr %tx_pause86 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tx_pause86, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3 = zext i16 %11 to i32
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv3) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else80, %if.then73, %if.end61.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %sw.default, %sw.bb35, %sw.bb28, %sw.bb, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_pauseparam(ptr noundef %netdev, ptr noundef %pause) #3 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device1.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %8, label %if.end [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge190
    i16 -32704, label %entry.if.then_crit_edge191
    i16 -31680, label %entry.if.then_crit_edge192
    i16 -31696, label %entry.if.then_crit_edge193
    i16 -29648, label %entry.if.then_crit_edge194
  ]

entry.if.then_crit_edge194:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge193:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge192:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge191:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge190:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge190, %entry.if.then_crit_edge191, %entry.if.then_crit_edge192, %entry.if.then_crit_edge193, %entry.if.then_crit_edge194
  %call2 = tail call i32 @qlcnic_83xx_set_pauseparam(ptr noundef %add.ptr.i, ptr noundef %pause) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_type, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %11, label %do.end [
    i16 1, label %lor.lhs.false
    i16 2, label %if.then80
  ]

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp9 = icmp ugt i8 %3, 4
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg, align 4
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107151360
  %call14 = call i32 %16(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef nonnull %err) #15
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %18)
  %cmp15 = icmp eq i32 %18, -5
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %19 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %and = and i32 %call14, -33
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %val.0 = or i32 %masksel, %and
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops22 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %hw_ops22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ops22, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %call25 = call i32 %26(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %val.0) #15
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %hw_ops27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ops27, align 4
  %write_reg28 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg28, align 4
  %call31 = call i32 %32(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %val.0) #15
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops33 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %hw_ops33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops33, align 4
  %read_reg34 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_reg34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_reg34, align 4
  %call35 = call i32 %38(ptr noundef %add.ptr.i, i32 noundef 106955532, ptr noundef nonnull %err) #15
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %40)
  %cmp36 = icmp eq i32 %40, -5
  br i1 %cmp36, label %if.end18.cleanup_crit_edge, label %if.end39

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end39:                                         ; preds = %if.end18
  %41 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb46
    i8 2, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end39
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %42 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not = icmp eq i32 %43, 0
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %and42 = and i32 %call35, -2
  br label %sw.epilog

if.else43:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or44 = or i32 %call35, 1
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end39
  %tx_pause47 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %44 = ptrtoint ptr %tx_pause47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_pause47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool48.not = icmp eq i32 %45, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  %and50 = and i32 %call35, -5
  br label %sw.epilog

if.else51:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  %or52 = or i32 %call35, 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end39
  %tx_pause55 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %46 = ptrtoint ptr %tx_pause55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_pause55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool56.not = icmp eq i32 %47, 0
  br i1 %tobool56.not, label %if.else59, label %if.then57

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #17
  %and58 = and i32 %call35, -17
  br label %sw.epilog

if.else59:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #17
  %or60 = or i32 %call35, 16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end39
  %tx_pause63 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %48 = ptrtoint ptr %tx_pause63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_pause63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool64.not = icmp eq i32 %49, 0
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %and66 = and i32 %call35, -65
  br label %sw.epilog

if.else67:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %or68 = or i32 %call35, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else67, %if.then65, %if.else59, %if.then57, %if.else51, %if.then49, %if.else43, %if.then41
  %val.1 = phi i32 [ %and66, %if.then65 ], [ %or68, %if.else67 ], [ %and58, %if.then57 ], [ %or60, %if.else59 ], [ %and50, %if.then49 ], [ %or52, %if.else51 ], [ %and42, %if.then41 ], [ %or44, %if.else43 ]
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops71 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %hw_ops71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_ops71, align 4
  %write_reg72 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %write_reg72 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg72, align 4
  %call73 = call i32 %55(ptr noundef %add.ptr.i, i32 noundef 106955532, i32 noundef %val.1) #15
  br label %cleanup

if.then80:                                        ; preds = %if.end
  %rx_pause81 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %56 = ptrtoint ptr %rx_pause81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_pause81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool82.not = icmp eq i32 %57, 0
  br i1 %tobool82.not, label %if.then80.cleanup_crit_edge, label %lor.lhs.false83

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false83:                                  ; preds = %if.then80
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %58 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool84.not = icmp eq i32 %59, 0
  br i1 %tobool84.not, label %lor.lhs.false89, label %lor.lhs.false83.cleanup_crit_edge

lor.lhs.false83.cleanup_crit_edge:                ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp90 = icmp ugt i8 %3, 2
  br i1 %cmp90, label %lor.lhs.false89.cleanup_crit_edge, label %if.end93

lor.lhs.false89.cleanup_crit_edge:                ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end93:                                         ; preds = %lor.lhs.false89
  %hw_ops95 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %60 = ptrtoint ptr %hw_ops95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_ops95, align 4
  %read_reg96 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read_reg96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_reg96, align 4
  %call97 = call i32 %63(ptr noundef %add.ptr.i, i32 noundef 106954904, ptr noundef nonnull %err) #15
  %64 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %65)
  %cmp98 = icmp eq i32 %65, -5
  br i1 %cmp98, label %if.end93.cleanup_crit_edge, label %if.end101

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp102 = icmp eq i8 %3, 0
  %tx_pause105 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %66 = ptrtoint ptr %tx_pause105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_pause105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool106.not = icmp eq i32 %67, 0
  br i1 %cmp102, label %if.then104, label %if.else112

if.then104:                                       ; preds = %if.end101
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %and108 = and i32 %call97, -2
  br label %if.end120

if.else109:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %or110 = or i32 %call97, 1
  br label %if.end120

if.else112:                                       ; preds = %if.end101
  br i1 %tobool106.not, label %if.else117, label %if.then115

if.then115:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  %and116 = and i32 %call97, -9
  br label %if.end120

if.else117:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  %or118 = or i32 %call97, 8
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then115, %if.else109, %if.then107
  %val.2 = phi i32 [ %and108, %if.then107 ], [ %or110, %if.else109 ], [ %and116, %if.then115 ], [ %or118, %if.else117 ]
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops122 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %69, i32 0, i32 46
  %70 = ptrtoint ptr %hw_ops122 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_ops122, align 4
  %write_reg123 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %write_reg123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg123, align 4
  %call124 = call i32 %73(ptr noundef %add.ptr.i, i32 noundef 106954904, i32 noundef %val.2) #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv4 = zext i16 %11 to i32
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv4) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end120, %if.end93.cleanup_crit_edge, %lor.lhs.false89.cleanup_crit_edge, %lor.lhs.false83.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %sw.epilog, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end12.cleanup_crit_edge ], [ -5, %if.end18.cleanup_crit_edge ], [ -95, %lor.lhs.false83.cleanup_crit_edge ], [ -95, %if.then80.cleanup_crit_edge ], [ -5, %lor.lhs.false89.cleanup_crit_edge ], [ -5, %if.end93.cleanup_crit_edge ], [ 0, %if.end120 ], [ 0, %do.end ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_diag_test(ptr noundef %dev, ptr nocapture noundef %eth_test, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  %err.i83 = alloca i32, align 4
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 48)
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #15
  %1 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %err.i, align 4
  %pdev.i.i = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %5, label %if.end.i [
    i16 -32720, label %entry.if.then.i_crit_edge
    i16 -30672, label %entry.if.then.i_crit_edge125
    i16 -32704, label %entry.if.then.i_crit_edge126
    i16 -31680, label %entry.if.then.i_crit_edge127
    i16 -31696, label %entry.if.then.i_crit_edge128
    i16 -29648, label %entry.if.then.i_crit_edge129
  ]

entry.if.then.i_crit_edge129:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge128:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge127:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge126:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge125:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge125, %entry.if.then.i_crit_edge126, %entry.if.then.i_crit_edge127, %entry.if.then.i_crit_edge128, %entry.if.then.i_crit_edge129
  %call2.i = tail call i32 @qlcnic_83xx_reg_test(ptr noundef %add.ptr.i.i) #15
  br label %qlcnic_reg_test.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call3.i = call i32 %12(ptr noundef %add.ptr.i.i, i32 noundef 101711872, ptr noundef nonnull %err.i) #15
  %13 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %14)
  %cmp.i = icmp eq i32 %14, -5
  br i1 %cmp.i, label %qlcnic_reg_test.exit.thread, label %if.end5.i

qlcnic_reg_test.exit.thread:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -5, ptr %data, align 8
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor.i, align 8
  %20 = trunc i32 %call3.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %20)
  %cmp6.not.i = icmp ne i16 %19, %20
  %..i = zext i1 %cmp6.not.i to i32
  br label %qlcnic_reg_test.exit

qlcnic_reg_test.exit:                             ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %..i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  %conv = sext i32 %retval.0.i to i64
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %qlcnic_reg_test.exit.if.end_crit_edge, label %qlcnic_reg_test.exit.if.then_crit_edge

qlcnic_reg_test.exit.if.then_crit_edge:           ; preds = %qlcnic_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

qlcnic_reg_test.exit.if.end_crit_edge:            ; preds = %qlcnic_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %qlcnic_reg_test.exit.if.then_crit_edge, %qlcnic_reg_test.exit.thread
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_reg_test.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i83) #15
  %24 = ptrtoint ptr %err.i83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %err.i83, align 4
  %25 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i86 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device1.i.i86 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device1.i.i86, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %28, label %if.end.i93 [
    i16 -32720, label %if.end.if.then.i88_crit_edge
    i16 -30672, label %if.end.if.then.i88_crit_edge130
    i16 -32704, label %if.end.if.then.i88_crit_edge131
    i16 -31680, label %if.end.if.then.i88_crit_edge132
    i16 -31696, label %if.end.if.then.i88_crit_edge133
    i16 -29648, label %if.end.if.then.i88_crit_edge134
  ]

if.end.if.then.i88_crit_edge134:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.end.if.then.i88_crit_edge133:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.end.if.then.i88_crit_edge132:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.end.if.then.i88_crit_edge131:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.end.if.then.i88_crit_edge130:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.end.if.then.i88_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i88

if.then.i88:                                      ; preds = %if.end.if.then.i88_crit_edge, %if.end.if.then.i88_crit_edge130, %if.end.if.then.i88_crit_edge131, %if.end.if.then.i88_crit_edge132, %if.end.if.then.i88_crit_edge133, %if.end.if.then.i88_crit_edge134
  %call2.i87 = call i32 @qlcnic_83xx_test_link(ptr noundef %add.ptr.i.i) #15
  %and.i = and i32 %call2.i87, 1
  %30 = xor i32 %and.i, 1
  br label %qlcnic_test_link.exit

if.end.i93:                                       ; preds = %if.end
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i, align 8
  %hw_ops.i89 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 46
  %33 = ptrtoint ptr %hw_ops.i89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_ops.i89, align 4
  %read_reg.i90 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read_reg.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg.i90, align 4
  %call3.i91 = call i32 %36(ptr noundef %add.ptr.i.i, i32 noundef 136323736, ptr noundef nonnull %err.i83) #15
  %37 = ptrtoint ptr %err.i83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %38)
  %cmp.i92 = icmp eq i32 %38, -5
  br i1 %cmp.i92, label %qlcnic_test_link.exit.thread, label %if.end5.i94

qlcnic_test_link.exit.thread:                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i83) #15
  %arrayidx4115 = getelementptr i64, ptr %data, i32 1
  %39 = ptrtoint ptr %arrayidx4115 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 4294967291, ptr %arrayidx4115, align 8
  br label %if.then7

if.end5.i94:                                      ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i.i, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pci_func.i, align 1
  %conv.i = zext i8 %43 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %shr.i = lshr i32 %call3.i91, %mul.i
  %and7.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7.i)
  %cmp8.i = icmp ne i32 %and7.i, 1
  %cond10.i = zext i1 %cmp8.i to i32
  br label %qlcnic_test_link.exit

qlcnic_test_link.exit:                            ; preds = %if.end5.i94, %if.then.i88
  %retval.0.i95 = phi i32 [ %30, %if.then.i88 ], [ %cond10.i, %if.end5.i94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i83) #15
  %conv3 = zext i32 %retval.0.i95 to i64
  %arrayidx4 = getelementptr i64, ptr %data, i32 1
  %44 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv3, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95)
  %tobool6.not = icmp eq i32 %retval.0.i95, 0
  br i1 %tobool6.not, label %qlcnic_test_link.exit.if.end10_crit_edge, label %qlcnic_test_link.exit.if.then7_crit_edge

qlcnic_test_link.exit.if.then7_crit_edge:         ; preds = %qlcnic_test_link.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

qlcnic_test_link.exit.if.end10_crit_edge:         ; preds = %qlcnic_test_link.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then7:                                         ; preds = %qlcnic_test_link.exit.if.then7_crit_edge, %qlcnic_test_link.exit.thread
  %flags8 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %45 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags8, align 4
  %or9 = or i32 %46, 2
  store i32 %or9, ptr %flags8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %qlcnic_test_link.exit.if.end10_crit_edge
  %flags11 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %47 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags11, align 4
  %and = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end57_crit_edge, label %if.then13

if.end10.if.end57_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then13:                                        ; preds = %if.end10
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #15
  %51 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %drv_sds_rings2.i = getelementptr i8, ptr %dev, i32 2346
  %52 = ptrtoint ptr %drv_sds_rings2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %drv_sds_rings2.i, align 2
  %conv.i97 = zext i8 %53 to i32
  %drv_tx_rings3.i = getelementptr i8, ptr %dev, i32 2345
  %54 = ptrtoint ptr %drv_tx_rings3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %drv_tx_rings3.i, align 1
  %56 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i99 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device1.i.i99 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device1.i.i99, align 2
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %59, label %if.end.i101 [
    i16 -32720, label %if.then13.if.then.i100_crit_edge
    i16 -30672, label %if.then13.if.then.i100_crit_edge135
    i16 -32704, label %if.then13.if.then.i100_crit_edge136
    i16 -31680, label %if.then13.if.then.i100_crit_edge137
    i16 -31696, label %if.then13.if.then.i100_crit_edge138
    i16 -29648, label %if.then13.if.then.i100_crit_edge139
  ]

if.then13.if.then.i100_crit_edge139:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then13.if.then.i100_crit_edge138:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then13.if.then.i100_crit_edge137:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then13.if.then.i100_crit_edge136:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then13.if.then.i100_crit_edge135:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then13.if.then.i100_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100

if.then.i100:                                     ; preds = %if.then13.if.then.i100_crit_edge, %if.then13.if.then.i100_crit_edge135, %if.then13.if.then.i100_crit_edge136, %if.then13.if.then.i100_crit_edge137, %if.then13.if.then.i100_crit_edge138, %if.then13.if.then.i100_crit_edge139
  %call6.i = call i32 @qlcnic_83xx_interrupt_test(ptr noundef %dev) #15
  br label %qlcnic_irq_test.exit

if.end.i101:                                      ; preds = %if.then13
  %state.i = getelementptr i8, ptr %dev, i32 2324
  %call7.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %qlcnic_irq_test.exit.thread

qlcnic_irq_test.exit.thread:                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #15
  %arrayidx16119 = getelementptr i64, ptr %data, i32 2
  %61 = ptrtoint ptr %arrayidx16119 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -5, ptr %arrayidx16119, align 8
  br label %if.then19

if.end9.i:                                        ; preds = %if.end.i101
  %call10.i = call i32 @qlcnic_diag_alloc_res(ptr noundef %dev, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.clear_diag_irq.i_crit_edge

if.end9.i.clear_diag_irq.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_diag_irq.i

if.end13.i:                                       ; preds = %if.end9.i
  %diag_cnt.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %50, i32 0, i32 21
  %62 = ptrtoint ptr %diag_cnt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %diag_cnt.i, align 4
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %68(ptr noundef nonnull %cmd.i, ptr noundef %add.ptr.i.i, i32 noundef 17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.free_diag_res.i_crit_edge

if.end13.i.free_diag_res.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_diag_res.i

if.end17.i:                                       ; preds = %if.end13.i
  %pci_func.i102 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %50, i32 0, i32 6
  %69 = ptrtoint ptr %pci_func.i102 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pci_func.i102, align 1
  %conv18.i = zext i8 %70 to i32
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %72, i32 1
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv18.i, ptr %arrayidx.i, align 4
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i.i, align 8
  %hw_ops.i53.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %hw_ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_ops.i53.i, align 4
  %mbx_cmd.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %mbx_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mbx_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.end17.i.done.i_crit_edge, label %qlcnic_issue_cmd.exit.i

if.end17.i.done.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done.i

qlcnic_issue_cmd.exit.i:                          ; preds = %if.end17.i
  %call.i54.i = call i32 %79(ptr noundef %add.ptr.i.i, ptr noundef nonnull %cmd.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool20.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %qlcnic_issue_cmd.exit.i.done.i_crit_edge

qlcnic_issue_cmd.exit.i.done.i_crit_edge:         ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done.i

if.end22.i:                                       ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 12000, i32 noundef 2) #15
  %80 = ptrtoint ptr %diag_cnt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %diag_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool24.not.i = icmp eq i32 %81, 0
  %lnot.ext.i = zext i1 %tobool24.not.i to i32
  br label %done.i

done.i:                                           ; preds = %if.end22.i, %qlcnic_issue_cmd.exit.i.done.i_crit_edge, %if.end17.i.done.i_crit_edge
  %ret.0.i = phi i32 [ %call.i54.i, %qlcnic_issue_cmd.exit.i.done.i_crit_edge ], [ %lnot.ext.i, %if.end22.i ], [ -5, %if.end17.i.done.i_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #15
  br label %free_diag_res.i

free_diag_res.i:                                  ; preds = %done.i, %if.end13.i.free_diag_res.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.end13.i.free_diag_res.i_crit_edge ], [ %ret.0.i, %done.i ]
  call void @qlcnic_diag_free_res(ptr noundef %dev, i32 noundef %conv.i97) #15
  br label %clear_diag_irq.i

clear_diag_irq.i:                                 ; preds = %free_diag_res.i, %if.end9.i.clear_diag_irq.i_crit_edge
  %ret.2.i = phi i32 [ %call10.i, %if.end9.i.clear_diag_irq.i_crit_edge ], [ %ret.1.i, %free_diag_res.i ]
  %82 = ptrtoint ptr %drv_sds_rings2.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %53, ptr %drv_sds_rings2.i, align 2
  %83 = ptrtoint ptr %drv_tx_rings3.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %55, ptr %drv_tx_rings3.i, align 1
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #15
  br label %qlcnic_irq_test.exit

qlcnic_irq_test.exit:                             ; preds = %clear_diag_irq.i, %if.then.i100
  %retval.0.i103 = phi i32 [ %call6.i, %if.then.i100 ], [ %ret.2.i, %clear_diag_irq.i ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #15
  %conv15 = sext i32 %retval.0.i103 to i64
  %arrayidx16 = getelementptr i64, ptr %data, i32 2
  %84 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv15, ptr %arrayidx16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i103)
  %tobool18.not = icmp eq i32 %retval.0.i103, 0
  br i1 %tobool18.not, label %qlcnic_irq_test.exit.if.end22_crit_edge, label %qlcnic_irq_test.exit.if.then19_crit_edge

qlcnic_irq_test.exit.if.then19_crit_edge:         ; preds = %qlcnic_irq_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

qlcnic_irq_test.exit.if.end22_crit_edge:          ; preds = %qlcnic_irq_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then19:                                        ; preds = %qlcnic_irq_test.exit.if.then19_crit_edge, %qlcnic_irq_test.exit.thread
  %85 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags11, align 4
  %or21 = or i32 %86, 2
  store i32 %or21, ptr %flags11, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %qlcnic_irq_test.exit.if.end22_crit_edge
  %call23 = call fastcc i32 @qlcnic_loopback_test(ptr noundef %dev, i8 noundef zeroext 1)
  %conv24 = sext i32 %call23 to i64
  %arrayidx25 = getelementptr i64, ptr %data, i32 3
  %87 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv24, ptr %arrayidx25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool27.not = icmp eq i32 %call23, 0
  br i1 %tobool27.not, label %if.end22.if.end31_crit_edge, label %if.then28

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags11, align 4
  %or30 = or i32 %89, 2
  store i32 %or30, ptr %flags11, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end22.if.end31_crit_edge
  %90 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags11, align 4
  %and33 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end47_crit_edge, label %if.then35

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then35:                                        ; preds = %if.end31
  %call36 = call fastcc i32 @qlcnic_loopback_test(ptr noundef %dev, i8 noundef zeroext 2)
  %conv37 = sext i32 %call36 to i64
  %arrayidx38 = getelementptr i64, ptr %data, i32 4
  %92 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv37, ptr %arrayidx38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool40.not = icmp eq i32 %call36, 0
  br i1 %tobool40.not, label %if.then35.if.end44_crit_edge, label %if.then41

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags11, align 4
  %or43 = or i32 %94, 2
  store i32 %or43, ptr %flags11, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then35.if.end44_crit_edge
  %95 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags11, align 4
  %or46 = or i32 %96, 8
  store i32 %or46, ptr %flags11, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.end31.if.end47_crit_edge
  %97 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i105 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %device1.i.i105 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %device1.i.i105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %100)
  %cmp.i.i = icmp eq i16 %100, -32736
  br i1 %cmp.i.i, label %qlcnic_eeprom_test.exit.thread, label %qlcnic_eeprom_test.exit

qlcnic_eeprom_test.exit.thread:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx50123 = getelementptr i64, ptr %data, i32 5
  %101 = ptrtoint ptr %arrayidx50123 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %arrayidx50123, align 8
  br label %if.end57

qlcnic_eeprom_test.exit:                          ; preds = %if.end47
  %call2.i107 = call i32 @qlcnic_83xx_flash_test(ptr noundef %add.ptr.i.i) #15
  %conv49 = sext i32 %call2.i107 to i64
  %arrayidx50 = getelementptr i64, ptr %data, i32 5
  %102 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv49, ptr %arrayidx50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i107)
  %tobool52.not = icmp eq i32 %call2.i107, 0
  br i1 %tobool52.not, label %qlcnic_eeprom_test.exit.if.end57_crit_edge, label %if.then53

qlcnic_eeprom_test.exit.if.end57_crit_edge:       ; preds = %qlcnic_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then53:                                        ; preds = %qlcnic_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags11, align 4
  %or55 = or i32 %104, 2
  store i32 %or55, ptr %flags11, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %qlcnic_eeprom_test.exit.if.end57_crit_edge, %qlcnic_eeprom_test.exit.thread, %if.end10.if.end57_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %stringset, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %drv_tx_rings = getelementptr i8, ptr %dev, i32 2345
  %1 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp139.not = icmp eq i8 %2, 0
  br i1 %cmp139.not, label %for.cond.preheader.for.cond11.preheader_crit_edge, label %for.cond.preheader.for.cond3.preheader_crit_edge

for.cond.preheader.for.cond3.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond3.preheader

for.cond.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond11.preheader

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = call ptr @memcpy(ptr %data, ptr @qlcnic_gstrings_test, i32 192)
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.cond3.preheader.for.cond3.preheader_crit_edge, %for.cond.preheader.for.cond3.preheader_crit_edge
  %i.0141 = phi i32 [ %inc9, %for.cond3.preheader.for.cond3.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond3.preheader_crit_edge ]
  %data.addr.0140 = phi ptr [ %add.ptr.4, %for.cond3.preheader.for.cond3.preheader_crit_edge ], [ %data, %for.cond.preheader.for.cond3.preheader_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.addr.0140, ptr noundef nonnull @.str.36, i32 noundef %i.0141, ptr noundef nonnull @qlcnic_tx_queue_stats_strings)
  %add.ptr = getelementptr i8, ptr %data.addr.0140, i32 32
  %call7.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.36, i32 noundef %i.0141, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @qlcnic_tx_queue_stats_strings, i32 0, i32 1))
  %add.ptr.1 = getelementptr i8, ptr %data.addr.0140, i32 64
  %call7.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.36, i32 noundef %i.0141, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @qlcnic_tx_queue_stats_strings, i32 0, i32 2))
  %add.ptr.2 = getelementptr i8, ptr %data.addr.0140, i32 96
  %call7.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.36, i32 noundef %i.0141, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @qlcnic_tx_queue_stats_strings, i32 0, i32 3))
  %add.ptr.3 = getelementptr i8, ptr %data.addr.0140, i32 128
  %call7.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.36, i32 noundef %i.0141, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @qlcnic_tx_queue_stats_strings, i32 0, i32 4))
  %add.ptr.4 = getelementptr i8, ptr %data.addr.0140, i32 160
  %inc9 = add nuw nsw i32 %i.0141, 1
  %4 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc9, %conv
  br i1 %cmp, label %for.cond3.preheader.for.cond3.preheader_crit_edge, label %for.cond3.preheader.for.cond11.preheader_crit_edge

for.cond3.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond11.preheader

for.cond3.preheader.for.cond3.preheader_crit_edge: ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond3.preheader

for.cond11.preheader:                             ; preds = %for.cond3.preheader.for.cond11.preheader_crit_edge, %for.cond.preheader.for.cond11.preheader_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %for.cond.preheader.for.cond11.preheader_crit_edge ], [ %add.ptr.4, %for.cond3.preheader.for.cond11.preheader_crit_edge ]
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond11.preheader
  %index.1142 = phi i32 [ 0, %for.cond11.preheader ], [ %inc19, %for.body14.for.body14_crit_edge ]
  %mul = shl nuw nsw i32 %index.1142, 5
  %add.ptr15 = getelementptr i8, ptr %data.addr.0.lcssa, i32 %mul
  %arrayidx16 = getelementptr [23 x %struct.qlcnic_stats], ptr @qlcnic_gstrings_stats, i32 0, i32 %index.1142
  %6 = call ptr @memcpy(ptr %add.ptr15, ptr %arrayidx16, i32 32)
  %inc19 = add nuw nsw i32 %index.1142, 1
  %exitcond.not = icmp eq i32 %inc19, 23
  br i1 %exitcond.not, label %for.end20, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body14

for.end20:                                        ; preds = %for.body14
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device1.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %10, label %for.body61.preheader [
    i16 -32720, label %for.end20.qlcnic_83xx_check.exit_crit_edge
    i16 -30672, label %for.end20.qlcnic_83xx_check.exit_crit_edge158
    i16 -32704, label %for.end20.qlcnic_83xx_check.exit_crit_edge159
    i16 -31680, label %for.end20.qlcnic_83xx_check.exit_crit_edge160
    i16 -31696, label %for.end20.qlcnic_83xx_check.exit_crit_edge161
    i16 -29648, label %for.end20.qlcnic_83xx_check.exit_crit_edge162
  ]

for.end20.qlcnic_83xx_check.exit_crit_edge162:    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.end20.qlcnic_83xx_check.exit_crit_edge161:    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.end20.qlcnic_83xx_check.exit_crit_edge160:    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.end20.qlcnic_83xx_check.exit_crit_edge159:    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.end20.qlcnic_83xx_check.exit_crit_edge158:    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.end20.qlcnic_83xx_check.exit_crit_edge:       ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_83xx_check.exit

for.body61.preheader:                             ; preds = %for.end20
  %uglygep156 = getelementptr i8, ptr %data.addr.0.lcssa, i32 736
  %12 = call ptr @memcpy(ptr %uglygep156, ptr @qlcnic_83xx_mac_stats_strings, i32 1280)
  %flags = getelementptr i8, ptr %dev, i32 2328
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body61.preheader.cleanup_crit_edge, label %for.body75.preheader

for.body61.preheader.cleanup_crit_edge:           ; preds = %for.body61.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

qlcnic_83xx_check.exit:                           ; preds = %for.end20.qlcnic_83xx_check.exit_crit_edge, %for.end20.qlcnic_83xx_check.exit_crit_edge158, %for.end20.qlcnic_83xx_check.exit_crit_edge159, %for.end20.qlcnic_83xx_check.exit_crit_edge160, %for.end20.qlcnic_83xx_check.exit_crit_edge161, %for.end20.qlcnic_83xx_check.exit_crit_edge162
  %uglygep = getelementptr i8, ptr %data.addr.0.lcssa, i32 736
  %15 = call ptr @memcpy(ptr %uglygep, ptr @qlcnic_83xx_tx_stats_strings, i32 160)
  %uglygep154 = getelementptr i8, ptr %data.addr.0.lcssa, i32 896
  %16 = call ptr @memcpy(ptr %uglygep154, ptr @qlcnic_83xx_mac_stats_strings, i32 1280)
  %uglygep155 = getelementptr i8, ptr %data.addr.0.lcssa, i32 2176
  %17 = call ptr @memcpy(ptr %uglygep155, ptr @qlcnic_83xx_rx_stats_strings, i32 544)
  br label %cleanup

for.body75.preheader:                             ; preds = %for.body61.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %uglygep157 = getelementptr i8, ptr %data.addr.0.lcssa, i32 2016
  %18 = call ptr @memcpy(ptr %uglygep157, ptr @qlcnic_device_gstrings_stats, i32 448)
  br label %cleanup

cleanup:                                          ; preds = %for.body75.preheader, %qlcnic_83xx_check.exit, %for.body61.preheader.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_led(ptr noundef %dev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %drv_sds_rings1 = getelementptr i8, ptr %dev, i32 2346
  %0 = ptrtoint ptr %drv_sds_rings1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_sds_rings1, align 2
  %conv = zext i8 %1 to i32
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %5, label %if.end [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge103
    i16 -32704, label %entry.if.then_crit_edge104
    i16 -31680, label %entry.if.then_crit_edge105
    i16 -31696, label %entry.if.then_crit_edge106
    i16 -29648, label %entry.if.then_crit_edge107
  ]

entry.if.then_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge103, %entry.if.then_crit_edge104, %entry.if.then_crit_edge105, %entry.if.then_crit_edge106, %entry.if.then_crit_edge107
  %call3 = tail call i32 @qlcnic_83xx_set_led(ptr noundef %dev, i32 noundef %state) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp = icmp eq i16 %10, 2
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37) #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %state, label %if.end7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb33
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %state8 = getelementptr i8, ptr %dev, i32 2324
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end16:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state8, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  %call21 = tail call i32 @qlcnic_diag_alloc_res(ptr noundef %dev, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.sw.epilog_crit_edge

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state8) #15
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end16.if.end26_crit_edge
  %nic_ops = getelementptr i8, ptr %dev, i32 2920
  %18 = ptrtoint ptr %nic_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nic_ops, align 8
  %config_led = getelementptr inbounds %struct.qlcnic_nic_template, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %config_led to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_led, align 4
  %call27 = tail call i32 %21(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end26.sw.epilog_crit_edge, label %if.end26.sw.epilog.sink.split_crit_edge

if.end26.sw.epilog.sink.split_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end7
  %state34 = getelementptr i8, ptr %dev, i32 2324
  %22 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state34, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb33.sw.epilog_crit_edge

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end38:                                         ; preds = %sw.bb33
  %25 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state34, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool41.not = icmp eq i32 %27, 0
  br i1 %tobool41.not, label %if.then42, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then42:                                        ; preds = %if.end38
  %call43 = tail call i32 @qlcnic_diag_alloc_res(ptr noundef %dev, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then42.sw.epilog_crit_edge

if.then42.sw.epilog_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state34) #15
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end38.if.end48_crit_edge
  %nic_ops49 = getelementptr i8, ptr %dev, i32 2920
  %28 = ptrtoint ptr %nic_ops49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nic_ops49, align 8
  %config_led50 = getelementptr inbounds %struct.qlcnic_nic_template, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %config_led50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config_led50, align 4
  %call51 = tail call i32 %31(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.sw.epilog_crit_edge, label %if.end48.sw.epilog.sink.split_crit_edge

if.end48.sw.epilog.sink.split_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end48.sw.epilog.sink.split_crit_edge, %if.end26.sw.epilog.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.38, %if.end26.sw.epilog.sink.split_crit_edge ], [ @.str.41, %if.end48.sw.epilog.sink.split_crit_edge ]
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull %.str.41.sink) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end48.sw.epilog_crit_edge, %if.then42.sw.epilog_crit_edge, %sw.bb33.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge, %if.then20.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  %tobool66.not = phi i1 [ true, %if.end48.sw.epilog_crit_edge ], [ true, %if.then42.sw.epilog_crit_edge ], [ true, %sw.bb33.sw.epilog_crit_edge ], [ true, %if.then20.sw.epilog_crit_edge ], [ true, %if.end11.sw.epilog_crit_edge ], [ false, %if.end26.sw.epilog_crit_edge ], [ true, %sw.epilog.sink.split ]
  %err.0 = phi i32 [ -5, %if.end48.sw.epilog_crit_edge ], [ -5, %if.then42.sw.epilog_crit_edge ], [ -5, %sw.bb33.sw.epilog_crit_edge ], [ -5, %if.then20.sw.epilog_crit_edge ], [ -5, %if.end11.sw.epilog_crit_edge ], [ 0, %if.end26.sw.epilog_crit_edge ], [ -5, %sw.epilog.sink.split ]
  %state60 = getelementptr i8, ptr %dev, i32 2324
  %call61 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %state60) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %sw.epilog.if.end64_crit_edge, label %if.then63

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then63:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @qlcnic_diag_free_res(ptr noundef %dev, i32 noundef %conv) #15
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %sw.epilog.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool65.not = icmp eq i32 %state, 0
  %brmerge = or i1 %tobool65.not, %tobool66.not
  br i1 %brmerge, label %if.then67, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state60) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end64.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %if.then6 ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %err.0, %if.end64.cleanup_crit_edge ], [ %err.0, %if.then67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readonly %stats, ptr noundef %data) #3 align 64 {
entry:
  %port_stats = alloca %struct.qlcnic_esw_statistics, align 8
  %mac_stats = alloca %struct.qlcnic_mac_statistics, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %port_stats) #15
  %0 = call ptr @memset(ptr %port_stats, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %mac_stats) #15
  %1 = call ptr @memset(ptr %mac_stats, i32 255, i32 312)
  %n_stats = getelementptr inbounds %struct.ethtool_stats, ptr %stats, i32 0, i32 1
  %2 = ptrtoint ptr %n_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_stats, align 4
  %mul = shl i32 %3, 3
  %4 = call ptr @memset(ptr %data, i32 0, i32 %mul)
  %drv_tx_rings = getelementptr i8, ptr %dev, i32 2345
  %5 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp115.not = icmp eq i8 %6, 0
  br i1 %cmp115.not, label %entry.for.cond7.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %entry
  %is_up = getelementptr i8, ptr %dev, i32 2356
  %tx_ring5 = getelementptr i8, ptr %dev, i32 2312
  %stats.i = getelementptr i8, ptr %dev, i32 2928
  %xmit_on18.i = getelementptr i8, ptr %dev, i32 3040
  %xmit_off21.i = getelementptr i8, ptr %dev, i32 3048
  %xmitfinished.i = getelementptr i8, ptr %dev, i32 2936
  %txbytes.i = getelementptr i8, ptr %dev, i32 2992
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %entry.for.cond7.preheader_crit_edge ], [ %data.addr.1, %for.inc.for.cond7.preheader_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %dev, i32 3040
  %7 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr12, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.0.lcssa, i32 1
  %9 = ptrtoint ptr %data.addr.0.lcssa to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %data.addr.0.lcssa, align 8
  %add.ptr12.1 = getelementptr i8, ptr %dev, i32 3048
  %10 = ptrtoint ptr %add.ptr12.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr12.1, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %data.addr.0.lcssa, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %incdec.ptr, align 8
  %add.ptr12.2 = getelementptr i8, ptr %dev, i32 2928
  %13 = ptrtoint ptr %add.ptr12.2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr12.2, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %data.addr.0.lcssa, i32 3
  %15 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %incdec.ptr.1, align 8
  %add.ptr12.3 = getelementptr i8, ptr %dev, i32 2936
  %16 = ptrtoint ptr %add.ptr12.3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr12.3, align 8
  %incdec.ptr.3 = getelementptr i64, ptr %data.addr.0.lcssa, i32 4
  %18 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %incdec.ptr.2, align 8
  %add.ptr12.4 = getelementptr i8, ptr %dev, i32 3080
  %19 = ptrtoint ptr %add.ptr12.4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr12.4, align 8
  %incdec.ptr.4 = getelementptr i64, ptr %data.addr.0.lcssa, i32 5
  %21 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %incdec.ptr.3, align 8
  %add.ptr12.5 = getelementptr i8, ptr %dev, i32 2992
  %22 = ptrtoint ptr %add.ptr12.5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr12.5, align 8
  %incdec.ptr.5 = getelementptr i64, ptr %data.addr.0.lcssa, i32 6
  %24 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %incdec.ptr.4, align 8
  %add.ptr12.6 = getelementptr i8, ptr %dev, i32 2952
  %25 = ptrtoint ptr %add.ptr12.6 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr12.6, align 8
  %incdec.ptr.6 = getelementptr i64, ptr %data.addr.0.lcssa, i32 7
  %27 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %incdec.ptr.5, align 8
  %add.ptr12.7 = getelementptr i8, ptr %dev, i32 3072
  %28 = ptrtoint ptr %add.ptr12.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr12.7, align 8
  %incdec.ptr.7 = getelementptr i64, ptr %data.addr.0.lcssa, i32 8
  %30 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %incdec.ptr.6, align 8
  %add.ptr12.8 = getelementptr i8, ptr %dev, i32 2968
  %31 = ptrtoint ptr %add.ptr12.8 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr12.8, align 8
  %incdec.ptr.8 = getelementptr i64, ptr %data.addr.0.lcssa, i32 9
  %33 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %incdec.ptr.7, align 8
  %add.ptr12.9 = getelementptr i8, ptr %dev, i32 2984
  %34 = ptrtoint ptr %add.ptr12.9 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr12.9, align 8
  %incdec.ptr.9 = getelementptr i64, ptr %data.addr.0.lcssa, i32 10
  %36 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %incdec.ptr.8, align 8
  %add.ptr12.10 = getelementptr i8, ptr %dev, i32 2944
  %37 = ptrtoint ptr %add.ptr12.10 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr12.10, align 8
  %incdec.ptr.10 = getelementptr i64, ptr %data.addr.0.lcssa, i32 11
  %39 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %incdec.ptr.9, align 8
  %add.ptr12.11 = getelementptr i8, ptr %dev, i32 3064
  %40 = ptrtoint ptr %add.ptr12.11 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr12.11, align 8
  %incdec.ptr.11 = getelementptr i64, ptr %data.addr.0.lcssa, i32 12
  %42 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %incdec.ptr.10, align 8
  %add.ptr12.12 = getelementptr i8, ptr %dev, i32 2960
  %43 = ptrtoint ptr %add.ptr12.12 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr12.12, align 8
  %incdec.ptr.12 = getelementptr i64, ptr %data.addr.0.lcssa, i32 13
  %45 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %incdec.ptr.11, align 8
  %add.ptr12.13 = getelementptr i8, ptr %dev, i32 2976
  %46 = ptrtoint ptr %add.ptr12.13 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr12.13, align 8
  %incdec.ptr.13 = getelementptr i64, ptr %data.addr.0.lcssa, i32 14
  %48 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %incdec.ptr.12, align 8
  %add.ptr12.14 = getelementptr i8, ptr %dev, i32 3000
  %49 = ptrtoint ptr %add.ptr12.14 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr12.14, align 8
  %incdec.ptr.14 = getelementptr i64, ptr %data.addr.0.lcssa, i32 15
  %51 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %incdec.ptr.13, align 8
  %add.ptr12.15 = getelementptr i8, ptr %dev, i32 3008
  %52 = ptrtoint ptr %add.ptr12.15 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr12.15, align 8
  %incdec.ptr.15 = getelementptr i64, ptr %data.addr.0.lcssa, i32 16
  %54 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %incdec.ptr.14, align 8
  %add.ptr12.16 = getelementptr i8, ptr %dev, i32 3016
  %55 = ptrtoint ptr %add.ptr12.16 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr12.16, align 8
  %incdec.ptr.16 = getelementptr i64, ptr %data.addr.0.lcssa, i32 17
  %57 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %incdec.ptr.15, align 8
  %add.ptr12.17 = getelementptr i8, ptr %dev, i32 3024
  %58 = ptrtoint ptr %add.ptr12.17 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr12.17, align 8
  %incdec.ptr.17 = getelementptr i64, ptr %data.addr.0.lcssa, i32 18
  %60 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %incdec.ptr.16, align 8
  %add.ptr12.18 = getelementptr i8, ptr %dev, i32 3032
  %61 = ptrtoint ptr %add.ptr12.18 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr12.18, align 8
  %incdec.ptr.18 = getelementptr i64, ptr %data.addr.0.lcssa, i32 19
  %63 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %incdec.ptr.17, align 8
  %add.ptr12.19 = getelementptr i8, ptr %dev, i32 3056
  %64 = ptrtoint ptr %add.ptr12.19 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr12.19, align 8
  %incdec.ptr.19 = getelementptr i64, ptr %data.addr.0.lcssa, i32 20
  %66 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %incdec.ptr.18, align 8
  %add.ptr12.20 = getelementptr i8, ptr %dev, i32 3096
  %67 = ptrtoint ptr %add.ptr12.20 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr12.20, align 8
  %incdec.ptr.20 = getelementptr i64, ptr %data.addr.0.lcssa, i32 21
  %69 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %incdec.ptr.19, align 8
  %add.ptr12.21 = getelementptr i8, ptr %dev, i32 3088
  %70 = ptrtoint ptr %add.ptr12.21 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr12.21, align 8
  %incdec.ptr.21 = getelementptr i64, ptr %data.addr.0.lcssa, i32 22
  %72 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %incdec.ptr.20, align 8
  %add.ptr12.22 = getelementptr i8, ptr %dev, i32 3104
  %73 = ptrtoint ptr %add.ptr12.22 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr12.22, align 8
  %incdec.ptr.22 = getelementptr i64, ptr %data.addr.0.lcssa, i32 23
  %75 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %incdec.ptr.21, align 8
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %device1.i, align 2
  %80 = zext i16 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %79, label %if.else24 [
    i16 -32720, label %for.cond7.preheader.if.then21_crit_edge
    i16 -30672, label %for.cond7.preheader.if.then21_crit_edge121
    i16 -32704, label %for.cond7.preheader.if.then21_crit_edge122
    i16 -31680, label %for.cond7.preheader.if.then21_crit_edge123
    i16 -31696, label %for.cond7.preheader.if.then21_crit_edge124
    i16 -29648, label %for.cond7.preheader.if.then21_crit_edge125
  ]

for.cond7.preheader.if.then21_crit_edge125:       ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.cond7.preheader.if.then21_crit_edge124:       ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.cond7.preheader.if.then21_crit_edge123:       ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.cond7.preheader.if.then21_crit_edge122:       ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.cond7.preheader.if.then21_crit_edge121:       ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.cond7.preheader.if.then21_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %data.addr.0116 = phi ptr [ %data, %for.body.lr.ph ], [ %data.addr.1, %for.inc.for.body_crit_edge ]
  %81 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %82)
  %cmp3 = icmp eq i16 %82, 777
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  %83 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_ring5, align 8
  %tx_stats.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %84, i32 %ring.0117, i32 8
  %85 = ptrtoint ptr %tx_stats.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %tx_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %86)
  %cmp.i = icmp eq i64 %86, -1
  %spec.select.i = select i1 %cmp.i, i64 0, i64 %86
  %incdec.ptr.i = getelementptr i64, ptr %data.addr.0116, i32 1
  %87 = ptrtoint ptr %data.addr.0116 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %spec.select.i, ptr %data.addr.0116, align 8
  %xmit_off.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %84, i32 %ring.0117, i32 8, i32 1
  %88 = ptrtoint ptr %xmit_off.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %xmit_off.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %89)
  %cmp4.i = icmp eq i64 %89, -1
  %cond10.i = select i1 %cmp4.i, i64 0, i64 %89
  %incdec.ptr11.i = getelementptr i64, ptr %data.addr.0116, i32 2
  %90 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %cond10.i, ptr %incdec.ptr.i, align 8
  %xmit_called.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %84, i32 %ring.0117, i32 8, i32 2
  %91 = ptrtoint ptr %xmit_called.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %xmit_called.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %92)
  %cmp13.i = icmp eq i64 %92, -1
  %cond19.i = select i1 %cmp13.i, i64 0, i64 %92
  %incdec.ptr20.i = getelementptr i64, ptr %data.addr.0116, i32 3
  %93 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %cond19.i, ptr %incdec.ptr11.i, align 8
  %xmit_finished.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %84, i32 %ring.0117, i32 8, i32 3
  %94 = ptrtoint ptr %xmit_finished.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %xmit_finished.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %95)
  %cmp22.i = icmp eq i64 %95, -1
  %cond28.i = select i1 %cmp22.i, i64 0, i64 %95
  %96 = ptrtoint ptr %incdec.ptr20.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %cond28.i, ptr %incdec.ptr20.i, align 8
  %tx_bytes.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %84, i32 %ring.0117, i32 8, i32 4
  %97 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %tx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %98)
  %cmp31.i = icmp eq i64 %98, -1
  %cond37.i = select i1 %cmp31.i, i64 0, i64 %98
  %incdec.ptr29.i = getelementptr i64, ptr %data.addr.0116, i32 4
  %99 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %cond37.i, ptr %incdec.ptr29.i, align 8
  %100 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %drv_tx_rings, align 1
  %conv.i = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp54.not.i = icmp eq i8 %101, 0
  br i1 %cmp54.not.i, label %if.then.qlcnic_update_stats.exit_crit_edge, label %for.body.lr.ph.i

if.then.qlcnic_update_stats.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_update_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %102 = ptrtoint ptr %tx_ring5 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_ring5, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ring.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats.sroa.20.059.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats.sroa.16.058.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add13.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats.sroa.12.057.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add10.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats.sroa.8.056.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats.sroa.0.055.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %tx_stats3.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %103, i32 %ring.060.i, i32 8
  %104 = ptrtoint ptr %tx_stats3.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %tx_stats3.i, align 8
  %add.i = add i64 %105, %tx_stats.sroa.0.055.i
  %xmit_off.i82 = getelementptr %struct.qlcnic_host_tx_ring, ptr %103, i32 %ring.060.i, i32 8, i32 1
  %106 = ptrtoint ptr %xmit_off.i82 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %xmit_off.i82, align 8
  %add7.i = add i64 %107, %tx_stats.sroa.8.056.i
  %xmit_called.i83 = getelementptr %struct.qlcnic_host_tx_ring, ptr %103, i32 %ring.060.i, i32 8, i32 2
  %108 = ptrtoint ptr %xmit_called.i83 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %xmit_called.i83, align 8
  %add10.i = add i64 %109, %tx_stats.sroa.12.057.i
  %xmit_finished.i84 = getelementptr %struct.qlcnic_host_tx_ring, ptr %103, i32 %ring.060.i, i32 8, i32 3
  %110 = ptrtoint ptr %xmit_finished.i84 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %xmit_finished.i84, align 8
  %add13.i = add i64 %111, %tx_stats.sroa.16.058.i
  %tx_bytes.i85 = getelementptr %struct.qlcnic_host_tx_ring, ptr %103, i32 %ring.060.i, i32 8, i32 4
  %112 = ptrtoint ptr %tx_bytes.i85 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %tx_bytes.i85, align 8
  %add16.i = add i64 %113, %tx_stats.sroa.20.059.i
  %inc.i = add nuw nsw i32 %ring.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.qlcnic_update_stats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.qlcnic_update_stats.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_update_stats.exit

qlcnic_update_stats.exit:                         ; preds = %for.body.i.qlcnic_update_stats.exit_crit_edge, %if.then.qlcnic_update_stats.exit_crit_edge
  %tx_stats.sroa.0.0.lcssa.i = phi i64 [ 0, %if.then.qlcnic_update_stats.exit_crit_edge ], [ %add.i, %for.body.i.qlcnic_update_stats.exit_crit_edge ]
  %tx_stats.sroa.8.0.lcssa.i = phi i64 [ 0, %if.then.qlcnic_update_stats.exit_crit_edge ], [ %add7.i, %for.body.i.qlcnic_update_stats.exit_crit_edge ]
  %tx_stats.sroa.12.0.lcssa.i = phi i64 [ 0, %if.then.qlcnic_update_stats.exit_crit_edge ], [ %add10.i, %for.body.i.qlcnic_update_stats.exit_crit_edge ]
  %tx_stats.sroa.16.0.lcssa.i = phi i64 [ 0, %if.then.qlcnic_update_stats.exit_crit_edge ], [ %add13.i, %for.body.i.qlcnic_update_stats.exit_crit_edge ]
  %tx_stats.sroa.20.0.lcssa.i = phi i64 [ 0, %if.then.qlcnic_update_stats.exit_crit_edge ], [ %add16.i, %for.body.i.qlcnic_update_stats.exit_crit_edge ]
  %114 = ptrtoint ptr %xmit_on18.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %tx_stats.sroa.0.0.lcssa.i, ptr %xmit_on18.i, align 8
  %115 = ptrtoint ptr %xmit_off21.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %tx_stats.sroa.8.0.lcssa.i, ptr %xmit_off21.i, align 8
  %116 = ptrtoint ptr %stats.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %tx_stats.sroa.12.0.lcssa.i, ptr %stats.i, align 8
  %117 = ptrtoint ptr %xmitfinished.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %tx_stats.sroa.16.0.lcssa.i, ptr %xmitfinished.i, align 8
  %118 = ptrtoint ptr %txbytes.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %tx_stats.sroa.20.0.lcssa.i, ptr %txbytes.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %qlcnic_update_stats.exit, %for.body.for.inc_crit_edge
  %data.addr.1 = getelementptr i64, ptr %data.addr.0116, i32 5
  %inc = add nuw nsw i32 %ring.0117, 1
  %119 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %120 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond7.preheader_crit_edge

for.inc.for.cond7.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.then21:                                        ; preds = %for.cond7.preheader.if.then21_crit_edge, %for.cond7.preheader.if.then21_crit_edge121, %for.cond7.preheader.if.then21_crit_edge122, %for.cond7.preheader.if.then21_crit_edge123, %for.cond7.preheader.if.then21_crit_edge124, %for.cond7.preheader.if.then21_crit_edge125
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 8
  %linkup = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %linkup to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %linkup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not = icmp eq i8 %124, 0
  br i1 %tobool.not, label %if.then21.cleanup_crit_edge, label %if.then22

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @qlcnic_83xx_get_stats(ptr noundef %add.ptr.i, ptr noundef %incdec.ptr.22) #15
  br label %cleanup

if.else24:                                        ; preds = %for.cond7.preheader
  %125 = call ptr @memset(ptr %mac_stats, i32 0, i32 312)
  %call25 = call i32 @qlcnic_get_mac_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %mac_stats) #15
  %call26 = call fastcc ptr @qlcnic_fill_stats(ptr noundef %incdec.ptr.22, ptr noundef nonnull %mac_stats, i32 noundef 1)
  %flags = getelementptr i8, ptr %dev, i32 2328
  %126 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags, align 8
  %and = and i32 %127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else24.cleanup_crit_edge, label %if.end30

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30:                                         ; preds = %if.else24
  %128 = call ptr @memset(ptr %port_stats, i32 0, i32 176)
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pci_func, align 1
  %call32 = call i32 @qlcnic_get_port_stats(ptr noundef %add.ptr.i, i8 noundef zeroext %132, i8 noundef zeroext 0, ptr noundef nonnull %port_stats) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %unicast_frames.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 4
  %133 = ptrtoint ptr %unicast_frames.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %unicast_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %134)
  %cmp229.i = icmp eq i64 %134, -1
  %spec.select438.i = select i1 %cmp229.i, i64 0, i64 %134
  %incdec.ptr235.i = getelementptr i64, ptr %call26, i32 1
  %135 = ptrtoint ptr %call26 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %spec.select438.i, ptr %call26, align 8
  %multicast_frames.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 5
  %136 = ptrtoint ptr %multicast_frames.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %multicast_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %137)
  %cmp236.i = icmp eq i64 %137, -1
  %cond241.i = select i1 %cmp236.i, i64 0, i64 %137
  %incdec.ptr242.i = getelementptr i64, ptr %call26, i32 2
  %138 = ptrtoint ptr %incdec.ptr235.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %cond241.i, ptr %incdec.ptr235.i, align 8
  %broadcast_frames.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 6
  %139 = ptrtoint ptr %broadcast_frames.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %broadcast_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %140)
  %cmp243.i = icmp eq i64 %140, -1
  %cond248.i = select i1 %cmp243.i, i64 0, i64 %140
  %incdec.ptr249.i = getelementptr i64, ptr %call26, i32 3
  %141 = ptrtoint ptr %incdec.ptr242.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %cond248.i, ptr %incdec.ptr242.i, align 8
  %dropped_frames.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 7
  %142 = ptrtoint ptr %dropped_frames.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %dropped_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %143)
  %cmp250.i = icmp eq i64 %143, -1
  %cond255.i = select i1 %cmp250.i, i64 0, i64 %143
  %incdec.ptr256.i = getelementptr i64, ptr %call26, i32 4
  %144 = ptrtoint ptr %incdec.ptr249.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %cond255.i, ptr %incdec.ptr249.i, align 8
  %errors.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 8
  %145 = ptrtoint ptr %errors.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %errors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %146)
  %cmp257.i = icmp eq i64 %146, -1
  %cond262.i = select i1 %cmp257.i, i64 0, i64 %146
  %incdec.ptr263.i = getelementptr i64, ptr %call26, i32 5
  %147 = ptrtoint ptr %incdec.ptr256.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %cond262.i, ptr %incdec.ptr256.i, align 8
  %local_frames.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 9
  %148 = ptrtoint ptr %local_frames.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %local_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %149)
  %cmp264.i = icmp eq i64 %149, -1
  %cond269.i = select i1 %cmp264.i, i64 0, i64 %149
  %incdec.ptr270.i = getelementptr i64, ptr %call26, i32 6
  %150 = ptrtoint ptr %incdec.ptr263.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %cond269.i, ptr %incdec.ptr263.i, align 8
  %numbytes.i = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 10
  %151 = ptrtoint ptr %numbytes.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %numbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %152)
  %cmp271.i = icmp eq i64 %152, -1
  %cond276.i = select i1 %cmp271.i, i64 0, i64 %152
  %153 = ptrtoint ptr %incdec.ptr270.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %cond276.i, ptr %incdec.ptr270.i, align 8
  %154 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %add.ptr.i, align 8
  %pci_func39 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %pci_func39 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %pci_func39, align 1
  %tx = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1
  %call40 = call i32 @qlcnic_get_port_stats(ptr noundef %add.ptr.i, i8 noundef zeroext %157, i8 noundef zeroext 1, ptr noundef %tx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr277.i = getelementptr i64, ptr %call26, i32 7
  %unicast_frames.i86 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 4
  %158 = ptrtoint ptr %unicast_frames.i86 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %unicast_frames.i86, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %159)
  %cmp229.i87 = icmp eq i64 %159, -1
  %spec.select438.i88 = select i1 %cmp229.i87, i64 0, i64 %159
  %incdec.ptr235.i89 = getelementptr i64, ptr %call26, i32 8
  %160 = ptrtoint ptr %incdec.ptr277.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %spec.select438.i88, ptr %incdec.ptr277.i, align 8
  %multicast_frames.i90 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 5
  %161 = ptrtoint ptr %multicast_frames.i90 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %multicast_frames.i90, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %162)
  %cmp236.i91 = icmp eq i64 %162, -1
  %cond241.i92 = select i1 %cmp236.i91, i64 0, i64 %162
  %incdec.ptr242.i93 = getelementptr i64, ptr %call26, i32 9
  %163 = ptrtoint ptr %incdec.ptr235.i89 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %cond241.i92, ptr %incdec.ptr235.i89, align 8
  %broadcast_frames.i94 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 6
  %164 = ptrtoint ptr %broadcast_frames.i94 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %broadcast_frames.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %165)
  %cmp243.i95 = icmp eq i64 %165, -1
  %cond248.i96 = select i1 %cmp243.i95, i64 0, i64 %165
  %incdec.ptr249.i97 = getelementptr i64, ptr %call26, i32 10
  %166 = ptrtoint ptr %incdec.ptr242.i93 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %cond248.i96, ptr %incdec.ptr242.i93, align 8
  %dropped_frames.i98 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 7
  %167 = ptrtoint ptr %dropped_frames.i98 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %dropped_frames.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %168)
  %cmp250.i99 = icmp eq i64 %168, -1
  %cond255.i100 = select i1 %cmp250.i99, i64 0, i64 %168
  %incdec.ptr256.i101 = getelementptr i64, ptr %call26, i32 11
  %169 = ptrtoint ptr %incdec.ptr249.i97 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %cond255.i100, ptr %incdec.ptr249.i97, align 8
  %errors.i102 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 8
  %170 = ptrtoint ptr %errors.i102 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %errors.i102, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %171)
  %cmp257.i103 = icmp eq i64 %171, -1
  %cond262.i104 = select i1 %cmp257.i103, i64 0, i64 %171
  %incdec.ptr263.i105 = getelementptr i64, ptr %call26, i32 12
  %172 = ptrtoint ptr %incdec.ptr256.i101 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %cond262.i104, ptr %incdec.ptr256.i101, align 8
  %local_frames.i106 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 9
  %173 = ptrtoint ptr %local_frames.i106 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %local_frames.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %174)
  %cmp264.i107 = icmp eq i64 %174, -1
  %cond269.i108 = select i1 %cmp264.i107, i64 0, i64 %174
  %incdec.ptr270.i109 = getelementptr i64, ptr %call26, i32 13
  %175 = ptrtoint ptr %incdec.ptr263.i105 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %cond269.i108, ptr %incdec.ptr263.i105, align 8
  %numbytes.i110 = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1, i32 10
  %176 = ptrtoint ptr %numbytes.i110 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %numbytes.i110, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %177)
  %cmp271.i111 = icmp eq i64 %177, -1
  %cond276.i112 = select i1 %cmp271.i111, i64 0, i64 %177
  %178 = ptrtoint ptr %incdec.ptr270.i109 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %cond276.i112, ptr %incdec.ptr270.i109, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.else24.cleanup_crit_edge, %if.then22, %if.then21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %mac_stats) #15
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %port_stats) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %sset, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %pdev.i.i = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device1.i.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %4, label %sw.bb1.cleanup_crit_edge [
    i16 -32736, label %if.then.i
    i16 -32720, label %sw.bb1.if.then4.i_crit_edge
    i16 -30672, label %sw.bb1.if.then4.i_crit_edge3
    i16 -32704, label %sw.bb1.if.then4.i_crit_edge4
    i16 -31680, label %sw.bb1.if.then4.i_crit_edge5
    i16 -31696, label %sw.bb1.if.then4.i_crit_edge6
    i16 -29648, label %sw.bb1.if.then4.i_crit_edge7
  ]

sw.bb1.if.then4.i_crit_edge7:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.if.then4.i_crit_edge6:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.if.then4.i_crit_edge5:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.if.then4.i_crit_edge4:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.if.then4.i_crit_edge3:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.if.then4.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %drv_tx_rings.i.i = getelementptr i8, ptr %dev, i32 2345
  %6 = ptrtoint ptr %drv_tx_rings.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_tx_rings.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 5
  %flags.i = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 63, i32 77
  %spec.select.i = add nuw nsw i32 %spec.select.v.i, %mul.i.i
  br label %cleanup

if.then4.i:                                       ; preds = %sw.bb1.if.then4.i_crit_edge, %sw.bb1.if.then4.i_crit_edge3, %sw.bb1.if.then4.i_crit_edge4, %sw.bb1.if.then4.i_crit_edge5, %sw.bb1.if.then4.i_crit_edge6, %sw.bb1.if.then4.i_crit_edge7
  %drv_tx_rings.i15.i = getelementptr i8, ptr %dev, i32 2345
  %10 = ptrtoint ptr %drv_tx_rings.i15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drv_tx_rings.i15.i, align 1
  %conv.i16.i = zext i8 %11 to i32
  %mul.i17.i = mul nuw nsw i32 %conv.i16.i, 5
  %add.i18.i = add nuw nsw i32 %mul.i17.i, 85
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then4.i, %if.then.i, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 6, %entry.cleanup_crit_edge ], [ %add.i18.i, %if.then4.i ], [ %spec.select.i, %if.then.i ], [ -1, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qlcnic_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %channel) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_sds_rings = getelementptr i8, ptr %dev, i32 2343
  %0 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_sds_rings, align 1
  %conv = zext i8 %1 to i32
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %max_rx, align 4
  %max_tx_rings = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %max_tx_rings, align 8
  %conv1 = zext i8 %4 to i32
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %5 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %max_tx, align 4
  %drv_sds_rings = getelementptr i8, ptr %dev, i32 2346
  %6 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_sds_rings, align 2
  %conv2 = zext i8 %7 to i32
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %8 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %rx_count, align 4
  %drv_tx_rings = getelementptr i8, ptr %dev, i32 2345
  %9 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drv_tx_rings, align 1
  %conv3 = zext i8 %10 to i32
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %11 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 7
  %2 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 8
  %4 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %6 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_count, align 4
  %conv = trunc i32 %7 to i8
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %8 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_count, align 4
  %conv5 = trunc i32 %9 to i8
  %conv.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 0
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %lor.lhs.false.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end4
  %conv2.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %cmp3.i = icmp eq i8 %conv5, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.then8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8.i:                                       ; preds = %lor.lhs.false.i
  %max_sds_rings.i = getelementptr i8, ptr %dev, i32 2343
  %10 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv)
  %cmp11.i = icmp ult i8 %11, %conv
  br i1 %cmp11.i, label %if.then13.i, label %if.then22.i

if.then13.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv10.i = zext i8 %11 to i32
  %netdev.i = getelementptr i8, ptr %dev, i32 2316
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef %conv.i, i32 noundef %conv10.i) #19
  br label %cleanup

if.then22.i:                                      ; preds = %if.then8.i
  %max_tx_rings.i = getelementptr i8, ptr %dev, i32 2344
  %14 = ptrtoint ptr %max_tx_rings.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_tx_rings.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %conv5)
  %cmp25.i = icmp ult i8 %15, %conv5
  br i1 %cmp25.i, label %if.then27.i, label %if.end9

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv24.i = zext i8 %15 to i32
  %netdev28.i = getelementptr i8, ptr %dev, i32 2316
  %16 = ptrtoint ptr %netdev28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev28.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.48, i32 noundef %conv2.i, i32 noundef %conv24.i) #19
  br label %cleanup

if.end9:                                          ; preds = %if.then22.i
  %drv_sds_rings = getelementptr i8, ptr %dev, i32 2346
  %18 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drv_sds_rings, align 2
  %conv10 = zext i8 %19 to i32
  %20 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv10)
  %cmp.not = icmp eq i32 %21, %conv10
  br i1 %cmp.not, label %if.end9.if.end22_crit_edge, label %if.then13

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then13:                                        ; preds = %if.end9
  %call15 = tail call i32 @qlcnic_validate_rings(ptr noundef %add.ptr.i, i32 noundef %21, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %22 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_count, align 4
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %23) #19
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %conv21 = trunc i32 %23 to i8
  %drv_rss_rings = getelementptr i8, ptr %dev, i32 2348
  %24 = ptrtoint ptr %drv_rss_rings to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv21, ptr %drv_rss_rings, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end9.if.end22_crit_edge
  %drv_tx_rings = getelementptr i8, ptr %dev, i32 2345
  %25 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %drv_tx_rings, align 1
  %conv23 = zext i8 %26 to i32
  %27 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv23)
  %cmp25.not = icmp eq i32 %28, %conv23
  br i1 %cmp25.not, label %if.end22.if.end36_crit_edge, label %if.then27

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then27:                                        ; preds = %if.end22
  %call29 = tail call i32 @qlcnic_validate_rings(ptr noundef %add.ptr.i, i32 noundef %28, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %29 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_count, align 4
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %30) #19
  br label %cleanup

if.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %conv35 = trunc i32 %30 to i8
  %drv_tss_rings = getelementptr i8, ptr %dev, i32 2347
  %31 = ptrtoint ptr %drv_tss_rings to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv35, ptr %drv_tss_rings, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end22.if.end36_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %or = or i32 %33, 524288
  store i32 %or, ptr %flags, align 8
  %call38 = tail call i32 @qlcnic_setup_rings(ptr noundef %add.ptr.i) #15
  %34 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %drv_sds_rings, align 2
  %conv40 = zext i8 %35 to i32
  %36 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %drv_tx_rings, align 1
  %conv42 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv40, i32 noundef %conv42) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31, %if.then17, %if.then27.i, %if.then13.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ %call29, %if.then31 ], [ %call38, %if.end36 ], [ -22, %if.then ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then13.i ], [ -22, %if.then27.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_get_dump_flag(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %dump) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %2 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmpl_hdr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %netdev2 = getelementptr i8, ptr %netdev, i32 2316
  %4 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev2, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_dump1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_dump1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tmpl_hdr_size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 9
  %8 = ptrtoint ptr %tmpl_hdr_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmpl_hdr_size, align 4
  %size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add = add i32 %11, %9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %add.sink = phi i32 [ %add, %if.then4 ], [ 0, %if.end.if.end6_crit_edge ]
  %12 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.sink, ptr %12, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2320
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device1.i.i, align 2
  %20 = and i16 %19, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %20)
  %21 = icmp eq i16 %20, -32704
  br i1 %21, label %if.then.i, label %qlcnic_check_fw_dump_state.exit

if.then.i:                                        ; preds = %if.end6
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 56
  %24 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %25, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %23, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #15, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %29 = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.i = icmp eq i32 %29, 0
  br i1 %tobool6.i, label %if.then.i.if.else9_crit_edge, label %if.then.i.if.end11_crit_edge

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then.i.if.else9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else9

qlcnic_check_fw_dump_state.exit:                  ; preds = %if.end6
  %enable.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 48, i32 1
  %30 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %extract.t13.i.not = icmp eq i8 %31, 0
  br i1 %extract.t13.i.not, label %qlcnic_check_fw_dump_state.exit.if.end11_crit_edge, label %qlcnic_check_fw_dump_state.exit.if.else9_crit_edge

qlcnic_check_fw_dump_state.exit.if.else9_crit_edge: ; preds = %qlcnic_check_fw_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else9

qlcnic_check_fw_dump_state.exit.if.end11_crit_edge: ; preds = %qlcnic_check_fw_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.else9:                                         ; preds = %qlcnic_check_fw_dump_state.exit.if.else9_crit_edge, %if.then.i.if.else9_crit_edge
  %cap_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %32 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap_mask, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %qlcnic_check_fw_dump_state.exit.if.end11_crit_edge, %if.then.i.if.end11_crit_edge
  %.sink = phi i32 [ %33, %if.else9 ], [ 0, %if.then.i.if.end11_crit_edge ], [ 0, %qlcnic_check_fw_dump_state.exit.if.end11_crit_edge ]
  %flag10 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %34 = ptrtoint ptr %flag10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %flag10, align 4
  %fw_version = getelementptr i8, ptr %netdev, i32 3572
  %35 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_version, align 4
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %37 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -524, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_get_dump_data(ptr noundef %netdev, ptr nocapture noundef writeonly %dump, ptr nocapture noundef writeonly %buffer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %fw_dump1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %2 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmpl_hdr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.49) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_dump1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.50) #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tmpl_hdr_size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 9
  %6 = ptrtoint ptr %tmpl_hdr_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmpl_hdr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp36.not = icmp ult i32 %7, 4
  br i1 %cmp36.not, label %if.end4.for.end_crit_edge, label %for.body.preheader

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %if.end4
  %div35 = lshr i32 %7, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %data.039 = phi ptr [ %incdec.ptr6, %for.body.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %hdr_ptr.038 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %hdr_ptr.038, i32 1
  %8 = ptrtoint ptr %hdr_ptr.038 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdr_ptr.038, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %incdec.ptr6 = getelementptr i32, ptr %data.039, i32 1
  %11 = ptrtoint ptr %data.039 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %data.039, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %div35
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer, i32 %7
  %data7 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 4
  %12 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data7, align 4
  %size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %13, i32 %15)
  %17 = load i32, ptr %size, align 4
  %add = add i32 %17, %7
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %len, align 4
  %cap_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %19 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap_mask, align 4
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %21 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flag, align 4
  %22 = load ptr, ptr %data7, align 4
  tail call void @vfree(ptr noundef %22) #15
  %23 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %data7, align 4
  %24 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fw_dump1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.51) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %if.then3 ], [ -524, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_dump(ptr noundef %netdev, ptr nocapture noundef readonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %fw_dump1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %sw.default [
    i32 -559022355, label %sw.bb
    i32 195952365, label %sw.bb9
    i32 182320877, label %sw.bb15
    i32 -559030611, label %sw.bb21
    i32 -1378877424, label %entry.sw.bb23_crit_edge
    i32 -1378877408, label %entry.sw.bb23_crit_edge83
  ]

entry.sw.bb23_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb23

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb23

sw.bb:                                            ; preds = %entry
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %5 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmpl_hdr, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.52) #19
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %call2 = tail call zeroext i1 @qlcnic_check_fw_dump_state(ptr noundef %add.ptr.i)
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.53) #19
  br label %sw.epilog

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dump1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.54) #19
  br label %sw.epilog

if.end7:                                          ; preds = %if.end4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.55) #19
  %nic_ops.i = getelementptr i8, ptr %netdev, i32 2920
  %9 = ptrtoint ptr %nic_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_ops.i, align 8
  %request_reset.i = getelementptr inbounds %struct.qlcnic_nic_template, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %request_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_reset.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end7.sw.epilog_crit_edge, label %if.then.i

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag, align 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef %14) #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %tmpl_hdr10 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %15 = ptrtoint ptr %tmpl_hdr10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tmpl_hdr10, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.52) #19
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb9
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2320
  %17 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device1.i.i, align 2
  %21 = and i16 %20, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %21)
  %22 = icmp eq i16 %21, -32704
  br i1 %22, label %if.then.i72, label %if.else.i

if.then.i72:                                      ; preds = %if.end13
  %call2.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i71 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i71, label %if.end.i, label %if.then.i72.sw.epilog_crit_edge

if.then.i72.sw.epilog_crit_edge:                  ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 56
  %27 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %28, i32 15
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %26, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #15, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !176
  %32 = or i32 %31, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !177
  tail call void @arm_heavy_mb() #15
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %ext_reg_tbl11.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 56
  %37 = ptrtoint ptr %ext_reg_tbl11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_reg_tbl11.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %38, i32 15
  %39 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %32) #15, !srcloc !163
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr.i) #15
  br label %do.end17.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %enable.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 1
  %41 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %enable.i, align 1
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.else.i, %if.end.i
  %42 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #19
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %tmpl_hdr16 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %44 = ptrtoint ptr %tmpl_hdr16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tmpl_hdr16, align 4
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.52) #19
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call i32 @qlcnic_enable_fw_dump_state(ptr noundef %add.ptr.i)
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.56) #19
  %nic_ops.i74 = getelementptr i8, ptr %netdev, i32 2920
  %46 = ptrtoint ptr %nic_ops.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nic_ops.i74, align 8
  %request_reset.i75 = getelementptr inbounds %struct.qlcnic_nic_template, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %request_reset.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %request_reset.i75, align 4
  %tobool.not.i76 = icmp eq ptr %49, null
  br i1 %tobool.not.i76, label %sw.bb21.qlcnic_dev_request_reset.exit79_crit_edge, label %if.then.i77

sw.bb21.qlcnic_dev_request_reset.exit79_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_dev_request_reset.exit79

if.then.i77:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flag, align 4
  tail call void %49(ptr noundef %add.ptr.i, i32 noundef %51) #15
  br label %qlcnic_dev_request_reset.exit79

qlcnic_dev_request_reset.exit79:                  ; preds = %if.then.i77, %sw.bb21.qlcnic_dev_request_reset.exit79_crit_edge
  %flags = getelementptr i8, ptr %netdev, i32 2328
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 8
  %and = and i32 %53, -8193
  store i32 %and, ptr %flags, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry.sw.bb23_crit_edge, %entry.sw.bb23_crit_edge83
  %state = getelementptr i8, ptr %netdev, i32 2324
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool25.not = icmp eq i32 %56, 0
  br i1 %tobool25.not, label %sw.bb23.sw.epilog_crit_edge, label %if.then26

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.57) #19
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tmpl_hdr28 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %57 = ptrtoint ptr %tmpl_hdr28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tmpl_hdr28, align 4
  %tobool29.not = icmp eq ptr %58, null
  br i1 %tobool29.not, label %if.then30, label %for.body.preheader

for.body.preheader:                               ; preds = %sw.default
  %59 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %3, label %for.cond.6 [
    i32 3, label %for.body.preheader.if.then37.critedge_crit_edge
    i32 7, label %for.body.preheader.if.then37.critedge_crit_edge84
    i32 15, label %for.body.preheader.if.then37.critedge_crit_edge85
    i32 31, label %for.body.preheader.if.then37.critedge_crit_edge86
    i32 63, label %for.body.preheader.if.then37.critedge_crit_edge87
    i32 127, label %for.body.preheader.if.then37.critedge_crit_edge88
    i32 255, label %for.body.preheader.if.then37.critedge_crit_edge89
  ]

for.body.preheader.if.then37.critedge_crit_edge89: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge88: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge87: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge86: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge85: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge84: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

for.body.preheader.if.then37.critedge_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37.critedge

if.then30:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.52) #19
  br label %sw.epilog

for.cond.6:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.58, i32 noundef %3) #19
  br label %sw.epilog

if.then37.critedge:                               ; preds = %for.body.preheader.if.then37.critedge_crit_edge, %for.body.preheader.if.then37.critedge_crit_edge84, %for.body.preheader.if.then37.critedge_crit_edge85, %for.body.preheader.if.then37.critedge_crit_edge86, %for.body.preheader.if.then37.critedge_crit_edge87, %for.body.preheader.if.then37.critedge_crit_edge88, %for.body.preheader.if.then37.critedge_crit_edge89
  %netdev2.i = getelementptr i8, ptr %netdev, i32 2316
  %60 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev2.i, align 4
  %pdev.i.i.i = getelementptr i8, ptr %netdev, i32 2320
  %62 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %device1.i.i.i, align 2
  %66 = and i16 %65, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %66)
  %67 = icmp eq i16 %66, -32704
  br i1 %67, label %if.then.i.i, label %qlcnic_check_fw_dump_state.exit.i

if.then.i.i:                                      ; preds = %if.then37.critedge
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %ext_reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %70 = ptrtoint ptr %ext_reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ext_reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %71, i32 15
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %75 = and i32 %74, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool6.i.i = icmp eq i32 %75, 0
  br i1 %tobool6.i.i, label %if.then.i.i.if.end.i80_crit_edge, label %if.then.i.i.qlcnic_set_dump_mask.exit_crit_edge

if.then.i.i.qlcnic_set_dump_mask.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_set_dump_mask.exit

if.then.i.i.if.end.i80_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i80

qlcnic_check_fw_dump_state.exit.i:                ; preds = %if.then37.critedge
  %enable.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 1
  %76 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %enable.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %extract.t13.i.not.i = icmp eq i8 %77, 0
  br i1 %extract.t13.i.not.i, label %qlcnic_check_fw_dump_state.exit.i.qlcnic_set_dump_mask.exit_crit_edge, label %qlcnic_check_fw_dump_state.exit.i.if.end.i80_crit_edge

qlcnic_check_fw_dump_state.exit.i.if.end.i80_crit_edge: ; preds = %qlcnic_check_fw_dump_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i80

qlcnic_check_fw_dump_state.exit.i.qlcnic_set_dump_mask.exit_crit_edge: ; preds = %qlcnic_check_fw_dump_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_set_dump_mask.exit

if.end.i80:                                       ; preds = %qlcnic_check_fw_dump_state.exit.i.if.end.i80_crit_edge, %if.then.i.i.if.end.i80_crit_edge
  %cap_mask.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %78 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %3, ptr %cap_mask.i, align 4
  %79 = ptrtoint ptr %tmpl_hdr28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tmpl_hdr28, align 4
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_ops.i.i, align 4
  %store_cap_mask.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %84, i32 0, i32 50
  %85 = ptrtoint ptr %store_cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %store_cap_mask.i.i, align 4
  tail call void %86(ptr noundef %80, i32 noundef %3) #15
  br label %qlcnic_set_dump_mask.exit

qlcnic_set_dump_mask.exit:                        ; preds = %if.end.i80, %qlcnic_check_fw_dump_state.exit.i.qlcnic_set_dump_mask.exit_crit_edge, %if.then.i.i.qlcnic_set_dump_mask.exit_crit_edge
  %.str.62.sink.i = phi ptr [ @.str.62, %if.end.i80 ], [ @.str.61, %if.then.i.i.qlcnic_set_dump_mask.exit_crit_edge ], [ @.str.61, %qlcnic_check_fw_dump_state.exit.i.qlcnic_set_dump_mask.exit_crit_edge ]
  %retval.0.i81 = phi i32 [ 0, %if.end.i80 ], [ -95, %if.then.i.i.qlcnic_set_dump_mask.exit_crit_edge ], [ -95, %qlcnic_check_fw_dump_state.exit.i.qlcnic_set_dump_mask.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %61, ptr noundef nonnull %.str.62.sink.i, i32 noundef %3) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %qlcnic_set_dump_mask.exit, %for.cond.6, %if.then30, %if.then26, %sw.bb23.sw.epilog_crit_edge, %qlcnic_dev_request_reset.exit79, %if.end19, %if.then18, %do.end17.i, %if.then.i72.sw.epilog_crit_edge, %if.then12, %if.then.i, %if.end7.sw.epilog_crit_edge, %if.then6, %if.then3, %if.then
  %ret.0 = phi i32 [ %retval.0.i81, %qlcnic_set_dump_mask.exit ], [ -22, %for.cond.6 ], [ -95, %if.then30 ], [ 0, %if.then26 ], [ 0, %sw.bb23.sw.epilog_crit_edge ], [ 0, %qlcnic_dev_request_reset.exit79 ], [ %call20, %if.end19 ], [ -95, %if.then18 ], [ -95, %if.then12 ], [ 0, %if.then6 ], [ -95, %if.then3 ], [ -95, %if.then ], [ 0, %if.end7.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end17.i ], [ -16, %if.then.i72.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #3 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 -32736, label %if.then
    i16 -32720, label %entry.if.then4_crit_edge
    i16 -30672, label %entry.if.then4_crit_edge14
    i16 -32704, label %entry.if.then4_crit_edge15
    i16 -31680, label %entry.if.then4_crit_edge16
    i16 -31696, label %entry.if.then4_crit_edge17
    i16 -29648, label %entry.if.then4_crit_edge18
  ]

entry.if.then4_crit_edge18:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.if.then4_crit_edge17:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.if.then4_crit_edge16:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.if.then4_crit_edge15:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.if.then4_crit_edge14:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #15
  %7 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %err.i, align 4
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_func.i, align 1
  %port_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 23
  %10 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_type.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %11, label %if.then.qlcnic_82xx_get_link_ksettings.exit_crit_edge [
    i16 1, label %if.then.i
    i16 2, label %if.then18.i
  ]

if.then.qlcnic_82xx_get_link_ksettings.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %qlcnic_82xx_get_link_ksettings.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %link_speed.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 26
  %13 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_speed.i, align 8
  %speed6.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %15 = ptrtoint ptr %speed6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %speed6.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %link_duplex.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %link_duplex.i, align 4
  %conv8.i = trunc i16 %19 to i8
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %20 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.i, ptr %duplex.i, align 4
  %21 = load ptr, ptr %add.ptr.i, align 8
  %link_autoneg.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 28
  %22 = ptrtoint ptr %link_autoneg.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_autoneg.i, align 2
  %conv11.i = trunc i16 %23 to i8
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %24 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11.i, ptr %autoneg.i, align 1
  br label %skip.i

if.then18.i:                                      ; preds = %if.then
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %25 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %28(ptr noundef %add.ptr.i, i32 noundef 136323108, ptr noundef nonnull %err.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp20.i = icmp eq i32 %call.i, 3
  %..i = select i1 %cmp20.i, i32 32, i32 4096
  %netdev.i = getelementptr i8, ptr %dev, i32 2316
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then18.i.if.end52.i_crit_edge, label %land.lhs.true.i

if.then18.i.if.end52.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

land.lhs.true.i:                                  ; preds = %if.then18.i
  %has_link_events.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %has_link_events.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_link_events.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end52.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end52.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  %linkup.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 7
  %35 = ptrtoint ptr %linkup.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %linkup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not.i = icmp eq i8 %36, 0
  br i1 %tobool28.not.i, label %if.then27.i.if.end40.i_crit_edge, label %if.then29.i

if.then27.i.if.end40.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops31.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %hw_ops31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_ops31.i, align 4
  %read_reg32.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %read_reg32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_reg32.i, align 4
  %conv33.i = zext i8 %9 to i32
  %div226.i = and i32 %conv33.i, 252
  %add.i = add nuw nsw i32 %div226.i, 136323816
  %call34.i = call i32 %42(ptr noundef %add.ptr.i, i32 noundef %add.i, ptr noundef nonnull %err.i) #15
  %and.i = shl nuw nsw i32 %conv33.i, 3
  %mul36.i = and i32 %and.i, 24
  %shr.i = lshr i32 %call34.i, %mul36.i
  %and37.i = and i32 %shr.i, 255
  %mul38.i = mul nuw nsw i32 %and37.i, 100
  %link_speed39.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 26
  %43 = ptrtoint ptr %link_speed39.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul38.i, ptr %link_speed39.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then29.i, %if.then27.i.if.end40.i_crit_edge
  %link_speed41.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 26
  %44 = ptrtoint ptr %link_speed41.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_speed41.i, align 8
  %speed43.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %46 = ptrtoint ptr %speed43.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %speed43.i, align 4
  %link_autoneg44.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 28
  %47 = ptrtoint ptr %link_autoneg44.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %link_autoneg44.i, align 2
  %conv45.i = trunc i16 %48 to i8
  %autoneg47.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %49 = ptrtoint ptr %autoneg47.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv45.i, ptr %autoneg47.i, align 1
  %link_duplex48.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 27
  %50 = ptrtoint ptr %link_duplex48.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %link_duplex48.i, align 4
  %conv49.i = trunc i16 %51 to i8
  %duplex51.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %52 = ptrtoint ptr %duplex51.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv49.i, ptr %duplex51.i, align 4
  br label %skip.i

if.end52.i:                                       ; preds = %land.lhs.true.i.if.end52.i_crit_edge, %if.then18.i.if.end52.i_crit_edge
  %speed54.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %53 = ptrtoint ptr %speed54.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %speed54.i, align 4
  %duplex56.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %54 = ptrtoint ptr %duplex56.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %duplex56.i, align 4
  %autoneg58.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %55 = ptrtoint ptr %autoneg58.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %autoneg58.i, align 1
  br label %skip.i

skip.i:                                           ; preds = %if.end52.i, %if.end40.i, %if.then.i
  %supported.1.i = phi i32 [ 63, %if.then.i ], [ %..i, %if.end40.i ], [ %..i, %if.end52.i ]
  %advertising.1.i = phi i32 [ 60, %if.then.i ], [ %..i, %if.end40.i ], [ %..i, %if.end52.i ]
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %physical_port.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %physical_port.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %physical_port.i, align 1
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 4
  %60 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %phy_address.i, align 2
  %61 = load ptr, ptr %add.ptr.i, align 8
  %board_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %61, i32 0, i32 24
  %62 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %board_type.i, align 4
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %63, label %do.end.i [
    i16 33, label %skip.i.sw.bb.i_crit_edge
    i16 36, label %skip.i.sw.bb.i_crit_edge19
    i16 41, label %skip.i.sw.bb.i_crit_edge20
    i16 49, label %skip.i.sw.bb67.i_crit_edge
    i16 35, label %skip.i.sw.bb67.i_crit_edge21
    i16 39, label %skip.i.sw.bb67.i_crit_edge22
    i16 37, label %skip.i.sw.bb76.i_crit_edge
    i16 40, label %skip.i.sw.bb76.i_crit_edge23
    i16 34, label %skip.i.sw.bb76.i_crit_edge24
    i16 38, label %skip.i.sw.bb83.i_crit_edge
    i16 42, label %skip.i.sw.bb83.i_crit_edge25
    i16 43, label %skip.i.sw.bb83.i_crit_edge26
    i16 50, label %skip.i.sw.bb92.i_crit_edge
    i16 128, label %sw.bb99.i
  ]

skip.i.sw.bb92.i_crit_edge:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb92.i

skip.i.sw.bb83.i_crit_edge26:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb83.i

skip.i.sw.bb83.i_crit_edge25:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb83.i

skip.i.sw.bb83.i_crit_edge:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb83.i

skip.i.sw.bb76.i_crit_edge24:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76.i

skip.i.sw.bb76.i_crit_edge23:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76.i

skip.i.sw.bb76.i_crit_edge:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76.i

skip.i.sw.bb67.i_crit_edge22:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

skip.i.sw.bb67.i_crit_edge21:                     ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

skip.i.sw.bb67.i_crit_edge:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

skip.i.sw.bb.i_crit_edge20:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

skip.i.sw.bb.i_crit_edge19:                       ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

skip.i.sw.bb.i_crit_edge:                         ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %skip.i.sw.bb.i_crit_edge, %skip.i.sw.bb.i_crit_edge19, %skip.i.sw.bb.i_crit_edge20
  %or.i = or i32 %supported.1.i, 64
  %or66.i = or i32 %advertising.1.i, 64
  br label %sw.bb67.i

sw.bb67.i:                                        ; preds = %sw.bb.i, %skip.i.sw.bb67.i_crit_edge, %skip.i.sw.bb67.i_crit_edge21, %skip.i.sw.bb67.i_crit_edge22
  %supported.2.i = phi i32 [ %supported.1.i, %skip.i.sw.bb67.i_crit_edge ], [ %supported.1.i, %skip.i.sw.bb67.i_crit_edge21 ], [ %supported.1.i, %skip.i.sw.bb67.i_crit_edge22 ], [ %or.i, %sw.bb.i ]
  %advertising.2.i = phi i32 [ %advertising.1.i, %skip.i.sw.bb67.i_crit_edge ], [ %advertising.1.i, %skip.i.sw.bb67.i_crit_edge21 ], [ %advertising.1.i, %skip.i.sw.bb67.i_crit_edge22 ], [ %or66.i, %sw.bb.i ]
  %or68.i = or i32 %supported.2.i, 128
  %or69.i = or i32 %advertising.2.i, 128
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %65 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %port.i, align 1
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %link_autoneg72.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 28
  %68 = ptrtoint ptr %link_autoneg72.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %link_autoneg72.i, align 2
  %conv73.i = trunc i16 %69 to i8
  %autoneg75.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %70 = ptrtoint ptr %autoneg75.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv73.i, ptr %autoneg75.i, align 1
  br label %if.end146.i

sw.bb76.i:                                        ; preds = %skip.i.sw.bb76.i_crit_edge, %skip.i.sw.bb76.i_crit_edge23, %skip.i.sw.bb76.i_crit_edge24
  %or77.i = or i32 %supported.1.i, 512
  %or78.i = or i32 %advertising.1.i, 512
  %port80.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %71 = ptrtoint ptr %port80.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %port80.i, align 1
  %autoneg82.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %72 = ptrtoint ptr %autoneg82.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %autoneg82.i, align 1
  br label %if.end146.i

sw.bb83.i:                                        ; preds = %skip.i.sw.bb83.i_crit_edge, %skip.i.sw.bb83.i_crit_edge25, %skip.i.sw.bb83.i_crit_edge26
  %or84.i = or i32 %advertising.1.i, 128
  %or85.i = or i32 %supported.1.i, 128
  %netdev86.i = getelementptr i8, ptr %dev, i32 2316
  %73 = ptrtoint ptr %netdev86.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev86.i, align 4
  %state.i227.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %state.i227.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %state.i227.i, align 4
  %and1.i.i228.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i228.i)
  %tobool.i229.not.i = icmp eq i32 %and1.i.i228.i, 0
  br i1 %tobool.i229.not.i, label %sw.bb83.i.sw.bb92.i_crit_edge, label %land.rhs.i

sw.bb83.i.sw.bb92.i_crit_edge:                    ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb92.i

land.rhs.i:                                       ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #17
  %has_link_events89.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 10
  %77 = ptrtoint ptr %has_link_events89.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %has_link_events89.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool91.i = icmp ne i8 %78, 0
  %phi.cast225.i = zext i1 %tobool91.i to i32
  br label %sw.bb92.i

sw.bb92.i:                                        ; preds = %land.rhs.i, %sw.bb83.i.sw.bb92.i_crit_edge, %skip.i.sw.bb92.i_crit_edge
  %check_sfp_module.0.i = phi i32 [ 0, %skip.i.sw.bb92.i_crit_edge ], [ 0, %sw.bb83.i.sw.bb92.i_crit_edge ], [ %phi.cast225.i, %land.rhs.i ]
  %supported.3.i = phi i32 [ %supported.1.i, %skip.i.sw.bb92.i_crit_edge ], [ %or85.i, %sw.bb83.i.sw.bb92.i_crit_edge ], [ %or85.i, %land.rhs.i ]
  %advertising.3.i = phi i32 [ %advertising.1.i, %skip.i.sw.bb92.i_crit_edge ], [ %or84.i, %sw.bb83.i.sw.bb92.i_crit_edge ], [ %or84.i, %land.rhs.i ]
  %or93.i = or i32 %supported.3.i, 1024
  %or94.i = or i32 %advertising.3.i, 1024
  %port96.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %79 = ptrtoint ptr %port96.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %port96.i, align 1
  %autoneg98.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %80 = ptrtoint ptr %autoneg98.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %autoneg98.i, align 1
  br label %sw.epilog.i

sw.bb99.i:                                        ; preds = %skip.i
  %port_type101.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %61, i32 0, i32 23
  %81 = ptrtoint ptr %port_type101.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %port_type101.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %cmp103.i = icmp eq i16 %82, 2
  %autoneg107.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  br i1 %cmp103.i, label %if.then105.i, label %if.else121.i

if.then105.i:                                     ; preds = %sw.bb99.i
  %83 = ptrtoint ptr %autoneg107.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %autoneg107.i, align 1
  %or108.i = or i32 %supported.1.i, 1152
  %or109.i = or i32 %advertising.1.i, 1152
  %port111.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %84 = ptrtoint ptr %port111.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %port111.i, align 1
  %netdev112.i = getelementptr i8, ptr %dev, i32 2316
  %85 = ptrtoint ptr %netdev112.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %netdev112.i, align 4
  %state.i230.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %state.i230.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %state.i230.i, align 4
  %and1.i.i231.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i231.i)
  %tobool.i232.not.i = icmp eq i32 %and1.i.i231.i, 0
  br i1 %tobool.i232.not.i, label %if.then105.i.if.end146.i_crit_edge, label %land.rhs115.i

if.then105.i.if.end146.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end146.i

land.rhs115.i:                                    ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #17
  %has_link_events116.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 10
  %89 = ptrtoint ptr %has_link_events116.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %has_link_events116.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool118.i = icmp ne i8 %90, 0
  %phi.cast.i = zext i1 %tobool118.i to i32
  br label %sw.epilog.i

if.else121.i:                                     ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %autoneg107.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %autoneg107.i, align 1
  %or124.i = or i32 %supported.1.i, 192
  %or125.i = or i32 %advertising.1.i, 192
  %port127.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %92 = ptrtoint ptr %port127.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %port127.i, align 1
  br label %if.end146.i

do.end.i:                                         ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv65.i = zext i16 %63 to i32
  %93 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, i32 noundef %conv65.i) #19
  br label %qlcnic_82xx_get_link_ksettings.exit

sw.epilog.i:                                      ; preds = %land.rhs115.i, %sw.bb92.i
  %check_sfp_module.1.i = phi i32 [ %check_sfp_module.0.i, %sw.bb92.i ], [ %phi.cast.i, %land.rhs115.i ]
  %supported.4.i = phi i32 [ %or93.i, %sw.bb92.i ], [ %or108.i, %land.rhs115.i ]
  %advertising.4.i = phi i32 [ %or94.i, %sw.bb92.i ], [ %or109.i, %land.rhs115.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_sfp_module.1.i)
  %tobool132.not.i = icmp eq i32 %check_sfp_module.1.i, 0
  br i1 %tobool132.not.i, label %sw.epilog.i.if.end146.i_crit_edge, label %if.then133.i

sw.epilog.i.if.end146.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end146.i

if.then133.i:                                     ; preds = %sw.epilog.i
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 8
  %module_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %96, i32 0, i32 29
  %97 = ptrtoint ptr %module_type.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %module_type.i, align 8
  %99 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %98, label %sw.default142.i [
    i16 2, label %if.then133.i.sw.bb136.i_crit_edge
    i16 3, label %if.then133.i.sw.bb136.i_crit_edge27
    i16 4, label %if.then133.i.sw.bb136.i_crit_edge28
    i16 5, label %if.then133.i.sw.bb136.i_crit_edge29
    i16 6, label %if.then133.i.sw.bb139.i_crit_edge
    i16 7, label %if.then133.i.sw.bb139.i_crit_edge30
    i16 8, label %if.then133.i.sw.bb139.i_crit_edge31
  ]

if.then133.i.sw.bb139.i_crit_edge31:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb139.i

if.then133.i.sw.bb139.i_crit_edge30:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb139.i

if.then133.i.sw.bb139.i_crit_edge:                ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb139.i

if.then133.i.sw.bb136.i_crit_edge29:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136.i

if.then133.i.sw.bb136.i_crit_edge28:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136.i

if.then133.i.sw.bb136.i_crit_edge27:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136.i

if.then133.i.sw.bb136.i_crit_edge:                ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136.i

sw.bb136.i:                                       ; preds = %if.then133.i.sw.bb136.i_crit_edge, %if.then133.i.sw.bb136.i_crit_edge27, %if.then133.i.sw.bb136.i_crit_edge28, %if.then133.i.sw.bb136.i_crit_edge29
  %port138.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %100 = ptrtoint ptr %port138.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %port138.i, align 1
  br label %if.end146.i

sw.bb139.i:                                       ; preds = %if.then133.i.sw.bb139.i_crit_edge, %if.then133.i.sw.bb139.i_crit_edge30, %if.then133.i.sw.bb139.i_crit_edge31
  %port141.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %101 = ptrtoint ptr %port141.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %port141.i, align 1
  br label %if.end146.i

sw.default142.i:                                  ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #17
  %port144.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %102 = ptrtoint ptr %port144.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %port144.i, align 1
  br label %if.end146.i

if.end146.i:                                      ; preds = %sw.default142.i, %sw.bb139.i, %sw.bb136.i, %sw.epilog.i.if.end146.i_crit_edge, %if.else121.i, %if.then105.i.if.end146.i_crit_edge, %sw.bb76.i, %sw.bb67.i
  %advertising.4238.i = phi i32 [ %advertising.4.i, %sw.bb136.i ], [ %advertising.4.i, %sw.bb139.i ], [ %advertising.4.i, %sw.default142.i ], [ %advertising.4.i, %sw.epilog.i.if.end146.i_crit_edge ], [ %or109.i, %if.then105.i.if.end146.i_crit_edge ], [ %or69.i, %sw.bb67.i ], [ %or78.i, %sw.bb76.i ], [ %or125.i, %if.else121.i ]
  %supported.4237.i = phi i32 [ %supported.4.i, %sw.bb136.i ], [ %supported.4.i, %sw.bb139.i ], [ %supported.4.i, %sw.default142.i ], [ %supported.4.i, %sw.epilog.i.if.end146.i_crit_edge ], [ %or108.i, %if.then105.i.if.end146.i_crit_edge ], [ %or68.i, %sw.bb67.i ], [ %or77.i, %sw.bb76.i ], [ %or124.i, %if.else121.i ]
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i, i32 noundef %supported.4237.i) #15
  %advertising149.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising149.i, i32 noundef %advertising.4238.i) #15
  br label %qlcnic_82xx_get_link_ksettings.exit

qlcnic_82xx_get_link_ksettings.exit:              ; preds = %if.end146.i, %do.end.i, %if.then.qlcnic_82xx_get_link_ksettings.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %if.end146.i ], [ -5, %if.then.qlcnic_82xx_get_link_ksettings.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #15
  br label %cleanup

if.then4:                                         ; preds = %entry.if.then4_crit_edge, %entry.if.then4_crit_edge14, %entry.if.then4_crit_edge15, %entry.if.then4_crit_edge16, %entry.if.then4_crit_edge17, %entry.if.then4_crit_edge18
  %call5 = tail call i32 @qlcnic_83xx_get_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %ecmd) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %qlcnic_82xx_get_link_ksettings.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qlcnic_82xx_get_link_ksettings.exit ], [ %call5, %if.then4 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_set_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge50
    i16 -32704, label %entry.if.then_crit_edge51
    i16 -31680, label %entry.if.then_crit_edge52
    i16 -31696, label %entry.if.then_crit_edge53
    i16 -29648, label %entry.if.then_crit_edge54
  ]

entry.if.then_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51, %entry.if.then_crit_edge52, %entry.if.then_crit_edge53, %entry.if.then_crit_edge54
  tail call void @qlcnic_83xx_get_port_type(ptr noundef %add.ptr.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %port_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.not = icmp eq i16 %8, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %device1.i45 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device1.i45 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device1.i45, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %12, label %if.else [
    i16 -32720, label %if.end4.if.then6_crit_edge
    i16 -30672, label %if.end4.if.then6_crit_edge55
    i16 -32704, label %if.end4.if.then6_crit_edge56
    i16 -31680, label %if.end4.if.then6_crit_edge57
    i16 -31696, label %if.end4.if.then6_crit_edge58
    i16 -29648, label %if.end4.if.then6_crit_edge59
  ]

if.end4.if.then6_crit_edge59:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end4.if.then6_crit_edge58:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end4.if.then6_crit_edge57:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end4.if.then6_crit_edge56:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end4.if.then6_crit_edge55:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.if.then6_crit_edge55, %if.end4.if.then6_crit_edge56, %if.end4.if.then6_crit_edge57, %if.end4.if.then6_crit_edge58, %if.end4.if.then6_crit_edge59
  %call7 = tail call i32 @qlcnic_83xx_set_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %ecmd) #15
  br label %if.end9

if.else:                                          ; preds = %if.end4
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp ne i8 %15, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %16 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoneg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  %or4.i = or i32 %spec.select.i, 2
  %config.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %19, label %if.else.if.end11_crit_edge [
    i32 10, label %if.else.sw.epilog.i_crit_edge
    i32 100, label %sw.bb8.i
    i32 1000, label %sw.bb10.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %or9.i = or i32 %config.1.i, 256
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %or11.i = or i32 %config.1.i, 2560
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb8.i, %if.else.sw.epilog.i_crit_edge
  %config.2.i = phi i32 [ %or11.i, %sw.bb10.i ], [ %or9.i, %sw.bb8.i ], [ %config.1.i, %if.else.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @qlcnic_fw_cmd_set_port(ptr noundef %add.ptr.i, i32 noundef %config.2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch.selectcmp.i = icmp eq i32 %call.i, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i)
  %switch.selectcmp27.i = icmp eq i32 %call.i, 9
  br i1 %switch.selectcmp27.i, label %sw.epilog.i.if.end11_crit_edge, label %sw.epilog.i.if.end9_crit_edge

sw.epilog.i.if.end9_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

sw.epilog.i.if.end11_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end9:                                          ; preds = %sw.epilog.i.if.end9_crit_edge, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %switch.select.i, %sw.epilog.i.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end9.if.end11_crit_edge

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end9.if.end11_crit_edge, %sw.epilog.i.if.end11_crit_edge, %if.else.if.end11_crit_edge
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %link_speed = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %link_speed, align 8
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %26 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %duplex, align 4
  %conv14 = zext i8 %27 to i16
  %28 = load ptr, ptr %add.ptr.i, align 8
  %link_duplex = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv14, ptr %link_duplex, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %30 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autoneg, align 1
  %conv17 = zext i8 %31 to i16
  %32 = load ptr, ptr %add.ptr.i, align 8
  %link_autoneg = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %link_autoneg to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv17, ptr %link_autoneg, align 2
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %36 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndo_stop, align 4
  %call22 = tail call i32 %39(ptr noundef %dev) #15
  %40 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndo_open, align 4
  %call24 = tail call i32 %43(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end21 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_regs_len(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_registers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_rom_fast_read_words(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_reset_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_loopback_test(ptr noundef %netdev, i8 noundef zeroext %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %drv_tx_rings1 = getelementptr i8, ptr %netdev, i32 2345
  %0 = ptrtoint ptr %drv_tx_rings1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_tx_rings1, align 1
  %drv_sds_rings2 = getelementptr i8, ptr %netdev, i32 2346
  %2 = ptrtoint ptr %drv_sds_rings2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_sds_rings2, align 2
  %conv3 = zext i8 %3 to i32
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device1.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %9, label %if.end [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge107
    i16 -32704, label %entry.if.then_crit_edge108
    i16 -31680, label %entry.if.then_crit_edge109
    i16 -31696, label %entry.if.then_crit_edge110
    i16 -29648, label %entry.if.then_crit_edge111
  ]

entry.if.then_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge107, %entry.if.then_crit_edge108, %entry.if.then_crit_edge109, %entry.if.then_crit_edge110, %entry.if.then_crit_edge111
  %call6 = tail call i32 @qlcnic_83xx_loopback_test(ptr noundef %netdev, i8 noundef zeroext %mode) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 40
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 4
  %and = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #19
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp = icmp eq i8 %mode, 1
  %cond = select i1 %cmp, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #19
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 30
  %13 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp17 = icmp eq i16 %14, 2
  br i1 %cmp17, label %do.end22, label %if.end25

do.end22:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.33) #19
  br label %cleanup

if.end25:                                         ; preds = %do.end11
  %state = getelementptr i8, ptr %netdev, i32 2324
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @qlcnic_diag_alloc_res(ptr noundef %netdev, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.clear_it_crit_edge

if.end29.clear_it_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_it

if.end33:                                         ; preds = %if.end29
  %recv_ctx = getelementptr i8, ptr %netdev, i32 2308
  %17 = ptrtoint ptr %recv_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recv_ctx, align 4
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sds_rings, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ops.i, align 4
  %config_loopback.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %24, i32 0, i32 29
  %25 = ptrtoint ptr %config_loopback.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config_loopback.i, align 4
  %call.i = tail call i32 %26(ptr noundef %add.ptr.i, i8 noundef zeroext %mode) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.free_res_crit_edge

if.end33.free_res_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_res

if.end37:                                         ; preds = %if.end33
  %diag_cnt = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 21
  %27 = ptrtoint ptr %diag_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %diag_cnt, align 4
  %adapter.i = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %20, i32 0, i32 5
  %loopback_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 8
  br label %do.body38

do.body38:                                        ; preds = %do.cond50.do.body38_crit_edge, %if.end37
  %loop.0 = phi i32 [ 0, %if.end37 ], [ %inc, %do.cond50.do.body38_crit_edge ]
  tail call void @msleep(i32 noundef 500) #15
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %hw_ops.i98 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %hw_ops.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ops.i98, align 4
  %process_lb_rcv_ring_diag.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %process_lb_rcv_ring_diag.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %process_lb_rcv_ring_diag.i, align 4
  tail call void %35(ptr noundef %20) #15
  %inc = add nuw nsw i32 %loop.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %loop.0)
  %exitcond = icmp eq i32 %loop.0, 11
  br i1 %exitcond, label %if.then41, label %if.else

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.35) #19
  br label %free_res

if.else:                                          ; preds = %do.body38
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %diag_cnt43 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %diag_cnt43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %diag_cnt43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool44.not = icmp eq i32 %39, 0
  br i1 %tobool44.not, label %do.cond50, label %if.else.free_res_crit_edge

if.else.free_res_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_res

do.cond50:                                        ; preds = %if.else
  %40 = ptrtoint ptr %loopback_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %loopback_state, align 1
  %cmp52.not = icmp eq i8 %41, 3
  br i1 %cmp52.not, label %do.end54, label %do.cond50.do.body38_crit_edge

do.cond50.do.body38_crit_edge:                    ; preds = %do.cond50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

do.end54:                                         ; preds = %do.cond50
  call void @__sanitizer_cov_trace_pc() #17
  %call55 = tail call i32 @qlcnic_do_lb_test(ptr noundef %add.ptr.i, i8 noundef zeroext %mode)
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i99 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %hw_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_ops.i99, align 4
  %clear_loopback.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %45, i32 0, i32 30
  %46 = ptrtoint ptr %clear_loopback.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clear_loopback.i, align 4
  %call.i100 = tail call i32 %47(ptr noundef %add.ptr.i, i8 noundef zeroext %mode) #15
  br label %free_res

free_res:                                         ; preds = %do.end54, %if.else.free_res_crit_edge, %if.then41, %if.end33.free_res_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end33.free_res_crit_edge ], [ -110, %if.then41 ], [ %call55, %do.end54 ], [ %39, %if.else.free_res_crit_edge ]
  tail call void @qlcnic_diag_free_res(ptr noundef %netdev, i32 noundef %conv3) #15
  br label %clear_it

clear_it:                                         ; preds = %free_res, %if.end29.clear_it_crit_edge
  %ret.1 = phi i32 [ %call30, %if.end29.clear_it_crit_edge ], [ %ret.0, %free_res ]
  %48 = ptrtoint ptr %drv_sds_rings2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %3, ptr %drv_sds_rings2, align 2
  %49 = ptrtoint ptr %drv_tx_rings1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %1, ptr %drv_tx_rings1, align 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %clear_it, %if.end25.cleanup_crit_edge, %do.end22, %do.end, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 0, %do.end22 ], [ %ret.1, %clear_it ], [ -95, %do.end ], [ -16, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_reg_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_test_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_interrupt_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_diag_alloc_res(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_diag_free_res(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_loopback_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_flash_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_set_led(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_mac_stats(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qlcnic_fill_stats(ptr noundef writeonly %data, ptr noundef readonly %stats, i32 noundef %type) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.then228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp1 = icmp eq i64 %1, -1
  %spec.select = select i1 %cmp1, i64 0, i64 %1
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %spec.select, ptr %data, align 8
  %mac_tx_bytes = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 1
  %3 = ptrtoint ptr %mac_tx_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mac_tx_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp3 = icmp eq i64 %4, -1
  %cond8 = select i1 %cmp3, i64 0, i64 %4
  %incdec.ptr9 = getelementptr i64, ptr %data, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %cond8, ptr %incdec.ptr, align 8
  %mac_tx_mcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 2
  %6 = ptrtoint ptr %mac_tx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mac_tx_mcast_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp10 = icmp eq i64 %7, -1
  %cond15 = select i1 %cmp10, i64 0, i64 %7
  %incdec.ptr16 = getelementptr i64, ptr %data, i32 3
  %8 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %cond15, ptr %incdec.ptr9, align 8
  %mac_tx_bcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 3
  %9 = ptrtoint ptr %mac_tx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mac_tx_bcast_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp17 = icmp eq i64 %10, -1
  %cond22 = select i1 %cmp17, i64 0, i64 %10
  %incdec.ptr23 = getelementptr i64, ptr %data, i32 4
  %11 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %cond22, ptr %incdec.ptr16, align 8
  %mac_tx_pause_cnt = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 4
  %12 = ptrtoint ptr %mac_tx_pause_cnt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mac_tx_pause_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp24 = icmp eq i64 %13, -1
  %cond29 = select i1 %cmp24, i64 0, i64 %13
  %incdec.ptr30 = getelementptr i64, ptr %data, i32 5
  %14 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %cond29, ptr %incdec.ptr23, align 8
  %mac_tx_ctrl_pkt = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 5
  %15 = ptrtoint ptr %mac_tx_ctrl_pkt to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mac_tx_ctrl_pkt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp31 = icmp eq i64 %16, -1
  %cond36 = select i1 %cmp31, i64 0, i64 %16
  %incdec.ptr37 = getelementptr i64, ptr %data, i32 6
  %17 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cond36, ptr %incdec.ptr30, align 8
  %mac_tx_lt_64b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 6
  %18 = ptrtoint ptr %mac_tx_lt_64b_pkts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mac_tx_lt_64b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp38 = icmp eq i64 %19, -1
  %cond43 = select i1 %cmp38, i64 0, i64 %19
  %incdec.ptr44 = getelementptr i64, ptr %data, i32 7
  %20 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond43, ptr %incdec.ptr37, align 8
  %mac_tx_lt_127b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 7
  %21 = ptrtoint ptr %mac_tx_lt_127b_pkts to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mac_tx_lt_127b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %22)
  %cmp45 = icmp eq i64 %22, -1
  %cond50 = select i1 %cmp45, i64 0, i64 %22
  %incdec.ptr51 = getelementptr i64, ptr %data, i32 8
  %23 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %cond50, ptr %incdec.ptr44, align 8
  %mac_tx_lt_255b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 8
  %24 = ptrtoint ptr %mac_tx_lt_255b_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mac_tx_lt_255b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp52 = icmp eq i64 %25, -1
  %cond57 = select i1 %cmp52, i64 0, i64 %25
  %incdec.ptr58 = getelementptr i64, ptr %data, i32 9
  %26 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %cond57, ptr %incdec.ptr51, align 8
  %mac_tx_lt_511b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 9
  %27 = ptrtoint ptr %mac_tx_lt_511b_pkts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mac_tx_lt_511b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp59 = icmp eq i64 %28, -1
  %cond64 = select i1 %cmp59, i64 0, i64 %28
  %incdec.ptr65 = getelementptr i64, ptr %data, i32 10
  %29 = ptrtoint ptr %incdec.ptr58 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %cond64, ptr %incdec.ptr58, align 8
  %mac_tx_lt_1023b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 10
  %30 = ptrtoint ptr %mac_tx_lt_1023b_pkts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mac_tx_lt_1023b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %cmp66 = icmp eq i64 %31, -1
  %cond71 = select i1 %cmp66, i64 0, i64 %31
  %incdec.ptr72 = getelementptr i64, ptr %data, i32 11
  %32 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %cond71, ptr %incdec.ptr65, align 8
  %mac_tx_lt_1518b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 11
  %33 = ptrtoint ptr %mac_tx_lt_1518b_pkts to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mac_tx_lt_1518b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp73 = icmp eq i64 %34, -1
  %cond78 = select i1 %cmp73, i64 0, i64 %34
  %incdec.ptr79 = getelementptr i64, ptr %data, i32 12
  %35 = ptrtoint ptr %incdec.ptr72 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %cond78, ptr %incdec.ptr72, align 8
  %mac_tx_gt_1518b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 12
  %36 = ptrtoint ptr %mac_tx_gt_1518b_pkts to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %mac_tx_gt_1518b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp80 = icmp eq i64 %37, -1
  %cond85 = select i1 %cmp80, i64 0, i64 %37
  %incdec.ptr86 = getelementptr i64, ptr %data, i32 13
  %38 = ptrtoint ptr %incdec.ptr79 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %cond85, ptr %incdec.ptr79, align 8
  %mac_rx_frames = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 14
  %39 = ptrtoint ptr %mac_rx_frames to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mac_rx_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp87 = icmp eq i64 %40, -1
  %cond92 = select i1 %cmp87, i64 0, i64 %40
  %incdec.ptr93 = getelementptr i64, ptr %data, i32 14
  %41 = ptrtoint ptr %incdec.ptr86 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %cond92, ptr %incdec.ptr86, align 8
  %mac_rx_bytes = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 15
  %42 = ptrtoint ptr %mac_rx_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mac_rx_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %cmp94 = icmp eq i64 %43, -1
  %cond99 = select i1 %cmp94, i64 0, i64 %43
  %incdec.ptr100 = getelementptr i64, ptr %data, i32 15
  %44 = ptrtoint ptr %incdec.ptr93 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cond99, ptr %incdec.ptr93, align 8
  %mac_rx_mcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 16
  %45 = ptrtoint ptr %mac_rx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %mac_rx_mcast_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %cmp101 = icmp eq i64 %46, -1
  %cond106 = select i1 %cmp101, i64 0, i64 %46
  %incdec.ptr107 = getelementptr i64, ptr %data, i32 16
  %47 = ptrtoint ptr %incdec.ptr100 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %cond106, ptr %incdec.ptr100, align 8
  %mac_rx_bcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 17
  %48 = ptrtoint ptr %mac_rx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mac_rx_bcast_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %49)
  %cmp108 = icmp eq i64 %49, -1
  %cond113 = select i1 %cmp108, i64 0, i64 %49
  %incdec.ptr114 = getelementptr i64, ptr %data, i32 17
  %50 = ptrtoint ptr %incdec.ptr107 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %cond113, ptr %incdec.ptr107, align 8
  %mac_rx_pause_cnt = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 18
  %51 = ptrtoint ptr %mac_rx_pause_cnt to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %mac_rx_pause_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp115 = icmp eq i64 %52, -1
  %cond120 = select i1 %cmp115, i64 0, i64 %52
  %incdec.ptr121 = getelementptr i64, ptr %data, i32 18
  %53 = ptrtoint ptr %incdec.ptr114 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %cond120, ptr %incdec.ptr114, align 8
  %mac_rx_ctrl_pkt = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 19
  %54 = ptrtoint ptr %mac_rx_ctrl_pkt to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mac_rx_ctrl_pkt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %55)
  %cmp122 = icmp eq i64 %55, -1
  %cond127 = select i1 %cmp122, i64 0, i64 %55
  %incdec.ptr128 = getelementptr i64, ptr %data, i32 19
  %56 = ptrtoint ptr %incdec.ptr121 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond127, ptr %incdec.ptr121, align 8
  %mac_rx_lt_64b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 20
  %57 = ptrtoint ptr %mac_rx_lt_64b_pkts to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %mac_rx_lt_64b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %58)
  %cmp129 = icmp eq i64 %58, -1
  %cond134 = select i1 %cmp129, i64 0, i64 %58
  %incdec.ptr135 = getelementptr i64, ptr %data, i32 20
  %59 = ptrtoint ptr %incdec.ptr128 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cond134, ptr %incdec.ptr128, align 8
  %mac_rx_lt_127b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 21
  %60 = ptrtoint ptr %mac_rx_lt_127b_pkts to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %mac_rx_lt_127b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %61)
  %cmp136 = icmp eq i64 %61, -1
  %cond141 = select i1 %cmp136, i64 0, i64 %61
  %incdec.ptr142 = getelementptr i64, ptr %data, i32 21
  %62 = ptrtoint ptr %incdec.ptr135 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %cond141, ptr %incdec.ptr135, align 8
  %mac_rx_lt_255b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 22
  %63 = ptrtoint ptr %mac_rx_lt_255b_pkts to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %mac_rx_lt_255b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %64)
  %cmp143 = icmp eq i64 %64, -1
  %cond148 = select i1 %cmp143, i64 0, i64 %64
  %incdec.ptr149 = getelementptr i64, ptr %data, i32 22
  %65 = ptrtoint ptr %incdec.ptr142 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %cond148, ptr %incdec.ptr142, align 8
  %mac_rx_lt_511b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 23
  %66 = ptrtoint ptr %mac_rx_lt_511b_pkts to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %mac_rx_lt_511b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %67)
  %cmp150 = icmp eq i64 %67, -1
  %cond155 = select i1 %cmp150, i64 0, i64 %67
  %incdec.ptr156 = getelementptr i64, ptr %data, i32 23
  %68 = ptrtoint ptr %incdec.ptr149 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %cond155, ptr %incdec.ptr149, align 8
  %mac_rx_lt_1023b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 24
  %69 = ptrtoint ptr %mac_rx_lt_1023b_pkts to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %mac_rx_lt_1023b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %70)
  %cmp157 = icmp eq i64 %70, -1
  %cond162 = select i1 %cmp157, i64 0, i64 %70
  %incdec.ptr163 = getelementptr i64, ptr %data, i32 24
  %71 = ptrtoint ptr %incdec.ptr156 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %cond162, ptr %incdec.ptr156, align 8
  %mac_rx_lt_1518b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 25
  %72 = ptrtoint ptr %mac_rx_lt_1518b_pkts to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %mac_rx_lt_1518b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %73)
  %cmp164 = icmp eq i64 %73, -1
  %cond169 = select i1 %cmp164, i64 0, i64 %73
  %incdec.ptr170 = getelementptr i64, ptr %data, i32 25
  %74 = ptrtoint ptr %incdec.ptr163 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %cond169, ptr %incdec.ptr163, align 8
  %mac_rx_gt_1518b_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 26
  %75 = ptrtoint ptr %mac_rx_gt_1518b_pkts to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %mac_rx_gt_1518b_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %76)
  %cmp171 = icmp eq i64 %76, -1
  %cond176 = select i1 %cmp171, i64 0, i64 %76
  %incdec.ptr177 = getelementptr i64, ptr %data, i32 26
  %77 = ptrtoint ptr %incdec.ptr170 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %cond176, ptr %incdec.ptr170, align 8
  %mac_rx_length_error = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 28
  %78 = ptrtoint ptr %mac_rx_length_error to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %mac_rx_length_error, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %79)
  %cmp178 = icmp eq i64 %79, -1
  %cond183 = select i1 %cmp178, i64 0, i64 %79
  %incdec.ptr184 = getelementptr i64, ptr %data, i32 27
  %80 = ptrtoint ptr %incdec.ptr177 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %cond183, ptr %incdec.ptr177, align 8
  %mac_rx_length_small = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 29
  %81 = ptrtoint ptr %mac_rx_length_small to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %mac_rx_length_small, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %82)
  %cmp185 = icmp eq i64 %82, -1
  %cond190 = select i1 %cmp185, i64 0, i64 %82
  %incdec.ptr191 = getelementptr i64, ptr %data, i32 28
  %83 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %cond190, ptr %incdec.ptr184, align 8
  %mac_rx_length_large = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 30
  %84 = ptrtoint ptr %mac_rx_length_large to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %mac_rx_length_large, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %85)
  %cmp192 = icmp eq i64 %85, -1
  %cond197 = select i1 %cmp192, i64 0, i64 %85
  %incdec.ptr198 = getelementptr i64, ptr %data, i32 29
  %86 = ptrtoint ptr %incdec.ptr191 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %cond197, ptr %incdec.ptr191, align 8
  %mac_rx_jabber = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 31
  %87 = ptrtoint ptr %mac_rx_jabber to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %mac_rx_jabber, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %88)
  %cmp199 = icmp eq i64 %88, -1
  %cond204 = select i1 %cmp199, i64 0, i64 %88
  %incdec.ptr205 = getelementptr i64, ptr %data, i32 30
  %89 = ptrtoint ptr %incdec.ptr198 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %cond204, ptr %incdec.ptr198, align 8
  %mac_rx_dropped = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 32
  %90 = ptrtoint ptr %mac_rx_dropped to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %mac_rx_dropped, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %91)
  %cmp206 = icmp eq i64 %91, -1
  %cond211 = select i1 %cmp206, i64 0, i64 %91
  %incdec.ptr212 = getelementptr i64, ptr %data, i32 31
  %92 = ptrtoint ptr %incdec.ptr205 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %cond211, ptr %incdec.ptr205, align 8
  %mac_rx_crc_error = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 33
  %93 = ptrtoint ptr %mac_rx_crc_error to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %mac_rx_crc_error, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %94)
  %cmp213 = icmp eq i64 %94, -1
  %cond218 = select i1 %cmp213, i64 0, i64 %94
  %incdec.ptr219 = getelementptr i64, ptr %data, i32 32
  %95 = ptrtoint ptr %incdec.ptr212 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %cond218, ptr %incdec.ptr212, align 8
  %mac_align_error = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %stats, i32 0, i32 34
  br label %if.end278

if.then228:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %unicast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 4
  %96 = ptrtoint ptr %unicast_frames to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %unicast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %97)
  %cmp229 = icmp eq i64 %97, -1
  %spec.select438 = select i1 %cmp229, i64 0, i64 %97
  %incdec.ptr235 = getelementptr i64, ptr %data, i32 1
  %98 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %spec.select438, ptr %data, align 8
  %multicast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 5
  %99 = ptrtoint ptr %multicast_frames to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %multicast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %100)
  %cmp236 = icmp eq i64 %100, -1
  %cond241 = select i1 %cmp236, i64 0, i64 %100
  %incdec.ptr242 = getelementptr i64, ptr %data, i32 2
  %101 = ptrtoint ptr %incdec.ptr235 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %cond241, ptr %incdec.ptr235, align 8
  %broadcast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 6
  %102 = ptrtoint ptr %broadcast_frames to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %broadcast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %103)
  %cmp243 = icmp eq i64 %103, -1
  %cond248 = select i1 %cmp243, i64 0, i64 %103
  %incdec.ptr249 = getelementptr i64, ptr %data, i32 3
  %104 = ptrtoint ptr %incdec.ptr242 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %cond248, ptr %incdec.ptr242, align 8
  %dropped_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 7
  %105 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %dropped_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %106)
  %cmp250 = icmp eq i64 %106, -1
  %cond255 = select i1 %cmp250, i64 0, i64 %106
  %incdec.ptr256 = getelementptr i64, ptr %data, i32 4
  %107 = ptrtoint ptr %incdec.ptr249 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %cond255, ptr %incdec.ptr249, align 8
  %errors = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 8
  %108 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %errors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %109)
  %cmp257 = icmp eq i64 %109, -1
  %cond262 = select i1 %cmp257, i64 0, i64 %109
  %incdec.ptr263 = getelementptr i64, ptr %data, i32 5
  %110 = ptrtoint ptr %incdec.ptr256 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %cond262, ptr %incdec.ptr256, align 8
  %local_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 9
  %111 = ptrtoint ptr %local_frames to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %local_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %112)
  %cmp264 = icmp eq i64 %112, -1
  %cond269 = select i1 %cmp264, i64 0, i64 %112
  %incdec.ptr270 = getelementptr i64, ptr %data, i32 6
  %113 = ptrtoint ptr %incdec.ptr263 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %cond269, ptr %incdec.ptr263, align 8
  %numbytes = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %stats, i32 0, i32 10
  br label %if.end278

if.end278:                                        ; preds = %if.then228, %if.then
  %numbytes.sink = phi ptr [ %numbytes, %if.then228 ], [ %mac_align_error, %if.then ]
  %.sink = phi i32 [ 7, %if.then228 ], [ 33, %if.then ]
  %incdec.ptr270.sink = phi ptr [ %incdec.ptr270, %if.then228 ], [ %incdec.ptr219, %if.then ]
  %114 = ptrtoint ptr %numbytes.sink to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %numbytes.sink, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %115)
  %cmp271 = icmp eq i64 %115, -1
  %cond276 = select i1 %cmp271, i64 0, i64 %115
  %incdec.ptr277 = getelementptr i64, ptr %data, i32 %.sink
  %116 = ptrtoint ptr %incdec.ptr270.sink to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %cond276, ptr %incdec.ptr270.sink, align 8
  ret ptr %incdec.ptr277
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_port_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_validate_rings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_setup_rings(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_port_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_fw_cmd_set_port(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1072, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_do_lb_test._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_do_lb_test._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1080, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qlcnic_do_lb_test._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qlcnic_do_lb_test._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1083, i32 4}
!15 = !{ptr @qlcnic_do_lb_test._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @qlcnic_do_lb_test._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1609, i32 2}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qlcnic_enable_fw_dump_state._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @qlcnic_enable_fw_dump_state._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @qlcnic_ethtool_ops, !24, !"qlcnic_ethtool_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1827, i32 26}
!25 = !{ptr @qlcnic_sriov_vf_ethtool_ops, !26, !"qlcnic_sriov_vf_ethtool_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1860, i32 26}
!27 = !{ptr @qlcnic_ethtool_failed_ops, !28, !"qlcnic_ethtool_failed_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1884, i32 26}
!29 = distinct !{null, !30, !"random_data", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1028, i32 29}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 278, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 283, i32 28}
!35 = !{ptr @diag_registers, !36, !"diag_registers", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 211, i32 18}
!37 = distinct !{null, !38, !"ext_diag_registers", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 228, i32 18}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 679, i32 43}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 683, i32 7}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 686, i32 46}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 659, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @qlcnic_validate_ringparam._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @qlcnic_validate_ringparam._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 838, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qlcnic_get_pauseparam._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @qlcnic_get_pauseparam._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 927, i32 3}
!57 = !{ptr @qlcnic_set_pauseparam._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qlcnic_set_pauseparam._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1104, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @qlcnic_loopback_test._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @qlcnic_loopback_test._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1109, i32 2}
!66 = !{ptr @qlcnic_loopback_test._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qlcnic_loopback_test._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1112, i32 3}
!72 = !{ptr @qlcnic_loopback_test._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qlcnic_loopback_test._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1135, i32 9}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1209, i32 19}
!78 = !{ptr @qlcnic_gstrings_test, !79, !"qlcnic_gstrings_test", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 165, i32 19}
!80 = !{ptr @qlcnic_tx_queue_stats_strings, !81, !"qlcnic_tx_queue_stats_strings", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 135, i32 19}
!82 = !{ptr @qlcnic_gstrings_stats, !83, !"qlcnic_gstrings_stats", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 28, i32 34}
!84 = !{ptr @qlcnic_83xx_tx_stats_strings, !85, !"qlcnic_83xx_tx_stats_strings", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 82, i32 19}
!86 = !{ptr @qlcnic_83xx_mac_stats_strings, !87, !"qlcnic_83xx_mac_stats_strings", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 90, i32 19}
!88 = !{ptr @qlcnic_83xx_rx_stats_strings, !89, !"qlcnic_83xx_rx_stats_strings", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 145, i32 19}
!90 = !{ptr @qlcnic_device_gstrings_stats, !91, !"qlcnic_device_gstrings_stats", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 65, i32 19}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1415, i32 20}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1439, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qlcnic_set_led._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qlcnic_set_led._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1456, i32 4}
!101 = !{ptr @qlcnic_set_led._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qlcnic_set_led._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 744, i32 19}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 760, i32 20}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 771, i32 20}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 781, i32 19}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 708, i32 8}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 717, i32 8}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1660, i32 31}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1694, i32 23}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1714, i32 22}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1750, i32 23}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1756, i32 24}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1763, i32 9}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1767, i32 23}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1791, i32 23}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1799, i32 24}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1819, i32 24}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1632, i32 2}
!137 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @qlcnic_disable_fw_dump_state._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @qlcnic_disable_fw_dump_state._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = distinct !{null, !141, !"qlcnic_fw_dump_level", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 24, i32 18}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1725, i32 8}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 1735, i32 22}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c", i32 404, i32 3}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @qlcnic_82xx_get_link_ksettings._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @qlcnic_82xx_get_link_ksettings._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 5038531}
!161 = !{i64 2157873362}
!162 = !{i64 2157873762}
!163 = !{i64 5038113}
!164 = !{i64 2157879524}
!165 = !{i8 0, i8 2}
!166 = !{i64 2157816813}
!167 = !{i64 2157817672}
!168 = !{i64 2157818521}
!169 = !{i64 2157826679}
!170 = !{i64 2157827495}
!171 = !{i64 2157828001}
!172 = !{i64 2157828538}
!173 = !{i64 2157829060}
!174 = !{i64 2157829570}
!175 = !{i32 0, i32 33}
!176 = !{i64 2157876440}
!177 = !{i64 2157876840}
