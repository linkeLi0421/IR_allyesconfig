; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qlcnic_sriov_cmd_handler = type { ptr }
%struct.qlcnic_sriov_fw_cmd_handler = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct._cdrp_cmd = type { i32, ptr }
%struct.atomic_t = type { i32 }
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
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.qlcnic_sriov = type { i16, i8, i8, i8, i16, ptr, i16, %struct.qlcnic_resources, %struct.qlcnic_back_channel, ptr }
%struct.qlcnic_resources = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16 }
%struct.qlcnic_back_channel = type { i16, ptr, ptr, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.spinlock }
%struct.qlcnic_vf_info = type { i8, i16, i16, ptr, i32, i32, %struct.completion, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, ptr, %struct.qlcnic_trans_list, %struct.qlcnic_trans_list, ptr, ptr, %struct.spinlock }
%struct.qlcnic_trans_list = type { %struct.spinlock, %struct.list_head, i32 }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
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
%struct.qlcnic_bc_trans = type { i8, i8, i8, i8, i16, i16, i16, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, %struct.completion, ptr }
%struct.qlcnic_bc_hdr = type { i8, i8, i8, i8, i16, i8, i8, i64 }
%struct.qlcnic_vport = type { i16, i16, i16, i16, i8, i8, i8, [6 x i8] }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.qlcnic_tx_mbx_out = type { i32, i8, i8, i16 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SR-IOV is disabled successfully on port %d\0A\00", [52 x i8] zeroinitializer }, align 32
@qlcnic_pf_bc_cmd_hdlr = internal constant { [4 x %struct.qlcnic_sriov_cmd_handler], [16 x i8] } { [4 x %struct.qlcnic_sriov_cmd_handler] [%struct.qlcnic_sriov_cmd_handler { ptr @qlcnic_sriov_pf_channel_cfg_cmd }, %struct.qlcnic_sriov_cmd_handler { ptr @qlcnic_sriov_pf_channel_cfg_cmd }, %struct.qlcnic_sriov_cmd_handler { ptr @qlcnic_sriov_pf_get_acl_cmd }, %struct.qlcnic_sriov_cmd_handler { ptr @qlcnic_sriov_pf_cfg_guest_vlan_cmd }], [16 x i8] zeroinitializer }, align 32
@qlcnic_pf_fw_cmd_hdlr = internal constant { [15 x %struct.qlcnic_sriov_fw_cmd_handler], [40 x i8] } { [15 x %struct.qlcnic_sriov_fw_cmd_handler] [%struct.qlcnic_sriov_fw_cmd_handler { i32 7, ptr @qlcnic_sriov_pf_create_rx_ctx_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 9, ptr @qlcnic_sriov_pf_create_tx_ctx_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 31, ptr @qlcnic_sriov_pf_mac_address_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 8, ptr @qlcnic_sriov_pf_del_rx_ctx_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 10, ptr @qlcnic_sriov_pf_del_tx_ctx_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 74, ptr @qlcnic_sriov_pf_cfg_lro_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 1, ptr @qlcnic_sriov_pf_cfg_ip_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 2, ptr @qlcnic_sriov_pf_cfg_intrpt_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 18, ptr @qlcnic_sriov_pf_set_mtu_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 33, ptr @qlcnic_sriov_pf_get_nic_info_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 65, ptr @qlcnic_sriov_pf_cfg_rss_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 67, ptr @qlcnic_sriov_pf_cfg_intrcoal_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 69, ptr @qlcnic_sriov_pf_cfg_macvlan_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 72, ptr @qlcnic_sriov_pf_linkevent_cmd }, %struct.qlcnic_sriov_fw_cmd_handler { i32 73, ptr @qlcnic_sriov_pf_cfg_promisc_cmd }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FLR for PCI func %d in progress\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FLR received for PCI func %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_reinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1798, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: op_mode %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_sriov_pf_reinit\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_reinit._entry_ptr = internal global ptr @qlcnic_sriov_pf_reinit._entry, section ".printk_index", align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MAC address is already in use by the PF\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MAC address is already in use by VF %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"MAC address change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MAC Address %pM  is configured for VF %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid max Tx rate, allowed range is [%d - %d]\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid min Tx rate, allowed range is [%d - %d]\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Setting Max Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Setting Min Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid VLAN ID, allowed range is [0 - %d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"VLAN change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting VLAN %d, QoS %d, for VF %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"Spoof check change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", [50 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_config_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 313, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed %s vport, err %d for func 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_sriov_pf_config_vport\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_config_vport._entry_ptr = internal global ptr @qlcnic_sriov_pf_config_vport._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_cfg_eswitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 398, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable sriov eswitch%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_sriov_pf_cfg_eswitch\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_cfg_eswitch._entry_ptr = internal global ptr @qlcnic_sriov_pf_cfg_eswitch._entry, section ".printk_index", align 4
@qlcnic_sriov_pf_cfg_vlan_filtering._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 352, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to configure VLAN filtering, err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qlcnic_sriov_pf_cfg_vlan_filtering\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_cfg_vlan_filtering._entry_ptr = internal global ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry, section ".printk_index", align 4
@.str.29 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"SR-IOV VFs belonging to port %d are assigned to VMs. SR-IOV can not be disabled on this port\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Please detach SR-IOV VFs belonging to port %d from VMs, and then try to disable SR-IOV on this port\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SR-IOV cannot be enabled, when legacy interrupts are enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SR-IOV is enabled successfully on port %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable SR-IOV on port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qlcnic-flr\00", [21 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_create_flr_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 425, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot create FLR workqueue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_sriov_pf_create_flr_queue\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_create_flr_queue._entry_ptr = internal global ptr @qlcnic_sriov_pf_create_flr_queue._entry, section ".printk_index", align 4
@qlcnic_sriov_set_vf_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 717, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set ACL, err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_sriov_set_vf_acl\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_set_vf_acl._entry_ptr = internal global ptr @qlcnic_sriov_set_vf_acl._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid coalescing type 0x%x received\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Expected: rx_ctx_id 0x%x rx_packets 0x%x rx_time_us 0x%x tx_ctx_id 0x%x tx_packets 0x%x tx_time_us 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Received: ctx_id 0x%x packets 0x%x time_us 0x%x type 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Software FLR for PCI func %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_sriov_schedule_flr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&vf->flr_work)\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_del_tx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 1639, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to delete Tx ctx in firmware for func 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_sriov_del_tx_ctx\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_del_tx_ctx._entry_ptr = internal global ptr @qlcnic_sriov_del_tx_ctx._entry, section ".printk_index", align 4
@qlcnic_sriov_del_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.5, i32 1613, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_sriov_del_rx_ctx\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_del_rx_ctx._entry_ptr = internal global ptr @qlcnic_sriov_del_rx_ctx._entry, section ".printk_index", align 4
@qlcnic_sriov_pf_cfg_flood._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 374, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to configure VF Flood bit on PF, err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_sriov_pf_cfg_flood\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_cfg_flood._entry_ptr = internal global ptr @qlcnic_sriov_pf_cfg_flood._entry, section ".printk_index", align 4
@qlcnic_sriov_get_pf_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 187, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get PF info, err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_sriov_get_pf_info\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_sriov_get_pf_info._entry_ptr = internal global ptr @qlcnic_sriov_get_pf_info._entry, section ".printk_index", align 4
@qlcnic_sriov_get_pf_info._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.5, i32 225, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [338 x i8], [78 x i8] } { [338 x i8] c"\0A\09total_pf: %d,\0A\0A\09total_rss_engines: %d max_vports: %d max_tx_ques %d,\0A\09max_tx_mac_filters: %d max_rx_mcast_mac_filters: %d,\0A\09max_rx_ucast_mac_filters: 0x%x, max_rx_ip_addr: %d,\0A\09max_rx_lro_flow: %d max_rx_status_rings: %d,\0A\09max_rx_buf_rings: %d, max_rx_ques: %d, max_tx_vlan_keys %d\0A\09max_local_ipv6_addrs: %d, max_remote_ipv6_addrs: %d\0A\00", [78 x i8] zeroinitializer }, align 32
@qlcnic_sriov_get_pf_info._entry_ptr.54 = internal global ptr @qlcnic_sriov_get_pf_info._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Max Guest VLANs supported per VF = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_set_vport_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 61, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set vport info, err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qlcnic_sriov_pf_set_vport_info\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_sriov_pf_set_vport_info._entry_ptr = internal global ptr @qlcnic_sriov_pf_set_vport_info._entry, section ".printk_index", align 4
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid VLAN mode = %d for VF %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 8, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 15, i64 18, i64 31, i64 33, i64 65, i64 67, i64 69, i64 72, i64 73, i64 74, i64 96, i64 97, i64 103, i64 104]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 460, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"qlcnic_pf_bc_cmd_hdlr\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1464, i32 46 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"qlcnic_pf_fw_cmd_hdlr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1471, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1749, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1759, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1797, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1819, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1827, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1838, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1844, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1875, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1886, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1905, i32 7 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1909, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1933, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1942, i32 7 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1965, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2041, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 311, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 397, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 351, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 470, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 473, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 625, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 644, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 661, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 423, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 425, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 716, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1220, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1228, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1231, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1717, i32 31 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1702, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1637, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1611, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 372, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 186, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 209, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 170, i32 31 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 60, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [56 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1986, i32 32 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @qlcnic_sriov_del_rx_ctx._entry, ptr @qlcnic_sriov_del_rx_ctx._entry_ptr, ptr @qlcnic_sriov_del_tx_ctx._entry, ptr @qlcnic_sriov_del_tx_ctx._entry_ptr, ptr @qlcnic_sriov_get_pf_info._entry, ptr @qlcnic_sriov_get_pf_info._entry.52, ptr @qlcnic_sriov_get_pf_info._entry_ptr, ptr @qlcnic_sriov_get_pf_info._entry_ptr.54, ptr @qlcnic_sriov_pf_cfg_eswitch._entry, ptr @qlcnic_sriov_pf_cfg_eswitch._entry_ptr, ptr @qlcnic_sriov_pf_cfg_flood._entry, ptr @qlcnic_sriov_pf_cfg_flood._entry_ptr, ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry, ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry_ptr, ptr @qlcnic_sriov_pf_config_vport._entry, ptr @qlcnic_sriov_pf_config_vport._entry_ptr, ptr @qlcnic_sriov_pf_create_flr_queue._entry, ptr @qlcnic_sriov_pf_create_flr_queue._entry_ptr, ptr @qlcnic_sriov_pf_reinit._entry, ptr @qlcnic_sriov_pf_reinit._entry_ptr, ptr @qlcnic_sriov_pf_set_vport_info._entry, ptr @qlcnic_sriov_pf_set_vport_info._entry_ptr, ptr @qlcnic_sriov_set_vf_acl._entry, ptr @qlcnic_sriov_set_vf_acl._entry_ptr, ptr @.str, ptr @qlcnic_pf_bc_cmd_hdlr, ptr @qlcnic_pf_fw_cmd_hdlr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @qlcnic_sriov_schedule_flr.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pf_bc_cmd_hdlr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pf_fw_cmd_hdlr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_reinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_config_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_cfg_eswitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_create_flr_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_set_vf_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_schedule_flr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_del_tx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_del_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_cfg_flood._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_get_pf_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_get_pf_info._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 338, i32 416, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_pf_set_vport_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_pf_cleanup(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i16 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pci_func, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %7 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov1.i, align 8
  %num_vfs.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_vfs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9.not.i = icmp eq i8 %10, 0
  br i1 %cmp9.not.i, label %if.end.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge, label %for.body.lr.ph.i

if.end.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_del_flr_queue.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %vf_info.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %8, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %vf_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf_info.i, align 4
  %flr_work.i = getelementptr %struct.qlcnic_vf_info, ptr %12, i32 %i.010.i, i32 8
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %flr_work.i) #7
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %13 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_vfs.i, align 2
  %conv.i = zext i8 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge

for.body.i.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_del_flr_queue.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

qlcnic_sriov_pf_del_flr_queue.exit:               ; preds = %for.body.i.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge, %if.end.qlcnic_sriov_pf_del_flr_queue.exit_crit_edge
  %bc_flr_wq.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %8, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %bc_flr_wq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_flr_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %16) #7
  %call1 = tail call i32 @qlcnic_sriov_cfg_bc_intr(ptr noundef %adapter, i8 noundef zeroext 0) #7
  %conv = zext i8 %3 to i16
  %call2 = tail call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %adapter, i8 noundef zeroext 0, i16 noundef zeroext %conv)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #7
  %17 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %23(ptr noundef nonnull %cmd.i, ptr noundef %adapter, i32 noundef 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlcnic_sriov_pf_del_flr_queue.exit.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge

qlcnic_sriov_pf_del_flr_queue.exit.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge: ; preds = %qlcnic_sriov_pf_del_flr_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_eswitch.exit

if.end.i:                                         ; preds = %qlcnic_sriov_pf_del_flr_queue.exit
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %or.i = or i32 %27, 1610612736
  store i32 %or.i, ptr %25, align 4
  %28 = shl i8 %3, 2
  %29 = and i8 %28, 60
  %30 = or i8 %29, 66
  %or2.i = zext i8 %30 to i32
  %31 = load ptr, ptr %arg.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or2.i, ptr %arrayidx5.i, align 4
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %hw_ops.i22.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %hw_ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops.i22.i, align 4
  %mbx_cmd.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %mbx_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbx_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %qlcnic_issue_cmd.exit.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

qlcnic_issue_cmd.exit.i:                          ; preds = %if.end.i
  %call.i23.i = call i32 %38(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %cmp.not.i, label %qlcnic_issue_cmd.exit.i.if.end16.i_crit_edge, label %qlcnic_issue_cmd.exit.i.do.end.i_crit_edge

qlcnic_issue_cmd.exit.i.do.end.i_crit_edge:       ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

qlcnic_issue_cmd.exit.i.if.end16.i_crit_edge:     ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end.i:                                         ; preds = %qlcnic_issue_cmd.exit.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %retval.0.i26.i = phi i32 [ %call.i23.i, %qlcnic_issue_cmd.exit.i.do.end.i_crit_edge ], [ -5, %if.end.i.do.end.i_crit_edge ]
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i26.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %qlcnic_issue_cmd.exit.i.if.end16.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #7
  br label %qlcnic_sriov_pf_cfg_eswitch.exit

qlcnic_sriov_pf_cfg_eswitch.exit:                 ; preds = %if.end16.i, %qlcnic_sriov_pf_del_flr_queue.exit.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i16) #7
  %41 = call ptr @memset(ptr %cmd.i16, i32 255, i32 120)
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i17 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %hw_ops.i.i17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_ops.i.i17, align 4
  %alloc_mbx_args.i.i18 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %alloc_mbx_args.i.i18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %alloc_mbx_args.i.i18, align 4
  %call.i.i19 = call i32 %47(ptr noundef nonnull %cmd.i16, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i20, label %if.end.i22, label %qlcnic_sriov_pf_cfg_eswitch.exit.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge

qlcnic_sriov_pf_cfg_eswitch.exit.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge: ; preds = %qlcnic_sriov_pf_cfg_eswitch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_vlan_filtering.exit

if.end.i22:                                       ; preds = %qlcnic_sriov_pf_cfg_eswitch.exit
  %arg.i21 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i16, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arg.i21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arg.i21, align 4
  %arrayidx.i = getelementptr i32, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %arrayidx.i, align 4
  %flags14.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %51 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags14.i, align 8
  %and.i = and i32 %52, -8388609
  store i32 %and.i, ptr %flags14.i, align 8
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 8
  %hw_ops.i30.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %hw_ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_ops.i30.i, align 4
  %mbx_cmd.i.i23 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %mbx_cmd.i.i23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbx_cmd.i.i23, align 4
  %tobool.not.i.i24 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i24, label %if.end.i22.do.end.i28_crit_edge, label %qlcnic_issue_cmd.exit.i25

if.end.i22.do.end.i28_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i28

qlcnic_issue_cmd.exit.i25:                        ; preds = %if.end.i22
  %call.i31.i = call i32 %58(ptr noundef %adapter, ptr noundef nonnull %cmd.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool17.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool17.not.i, label %qlcnic_issue_cmd.exit.i25.if.end19.i_crit_edge, label %qlcnic_issue_cmd.exit.i25.do.end.i28_crit_edge

qlcnic_issue_cmd.exit.i25.do.end.i28_crit_edge:   ; preds = %qlcnic_issue_cmd.exit.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i28

qlcnic_issue_cmd.exit.i25.if.end19.i_crit_edge:   ; preds = %qlcnic_issue_cmd.exit.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

do.end.i28:                                       ; preds = %qlcnic_issue_cmd.exit.i25.do.end.i28_crit_edge, %if.end.i22.do.end.i28_crit_edge
  %retval.0.i34.i = phi i32 [ %call.i31.i, %qlcnic_issue_cmd.exit.i25.do.end.i28_crit_edge ], [ -5, %if.end.i22.do.end.i28_crit_edge ]
  %pdev.i26 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %59 = ptrtoint ptr %pdev.i26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i26, align 8
  %dev.i27 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i34.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i28, %qlcnic_issue_cmd.exit.i25.if.end19.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i16) #7
  br label %qlcnic_sriov_pf_cfg_vlan_filtering.exit

qlcnic_sriov_pf_cfg_vlan_filtering.exit:          ; preds = %if.end19.i, %qlcnic_sriov_pf_cfg_eswitch.exit.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i16) #7
  call void @__qlcnic_sriov_cleanup(ptr noundef %adapter) #7
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %62, i32 0, i32 30
  %63 = ptrtoint ptr %op_mode to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %op_mode, align 2
  call void @_clear_bit(i32 noundef 10, ptr noundef %state.i) #7
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_pf_cfg_vlan_filtering.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %adapter, i8 noundef zeroext %flag, i16 noundef zeroext %func) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag)
  %tobool1.not = icmp eq i8 %flag, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %func to i32
  %shl = shl nuw nsw i32 %conv, 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %conv3 = trunc i16 %func to i8
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sriov1.i, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pci_func.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %conv3)
  %cmp.i = icmp eq i8 %12, %conv3
  br i1 %cmp.i, label %if.else.if.end7_crit_edge, label %if.else.i

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else.i:                                        ; preds = %if.else
  %call.i47 = call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i47)
  %cmp6.i = icmp sgt i32 %call.i47, -1
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i.out_crit_edge

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info9.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %vf_info9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vf_info9.i, align 4
  %vp.i = getelementptr %struct.qlcnic_vf_info, ptr %14, i32 %call.i47, i32 15
  %15 = ptrtoint ptr %vp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vp.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then8.i, %if.else.if.end7_crit_edge
  %retval.0.i.ph.in.in = phi ptr [ %16, %if.then8.i ], [ %10, %if.else.if.end7_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i.ph.in.in to i32
  call void @__asan_load2_noabort(i32 %17)
  %retval.0.i.ph.in = load i16, ptr %retval.0.i.ph.in.in, align 2
  %retval.0.i.ph = zext i16 %retval.0.i.ph.in to i32
  %and = shl nuw nsw i32 %retval.0.i.ph, 8
  %or = or i32 %and, 1
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.then2
  %or.sink = phi i32 [ %or, %if.end7 ], [ %shl, %if.then2 ]
  %arg10 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arg10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg10, align 4
  %arrayidx11 = getelementptr i32, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.sink, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %hw_ops.i48 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %hw_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ops.i48, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end12.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end12
  %call.i49 = call i32 %26(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool14.not = icmp eq i32 %call.i49, 0
  br i1 %tobool14.not, label %if.end19, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end12.do.end_crit_edge
  %retval.0.i5173 = phi i32 [ %call.i49, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end12.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %cond = select i1 %tobool1.not, ptr @.str.24, ptr @.str.23
  %conv18 = zext i16 %func to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %retval.0.i5173, i32 noundef %conv18) #10
  br label %out

if.end19:                                         ; preds = %qlcnic_issue_cmd.exit
  br i1 %tobool1.not, label %if.else27, label %if.then21

if.then21:                                        ; preds = %if.end19
  %arg22 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arg22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg22, align 4
  %arrayidx23 = getelementptr i32, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23, align 4
  %conv25 = trunc i32 %32 to i16
  %conv26 = trunc i16 %func to i8
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %sriov1.i52 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 54
  %35 = ptrtoint ptr %sriov1.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov1.i52, align 8
  %pci_func.i53 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %pci_func.i53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pci_func.i53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %conv26)
  %cmp.i54 = icmp eq i8 %38, %conv26
  br i1 %cmp.i54, label %if.then.i55, label %if.else.i57

if.then.i55:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv25, ptr %36, align 4
  br label %out

if.else.i57:                                      ; preds = %if.then21
  %call.i56 = call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %conv26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp5.i = icmp slt i32 %call.i56, 0
  br i1 %cmp5.i, label %if.else.i57.out_crit_edge, label %if.end.i

if.else.i57.out_crit_edge:                        ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %36, i32 0, i32 9
  %40 = ptrtoint ptr %vf_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vf_info.i, align 4
  %vp8.i = getelementptr %struct.qlcnic_vf_info, ptr %41, i32 %call.i56, i32 15
  %42 = ptrtoint ptr %vp8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vp8.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv25, ptr %43, align 2
  br label %out

if.else27:                                        ; preds = %if.end19
  %conv28 = trunc i16 %func to i8
  %45 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter, align 8
  %sriov1.i58 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %46, i32 0, i32 54
  %47 = ptrtoint ptr %sriov1.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov1.i58, align 8
  %pci_func.i59 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %46, i32 0, i32 6
  %49 = ptrtoint ptr %pci_func.i59 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pci_func.i59, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %conv28)
  %cmp.i60 = icmp eq i8 %50, %conv28
  br i1 %cmp.i60, label %if.then.i61, label %if.else.i64

if.then.i61:                                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %48, align 4
  br label %out

if.else.i64:                                      ; preds = %if.else27
  %call.i62 = call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %conv28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp5.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp5.i63, label %if.else.i64.out_crit_edge, label %if.end.i67

if.else.i64.out_crit_edge:                        ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i67:                                       ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info.i65 = getelementptr inbounds %struct.qlcnic_sriov, ptr %48, i32 0, i32 9
  %52 = ptrtoint ptr %vf_info.i65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vf_info.i65, align 4
  %vp8.i66 = getelementptr %struct.qlcnic_vf_info, ptr %53, i32 %call.i62, i32 15
  %54 = ptrtoint ptr %vp8.i66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vp8.i66, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %55, align 2
  br label %out

out:                                              ; preds = %if.end.i67, %if.else.i64.out_crit_edge, %if.then.i61, %if.end.i, %if.else.i57.out_crit_edge, %if.then.i55, %do.end, %if.else.i.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i5173, %do.end ], [ -22, %if.else.i.out_crit_edge ], [ 0, %if.then.i55 ], [ 0, %if.else.i57.out_crit_edge ], [ 0, %if.end.i ], [ 0, %if.then.i61 ], [ 0, %if.else.i64.out_crit_edge ], [ 0, %if.end.i67 ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_pf_cfg_vlan_filtering(ptr noundef %adapter, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool1.not = icmp eq i8 %enable, 0
  %flags14 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %10 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags14, align 8
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %or = or i32 %11, 8388608
  %12 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %flags14, align 8
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %arrayidx5 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %or6 = or i32 %16, 65536
  store i32 %or6, ptr %arrayidx5, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device1.i, align 2
  %21 = and i16 %20, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %21)
  %22 = icmp eq i16 %21, -32704
  br i1 %22, label %if.then8, label %if.then2.if.end15_crit_edge

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  %arrayidx11 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx11, align 4
  %or12 = or i32 %26, 524288
  store i32 %or12, ptr %arrayidx11, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %11, -8388609
  %27 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8, %if.then2.if.end15_crit_edge
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %hw_ops.i30 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %hw_ops.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_ops.i30, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end15.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end15
  %call.i31 = call i32 %33(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool17.not = icmp eq i32 %call.i31, 0
  br i1 %tobool17.not, label %qlcnic_issue_cmd.exit.if.end19_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end19_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end15.do.end_crit_edge
  %retval.0.i34 = phi i32 [ %call.i31, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end15.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i34) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end19_crit_edge
  %retval.0.i35 = phi i32 [ %retval.0.i34, %do.end ], [ 0, %qlcnic_issue_cmd.exit.if.end19_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qlcnic_sriov_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_pf_disable(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.i = icmp eq i16 %3, 3
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_sriov(ptr noundef %8) #7
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %11 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %portnum, align 2
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_pci_sriov_configure(ptr nocapture noundef readonly %dev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp = icmp eq i32 %num_vfs, 0
  %netdev1.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1.i, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev1.i, align 4
  %portnum.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #10
  %10 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev1.i, align 4
  %12 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %portnum.i, align 2
  %conv5.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.30, i32 noundef %conv5.i) #10
  br label %if.end5

if.end.i:                                         ; preds = %if.then2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %op_mode.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 30
  %16 = ptrtoint ptr %op_mode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %op_mode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %17)
  %cmp.i.i.i = icmp eq i16 %17, 3
  br i1 %cmp.i.i.i, label %if.end.i.i, label %if.end.i.qlcnic_sriov_pf_disable.exit.i_crit_edge

if.end.i.qlcnic_sriov_pf_disable.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_disable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.qlcnic_sriov_pf_disable.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.qlcnic_sriov_pf_disable.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_disable.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_sriov(ptr noundef %22) #7
  %23 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev1.i, align 4
  %portnum.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 20
  %25 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %portnum.i.i, align 2
  %conv.i.i = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %conv.i.i) #10
  br label %qlcnic_sriov_pf_disable.exit.i

qlcnic_sriov_pf_disable.exit.i:                   ; preds = %if.end3.i.i, %if.end.i.i.qlcnic_sriov_pf_disable.exit.i_crit_edge, %if.end.i.qlcnic_sriov_pf_disable.exit.i_crit_edge
  tail call void @rtnl_lock() #7
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %qlcnic_sriov_pf_disable.exit.i.if.end8.i_crit_edge, label %if.then7.i

qlcnic_sriov_pf_disable.exit.i.if.end8.i_crit_edge: ; preds = %qlcnic_sriov_pf_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %qlcnic_sriov_pf_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__qlcnic_down(ptr noundef %1, ptr noundef %3) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %qlcnic_sriov_pf_disable.exit.i.if.end8.i_crit_edge
  tail call void @qlcnic_sriov_free_vlans(ptr noundef %1) #7
  tail call void @qlcnic_sriov_pf_cleanup(ptr noundef %1) #7
  %call9.i = tail call i32 @qlcnic_83xx_configure_opmode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %if.end5

if.end12.i:                                       ; preds = %if.end8.i
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i32.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32.i)
  %tobool.i33.not.i = icmp eq i32 %and1.i.i32.i, 0
  br i1 %tobool.i33.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 @__qlcnic_up(ptr noundef %1, ptr noundef %3) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  tail call void @rtnl_unlock() #7
  br label %if.end5

if.else:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %if.then.i14, label %if.end.i18

if.then.i14:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #10
  br label %if.end5

if.end.i18:                                       ; preds = %if.else
  tail call void @rtnl_lock() #7
  %state.i.i15 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %state.i.i15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i.i15, align 4
  %and1.i.i.i16 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i16)
  %tobool.i.not.i17 = icmp eq i32 %and1.i.i.i16, 0
  br i1 %tobool.i.not.i17, label %if.end.i18.if.end3.i_crit_edge, label %if.then2.i

if.end.i18.if.end3.i_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__qlcnic_down(ptr noundef %1, ptr noundef %3) #7
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i18.if.end3.i_crit_edge
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state) #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %op_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %36, i32 0, i32 30
  %37 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 3, ptr %op_mode.i.i, align 2
  %call.i.i = tail call i32 @qlcnic_sriov_init(ptr noundef %1, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i20, label %if.end3.i.__qlcnic_pci_sriov_enable.exit.i_crit_edge

if.end3.i.__qlcnic_pci_sriov_enable.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__qlcnic_pci_sriov_enable.exit.i

if.end.i.i20:                                     ; preds = %if.end3.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %sriov.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 54
  %40 = ptrtoint ptr %sriov.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov.i.i.i, align 8
  %call.i.i.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.34, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.35) #7
  %cmp.i.i.i19 = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i.i19, label %qlcnic_sriov_pf_create_flr_queue.exit.i.i, label %if.end4.i.i

qlcnic_sriov_pf_create_flr_queue.exit.i.i:        ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.36) #10
  br label %sriov_cleanup.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i20
  %bc_flr_wq.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %41, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %bc_flr_wq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i, ptr %bc_flr_wq.i.i.i, align 4
  %call5.i.i = tail call fastcc i32 @qlcnic_sriov_pf_init(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.del_flr_queue.i.i_crit_edge

if.end4.i.i.del_flr_queue.i.i_crit_edge:          ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_flr_queue.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = tail call i32 @qlcnic_sriov_alloc_vlans(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end7.i_crit_edge, label %if.end8.i.i.del_flr_queue.i.i_crit_edge

if.end8.i.i.del_flr_queue.i.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_flr_queue.i.i

if.end8.i.i.if.end7.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

del_flr_queue.i.i:                                ; preds = %if.end8.i.i.del_flr_queue.i.i_crit_edge, %if.end4.i.i.del_flr_queue.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call5.i.i, %if.end4.i.i.del_flr_queue.i.i_crit_edge ], [ %call9.i.i, %if.end8.i.i.del_flr_queue.i.i_crit_edge ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %sriov1.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %46, i32 0, i32 54
  %47 = ptrtoint ptr %sriov1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov1.i.i.i, align 8
  %num_vfs.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %num_vfs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_vfs.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp9.not.i.i.i = icmp eq i8 %50, 0
  br i1 %cmp9.not.i.i.i, label %del_flr_queue.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

del_flr_queue.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge: ; preds = %del_flr_queue.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_del_flr_queue.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %del_flr_queue.i.i
  %vf_info.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %48, i32 0, i32 9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.010.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %vf_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vf_info.i.i.i, align 4
  %flr_work.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %52, i32 %i.010.i.i.i, i32 8
  %call.i30.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %flr_work.i.i.i) #7
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %53 = ptrtoint ptr %num_vfs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_vfs.i.i.i, align 2
  %conv.i.i.i = zext i8 %54 to i32
  %cmp.i31.i.i = icmp ult i32 %inc.i.i.i, %conv.i.i.i
  br i1 %cmp.i31.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge

for.body.i.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_del_flr_queue.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

qlcnic_sriov_pf_del_flr_queue.exit.i.i:           ; preds = %for.body.i.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge, %del_flr_queue.i.i.qlcnic_sriov_pf_del_flr_queue.exit.i.i_crit_edge
  %bc_flr_wq.i32.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %48, i32 0, i32 8, i32 3
  %55 = ptrtoint ptr %bc_flr_wq.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bc_flr_wq.i32.i.i, align 4
  tail call void @destroy_workqueue(ptr noundef %56) #7
  br label %sriov_cleanup.i.i

sriov_cleanup.i.i:                                ; preds = %qlcnic_sriov_pf_del_flr_queue.exit.i.i, %qlcnic_sriov_pf_create_flr_queue.exit.i.i
  %err.1.i.i = phi i32 [ -12, %qlcnic_sriov_pf_create_flr_queue.exit.i.i ], [ %err.0.i.i, %qlcnic_sriov_pf_del_flr_queue.exit.i.i ]
  tail call void @__qlcnic_sriov_cleanup(ptr noundef %1) #7
  br label %__qlcnic_pci_sriov_enable.exit.i

__qlcnic_pci_sriov_enable.exit.i:                 ; preds = %sriov_cleanup.i.i, %if.end3.i.__qlcnic_pci_sriov_enable.exit.i_crit_edge
  %err.2.i.i = phi i32 [ %call.i.i, %if.end3.i.__qlcnic_pci_sriov_enable.exit.i_crit_edge ], [ %err.1.i.i, %sriov_cleanup.i.i ]
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state) #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %op_mode15.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %58, i32 0, i32 30
  %59 = ptrtoint ptr %op_mode15.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %op_mode15.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i.i)
  %tobool5.not.i = icmp eq i32 %err.2.i.i, 0
  br i1 %tobool5.not.i, label %__qlcnic_pci_sriov_enable.exit.i.if.end7.i_crit_edge, label %__qlcnic_pci_sriov_enable.exit.i.error.i_crit_edge

__qlcnic_pci_sriov_enable.exit.i.error.i_crit_edge: ; preds = %__qlcnic_pci_sriov_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

__qlcnic_pci_sriov_enable.exit.i.if.end7.i_crit_edge: ; preds = %__qlcnic_pci_sriov_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %__qlcnic_pci_sriov_enable.exit.i.if.end7.i_crit_edge, %if.end8.i.i.if.end7.i_crit_edge
  %60 = ptrtoint ptr %state.i.i15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i.i15, align 4
  %and1.i.i56.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i56.i)
  %tobool.i57.not.i = icmp eq i32 %and1.i.i56.i, 0
  br i1 %tobool.i57.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 @__qlcnic_up(ptr noundef %1, ptr noundef %3) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  tail call void @rtnl_unlock() #7
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state, align 4
  %64 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i.i21 = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i.i21, label %if.end11.i.if.then14.i24_crit_edge, label %if.end.i59.i

if.end11.i.if.then14.i24_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i24

if.end.i59.i:                                     ; preds = %if.end11.i
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i, align 8
  %call1.i.i = tail call i32 @pci_enable_sriov(ptr noundef %66, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i58.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i58.i, label %if.end.i59.i.if.then14.i24_crit_edge, label %if.end15.i

if.end.i59.i.if.then14.i24_crit_edge:             ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i24

if.then14.i24:                                    ; preds = %if.end.i59.i.if.then14.i24_crit_edge, %if.end11.i.if.then14.i24_crit_edge
  %portnum.i22 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 20
  %67 = ptrtoint ptr %portnum.i22 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %portnum.i22, align 2
  %conv.i23 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %conv.i23) #10
  br label %if.end5

if.end15.i:                                       ; preds = %if.end.i59.i
  tail call void @qlcnic_sriov_pf_cleanup(ptr noundef %1) #7
  tail call void @rtnl_lock() #7
  %69 = ptrtoint ptr %state.i.i15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %state.i.i15, align 4
  %and1.i.i62.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i62.i)
  %tobool.i63.not.i = icmp eq i32 %and1.i.i62.i, 0
  br i1 %tobool.i63.not.i, label %if.end15.i.error.i_crit_edge, label %if.then17.i

if.end15.i.error.i_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__qlcnic_down(ptr noundef %1, ptr noundef %3) #7
  br label %error.i

error.i:                                          ; preds = %if.then17.i, %if.end15.i.error.i_crit_edge, %__qlcnic_pci_sriov_enable.exit.i.error.i_crit_edge
  %err.0.i = phi i32 [ %err.2.i.i, %__qlcnic_pci_sriov_enable.exit.i.error.i_crit_edge ], [ %call1.i.i, %if.then17.i ], [ %call1.i.i, %if.end15.i.error.i_crit_edge ]
  %call19.i = tail call i32 @qlcnic_83xx_configure_opmode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %error.i.if.end26.i_crit_edge

error.i.if.end26.i_crit_edge:                     ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then21.i:                                      ; preds = %error.i
  %71 = ptrtoint ptr %state.i.i15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %state.i.i15, align 4
  %and1.i.i65.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65.i)
  %tobool.i66.not.i = icmp eq i32 %and1.i.i65.i, 0
  br i1 %tobool.i66.not.i, label %if.then21.i.if.end26.i_crit_edge, label %if.then23.i

if.then21.i.if.end26.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 @__qlcnic_up(ptr noundef %1, ptr noundef %3) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.then21.i.if.end26.i_crit_edge, %error.i.if.end26.i_crit_edge
  tail call void @rtnl_unlock() #7
  %portnum27.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 20
  %73 = ptrtoint ptr %portnum27.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %portnum27.i, align 2
  %conv28.i = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %conv28.i) #10
  br label %if.end5

if.end5:                                          ; preds = %if.end26.i, %if.then14.i24, %if.then.i14, %if.end16.i, %if.then11.i, %if.then.i
  %err.0 = phi i32 [ -1, %if.then.i ], [ -5, %if.then11.i ], [ 0, %if.end16.i ], [ %err.0.i, %if.end26.i ], [ %num_vfs, %if.then14.i24 ], [ -5, %if.then.i14 ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_pf_process_bc_cmd(ptr noundef %adapter, ptr noundef %trans, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %0 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_hdr, align 4
  %cmd_op1 = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_op1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_op1, align 2
  %op_type = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %op_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp slt i8 %bf.load, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %5 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %for.cond.preheader.if.end37_crit_edge [
    i8 7, label %for.cond.preheader.if.then17_crit_edge
    i8 9, label %if.then17.fold.split
    i8 31, label %if.then17.fold.split65
    i8 8, label %if.then17.fold.split66
    i8 10, label %if.then17.fold.split67
    i8 74, label %if.then17.fold.split68
    i8 1, label %if.then17.fold.split69
    i8 2, label %if.then17.fold.split70
    i8 18, label %if.then17.fold.split71
    i8 33, label %if.then17.fold.split72
    i8 65, label %if.then17.fold.split73
    i8 67, label %if.then17.fold.split74
    i8 69, label %if.then17.fold.split75
    i8 72, label %if.then17.fold.split76
    i8 73, label %if.then17.fold.split77
    i8 15, label %for.cond.preheader.if.then31_crit_edge
    i8 103, label %for.cond.preheader.if.then31_crit_edge78
    i8 104, label %for.cond.preheader.if.then31_crit_edge79
    i8 96, label %for.cond.preheader.if.then31_crit_edge80
    i8 97, label %for.cond.preheader.if.then31_crit_edge81
  ]

for.cond.preheader.if.then31_crit_edge81:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.cond.preheader.if.then31_crit_edge80:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.cond.preheader.if.then31_crit_edge79:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.cond.preheader.if.then31_crit_edge78:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.cond.preheader.if.then31_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.cond.preheader.if.then17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

for.cond.preheader.if.end37_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp6 = icmp ult i8 %3, 4
  br i1 %cmp6, label %if.then8, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i8 %3 to i32
  %arrayidx = getelementptr [4 x %struct.qlcnic_sriov_cmd_handler], ptr @qlcnic_pf_bc_cmd_hdlr, i32 0, i32 %conv4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %7(ptr noundef %trans, ptr noundef %cmd) #7
  br label %cleanup39

if.then17.fold.split:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split65:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split66:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split67:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split68:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split69:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split70:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split71:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split72:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split73:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split74:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split75:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split76:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17.fold.split77:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %if.then17.fold.split77, %if.then17.fold.split76, %if.then17.fold.split75, %if.then17.fold.split74, %if.then17.fold.split73, %if.then17.fold.split72, %if.then17.fold.split71, %if.then17.fold.split70, %if.then17.fold.split69, %if.then17.fold.split68, %if.then17.fold.split67, %if.then17.fold.split66, %if.then17.fold.split65, %if.then17.fold.split, %for.cond.preheader.if.then17_crit_edge
  %i.062.lcssa = phi i32 [ 0, %for.cond.preheader.if.then17_crit_edge ], [ 1, %if.then17.fold.split ], [ 2, %if.then17.fold.split65 ], [ 3, %if.then17.fold.split66 ], [ 4, %if.then17.fold.split67 ], [ 5, %if.then17.fold.split68 ], [ 6, %if.then17.fold.split69 ], [ 7, %if.then17.fold.split70 ], [ 8, %if.then17.fold.split71 ], [ 9, %if.then17.fold.split72 ], [ 10, %if.then17.fold.split73 ], [ 11, %if.then17.fold.split74 ], [ 12, %if.then17.fold.split75 ], [ 13, %if.then17.fold.split76 ], [ 14, %if.then17.fold.split77 ]
  %fn19 = getelementptr [15 x %struct.qlcnic_sriov_fw_cmd_handler], ptr @qlcnic_pf_fw_cmd_hdlr, i32 0, i32 %i.062.lcssa, i32 1
  %8 = ptrtoint ptr %fn19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn19, align 4
  %call20 = tail call i32 %9(ptr noundef %trans, ptr noundef %cmd) #7
  br label %cleanup39

if.then31:                                        ; preds = %for.cond.preheader.if.then31_crit_edge, %for.cond.preheader.if.then31_crit_edge78, %for.cond.preheader.if.then31_crit_edge79, %for.cond.preheader.if.then31_crit_edge80, %for.cond.preheader.if.then31_crit_edge81
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then31.cleanup39_crit_edge, label %if.then.i

if.then31.cleanup39_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %15(ptr noundef %adapter, ptr noundef %cmd) #7
  br label %cleanup39

if.end37:                                         ; preds = %if.then.if.end37_crit_edge, %for.cond.preheader.if.end37_crit_edge
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or = or i32 %19, 301989888
  store i32 %or, ptr %17, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %if.end37, %if.then.i, %if.then31.cleanup39_crit_edge, %if.then17, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_create_rx_ctx(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %7, %conv5.i
  store i32 %or, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_del_rx_ctx(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_create_tx_ctx(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_del_tx_ctx(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_promisc(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %7, %shl
  %or2 = or i32 %or, -2147483648
  store i32 %or2, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_ipaddr(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %7, %shl
  %or2 = or i32 %or, -2147483648
  store i32 %or2, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pf_set_interface_id_macaddr(ptr noundef %adapter, ptr nocapture noundef %int_id) local_unnamed_addr #0 align 64 {
qlcnic_sriov_pf_get_vport_handle.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv5.i = zext i16 %5 to i32
  %shl = shl nuw i32 %conv5.i, 16
  %6 = ptrtoint ptr %int_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_id, align 4
  %or = or i32 %7, %shl
  %or2 = or i32 %or, -2147483648
  store i32 %or2, ptr %int_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qlcnic_sriov_soft_flr_check(ptr nocapture noundef readonly %adapter, ptr noundef %trans, ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %0 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_hdr, align 4
  %cmd_op = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_op to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %op_type = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %op_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp3 = icmp slt i8 %bf.load, 0
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov1.i, align 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state) #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #7
  %flr_trans.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 11
  %12 = ptrtoint ptr %flr_trans.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %trans, ptr %flr_trans.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 14
  %13 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.qlcnic_sriov_handle_soft_flr.exit_crit_edge

if.then.qlcnic_sriov_handle_soft_flr.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_handle_soft_flr.exit

do.body.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %flr_work.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8
  tail call void @__init_work(ptr noundef %flr_work.i.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %flr_work.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %flr_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @qlcnic_sriov_schedule_flr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func6.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %func6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qlcnic_sriov_pf_process_flr, ptr %func6.i.i, align 4
  %bc_flr_wq.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %11, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %bc_flr_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_flr_wq.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %flr_work.i.i) #7
  br label %qlcnic_sriov_handle_soft_flr.exit

qlcnic_sriov_handle_soft_flr.exit:                ; preds = %do.body.i.i, %if.then.qlcnic_sriov_handle_soft_flr.exit_crit_edge
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  %26 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vf, align 4
  %conv.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.43, i32 noundef %conv.i) #10
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_handle_soft_flr.exit, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %qlcnic_sriov_handle_soft_flr.exit ], [ false, %land.lhs.true5.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_pf_handle_flr(ptr nocapture noundef readonly %sriov, ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 14
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %vp1 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 15
  %4 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp1, align 4
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 5
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vf, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vlan_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 3
  %10 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_vlans, align 4
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %sriov, i32 0, i32 4
  %12 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_allowed_vlans, align 2
  %conv11 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv11, 1
  %14 = call ptr @memset(ptr %11, i32 0, i32 %mul)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 4
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end12.qlcnic_sriov_schedule_flr.exit_crit_edge

if.end12.qlcnic_sriov_schedule_flr.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_schedule_flr.exit

do.body.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %flr_work.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8
  tail call void @__init_work(ptr noundef %flr_work.i, i32 noundef 0) #7
  %20 = ptrtoint ptr %flr_work.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %flr_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @qlcnic_sriov_schedule_flr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func6.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %func6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qlcnic_sriov_pf_process_flr, ptr %func6.i, align 4
  %bc_flr_wq.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %sriov, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %bc_flr_wq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_flr_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %flr_work.i) #7
  br label %qlcnic_sriov_schedule_flr.exit

qlcnic_sriov_schedule_flr.exit:                   ; preds = %do.body.i, %if.end12.qlcnic_sriov_schedule_flr.exit_crit_edge
  %26 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vf, align 4
  %conv14 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %conv14) #10
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_schedule_flr.exit, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_pf_process_flr(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  tail call fastcc void @__qlcnic_sriov_process_flr(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_pf_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov2, align 8
  %num_vfs3 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_vfs3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_vfs3, align 2
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp20.not = icmp eq i8 %5, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_info, align 4
  %arrayidx = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021
  %rx_ctx_id = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021, i32 1
  %8 = ptrtoint ptr %rx_ctx_id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %rx_ctx_id, align 2
  %tx_ctx_id = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021, i32 2
  %9 = ptrtoint ptr %tx_ctx_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %tx_ctx_id, align 4
  %flr_work = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021, i32 8
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %flr_work) #7
  tail call fastcc void @__qlcnic_sriov_process_flr(ptr noundef %arrayidx)
  %state = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #7
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_func, align 1
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov1.i, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pci_func.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %11)
  %cmp.i = icmp eq i8 %17, %11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %15, align 4
  br label %qlcnic_sriov_pf_reset_vport_handle.exit

if.else.i:                                        ; preds = %for.end
  %call.i = tail call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.else.i.qlcnic_sriov_pf_reset_vport_handle.exit_crit_edge, label %if.end.i

if.else.i.qlcnic_sriov_pf_reset_vport_handle.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_reset_vport_handle.exit

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %15, i32 0, i32 9
  %19 = ptrtoint ptr %vf_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vf_info.i, align 4
  %vp8.i = getelementptr %struct.qlcnic_vf_info, ptr %20, i32 %call.i, i32 15
  %21 = ptrtoint ptr %vp8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vp8.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %22, align 2
  br label %qlcnic_sriov_pf_reset_vport_handle.exit

qlcnic_sriov_pf_reset_vport_handle.exit:          ; preds = %if.end.i, %if.else.i.qlcnic_sriov_pf_reset_vport_handle.exit_crit_edge, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %num_msix = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %num_msix to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_msix, align 2
  %conv6 = zext i8 %25 to i32
  %sub = shl nuw nsw i32 %conv6, 8
  %shl = add nsw i32 %sub, -256
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %29 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx7 = getelementptr i32, ptr %30, i32 8
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #7, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qlcnic_sriov_process_flr(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  %cmd.i31 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 14
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %rcv_pend = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 13
  tail call void @qlcnic_sriov_cleanup_list(ptr noundef %rcv_pend) #7
  %trans_work = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %trans_work) #7
  %rcv_act = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 12
  tail call void @qlcnic_sriov_cleanup_list(ptr noundef %rcv_act) #7
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #7
  %5 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %tx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 2
  %6 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_ctx_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.then.qlcnic_sriov_del_tx_ctx.exit_crit_edge, label %if.end.i

if.then.qlcnic_sriov_del_tx_ctx.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_del_tx_ctx.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef nonnull %cmd.i, ptr noundef %1, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.qlcnic_sriov_del_tx_ctx.exit_crit_edge

if.end.i.qlcnic_sriov_del_tx_ctx.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_del_tx_ctx.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vf, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %sriov1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %sriov1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov1.i.i, align 8
  %pci_func.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %pci_func.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pci_func.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %15)
  %cmp.i.i = icmp eq i8 %21, %15
  br i1 %cmp.i.i, label %if.end3.i.if.then5.i_crit_edge, label %if.else.i.i

if.end3.i.if.then5.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.else.i.i:                                      ; preds = %if.end3.i
  %call.i25.i = call i32 @qlcnic_sriov_func_to_index(ptr noundef %1, i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i25.i)
  %cmp6.i.i = icmp sgt i32 %call.i25.i, -1
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i.if.end15.i_crit_edge

if.else.i.i.if.end15.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info9.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %vf_info9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf_info9.i.i, align 4
  %vp.i.i = getelementptr %struct.qlcnic_vf_info, ptr %23, i32 %call.i25.i, i32 15
  %24 = ptrtoint ptr %vp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vp.i.i, align 4
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.then8.i.i, %if.end3.i.if.then5.i_crit_edge
  %retval.0.i.ph.in.in.i = phi ptr [ %25, %if.then8.i.i ], [ %19, %if.end3.i.if.then5.i_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i.ph.in.in.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %retval.0.i.ph.in.i = load i16, ptr %retval.0.i.ph.in.in.i, align 2
  %retval.0.i.ph.i = zext i16 %retval.0.i.ph.in.i to i32
  %27 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tx_ctx_id.i, align 4
  %conv.i = zext i16 %28 to i32
  %shl.i = shl nuw i32 %retval.0.i.ph.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %or7.i = or i32 %or.i, %32
  store i32 %or7.i, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %hw_ops.i26.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %hw_ops.i26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops.i26.i, align 4
  %mbx_cmd.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %mbx_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbx_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then5.i.do.end.i_crit_edge, label %qlcnic_issue_cmd.exit.i

if.then5.i.do.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

qlcnic_issue_cmd.exit.i:                          ; preds = %if.then5.i
  %call.i27.i = call i32 %38(ptr noundef %1, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool9.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %qlcnic_issue_cmd.exit.i.do.end.i_crit_edge

qlcnic_issue_cmd.exit.i.do.end.i_crit_edge:       ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %qlcnic_issue_cmd.exit.i.do.end.i_crit_edge, %if.then5.i.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vf, align 4
  %conv12.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %conv12.i) #10
  br label %if.end15.i

if.else.i:                                        ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %tx_ctx_id.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %do.end.i, %if.else.i.i.if.end15.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #7
  br label %qlcnic_sriov_del_tx_ctx.exit

qlcnic_sriov_del_tx_ctx.exit:                     ; preds = %if.end15.i, %if.end.i.qlcnic_sriov_del_tx_ctx.exit_crit_edge, %if.then.qlcnic_sriov_del_tx_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i31) #7
  %44 = call ptr @memset(ptr %cmd.i31, i32 255, i32 120)
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 1
  %45 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rx_ctx_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i32 = icmp eq i16 %46, 0
  br i1 %tobool.not.i32, label %qlcnic_sriov_del_tx_ctx.exit.qlcnic_sriov_del_rx_ctx.exit_crit_edge, label %if.end.i37

qlcnic_sriov_del_tx_ctx.exit.qlcnic_sriov_del_rx_ctx.exit_crit_edge: ; preds = %qlcnic_sriov_del_tx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_del_rx_ctx.exit

if.end.i37:                                       ; preds = %qlcnic_sriov_del_tx_ctx.exit
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %hw_ops.i.i33 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %hw_ops.i.i33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_ops.i.i33, align 4
  %alloc_mbx_args.i.i34 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %alloc_mbx_args.i.i34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alloc_mbx_args.i.i34, align 4
  %call.i.i35 = call i32 %52(ptr noundef nonnull %cmd.i31, ptr noundef %1, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool1.not.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool1.not.i36, label %if.end3.i41, label %if.end.i37.qlcnic_sriov_del_rx_ctx.exit_crit_edge

if.end.i37.qlcnic_sriov_del_rx_ctx.exit_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_del_rx_ctx.exit

if.end3.i41:                                      ; preds = %if.end.i37
  %53 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vf, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %sriov1.i.i38 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %56, i32 0, i32 54
  %57 = ptrtoint ptr %sriov1.i.i38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sriov1.i.i38, align 8
  %pci_func.i.i39 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %56, i32 0, i32 6
  %59 = ptrtoint ptr %pci_func.i.i39 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pci_func.i.i39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %54)
  %cmp.i.i40 = icmp eq i8 %60, %54
  br i1 %cmp.i.i40, label %if.end3.i41.if.then5.i57_crit_edge, label %if.else.i.i43

if.end3.i41.if.then5.i57_crit_edge:               ; preds = %if.end3.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i57

if.else.i.i43:                                    ; preds = %if.end3.i41
  %call.i24.i = call i32 @qlcnic_sriov_func_to_index(ptr noundef %1, i8 noundef zeroext %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i24.i)
  %cmp6.i.i42 = icmp sgt i32 %call.i24.i, -1
  br i1 %cmp6.i.i42, label %if.then8.i.i46, label %if.else.i.i43.if.end14.i_crit_edge

if.else.i.i43.if.end14.i_crit_edge:               ; preds = %if.else.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then8.i.i46:                                   ; preds = %if.else.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info9.i.i44 = getelementptr inbounds %struct.qlcnic_sriov, ptr %58, i32 0, i32 9
  %61 = ptrtoint ptr %vf_info9.i.i44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vf_info9.i.i44, align 4
  %vp.i.i45 = getelementptr %struct.qlcnic_vf_info, ptr %62, i32 %call.i24.i, i32 15
  %63 = ptrtoint ptr %vp.i.i45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vp.i.i45, align 4
  br label %if.then5.i57

if.then5.i57:                                     ; preds = %if.then8.i.i46, %if.end3.i41.if.then5.i57_crit_edge
  %retval.0.i.ph.in.in.i47 = phi ptr [ %64, %if.then8.i.i46 ], [ %58, %if.end3.i41.if.then5.i57_crit_edge ]
  %65 = ptrtoint ptr %retval.0.i.ph.in.in.i47 to i32
  call void @__asan_load2_noabort(i32 %65)
  %retval.0.i.ph.in.i48 = load i16, ptr %retval.0.i.ph.in.in.i47, align 2
  %retval.0.i.ph.i49 = zext i16 %retval.0.i.ph.in.i48 to i32
  %66 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rx_ctx_id.i, align 2
  %conv.i50 = zext i16 %67 to i32
  %shl.i51 = shl nuw i32 %retval.0.i.ph.i49, 16
  %or.i52 = or i32 %shl.i51, %conv.i50
  %arg.i53 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i31, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %arg.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arg.i53, align 4
  %arrayidx.i54 = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i52, ptr %arrayidx.i54, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %hw_ops.i25.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %72, i32 0, i32 46
  %73 = ptrtoint ptr %hw_ops.i25.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_ops.i25.i, align 4
  %mbx_cmd.i.i55 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %mbx_cmd.i.i55 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mbx_cmd.i.i55, align 4
  %tobool.not.i.i56 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i56, label %if.then5.i57.do.end.i61_crit_edge, label %qlcnic_issue_cmd.exit.i58

if.then5.i57.do.end.i61_crit_edge:                ; preds = %if.then5.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i61

qlcnic_issue_cmd.exit.i58:                        ; preds = %if.then5.i57
  %call.i26.i = call i32 %76(ptr noundef %1, ptr noundef nonnull %cmd.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool8.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool8.not.i, label %if.else.i62, label %qlcnic_issue_cmd.exit.i58.do.end.i61_crit_edge

qlcnic_issue_cmd.exit.i58.do.end.i61_crit_edge:   ; preds = %qlcnic_issue_cmd.exit.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i61

do.end.i61:                                       ; preds = %qlcnic_issue_cmd.exit.i58.do.end.i61_crit_edge, %if.then5.i57.do.end.i61_crit_edge
  %pdev.i59 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %pdev.i59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev.i59, align 8
  %dev.i60 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %vf, align 4
  %conv11.i = zext i8 %80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str.45, i32 noundef %conv11.i) #10
  br label %if.end14.i

if.else.i62:                                      ; preds = %qlcnic_issue_cmd.exit.i58
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %rx_ctx_id.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i62, %do.end.i61, %if.else.i.i43.if.end14.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i31) #7
  br label %qlcnic_sriov_del_rx_ctx.exit

qlcnic_sriov_del_rx_ctx.exit:                     ; preds = %if.end14.i, %if.end.i37.qlcnic_sriov_del_rx_ctx.exit_crit_edge, %qlcnic_sriov_del_tx_ctx.exit.qlcnic_sriov_del_rx_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i31) #7
  br label %if.end

if.end:                                           ; preds = %qlcnic_sriov_del_rx_ctx.exit, %entry.if.end_crit_edge
  %82 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vf, align 4
  %conv = zext i8 %83 to i16
  %call3 = call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv)
  call void @_clear_bit(i32 noundef 4, ptr noundef %state) #7
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %state, align 4
  %86 = and i32 %85, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool7.not = icmp eq i32 %86, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %sriov = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %88, i32 0, i32 54
  %89 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sriov, align 8
  %flr_trans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 11
  %91 = ptrtoint ptr %flr_trans to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %flr_trans, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rcv_act) #7
  %call5.i = call i32 @__qlcnic_sriov_add_act_list(ptr noundef %90, ptr noundef %vf, ptr noundef %92) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_act, i32 noundef %call2.i) #7
  call void @_clear_bit(i32 noundef 5, ptr noundef %state) #7
  %93 = ptrtoint ptr %flr_trans to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %flr_trans, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_pf_reinit(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %op_mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %op_mode, align 2
  %call2 = tail call fastcc i32 @qlcnic_sriov_pf_init(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %op_mode, align 2
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_pf_init(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %cmd.i122 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i98 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i84 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  %nic_info = alloca %struct.qlcnic_info, align 4
  %pf_info = alloca %struct.qlcnic_info, align 4
  %vp_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #7
  %2 = call ptr @memset(ptr %nic_info, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pf_info) #7
  %3 = call ptr @memset(ptr %pf_info, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %vp_info) #7
  %4 = call ptr @memset(ptr %vp_info, i32 255, i32 72)
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_func, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @qlcnic_sriov_pf_cfg_vlan_filtering(ptr noundef %adapter, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device1.i, align 2
  %14 = and i16 %13, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %14)
  %15 = icmp eq i16 %14, -32704
  br i1 %15, label %if.then6, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #7
  %16 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef nonnull %cmd.i, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlcnic_sriov_pf_cfg_flood.exit.thread

qlcnic_sriov_pf_cfg_flood.exit.thread:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #7
  br label %disable_vlan_filtering

if.end.i:                                         ; preds = %if.then6
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65541, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %hw_ops.i12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %hw_ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i12.i, align 4
  %mbx_cmd.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %mbx_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbx_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge, label %qlcnic_issue_cmd.exit.i

if.end.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_flood.exit

qlcnic_issue_cmd.exit.i:                          ; preds = %if.end.i
  %call.i13.i = call i32 %31(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool2.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool2.not.i, label %qlcnic_sriov_pf_cfg_flood.exit.thread139, label %qlcnic_issue_cmd.exit.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge

qlcnic_issue_cmd.exit.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_flood.exit

qlcnic_sriov_pf_cfg_flood.exit.thread139:         ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #7
  br label %if.end11

qlcnic_sriov_pf_cfg_flood.exit:                   ; preds = %qlcnic_issue_cmd.exit.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge, %if.end.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge
  %retval.0.i16.i = phi i32 [ %call.i13.i, %qlcnic_issue_cmd.exit.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge ], [ -5, %if.end.i.qlcnic_sriov_pf_cfg_flood.exit_crit_edge ]
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i16.i) #10
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #7
  br label %disable_vlan_filtering

if.end11:                                         ; preds = %qlcnic_sriov_pf_cfg_flood.exit.thread139, %if.end4.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i84) #7
  %34 = call ptr @memset(ptr %cmd.i84, i32 255, i32 120)
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i85 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %36, i32 0, i32 46
  %37 = ptrtoint ptr %hw_ops.i.i85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_ops.i.i85, align 4
  %alloc_mbx_args.i.i86 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %alloc_mbx_args.i.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alloc_mbx_args.i.i86, align 4
  %call.i.i87 = call i32 %40(ptr noundef nonnull %cmd.i84, ptr noundef %adapter, i32 noundef 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool.not.i88 = icmp eq i32 %call.i.i87, 0
  br i1 %tobool.not.i88, label %if.end.i90, label %qlcnic_sriov_pf_cfg_eswitch.exit.thread

qlcnic_sriov_pf_cfg_eswitch.exit.thread:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i84) #7
  br label %disable_vlan_filtering

if.end.i90:                                       ; preds = %if.end11
  %arg.i89 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i84, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arg.i89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arg.i89, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %or.i = or i32 %44, 1610612736
  store i32 %or.i, ptr %42, align 4
  %45 = shl i8 %6, 2
  %46 = and i8 %45, 60
  %47 = or i8 %46, 66
  %or2.i = zext i8 %47 to i32
  %48 = load ptr, ptr %arg.i89, align 4
  %arrayidx5.i = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or2.i, ptr %arrayidx5.i, align 4
  %50 = load ptr, ptr %arg.i89, align 4
  %arrayidx10.i = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx10.i, align 4
  %or11.i = or i32 %52, 1
  store i32 %or11.i, ptr %arrayidx10.i, align 4
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 8
  %hw_ops.i22.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %hw_ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_ops.i22.i, align 4
  %mbx_cmd.i.i91 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %mbx_cmd.i.i91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbx_cmd.i.i91, align 4
  %tobool.not.i.i92 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i92, label %if.end.i90.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge, label %qlcnic_issue_cmd.exit.i93

if.end.i90.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge: ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_eswitch.exit

qlcnic_issue_cmd.exit.i93:                        ; preds = %if.end.i90
  %call.i23.i = call i32 %58(ptr noundef %adapter, ptr noundef nonnull %cmd.i84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %cmp.not.i, label %if.end15, label %qlcnic_issue_cmd.exit.i93.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge

qlcnic_issue_cmd.exit.i93.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_eswitch.exit

qlcnic_sriov_pf_cfg_eswitch.exit:                 ; preds = %qlcnic_issue_cmd.exit.i93.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge, %if.end.i90.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge
  %retval.0.i26.i = phi i32 [ %call.i23.i, %qlcnic_issue_cmd.exit.i93.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge ], [ -5, %if.end.i90.qlcnic_sriov_pf_cfg_eswitch.exit_crit_edge ]
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %dev.i95 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i95, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i26.i) #10
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i84) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i84) #7
  br label %disable_vlan_filtering

if.end15:                                         ; preds = %qlcnic_issue_cmd.exit.i93
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i84) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i84) #7
  %conv = zext i8 %6 to i16
  %call16 = call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %adapter, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.disable_eswitch_crit_edge

if.end15.disable_eswitch_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_eswitch

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @qlcnic_sriov_get_pf_info(ptr noundef %adapter, ptr noundef nonnull %pf_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.delete_vport_crit_edge

if.end19.delete_vport_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %delete_vport

if.end23:                                         ; preds = %if.end19
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_ops.i, align 4
  %get_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %get_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_nic_info.i, align 4
  %call.i = call i32 %66(ptr noundef %adapter, ptr noundef nonnull %nic_info, i8 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.delete_vport_crit_edge

if.end23.delete_vport_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %delete_vport

if.end27:                                         ; preds = %if.end23
  %call29 = call fastcc i32 @qlcnic_sriov_pf_cal_res_limit(ptr noundef %adapter, ptr noundef nonnull %vp_info, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.delete_vport_crit_edge

if.end27.delete_vport_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %delete_vport

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @qlcnic_sriov_cfg_bc_intr(ptr noundef %adapter, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.delete_vport_crit_edge

if.end32.delete_vport_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %delete_vport

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 2
  %67 = ptrtoint ptr %phys_port to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %phys_port, align 4
  %conv37 = trunc i16 %68 to i8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %physical_port to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv37, ptr %physical_port, align 1
  %switch_mode = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 3
  %70 = ptrtoint ptr %switch_mode to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %switch_mode, align 2
  %switch_mode38 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 31
  %72 = ptrtoint ptr %switch_mode38 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %switch_mode38, align 4
  %max_mtu = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 6
  %73 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %max_mtu, align 2
  %max_mtu39 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 34
  %75 = ptrtoint ptr %max_mtu39 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %max_mtu39, align 2
  %capabilities = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 4
  %76 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %capabilities, align 4
  %capabilities40 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 40
  %78 = ptrtoint ptr %capabilities40 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %capabilities40, align 4
  %nic_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 20
  %79 = ptrtoint ptr %nic_mode to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %nic_mode, align 1
  br label %cleanup

delete_vport:                                     ; preds = %if.end32.delete_vport_crit_edge, %if.end27.delete_vport_crit_edge, %if.end23.delete_vport_crit_edge, %if.end19.delete_vport_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.delete_vport_crit_edge ], [ %call.i, %if.end23.delete_vport_crit_edge ], [ %call29, %if.end27.delete_vport_crit_edge ], [ %call33, %if.end32.delete_vport_crit_edge ]
  %call42 = call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %adapter, i8 noundef zeroext 0, i16 noundef zeroext %conv)
  br label %disable_eswitch

disable_eswitch:                                  ; preds = %delete_vport, %if.end15.disable_eswitch_crit_edge
  %err.1 = phi i32 [ %call16, %if.end15.disable_eswitch_crit_edge ], [ %err.0, %delete_vport ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i98) #7
  %80 = call ptr @memset(ptr %cmd.i98, i32 255, i32 120)
  %81 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i99 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %hw_ops.i.i99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_ops.i.i99, align 4
  %alloc_mbx_args.i.i100 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %alloc_mbx_args.i.i100 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %alloc_mbx_args.i.i100, align 4
  %call.i.i101 = call i32 %86(ptr noundef nonnull %cmd.i98, ptr noundef %adapter, i32 noundef 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %tobool.not.i102 = icmp eq i32 %call.i.i101, 0
  br i1 %tobool.not.i102, label %if.end.i107, label %disable_eswitch.qlcnic_sriov_pf_cfg_eswitch.exit121_crit_edge

disable_eswitch.qlcnic_sriov_pf_cfg_eswitch.exit121_crit_edge: ; preds = %disable_eswitch
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_eswitch.exit121

if.end.i107:                                      ; preds = %disable_eswitch
  %arg.i103 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i98, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %arg.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arg.i103, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %or.i104 = or i32 %90, 1610612736
  store i32 %or.i104, ptr %88, align 4
  %91 = load ptr, ptr %arg.i103, align 4
  %arrayidx5.i106 = getelementptr i32, ptr %91, i32 1
  %92 = ptrtoint ptr %arrayidx5.i106 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or2.i, ptr %arrayidx5.i106, align 4
  %93 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter, align 8
  %hw_ops.i22.i108 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %94, i32 0, i32 46
  %95 = ptrtoint ptr %hw_ops.i22.i108 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_ops.i22.i108, align 4
  %mbx_cmd.i.i109 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %mbx_cmd.i.i109 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mbx_cmd.i.i109, align 4
  %tobool.not.i.i110 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i110, label %if.end.i107.do.end.i117_crit_edge, label %qlcnic_issue_cmd.exit.i113

if.end.i107.do.end.i117_crit_edge:                ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i117

qlcnic_issue_cmd.exit.i113:                       ; preds = %if.end.i107
  %call.i23.i111 = call i32 %98(ptr noundef %adapter, ptr noundef nonnull %cmd.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i111)
  %cmp.not.i112 = icmp eq i32 %call.i23.i111, 0
  br i1 %cmp.not.i112, label %qlcnic_issue_cmd.exit.i113.if.end16.i119_crit_edge, label %qlcnic_issue_cmd.exit.i113.do.end.i117_crit_edge

qlcnic_issue_cmd.exit.i113.do.end.i117_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i117

qlcnic_issue_cmd.exit.i113.if.end16.i119_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i119

do.end.i117:                                      ; preds = %qlcnic_issue_cmd.exit.i113.do.end.i117_crit_edge, %if.end.i107.do.end.i117_crit_edge
  %retval.0.i26.i114 = phi i32 [ %call.i23.i111, %qlcnic_issue_cmd.exit.i113.do.end.i117_crit_edge ], [ -5, %if.end.i107.do.end.i117_crit_edge ]
  %99 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i, align 8
  %dev.i116 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i116, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i26.i114) #10
  br label %if.end16.i119

if.end16.i119:                                    ; preds = %do.end.i117, %qlcnic_issue_cmd.exit.i113.if.end16.i119_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i98) #7
  br label %qlcnic_sriov_pf_cfg_eswitch.exit121

qlcnic_sriov_pf_cfg_eswitch.exit121:              ; preds = %if.end16.i119, %disable_eswitch.qlcnic_sriov_pf_cfg_eswitch.exit121_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i98) #7
  br label %disable_vlan_filtering

disable_vlan_filtering:                           ; preds = %qlcnic_sriov_pf_cfg_eswitch.exit121, %qlcnic_sriov_pf_cfg_eswitch.exit, %qlcnic_sriov_pf_cfg_eswitch.exit.thread, %qlcnic_sriov_pf_cfg_flood.exit, %qlcnic_sriov_pf_cfg_flood.exit.thread
  %err.2 = phi i32 [ %retval.0.i16.i, %qlcnic_sriov_pf_cfg_flood.exit ], [ -5, %qlcnic_sriov_pf_cfg_eswitch.exit ], [ %err.1, %qlcnic_sriov_pf_cfg_eswitch.exit121 ], [ %call.i.i, %qlcnic_sriov_pf_cfg_flood.exit.thread ], [ -12, %qlcnic_sriov_pf_cfg_eswitch.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i122) #7
  %101 = call ptr @memset(ptr %cmd.i122, i32 255, i32 120)
  %102 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i123 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 46
  %104 = ptrtoint ptr %hw_ops.i.i123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw_ops.i.i123, align 4
  %alloc_mbx_args.i.i124 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %alloc_mbx_args.i.i124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %alloc_mbx_args.i.i124, align 4
  %call.i.i125 = call i32 %107(ptr noundef nonnull %cmd.i122, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %tobool.not.i126 = icmp eq i32 %call.i.i125, 0
  br i1 %tobool.not.i126, label %if.end.i129, label %disable_vlan_filtering.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge

disable_vlan_filtering.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge: ; preds = %disable_vlan_filtering
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_pf_cfg_vlan_filtering.exit

if.end.i129:                                      ; preds = %disable_vlan_filtering
  %arg.i127 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i122, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %arg.i127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arg.i127, align 4
  %arrayidx.i128 = getelementptr i32, ptr %109, i32 1
  %110 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4, ptr %arrayidx.i128, align 4
  %flags14.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %111 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags14.i, align 8
  %and.i = and i32 %112, -8388609
  store i32 %and.i, ptr %flags14.i, align 8
  %113 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter, align 8
  %hw_ops.i30.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %114, i32 0, i32 46
  %115 = ptrtoint ptr %hw_ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_ops.i30.i, align 4
  %mbx_cmd.i.i130 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %mbx_cmd.i.i130 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mbx_cmd.i.i130, align 4
  %tobool.not.i.i131 = icmp eq ptr %118, null
  br i1 %tobool.not.i.i131, label %if.end.i129.do.end.i135_crit_edge, label %qlcnic_issue_cmd.exit.i132

if.end.i129.do.end.i135_crit_edge:                ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i135

qlcnic_issue_cmd.exit.i132:                       ; preds = %if.end.i129
  %call.i31.i = call i32 %118(ptr noundef %adapter, ptr noundef nonnull %cmd.i122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool17.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool17.not.i, label %qlcnic_issue_cmd.exit.i132.if.end19.i_crit_edge, label %qlcnic_issue_cmd.exit.i132.do.end.i135_crit_edge

qlcnic_issue_cmd.exit.i132.do.end.i135_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i135

qlcnic_issue_cmd.exit.i132.if.end19.i_crit_edge:  ; preds = %qlcnic_issue_cmd.exit.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

do.end.i135:                                      ; preds = %qlcnic_issue_cmd.exit.i132.do.end.i135_crit_edge, %if.end.i129.do.end.i135_crit_edge
  %retval.0.i34.i = phi i32 [ %call.i31.i, %qlcnic_issue_cmd.exit.i132.do.end.i135_crit_edge ], [ -5, %if.end.i129.do.end.i135_crit_edge ]
  %119 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev.i, align 8
  %dev.i134 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i34.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i135, %qlcnic_issue_cmd.exit.i132.if.end19.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i122) #7
  br label %qlcnic_sriov_pf_cfg_vlan_filtering.exit

qlcnic_sriov_pf_cfg_vlan_filtering.exit:          ; preds = %if.end19.i, %disable_vlan_filtering.qlcnic_sriov_pf_cfg_vlan_filtering.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i122) #7
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_pf_cfg_vlan_filtering.exit, %if.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %qlcnic_sriov_pf_cfg_vlan_filtering.exit ], [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %vp_info) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pf_info) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_set_vf_mac(ptr noundef %netdev, i32 noundef %vf, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.i = icmp eq i16 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs3 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_vfs3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_vfs3, align 2
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %or.i.i = or i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp.not = icmp sgt i32 %conv, %vf
  %or.cond = select i1 %cmp.i.i, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end7, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %is_valid_ether_addr.exit
  %mac_addr = getelementptr i8, ptr %netdev, i32 2375
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %14, %9
  %add.ptr.i55 = getelementptr i8, ptr %netdev, i32 2379
  %15 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i55, align 2
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i56 = icmp eq i32 %or.i, 0
  br i1 %cmp.i56, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1167.not = icmp eq i8 %7, 0
  br i1 %cmp1167.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf_info13 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %vf_info13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vf_info13, align 4
  br label %for.body

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %vp = getelementptr %struct.qlcnic_vf_info, ptr %20, i32 %i.068, i32 15
  %21 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vp, align 4
  %mac14 = getelementptr inbounds %struct.qlcnic_vport, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %mac14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac14, align 4
  %xor.i57 = xor i32 %24, %9
  %add.ptr.i58 = getelementptr %struct.qlcnic_vport, ptr %22, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i58, align 2
  %xor37.i60 = xor i16 %26, %18
  %xor3.i61 = zext i16 %xor37.i60 to i32
  %or.i62 = or i32 %xor.i57, %xor3.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i62)
  %cmp.i63 = icmp eq i32 %or.i62, 0
  br i1 %cmp.i63, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %i.068) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %vf_info19 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %vf_info19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vf_info19, align 4
  %vp21 = getelementptr %struct.qlcnic_vf_info, ptr %28, i32 %vf, i32 15
  %29 = ptrtoint ptr %vp21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vp21, align 4
  %state = getelementptr %struct.qlcnic_vf_info, ptr %28, i32 %vf, i32 5
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %vf) #10
  br label %cleanup

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac22 = getelementptr inbounds %struct.qlcnic_vport, ptr %30, i32 0, i32 7
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %34 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr_len, align 1
  %conv27 = zext i8 %35 to i32
  %36 = call ptr @memcpy(ptr %mac22, ptr %mac, i32 %conv27)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.11, ptr noundef %mac, i32 noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then17, %if.then9, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then17 ], [ -95, %if.then25 ], [ 0, %if.end26 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_set_vf_tx_rate(ptr noundef %netdev, i32 noundef %vf, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) local_unnamed_addr #0 align 64 {
entry:
  %nic_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #7
  %4 = call ptr @memset(ptr %nic_info, i32 255, i32 72)
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i = icmp eq i16 %6, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp.not = icmp sgt i32 %conv, %vf
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vf_info6 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %vf_info6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_info6, align 4
  %vp7 = getelementptr %struct.qlcnic_vf_info, ptr %10, i32 %vf, i32 15
  %11 = ptrtoint ptr %vp7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vp7, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_tx_rate)
  %tobool.not = icmp eq i32 %min_tx_rate, 0
  %spec.store.select = select i1 %tobool.not, i32 100, i32 %min_tx_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_tx_rate)
  %tobool10.not = icmp eq i32 %max_tx_rate, 0
  br i1 %tobool10.not, label %if.end5.land.lhs.true21_crit_edge, label %land.lhs.true

if.end5.land.lhs.true21_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true21

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %max_tx_rate)
  %cmp11 = icmp sgt i32 %max_tx_rate, 9999
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %max_tx_rate)
  %cmp13 = icmp sgt i32 %spec.store.select, %max_tx_rate
  %or.cond = or i1 %cmp11, %cmp13
  br i1 %or.cond, label %if.then15, label %land.lhs.true.land.lhs.true21_crit_edge

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true21

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %spec.store.select, i32 noundef 9999) #10
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true.land.lhs.true21_crit_edge, %if.end5.land.lhs.true21_crit_edge
  %spec.store.select59 = phi i32 [ 10000, %if.end5.land.lhs.true21_crit_edge ], [ %max_tx_rate, %land.lhs.true.land.lhs.true21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %spec.store.select59)
  %cmp22 = icmp sgt i32 %spec.store.select, %spec.store.select59
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %spec.store.select)
  %cmp25 = icmp slt i32 %spec.store.select, 100
  %or.cond93 = or i1 %cmp25, %cmp22
  br i1 %or.cond93, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.13, i32 noundef 100, i32 noundef %spec.store.select59) #10
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true21
  %state = getelementptr %struct.qlcnic_vf_info, ptr %10, i32 %vf, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %if.end28.if.end43_crit_edge, label %if.then31

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = sdiv i32 %spec.store.select59, 100
  %.pre96 = trunc i32 %.pre to i16
  %.pre97 = udiv i32 %spec.store.select, 100
  %.pre98 = trunc i32 %.pre97 to i16
  br label %if.end43

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @qlcnic_sriov_get_vf_vport_info(ptr noundef %add.ptr.i, ptr noundef nonnull %nic_info, i16 noundef zeroext %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.then31
  %div = sdiv i32 %spec.store.select59, 100
  %conv36 = trunc i32 %div to i16
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 10
  %18 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv36, ptr %max_tx_bw, align 2
  %div3795 = udiv i32 %spec.store.select, 100
  %conv38 = trunc i32 %div3795 to i16
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 9
  %19 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv38, ptr %min_tx_bw, align 4
  %bit_offsets = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 29
  %20 = ptrtoint ptr %bit_offsets to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %bit_offsets, align 2
  %call39 = call fastcc i32 @qlcnic_sriov_pf_set_vport_info(ptr noundef %add.ptr.i, ptr noundef nonnull %nic_info, i16 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end35.if.end43_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %if.end35.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  %conv50.pre-phi = phi i16 [ %.pre98, %if.end28.if.end43_crit_edge ], [ %conv38, %if.end35.if.end43_crit_edge ]
  %div4994.pre-phi = phi i32 [ %.pre97, %if.end28.if.end43_crit_edge ], [ %div3795, %if.end35.if.end43_crit_edge ]
  %conv45.pre-phi = phi i16 [ %.pre96, %if.end28.if.end43_crit_edge ], [ %conv36, %if.end35.if.end43_crit_edge ]
  %div44.pre-phi = phi i32 [ %.pre, %if.end28.if.end43_crit_edge ], [ %div, %if.end35.if.end43_crit_edge ]
  %max_tx_bw46 = getelementptr inbounds %struct.qlcnic_vport, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %max_tx_bw46 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv45.pre-phi, ptr %max_tx_bw46, align 2
  %conv48 = and i32 %div44.pre-phi, 65535
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.14, i32 noundef %spec.store.select59, i32 noundef %conv48, i32 noundef %vf) #10
  %min_tx_bw51 = getelementptr inbounds %struct.qlcnic_vport, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %min_tx_bw51 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv50.pre-phi, ptr %min_tx_bw51, align 2
  %conv53 = and i32 %div4994.pre-phi, 65535
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.15, i32 noundef %spec.store.select, i32 noundef %conv53, i32 noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end35.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then27, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %if.then27 ], [ 0, %if.end43 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.then31.cleanup_crit_edge ], [ -5, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_get_vf_vport_info(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_pf_set_vport_info(ptr noundef %adapter, ptr nocapture noundef readonly %npar_info, i16 noundef zeroext %vport_id) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %vport_id to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 1
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %arrayidx, align 4
  %bit_offsets = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 29
  %10 = ptrtoint ptr %bit_offsets to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bit_offsets, align 2
  %conv1 = zext i16 %11 to i32
  %12 = load ptr, ptr %arg, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv1, ptr %arrayidx4, align 4
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 9
  %14 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_tx_bw, align 4
  %conv5 = zext i16 %15 to i32
  %shl6 = shl nuw i32 %conv5, 16
  %16 = load ptr, ptr %arg, align 4
  %arrayidx9 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %or10 = or i32 %18, %shl6
  store i32 %or10, ptr %arrayidx9, align 4
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 10
  %19 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_tx_bw, align 2
  %conv11 = zext i16 %20 to i32
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 7
  %21 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_tx_ques, align 4
  %conv12 = zext i16 %22 to i32
  %shl13 = shl nuw i32 %conv12, 16
  %or14 = or i32 %shl13, %conv11
  %23 = load ptr, ptr %arg, align 4
  %arrayidx17 = getelementptr i32, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or14, ptr %arrayidx17, align 4
  %max_tx_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 17
  %25 = ptrtoint ptr %max_tx_mac_filters to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_tx_mac_filters, align 4
  %conv18 = zext i16 %26 to i32
  %27 = load ptr, ptr %arg, align 4
  %arrayidx21 = getelementptr i32, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv18, ptr %arrayidx21, align 4
  %max_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 18
  %29 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_rx_mcast_mac_filters, align 2
  %conv22 = zext i16 %30 to i32
  %shl23 = shl nuw i32 %conv22, 16
  %31 = load ptr, ptr %arg, align 4
  %arrayidx26 = getelementptr i32, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx26, align 4
  %or27 = or i32 %33, %shl23
  store i32 %or27, ptr %arrayidx26, align 4
  %max_rx_ucast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 19
  %34 = ptrtoint ptr %max_rx_ucast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_rx_ucast_mac_filters, align 4
  %conv28 = zext i16 %35 to i32
  %max_rx_ip_addr = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 20
  %36 = ptrtoint ptr %max_rx_ip_addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_rx_ip_addr, align 2
  %conv29 = zext i16 %37 to i32
  %shl30 = shl nuw i32 %conv29, 16
  %or31 = or i32 %shl30, %conv28
  %38 = load ptr, ptr %arg, align 4
  %arrayidx34 = getelementptr i32, ptr %38, i32 5
  %39 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or31, ptr %arrayidx34, align 4
  %max_rx_lro_flow = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 21
  %40 = ptrtoint ptr %max_rx_lro_flow to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_rx_lro_flow, align 4
  %conv35 = zext i16 %41 to i32
  %max_rx_status_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 22
  %42 = ptrtoint ptr %max_rx_status_rings to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_rx_status_rings, align 2
  %conv36 = zext i16 %43 to i32
  %shl37 = shl nuw i32 %conv36, 16
  %or38 = or i32 %shl37, %conv35
  %44 = load ptr, ptr %arg, align 4
  %arrayidx41 = getelementptr i32, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or38, ptr %arrayidx41, align 4
  %max_rx_buf_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 23
  %46 = ptrtoint ptr %max_rx_buf_rings to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max_rx_buf_rings, align 4
  %conv42 = zext i16 %47 to i32
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 8
  %48 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max_rx_ques, align 2
  %conv43 = zext i16 %49 to i32
  %shl44 = shl nuw i32 %conv43, 16
  %or45 = or i32 %shl44, %conv42
  %50 = load ptr, ptr %arg, align 4
  %arrayidx48 = getelementptr i32, ptr %50, i32 7
  %51 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or45, ptr %arrayidx48, align 4
  %max_tx_vlan_keys = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 24
  %52 = ptrtoint ptr %max_tx_vlan_keys to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max_tx_vlan_keys, align 2
  %conv49 = zext i16 %53 to i32
  %54 = load ptr, ptr %arg, align 4
  %arrayidx52 = getelementptr i32, ptr %54, i32 8
  %55 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv49, ptr %arrayidx52, align 4
  %max_local_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 30
  %56 = ptrtoint ptr %max_local_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max_local_ipv6_addrs, align 4
  %conv53 = zext i16 %57 to i32
  %shl54 = shl nuw i32 %conv53, 16
  %58 = load ptr, ptr %arg, align 4
  %arrayidx57 = getelementptr i32, ptr %58, i32 8
  %59 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx57, align 4
  %or58 = or i32 %60, %shl54
  store i32 %or58, ptr %arrayidx57, align 4
  %max_remote_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 31
  %61 = ptrtoint ptr %max_remote_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %max_remote_ipv6_addrs, align 2
  %conv59 = zext i16 %62 to i32
  %63 = load ptr, ptr %arg, align 4
  %arrayidx62 = getelementptr i32, ptr %63, i32 9
  %64 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv59, ptr %arrayidx62, align 4
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 8
  %hw_ops.i86 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %hw_ops.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_ops.i86, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i87 = call i32 %70(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool64.not = icmp eq i32 %call.i87, 0
  br i1 %tobool64.not, label %qlcnic_issue_cmd.exit.if.end66_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end66_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i90 = phi i32 [ %call.i87, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i90) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end66_crit_edge
  %retval.0.i91 = phi i32 [ %retval.0.i90, %do.end ], [ 0, %qlcnic_issue_cmd.exit.if.end66_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i91, %if.end66 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_set_vf_vlan(ptr noundef %netdev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.i = icmp eq i16 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp.not = icmp sgt i32 %conv, %vf
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %conv4 = zext i8 %qos to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %qos)
  %cmp5 = icmp ugt i8 %qos, 7
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp10.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp10.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %conv14 = zext i16 %vlan to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp15 = icmp ugt i16 %vlan, 4095
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.16, i32 noundef 4095) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %vf_info19 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %vf_info19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf_info19, align 4
  %arrayidx = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf
  %vp20 = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 15
  %10 = ptrtoint ptr %vp20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp20, align 4
  %state = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.17, i32 noundef %vf) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %sriov_vlans = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 3
  %15 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_vlans, align 4
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_allowed_vlans, align 2
  %conv24 = zext i16 %18 to i32
  %mul = shl nuw nsw i32 %conv24, 1
  %19 = call ptr @memset(ptr %16, i32 0, i32 %mul)
  %20 = zext i16 %vlan to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %vlan, label %sw.default [
    i16 4095, label %sw.bb
    i16 0, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %vlan_mode, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_mode27 = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %vlan_mode27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %vlan_mode27, align 2
  %qos28 = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 5
  %23 = ptrtoint ptr %qos28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %qos28, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_mode29 = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %vlan_mode29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %vlan_mode29, align 2
  tail call void @qlcnic_sriov_add_vlan_id(ptr noundef %3, ptr noundef %arrayidx, i16 noundef zeroext %vlan) #7
  %qos30 = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %qos30 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %qos, ptr %qos30, align 1
  %pvid = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 3
  %26 = ptrtoint ptr %pvid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %vlan, ptr %pvid, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.18, i32 noundef %conv14, i32 noundef %conv4, i32 noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then22, %if.then17, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ -95, %if.then22 ], [ 0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -93, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_add_vlan_id(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_get_vf_config(ptr nocapture noundef readonly %netdev, i32 noundef %vf, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.i = icmp eq i16 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp.not = icmp sgt i32 %conv, %vf
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf_info, align 4
  %vp6 = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 15
  %10 = ptrtoint ptr %vp6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp6, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %mac7 = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %mac, ptr %mac7, i32 6)
  %vlan_mode.i = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %vlan_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vlan_mode.i, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %14, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 2, label %if.end5.qlcnic_sriov_get_vf_vlan.exit_crit_edge
    i8 0, label %sw.bb3.i
  ]

if.end5.qlcnic_sriov_get_vf_vlan.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_get_vf_vlan.exit

sw.bb.i:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %pvid.i = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pvid.i, align 2
  %conv1.i = zext i16 %17 to i32
  br label %qlcnic_sriov_get_vf_vlan.exit

sw.bb3.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_get_vf_vlan.exit

sw.default.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %14 to i32
  %netdev.i = getelementptr i8, ptr %netdev, i32 2316
  %18 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %conv.i, i32 noundef %vf) #10
  br label %qlcnic_sriov_get_vf_vlan.exit

qlcnic_sriov_get_vf_vlan.exit:                    ; preds = %sw.default.i, %sw.bb3.i, %sw.bb.i, %if.end5.qlcnic_sriov_get_vf_vlan.exit_crit_edge
  %vlan.0.i = phi i32 [ 0, %sw.default.i ], [ 0, %sw.bb3.i ], [ %conv1.i, %sw.bb.i ], [ 4095, %if.end5.qlcnic_sriov_get_vf_vlan.exit_crit_edge ]
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %20 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %vlan.0.i, ptr %vlan, align 4
  %qos = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 5
  %21 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %qos, align 1
  %conv9 = zext i8 %22 to i32
  %qos10 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %23 = ptrtoint ptr %qos10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9, ptr %qos10, align 4
  %spoofchk = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 6
  %24 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spoofchk, align 2, !range !139
  %26 = zext i8 %25 to i32
  %spoofchk12 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %27 = ptrtoint ptr %spoofchk12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %spoofchk12, align 4
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_tx_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %29)
  %cmp14 = icmp eq i16 %29, 100
  %conv13 = zext i16 %29 to i32
  %mul = mul nuw nsw i32 %conv13, 100
  %mul.sink = select i1 %cmp14, i32 0, i32 %mul
  %30 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.sink, ptr %30, align 4
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 2
  %32 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %min_tx_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp22 = icmp eq i16 %33, 1
  %conv21 = zext i16 %33 to i32
  %mul28 = mul nuw nsw i32 %conv21, 100
  %mul28.sink = select i1 %cmp22, i32 0, i32 %mul28
  %34 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul28.sink, ptr %34, align 4
  %36 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %vf, ptr %ivi, align 4
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_get_vf_vlan.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlcnic_sriov_get_vf_vlan.exit ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_set_vf_spoofchk(ptr noundef %netdev, i32 noundef %vf, i1 noundef zeroext %chk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %chk to i8
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.i = icmp eq i16 %5, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp.not = icmp sgt i32 %conv, %vf
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vf_info6 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %vf_info6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf_info6, align 4
  %vp7 = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 15
  %10 = ptrtoint ptr %vp7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp7, align 4
  %state = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %vf, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.19, i32 noundef %vf) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %spoofchk = getelementptr inbounds %struct.qlcnic_vport, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %spoofchk, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then9 ], [ 0, %if.end10 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_func_to_index(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qlcnic_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_free_vlans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_configure_opmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qlcnic_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_alloc_vlans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_channel_cfg_cmd(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.qlcnic_cmd_args, align 4
  %defvp_info.i = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i16
  %adapter3 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %adapter3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %sriov4 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %sriov4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov4, align 8
  %req_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %10 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req_hdr, align 4
  %cmd_op = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7, label %if.then.err_out_crit_edge

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.then7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %defvp_info.i) #7
  %14 = call ptr @memset(ptr %defvp_info.i, i32 255, i32 72)
  %call.i = call fastcc i32 @qlcnic_sriov_pf_cal_res_limit(ptr noundef %5, ptr noundef nonnull %defvp_info.i, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlcnic_sriov_set_vf_vport_info.exit.thread

qlcnic_sriov_set_vf_vport_info.exit.thread:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %defvp_info.i) #7
  br label %if.then10

if.end.i:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i.i) #7
  %15 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 120)
  %call.i.i = tail call i32 @qlcnic_sriov_func_to_index(ptr noundef %5, i8 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge, label %if.end.i.i

if.end.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_set_vf_vport_info.exit.thread66

if.end.i.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %sriov.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %sriov.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov.i.i, align 8
  %vf_info.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %vf_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf_info.i.i, align 4
  %vp1.i.i = getelementptr %struct.qlcnic_vf_info, ptr %21, i32 %call.i.i, i32 15
  %22 = ptrtoint ptr %vp1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vp1.i.i, align 4
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 46
  %24 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_ops.i.i.i, align 4
  %alloc_mbx_args.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %alloc_mbx_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alloc_mbx_args.i.i.i, align 4
  %call.i.i.i = call i32 %27(ptr noundef nonnull %cmd.i.i, ptr noundef %5, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge

if.end.i.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_set_vf_vport_info.exit.thread66

if.end4.i.i:                                      ; preds = %if.end.i.i
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %or.i.i = or i32 %shl.i.i, 3
  %arg.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.i, ptr %arrayidx5.i.i, align 4
  %spoofchk.i.i = getelementptr inbounds %struct.qlcnic_vport, ptr %23, i32 0, i32 6
  %31 = ptrtoint ptr %spoofchk.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %spoofchk.i.i, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool6.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.end42.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end42.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mac11.i.i = getelementptr inbounds %struct.qlcnic_vport, ptr %23, i32 0, i32 7
  %33 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arg.i.i, align 4
  %arrayidx14.i.i = getelementptr i32, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14.i.i, align 4
  %or15.i.i = or i32 %36, 266
  store i32 %or15.i.i, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.qlcnic_vport, ptr %23, i32 0, i32 7, i32 5
  %37 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %38 to i32
  %arrayidx18.i.i = getelementptr %struct.qlcnic_vport, ptr %23, i32 0, i32 7, i32 4
  %39 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %40 to i32
  %shl20.i.i = shl nuw nsw i32 %conv19.i.i, 8
  %or21.i.i = or i32 %shl20.i.i, %conv17.i.i
  %arrayidx22.i.i = getelementptr %struct.qlcnic_vport, ptr %23, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %42 to i32
  %shl24.i.i = shl nuw nsw i32 %conv23.i.i, 16
  %or25.i.i = or i32 %or21.i.i, %shl24.i.i
  %arrayidx26.i.i = getelementptr %struct.qlcnic_vport, ptr %23, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %44 to i32
  %shl28.i.i = shl nuw i32 %conv27.i.i, 24
  %or29.i.i = or i32 %or25.i.i, %shl28.i.i
  %45 = load ptr, ptr %arg.i.i, align 4
  %arrayidx32.i.i = getelementptr i32, ptr %45, i32 4
  %46 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or29.i.i, ptr %arrayidx32.i.i, align 4
  %arrayidx33.i.i = getelementptr %struct.qlcnic_vport, ptr %23, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx33.i.i, align 1
  %conv34.i.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %mac11.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mac11.i.i, align 1
  %conv36.i.i = zext i8 %50 to i32
  %shl37.i.i = shl nuw nsw i32 %conv36.i.i, 8
  %or38.i.i = or i32 %shl37.i.i, %conv34.i.i
  %51 = load ptr, ptr %arg.i.i, align 4
  %arrayidx41.i.i = getelementptr i32, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or38.i.i, ptr %arrayidx41.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end42.i.i_crit_edge
  %vlan_mode.i.i = getelementptr inbounds %struct.qlcnic_vport, ptr %23, i32 0, i32 4
  %53 = ptrtoint ptr %vlan_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vlan_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp44.i.i = icmp eq i8 %54, 1
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end42.i.i.if.end57.i.i_crit_edge

if.end42.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.then46.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arg.i.i, align 4
  %arrayidx49.i.i = getelementptr i32, ptr %56, i32 2
  %57 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx49.i.i, align 4
  %or50.i.i = or i32 %58, 64
  store i32 %or50.i.i, ptr %arrayidx49.i.i, align 4
  %pvid.i.i = getelementptr inbounds %struct.qlcnic_vport, ptr %23, i32 0, i32 3
  %59 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pvid.i.i, align 2
  %conv51.i.i = zext i16 %60 to i32
  %shl52.i.i = shl nuw nsw i32 %conv51.i.i, 8
  %61 = load ptr, ptr %arg.i.i, align 4
  %arrayidx55.i.i = getelementptr i32, ptr %61, i32 3
  %62 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx55.i.i, align 4
  %or56.i.i = or i32 %63, %shl52.i.i
  store i32 %or56.i.i, ptr %arrayidx55.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then46.i.i, %if.end42.i.i.if.end57.i.i_crit_edge
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %5, align 8
  %hw_ops.i85.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %65, i32 0, i32 46
  %66 = ptrtoint ptr %hw_ops.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_ops.i85.i.i, align 4
  %mbx_cmd.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i, label %if.end57.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge, label %qlcnic_issue_cmd.exit.i.i

if.end57.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge: ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_set_vf_vport_info.exit

qlcnic_issue_cmd.exit.i.i:                        ; preds = %if.end57.i.i
  %call.i86.i.i = call i32 %69(ptr noundef %5, ptr noundef nonnull %cmd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i.i)
  %tobool59.not.i.i = icmp eq i32 %call.i86.i.i, 0
  br i1 %tobool59.not.i.i, label %if.end20.thread76, label %qlcnic_issue_cmd.exit.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge

qlcnic_issue_cmd.exit.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge: ; preds = %qlcnic_issue_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_sriov_set_vf_vport_info.exit

if.end20.thread76:                                ; preds = %qlcnic_issue_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %defvp_info.i) #7
  br label %if.end23

qlcnic_sriov_set_vf_vport_info.exit.thread66:     ; preds = %if.end.i.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge, %if.end.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i.i, %if.end.i.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge ], [ %call.i.i, %if.end.i.qlcnic_sriov_set_vf_vport_info.exit.thread66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %defvp_info.i) #7
  br label %if.then10

qlcnic_sriov_set_vf_vport_info.exit:              ; preds = %qlcnic_issue_cmd.exit.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge, %if.end57.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge
  %retval.0.i89.i.i = phi i32 [ %call.i86.i.i, %qlcnic_issue_cmd.exit.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge ], [ -5, %if.end57.i.i.qlcnic_sriov_set_vf_vport_info.exit_crit_edge ]
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %5, i32 0, i32 4
  %70 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i89.i.i) #10
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %defvp_info.i) #7
  br label %if.then10

if.then10:                                        ; preds = %qlcnic_sriov_set_vf_vport_info.exit, %qlcnic_sriov_set_vf_vport_info.exit.thread66, %qlcnic_sriov_set_vf_vport_info.exit.thread
  %retval.0.i65 = phi i32 [ -5, %qlcnic_sriov_set_vf_vport_info.exit.thread ], [ %retval.0.i89.i.i, %qlcnic_sriov_set_vf_vport_info.exit ], [ %retval.0.i.i.ph, %qlcnic_sriov_set_vf_vport_info.exit.thread66 ]
  %call11 = call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %5, i8 noundef zeroext 0, i16 noundef zeroext %conv)
  br label %err_out

if.else:                                          ; preds = %entry
  %vp2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %72 = ptrtoint ptr %vp2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vp2, align 4
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %vlan_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp14 = icmp eq i8 %75, 2
  br i1 %cmp14, label %if.then16, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %9, i32 0, i32 4
  %76 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_allowed_vlans, align 2
  %conv17 = zext i16 %77 to i32
  %mul = shl nuw nsw i32 %conv17, 1
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_vlans, align 4
  %80 = call ptr @memset(ptr %79, i32 0, i32 %mul)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.else.if.end20_crit_edge
  %call19 = tail call fastcc i32 @qlcnic_sriov_pf_config_vport(ptr noundef %5, i8 noundef zeroext 0, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.end20.err_out_crit_edge

if.end20.err_out_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %if.end20.thread76
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arg, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %or = or i32 %84, 33554432
  store i32 %or, ptr %82, align 4
  %85 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %req_hdr, align 4
  %cmd_op25 = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %cmd_op25 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %cmd_op25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp27 = icmp eq i8 %88, 0
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 5
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 3, ptr noundef %state) #7
  br label %cleanup

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #7
  br label %cleanup

err_out:                                          ; preds = %if.end20.err_out_crit_edge, %if.then10, %if.then.err_out_crit_edge
  %err.075 = phi i32 [ %call19, %if.end20.err_out_crit_edge ], [ %retval.0.i65, %if.then10 ], [ %call, %if.then.err_out_crit_edge ]
  %arg34 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %arg34 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arg34, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %or36 = or i32 %92, 67108864
  store i32 %or36, ptr %90, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.else30, %if.then29
  %err.074 = phi i32 [ 0, %if.then29 ], [ 0, %if.else30 ], [ %err.075, %err_out ]
  ret i32 %err.074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_sriov_pf_get_acl_cmd(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %vp2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp2, align 4
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vlan_mode, align 2
  %adapter3 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %adapter3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %sriov4 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %sriov4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov4, align 8
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or = or i32 %15, 33554432
  store i32 %or, ptr %13, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device1.i, align 2
  %20 = and i16 %19, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %20)
  %21 = icmp eq i16 %20, -32704
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %or.cond = select i1 %21, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  %arrayidx11 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 258, ptr %arrayidx11, align 4
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %11, i32 0, i32 4
  %26 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_allowed_vlans, align 2
  %conv12 = zext i16 %27 to i32
  %shl = shl nuw i32 %conv12, 16
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pvid = getelementptr inbounds %struct.qlcnic_vport, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pvid, align 2
  %conv19 = zext i16 %29 to i32
  %shl20 = shl nuw i32 %conv19, 16
  %or21 = or i32 %shl20, 257
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb16, %sw.bb
  %.sink38 = phi i32 [ 2, %sw.bb ], [ 1, %sw.bb16 ]
  %shl.sink = phi i32 [ %shl, %sw.bb ], [ %or21, %sw.bb16 ]
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arg, align 4
  %arrayidx15 = getelementptr i32, ptr %31, i32 %.sink38
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl.sink, ptr %arrayidx15, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_guest_vlan_cmd(ptr nocapture noundef readonly %tran, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %tran, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %vp3 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %vp3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp3, align 4
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vlan_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp eq i8 %7, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg5 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arg5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg5, align 4
  %arrayidx6 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %conv730 = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv730)
  %tobool.not = icmp eq i32 %conv730, 0
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %sriov1.i31 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %sriov1.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov1.i31, align 8
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %19)
  %cmp.i.i = icmp eq i16 %19, -32720
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then8.if.end.i_crit_edge

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then8
  %call2.i = tail call zeroext i1 @qlcnic_sriov_check_any_vlan(ptr noundef %1) #7
  br i1 %call2.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then8.if.end.i_crit_edge
  %20 = ptrtoint ptr %arg5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg5, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %23, 16
  %conv.i = trunc i32 %shr.i to i16
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_ctx_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qlcnic_sriov_add_vlan_id(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %conv.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i.i, align 8
  %device1.i43.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %device1.i43.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device1.i43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %29)
  %cmp.i44.i = icmp eq i16 %29, -32720
  br i1 %cmp.i44.i, label %if.then6.i, label %if.end4.i.if.end11.i_crit_edge

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  %call7.i = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %3, ptr noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end11.i_crit_edge, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  %call12.i = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %3, ptr noundef %1, i16 noundef zeroext %conv.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 8
  %device1.i46.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %device1.i46.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device1.i46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %33)
  %cmp.i47.i = icmp eq i16 %33, -32720
  br i1 %cmp.i47.i, label %if.then16.i, label %if.then14.i.cleanup_crit_edge

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %3, ptr noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 1) #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qlcnic_sriov_add_vlan_id(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %conv.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @qlcnic_sriov_check_any_vlan(ptr noundef %1) #7
  br i1 %call.i, label %if.end.i38, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i38:                                       ; preds = %if.else
  %34 = ptrtoint ptr %arg5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arg5, align 4
  %arrayidx.i33 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i33, align 4
  %shr.i34 = lshr i32 %37, 16
  %conv.i35 = trunc i32 %shr.i34 to i16
  %rx_ctx_id.i36 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %rx_ctx_id.i36 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_ctx_id.i36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i37 = icmp eq i16 %39, 0
  br i1 %tobool.not.i37, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qlcnic_sriov_del_vlan_id(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %conv.i35) #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i38
  %call4.i = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %3, ptr noundef %1, i16 noundef zeroext %conv.i35, i8 noundef zeroext 2) #7
  tail call void @qlcnic_sriov_del_vlan_id(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %conv.i35) #7
  %pdev.i.i39 = getelementptr inbounds %struct.qlcnic_adapter, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %pdev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i.i39, align 8
  %device1.i.i40 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %device1.i.i40 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %device1.i.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %43)
  %cmp.i.i41 = icmp eq i16 %43, -32720
  br i1 %cmp.i.i41, label %if.then6.i43, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i43:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i42 = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %3, ptr noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i43, %if.end3.i.cleanup_crit_edge, %if.then2.i, %if.else.cleanup_crit_edge, %if.end19.i, %if.then16.i, %if.then14.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.then3.i, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink50 = phi i32 [ 67108864, %entry.cleanup_crit_edge ], [ 67108864, %land.lhs.true.i.cleanup_crit_edge ], [ 67108864, %if.then6.i.cleanup_crit_edge ], [ 67108864, %if.then16.i ], [ 67108864, %if.then14.i.cleanup_crit_edge ], [ 67108864, %if.else.cleanup_crit_edge ], [ 33554432, %if.end19.i ], [ 33554432, %if.then3.i ], [ 33554432, %if.then2.i ], [ 33554432, %if.then6.i43 ], [ 33554432, %if.end3.i.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %land.lhs.true.i.cleanup_crit_edge ], [ %call7.i, %if.then6.i.cleanup_crit_edge ], [ %call12.i, %if.then16.i ], [ %call12.i, %if.then14.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end19.i ], [ 0, %if.then3.i ], [ 0, %if.then2.i ], [ 0, %if.then6.i43 ], [ 0, %if.end3.i.cleanup_crit_edge ]
  %arg13 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arg13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arg13, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %or15 = or i32 %47, %.sink50
  store i32 %or15, ptr %45, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_pf_cal_res_limit(ptr noundef %adapter, ptr nocapture noundef %info, i16 noundef zeroext %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %ff_max = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_allowed_vlans, align 2
  %conv3 = trunc i16 %func to i8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %conv3)
  %cmp.i = icmp eq i8 %7, %conv3
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i:                                        ; preds = %entry
  %call.i = tail call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info9.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %vf_info9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf_info9.i, align 4
  %vp.i = getelementptr %struct.qlcnic_vf_info, ptr %9, i32 %call.i, i32 15
  %10 = ptrtoint ptr %vp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %entry.if.end_crit_edge
  %retval.0.i.ph.in.in = phi ptr [ %11, %if.then8.i ], [ %3, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.ph.in.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %retval.0.i.ph.in168 = load i16, ptr %retval.0.i.ph.in.in, align 2
  %add = add i16 %5, 1
  %num_vfs5 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %num_vfs5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_vfs5, align 2
  %conv6 = zext i8 %14 to i32
  %add7 = add nuw nsw i32 %conv6, 1
  %bit_offsets = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 29
  %15 = ptrtoint ptr %bit_offsets to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %bit_offsets, align 2
  %num_tx_queues = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_tx_queues, align 2
  %div.rhs.trunc = trunc i32 %add7 to i16
  %div163 = udiv i16 %17, %div.rhs.trunc
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 7
  %18 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %div163, ptr %max_tx_ques, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %22)
  %cmp.i159 = icmp eq i16 %22, -32720
  %spec.select = select i1 %cmp.i159, i16 2, i16 %add
  %num_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %num_rx_mcast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_rx_mcast_mac_filters, align 4
  %max_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 18
  %25 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %max_rx_mcast_mac_filters, align 2
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pci_func, align 1
  %30 = zext i8 %29 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %func)
  %cmp16 = icmp eq i16 %30, %func
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 9
  %31 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %min_tx_bw, align 4
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 10
  %32 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 100, ptr %max_tx_bw, align 2
  %num_rx_ucast_mac_filters = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %num_rx_ucast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_rx_ucast_mac_filters, align 2
  %35 = zext i8 %14 to i16
  %36 = mul i16 %spec.select, %35
  %conv21 = sub i16 %34, %36
  %max_rx_ucast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 19
  %37 = ptrtoint ptr %max_rx_ucast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv21, ptr %max_rx_ucast_mac_filters, align 4
  %38 = ptrtoint ptr %ff_max to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ff_max, align 4
  %conv26 = sub i16 %39, %36
  %max_tx_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 17
  %40 = ptrtoint ptr %max_tx_mac_filters to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv26, ptr %max_tx_mac_filters, align 4
  %41 = ptrtoint ptr %num_rx_mcast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_rx_mcast_mac_filters, align 4
  %43 = mul i16 %36, -7
  %conv33 = add i16 %42, %43
  %44 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv33, ptr %max_rx_mcast_mac_filters, align 2
  %45 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_tx_queues, align 2
  %47 = ptrtoint ptr %num_vfs5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_vfs5, align 2
  %conv38 = zext i8 %48 to i16
  %sub39 = sub i16 %46, %conv38
  br label %if.end60

if.else:                                          ; preds = %if.end
  %call43 = tail call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.else.cleanup_crit_edge, label %if.end47

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %49 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vf_info, align 4
  %vp48 = getelementptr %struct.qlcnic_vf_info, ptr %50, i32 %call43, i32 15
  %51 = ptrtoint ptr %vp48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vp48, align 4
  %min_tx_bw49 = getelementptr inbounds %struct.qlcnic_vport, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %min_tx_bw49 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %min_tx_bw49, align 2
  %min_tx_bw50 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 9
  %55 = ptrtoint ptr %min_tx_bw50 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %min_tx_bw50, align 4
  %max_tx_bw51 = getelementptr inbounds %struct.qlcnic_vport, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %max_tx_bw51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max_tx_bw51, align 2
  %max_tx_bw52 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 10
  %58 = ptrtoint ptr %max_tx_bw52 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %max_tx_bw52, align 2
  %max_rx_ucast_mac_filters53 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 19
  %59 = ptrtoint ptr %max_rx_ucast_mac_filters53 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %spec.select, ptr %max_rx_ucast_mac_filters53, align 4
  %max_tx_mac_filters54 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 17
  %60 = ptrtoint ptr %max_tx_mac_filters54 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %spec.select, ptr %max_tx_mac_filters54, align 4
  %mul56 = mul i16 %spec.select, 7
  %61 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %mul56, ptr %max_rx_mcast_mac_filters, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.end47, %if.then18
  %storemerge = phi i16 [ 1, %if.end47 ], [ %sub39, %if.then18 ]
  %62 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %storemerge, ptr %max_tx_ques, align 4
  %num_destip = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 8
  %63 = ptrtoint ptr %num_destip to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_destip, align 4
  %div62164 = udiv i16 %64, %div.rhs.trunc
  %max_rx_ip_addr = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 20
  %65 = ptrtoint ptr %max_rx_ip_addr to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %div62164, ptr %max_rx_ip_addr, align 2
  %num_rx_status_rings = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 7
  %66 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_rx_status_rings, align 2
  %div65165 = udiv i16 %67, %div.rhs.trunc
  %max_rx_status_rings = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 22
  %68 = ptrtoint ptr %max_rx_status_rings to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %div65165, ptr %max_rx_status_rings, align 2
  %num_rx_buf_rings = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 6
  %69 = ptrtoint ptr %num_rx_buf_rings to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_rx_buf_rings, align 4
  %div68166 = udiv i16 %70, %div.rhs.trunc
  %max_rx_buf_rings = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 23
  %71 = ptrtoint ptr %max_rx_buf_rings to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %div68166, ptr %max_rx_buf_rings, align 4
  %num_rx_queues = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 4
  %72 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %num_rx_queues, align 4
  %div71167 = udiv i16 %73, %div.rhs.trunc
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 8
  %74 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %div71167, ptr %max_rx_ques, align 2
  %num_lro_flows_supported = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 9
  %75 = ptrtoint ptr %num_lro_flows_supported to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_lro_flows_supported, align 4
  %div73 = udiv i32 %76, %add7
  %conv74 = trunc i32 %div73 to i16
  %max_rx_lro_flow = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 21
  %77 = ptrtoint ptr %max_rx_lro_flow to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv74, ptr %max_rx_lro_flow, align 4
  %num_txvlan_keys = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 3
  %78 = ptrtoint ptr %num_txvlan_keys to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %num_txvlan_keys, align 2
  %max_tx_vlan_keys = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 24
  %80 = ptrtoint ptr %max_tx_vlan_keys to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %max_tx_vlan_keys, align 2
  %max_local_ipv6_addrs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 10
  %81 = ptrtoint ptr %max_local_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %max_local_ipv6_addrs, align 4
  %max_local_ipv6_addrs75 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 30
  %83 = ptrtoint ptr %max_local_ipv6_addrs75 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %max_local_ipv6_addrs75, align 4
  %max_remote_ipv6_addrs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 7, i32 11
  %84 = ptrtoint ptr %max_remote_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %max_remote_ipv6_addrs, align 2
  %max_remote_ipv6_addrs76 = getelementptr inbounds %struct.qlcnic_info, ptr %info, i32 0, i32 31
  %86 = ptrtoint ptr %max_remote_ipv6_addrs76 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %max_remote_ipv6_addrs76, align 2
  %call78 = tail call fastcc i32 @qlcnic_sriov_pf_set_vport_info(ptr noundef %adapter, ptr noundef %info, i16 noundef zeroext %retval.0.i.ph.in168)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.else.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.else.cleanup_crit_edge ], [ %call78, %if.end60 ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qlcnic_sriov_check_any_vlan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %adapter, ptr nocapture noundef readonly %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vp1 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 15
  %0 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 120) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = tail call i32 %8(ptr noundef nonnull %call7.i.i, ptr noundef %adapter, i32 noundef 69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.free_cmd_crit_edge

if.end.free_cmd_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_cmd

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %10 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vf, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov1.i, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pci_func.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %11)
  %cmp.i = icmp eq i8 %17, %11
  br i1 %cmp.i, label %if.end5.if.end8_crit_edge, label %if.else.i

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else.i:                                        ; preds = %if.end5
  %call.i68 = tail call i32 @qlcnic_sriov_func_to_index(ptr noundef %adapter, i8 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i68)
  %cmp6.i = icmp sgt i32 %call.i68, -1
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i.free_args_crit_edge

if.else.i.free_args_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_args

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf_info9.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %15, i32 0, i32 9
  %18 = ptrtoint ptr %vf_info9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vf_info9.i, align 4
  %vp.i = getelementptr %struct.qlcnic_vf_info, ptr %19, i32 %call.i68, i32 15
  %20 = ptrtoint ptr %vp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vp.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then8.i, %if.end5.if.end8_crit_edge
  %retval.0.i.ph.in.in = phi ptr [ %21, %if.then8.i ], [ %15, %if.end5.if.end8_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i.ph.in.in to i32
  call void @__asan_load2_noabort(i32 %22)
  %retval.0.i.ph.in = load i16, ptr %retval.0.i.ph.in.in, align 2
  %retval.0.i.ph = zext i16 %retval.0.i.ph.in to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %tobool9.not = icmp eq i16 %vlan, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op)
  %cmp11 = icmp eq i8 %op, 1
  %spec.select = select i1 %cmp11, i8 3, i8 4
  %op.addr.0 = select i1 %tobool9.not, i8 %op, i8 %spec.select
  %conv18 = zext i8 %op.addr.0 to i32
  %or19 = or i32 %conv18, 448
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %call7.i.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or19, ptr %arrayidx, align 4
  %shl = shl nuw i32 %retval.0.i.ph, 16
  %26 = load ptr, ptr %arg, align 4
  %arrayidx23 = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  %or20 = or i32 %shl, %28
  %or24 = or i32 %or20, -2147483648
  store i32 %or24, ptr %arrayidx23, align 4
  %mac = getelementptr inbounds %struct.qlcnic_vport, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mac, align 1
  %arrayidx27 = getelementptr %struct.qlcnic_vport, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr %struct.qlcnic_vport, ptr %1, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr %struct.qlcnic_vport, ptr %1, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr %struct.qlcnic_vport, ptr %1, i32 0, i32 7, i32 4
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr %struct.qlcnic_vport, ptr %1, i32 0, i32 7, i32 5
  %39 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx31, align 1
  %41 = load ptr, ptr %arg, align 4
  %arrayidx34 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %36, ptr %arrayidx34, align 4
  %mv.sroa.5.0.buf.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 1
  %43 = ptrtoint ptr %mv.sroa.5.0.buf.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %34, ptr %mv.sroa.5.0.buf.0..sroa_idx, align 1
  %mv.sroa.7.0.buf.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 2
  %44 = ptrtoint ptr %mv.sroa.7.0.buf.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %32, ptr %mv.sroa.7.0.buf.0..sroa_idx, align 2
  %mv.sroa.9.0.buf.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 3
  %45 = ptrtoint ptr %mv.sroa.9.0.buf.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %30, ptr %mv.sroa.9.0.buf.0..sroa_idx, align 1
  %mv.sroa.11.0.buf.0..sroa_idx = getelementptr i32, ptr %41, i32 3
  %46 = ptrtoint ptr %mv.sroa.11.0.buf.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %vlan, ptr %mv.sroa.11.0.buf.0..sroa_idx, align 4
  %mv.sroa.13.0.buf.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 6
  %47 = ptrtoint ptr %mv.sroa.13.0.buf.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %40, ptr %mv.sroa.13.0.buf.0..sroa_idx, align 2
  %mv.sroa.15.0.buf.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 7
  %48 = ptrtoint ptr %mv.sroa.15.0.buf.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %38, ptr %mv.sroa.15.0.buf.0..sroa_idx, align 1
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 8
  %hw_ops.i69 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %hw_ops.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_ops.i69, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end8.free_args_crit_edge, label %qlcnic_issue_cmd.exit

if.end8.free_args_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_args

qlcnic_issue_cmd.exit:                            ; preds = %if.end8
  %call.i70 = tail call i32 %54(ptr noundef %adapter, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool36.not = icmp eq i32 %call.i70, 0
  br i1 %tobool36.not, label %qlcnic_issue_cmd.exit.cleanup_crit_edge, label %qlcnic_issue_cmd.exit.free_args_crit_edge

qlcnic_issue_cmd.exit.free_args_crit_edge:        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_args

qlcnic_issue_cmd.exit.cleanup_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_args:                                        ; preds = %qlcnic_issue_cmd.exit.free_args_crit_edge, %if.end8.free_args_crit_edge, %if.else.i.free_args_crit_edge
  %err.0 = phi i32 [ %call.i70, %qlcnic_issue_cmd.exit.free_args_crit_edge ], [ -22, %if.else.i.free_args_crit_edge ], [ -5, %if.end8.free_args_crit_edge ]
  tail call void @qlcnic_free_mbx_args(ptr noundef nonnull %call7.i.i) #7
  br label %free_cmd

free_cmd:                                         ; preds = %free_args, %if.end.free_cmd_crit_edge
  %err.1 = phi i32 [ %call.i, %if.end.free_cmd_crit_edge ], [ %err.0, %free_args ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_cmd, %qlcnic_issue_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_cmd ], [ -12, %entry.cleanup_crit_edge ], [ 0, %qlcnic_issue_cmd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_del_vlan_id(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_create_rx_ctx_cmd(ptr nocapture noundef readonly %tran, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %tran, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.mask.i = and i32 %7, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.mask.i)
  %cmp.not.i = icmp eq i32 %shr.mask.i, 1610612736
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %or = or i32 %11, 201326592
  store i32 %or, ptr %9, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv = zext i16 %15 to i32
  %arrayidx4 = getelementptr i32, ptr %5, i32 6
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %arrayidx4, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %qlcnic_issue_cmd.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = tail call i32 %22(ptr noundef %3, ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then7, label %qlcnic_issue_cmd.exit.if.else_crit_edge

qlcnic_issue_cmd.exit.if.else_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then7:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arg9 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arg9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg9, align 4
  %arrayidx10 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx10, align 1
  %rx_ctx_id = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %rx_ctx_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %rx_ctx_id, align 2
  tail call fastcc void @qlcnic_83xx_cfg_default_mac_vlan(ptr noundef %3, ptr noundef %1, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %qlcnic_issue_cmd.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %retval.0.i30 = phi i32 [ %call.i, %qlcnic_issue_cmd.exit.if.else_crit_edge ], [ -5, %if.end.if.else_crit_edge ]
  %rx_ctx_id11 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %rx_ctx_id11 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %rx_ctx_id11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i30, %if.else ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_create_tx_ctx_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.mask.i = and i32 %7, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.mask.i)
  %cmp.not.i = icmp eq i32 %shr.mask.i, 1610612736
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %or = or i32 %11, 201326592
  store i32 %or, ptr %9, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw i32 %conv, 16
  %arrayidx4 = getelementptr i32, ptr %5, i32 5
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %or5 = or i32 %shl, %17
  store i32 %or5, ptr %arrayidx4, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %qlcnic_issue_cmd.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = tail call i32 %23(ptr noundef %3, ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %qlcnic_issue_cmd.exit.if.else_crit_edge

qlcnic_issue_cmd.exit.if.else_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arg10 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arg10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg10, align 4
  %arrayidx11 = getelementptr i32, ptr %25, i32 2
  %ctx_id = getelementptr inbounds %struct.qlcnic_tx_mbx_out, ptr %arrayidx11, i32 0, i32 3
  %26 = ptrtoint ptr %ctx_id to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %ctx_id, align 1
  %tx_ctx_id = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %tx_ctx_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %tx_ctx_id, align 4
  br label %cleanup

if.else:                                          ; preds = %qlcnic_issue_cmd.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %retval.0.i29 = phi i32 [ %call.i, %qlcnic_issue_cmd.exit.if.else_crit_edge ], [ -5, %if.end.if.else_crit_edge ]
  %tx_ctx_id12 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %tx_ctx_id12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %tx_ctx_id12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i29, %if.else ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_sriov_pf_mac_address_cmd(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 2, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge46
    i8 1, label %sw.bb5
  ]

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge46
  %arg3 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arg3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108864, ptr %6, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %8 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf1, align 4
  %arg7 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arg7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33554432, ptr %11, align 4
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %9, i32 0, i32 15
  %13 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp, align 4
  %mac9 = getelementptr inbounds %struct.qlcnic_vport, ptr %14, i32 0, i32 7
  %arrayidx10 = getelementptr %struct.qlcnic_vport, ptr %14, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %17 = ptrtoint ptr %mac9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mac9, align 1
  %conv13 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl, %conv11
  %19 = load ptr, ptr %arg7, align 4
  %arrayidx16 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr %struct.qlcnic_vport, ptr %14, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %22 to i32
  %arrayidx19 = getelementptr %struct.qlcnic_vport, ptr %14, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or23 = or i32 %shl21, %conv18
  %arrayidx24 = getelementptr %struct.qlcnic_vport, ptr %14, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %or28 = or i32 %or23, %shl26
  %arrayidx29 = getelementptr %struct.qlcnic_vport, ptr %14, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %28 to i32
  %shl31 = shl nuw i32 %conv30, 24
  %or33 = or i32 %or28, %shl31
  %29 = load ptr, ptr %arg7, align 4
  %arrayidx36 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or33, ptr %arrayidx36, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_del_rx_ctx_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.mask.i = and i32 %7, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.mask.i)
  %cmp.not.i = icmp eq i32 %shr.mask.i, 1610612736
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr i32, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_ctx_id.i, align 2
  %12 = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp4.not.i = icmp eq i16 %11, %12
  br i1 %cmp4.not.i, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or = or i32 %16, 201326592
  store i32 %or, ptr %14, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call fastcc void @qlcnic_83xx_cfg_default_mac_vlan(ptr noundef %3, ptr noundef %1, i32 noundef 2)
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vp, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  %conv = zext i16 %20 to i32
  %shl = shl nuw i32 %conv, 16
  %21 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arg.i, align 4
  %arrayidx4 = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4, align 4
  %or5 = or i32 %24, %shl
  store i32 %or5, ptr %arrayidx4, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 46
  %27 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %qlcnic_issue_cmd.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = tail call i32 %30(ptr noundef %3, ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %qlcnic_issue_cmd.exit.cleanup_crit_edge

qlcnic_issue_cmd.exit.cleanup_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %rx_ctx_id.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %qlcnic_issue_cmd.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then8 ], [ %call.i, %qlcnic_issue_cmd.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_del_tx_ctx_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.mask.i = and i32 %7, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.mask.i)
  %cmp.not.i = icmp eq i32 %shr.mask.i, 1610612736
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr i32, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %tx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_ctx_id.i, align 4
  %12 = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp4.not.i = icmp eq i16 %11, %12
  br i1 %cmp4.not.i, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or = or i32 %16, 201326592
  store i32 %or, ptr %14, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vp, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  %conv = zext i16 %20 to i32
  %shl = shl nuw i32 %conv, 16
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.i, align 4
  %or5 = or i32 %shl, %22
  store i32 %or5, ptr %arrayidx3.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %qlcnic_issue_cmd.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = tail call i32 %28(ptr noundef %3, ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %qlcnic_issue_cmd.exit.cleanup_crit_edge

qlcnic_issue_cmd.exit.cleanup_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %tx_ctx_id.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %qlcnic_issue_cmd.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then8 ], [ %call.i, %qlcnic_issue_cmd.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_lro_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %7, 16
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_ctx_id.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %shr.i, %conv.i
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or = or i32 %13, 201326592
  store i32 %or, ptr %11, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %19(ptr noundef %3, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_ip_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %arrayidx, align 4
  %12 = load ptr, ptr %arg, align 4
  %arrayidx5 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %or6 = or i32 %14, -2147483648
  store i32 %or6, ptr %arrayidx5, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

entry.qlcnic_issue_cmd.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %20(ptr noundef %3, ptr noundef %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %entry.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -5, %entry.qlcnic_issue_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_intrpt_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %7, 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %10 = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.not.i = icmp ne i8 %9, %10
  %and5.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  %and11.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11.i)
  %cmp12.not.i = icmp eq i32 %and11.i, 1
  %not.or.cond.i = xor i1 %or.cond.i, true
  %tobool.not = select i1 %not.or.cond.i, i1 %cmp12.not.i, i1 false
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %..i = select i1 %cmp12.not.i, i32 0, i32 -22
  %retval.0.i = select i1 %or.cond.i, i32 -22, i32 %..i
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or = or i32 %14, 201326592
  store i32 %or, ptr %12, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i8 = icmp eq ptr %20, null
  br i1 %tobool.not.i8, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %20(ptr noundef %3, ptr noundef %cmd) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  %err.0 = phi i32 [ %retval.0.i, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.else.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_set_mtu_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_ctx_id.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %7, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx4.i = getelementptr i32, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %max_mtu.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_mtu.i, align 2
  %conv5.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5.i)
  %cmp6.i = icmp ugt i32 %11, %conv5.i
  br i1 %cmp6.i, label %if.end.i.if.then_crit_edge, label %if.else

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or = or i32 %19, 201326592
  store i32 %or, ptr %17, align 4
  br label %if.end

if.else:                                          ; preds = %if.end.i
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %25(ptr noundef %3, ptr noundef %cmd) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  %err.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.else.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_get_nic_info_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %shr.i = lshr i32 %7, 16
  %and4.i = and i32 %shr.i, 32767
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %and4.i, %conv.i
  br i1 %cmp.not.i, label %if.then.i.if.end_crit_edge, label %if.then

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vp.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %vp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv7.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv7.i, 16
  %or.i = or i32 %shl.i, %7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or = or i32 %18, 201326592
  store i32 %or, ptr %16, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %if.then.i.if.end_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i11 = icmp eq ptr %24, null
  br i1 %tobool.not.i11, label %if.end.cleanup_crit_edge, label %if.then.i12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %24(ptr noundef %3, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i12 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_rss_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_ctx_id.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %7, %conv.i
  br i1 %cmp.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or = or i32 %13, 201326592
  store i32 %or, ptr %11, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %19(ptr noundef %3, ptr noundef %cmd) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  %err.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.else.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_intrcoal_cmd(ptr nocapture noundef readonly %tran, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %tran, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %conv.i = and i32 %9, 7
  %shr.i = lshr i32 %9, 16
  %arrayidx8.i = getelementptr i32, ptr %7, i32 2
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.i, align 4
  %shr14.i = lshr i32 %11, 16
  %12 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb29.i
  ]

sw.bb.i:                                          ; preds = %entry
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_ctx_id.i, align 2
  %conv18.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv18.i)
  %cmp.not.i = icmp eq i32 %shr.i, %conv18.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.i.err_label.i_crit_edge

sw.bb.i.err_label.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %conv20.i = and i32 %11, 65535
  %rx_packets.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_packets.i, align 2
  %conv21.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.i, i32 %conv21.i)
  %cmp22.i = icmp ugt i32 %conv20.i, %conv21.i
  br i1 %cmp22.i, label %lor.lhs.false.i.err_label.i_crit_edge, label %lor.lhs.false24.i

lor.lhs.false.i.err_label.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %rx_time_us.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 3
  %17 = ptrtoint ptr %rx_time_us.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_time_us.i, align 4
  %conv26.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr14.i, i32 %conv26.i)
  %cmp27.i = icmp ult i32 %shr14.i, %conv26.i
  br i1 %cmp27.i, label %lor.lhs.false24.i.err_label.i_crit_edge, label %lor.lhs.false24.i.if.end_crit_edge

lor.lhs.false24.i.if.end_crit_edge:               ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false24.i.err_label.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

sw.bb29.i:                                        ; preds = %entry
  %tx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %tx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_ctx_id.i, align 4
  %conv31.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv31.i)
  %cmp32.not.i = icmp eq i32 %shr.i, %conv31.i
  br i1 %cmp32.not.i, label %lor.lhs.false34.i, label %sw.bb29.i.err_label.i_crit_edge

sw.bb29.i.err_label.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

lor.lhs.false34.i:                                ; preds = %sw.bb29.i
  %conv35.i = and i32 %11, 65535
  %tx_packets.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 4
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_packets.i, align 2
  %conv36.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.i, i32 %conv36.i)
  %cmp37.i = icmp ugt i32 %conv35.i, %conv36.i
  br i1 %cmp37.i, label %lor.lhs.false34.i.err_label.i_crit_edge, label %lor.lhs.false39.i

lor.lhs.false34.i.err_label.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

lor.lhs.false39.i:                                ; preds = %lor.lhs.false34.i
  %tx_time_us.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 5
  %23 = ptrtoint ptr %tx_time_us.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx_time_us.i, align 4
  %conv41.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr14.i, i32 %conv41.i)
  %cmp42.i = icmp ult i32 %shr14.i, %conv41.i
  br i1 %cmp42.i, label %lor.lhs.false39.i.err_label.i_crit_edge, label %lor.lhs.false39.i.if.end_crit_edge

lor.lhs.false39.i.if.end_crit_edge:               ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false39.i.err_label.i_crit_edge:          ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_label.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.40, i32 noundef %conv.i) #10
  br label %if.then

err_label.i:                                      ; preds = %lor.lhs.false39.i.err_label.i_crit_edge, %lor.lhs.false34.i.err_label.i_crit_edge, %sw.bb29.i.err_label.i_crit_edge, %lor.lhs.false24.i.err_label.i_crit_edge, %lor.lhs.false.i.err_label.i_crit_edge, %sw.bb.i.err_label.i_crit_edge
  %netdev47.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %netdev47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev47.i, align 4
  %rx_ctx_id48.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %rx_ctx_id48.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_ctx_id48.i, align 2
  %conv49.i = zext i16 %30 to i32
  %rx_packets50.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 2
  %31 = ptrtoint ptr %rx_packets50.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_packets50.i, align 2
  %conv51.i = zext i16 %32 to i32
  %rx_time_us52.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 3
  %33 = ptrtoint ptr %rx_time_us52.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rx_time_us52.i, align 4
  %conv53.i = zext i16 %34 to i32
  %tx_ctx_id54.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %tx_ctx_id54.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tx_ctx_id54.i, align 4
  %conv55.i = zext i16 %36 to i32
  %tx_packets56.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 4
  %37 = ptrtoint ptr %tx_packets56.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_packets56.i, align 2
  %conv57.i = zext i16 %38 to i32
  %tx_time_us58.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 47, i32 5
  %39 = ptrtoint ptr %tx_time_us58.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tx_time_us58.i, align 4
  %conv59.i = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.41, i32 noundef %conv49.i, i32 noundef %conv51.i, i32 noundef %conv53.i, i32 noundef %conv55.i, i32 noundef %conv57.i, i32 noundef %conv59.i) #10
  %41 = ptrtoint ptr %netdev47.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev47.i, align 4
  %conv62.i = and i32 %11, 65535
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.42, i32 noundef %shr.i, i32 noundef %conv62.i, i32 noundef %shr14.i, i32 noundef %conv.i) #10
  br label %if.then

if.then:                                          ; preds = %err_label.i, %sw.default.i
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arg, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %or = or i32 %46, 201326592
  store i32 %or, ptr %44, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false39.i.if.end_crit_edge, %lor.lhs.false24.i.if.end_crit_edge
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %52(ptr noundef %3, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_macvlan_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %vp1.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %vp1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp1.i, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 2
  %conv.i = zext i16 %11 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, %9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.i, align 4
  %or9.i = or i32 %16, -2147483648
  store i32 %or9.i, ptr %arrayidx8.i, align 4
  %vlan_mode.i = getelementptr inbounds %struct.qlcnic_vport, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %vlan_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vlan_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  br i1 %cmp.i, label %if.then12.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15.i, align 4
  %and21.i = and i32 %22, -8
  store i32 %and21.i, ptr %arrayidx15.i, align 4
  %23 = and i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %24 = icmp eq i32 %23, 1
  %25 = select i1 %24, i32 3, i32 4
  %pvid.i = getelementptr inbounds %struct.qlcnic_vport, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pvid.i, align 2
  %conv29.i = zext i16 %27 to i32
  %shl30.i = shl nuw i32 %conv29.i, 16
  %28 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx33.i, align 4
  %or34.i = or i32 %31, %shl30.i
  store i32 %or34.i, ptr %arrayidx33.i, align 4
  %32 = load ptr, ptr %arg.i, align 4
  %arrayidx38.i = getelementptr i32, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx38.i, align 4
  %or39.i = or i32 %34, %25
  store i32 %or39.i, ptr %arrayidx38.i, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arg, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %or = or i32 %38, 201326592
  store i32 %or, ptr %36, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then12.i, %if.end.i.if.end_crit_edge
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i12 = icmp eq ptr %44, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %44(ptr noundef %3, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_linkevent_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %7, 16
  %rx_ctx_id.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rx_ctx_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_ctx_id.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %shr.i, %conv.i
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or = or i32 %13, 201326592
  store i32 %or, ptr %11, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %19(ptr noundef %3, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_pf_cfg_promisc_cmd(ptr nocapture noundef readonly %trans, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vf1 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  %0 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf1, align 4
  %adapter2 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter2, align 4
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %arrayidx, align 4
  %12 = load ptr, ptr %arg, align 4
  %arrayidx5 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %or6 = or i32 %14, -2147483648
  store i32 %or6, ptr %arrayidx5, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

entry.qlcnic_issue_cmd.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %20(ptr noundef %3, ptr noundef %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %entry.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -5, %entry.qlcnic_issue_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_cfg_default_mac_vlan(ptr noundef %adapter, ptr noundef %vf, i32 noundef %opcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %vlan_list_lock = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #7
  %num_vlan = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 4
  %4 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %for.cond.preheader

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.cond.preheader:                               ; preds = %entry
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_allowed_vlans, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp38.not = icmp eq i16 %7, 0
  br i1 %cmp38.not, label %for.cond.preheader.if.end6_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 3
  %conv5 = trunc i32 %opcode to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_vlans, align 4
  %arrayidx = getelementptr i16, ptr %9, i32 %i.039
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp eq i16 %11, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %adapter, ptr noundef %vf, i16 noundef zeroext %11, i8 noundef zeroext %conv5)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %12 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_allowed_vlans, align 2
  %conv = zext i16 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %for.cond.preheader.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #7
  %vp = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 15
  %14 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vp, align 4
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vlan_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp9.not = icmp eq i8 %17, 1
  br i1 %cmp9.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %21)
  %cmp.i = icmp eq i16 %21, -32720
  br i1 %cmp.i, label %land.lhs.true, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then11
  %call14 = tail call zeroext i1 @qlcnic_sriov_check_any_vlan(ptr noundef %vf) #7
  br i1 %call14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.then11.if.end17_crit_edge
  %conv18 = trunc i32 %opcode to i8
  %call19 = tail call fastcc i32 @qlcnic_sriov_cfg_vf_def_mac(ptr noundef %adapter, ptr noundef %vf, i16 noundef zeroext 0, i8 noundef zeroext %conv18)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_cleanup_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qlcnic_sriov_add_act_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_get_pf_info(ptr noundef %adapter, ptr noundef %npar_info) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i145 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i145 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i145, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i146 = call i32 %15(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool2.not = icmp eq i32 %call.i146, 0
  br i1 %tobool2.not, label %if.end4, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i151 = phi i32 [ %call.i146, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i151) #10
  br label %out

if.end4:                                          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arg5 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arg5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg5, align 4
  %arrayidx6 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6, align 4
  %conv = trunc i32 %21 to i8
  %total_pf = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 25
  %22 = ptrtoint ptr %total_pf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %total_pf, align 4
  %23 = load i32, ptr %arrayidx6, align 4
  %shr = lshr i32 %23, 8
  %conv11 = trunc i32 %shr to i8
  %total_rss_engines = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 26
  %24 = ptrtoint ptr %total_rss_engines to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11, ptr %total_rss_engines, align 1
  %25 = load i32, ptr %arrayidx6, align 4
  %shr15 = lshr i32 %25, 16
  %conv16 = trunc i32 %shr15 to i16
  %max_vports = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 27
  %26 = ptrtoint ptr %max_vports to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv16, ptr %max_vports, align 2
  %arrayidx19 = getelementptr i32, ptr %19, i32 3
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %28 to i16
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 7
  %29 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv20, ptr %max_tx_ques, align 4
  %30 = load i32, ptr %arrayidx19, align 4
  %shr24 = lshr i32 %30, 16
  %conv25 = trunc i32 %shr24 to i16
  %max_tx_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 17
  %31 = ptrtoint ptr %max_tx_mac_filters to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv25, ptr %max_tx_mac_filters, align 4
  %arrayidx28 = getelementptr i32, ptr %19, i32 4
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %conv29 = trunc i32 %33 to i16
  %max_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 18
  %34 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv29, ptr %max_rx_mcast_mac_filters, align 2
  %35 = load i32, ptr %arrayidx28, align 4
  %shr33 = lshr i32 %35, 16
  %conv34 = trunc i32 %shr33 to i16
  %max_rx_ucast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 19
  %36 = ptrtoint ptr %max_rx_ucast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv34, ptr %max_rx_ucast_mac_filters, align 4
  %arrayidx37 = getelementptr i32, ptr %19, i32 5
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx37, align 4
  %conv38 = trunc i32 %38 to i16
  %max_rx_ip_addr = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 20
  %39 = ptrtoint ptr %max_rx_ip_addr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv38, ptr %max_rx_ip_addr, align 2
  %40 = load i32, ptr %arrayidx37, align 4
  %shr42 = lshr i32 %40, 16
  %conv43 = trunc i32 %shr42 to i16
  %max_rx_lro_flow = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 21
  %41 = ptrtoint ptr %max_rx_lro_flow to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv43, ptr %max_rx_lro_flow, align 4
  %arrayidx46 = getelementptr i32, ptr %19, i32 6
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx46, align 4
  %conv47 = trunc i32 %43 to i16
  %max_rx_status_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 22
  %44 = ptrtoint ptr %max_rx_status_rings to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv47, ptr %max_rx_status_rings, align 2
  %45 = load i32, ptr %arrayidx46, align 4
  %shr51 = lshr i32 %45, 16
  %conv52 = trunc i32 %shr51 to i16
  %max_rx_buf_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 23
  %46 = ptrtoint ptr %max_rx_buf_rings to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv52, ptr %max_rx_buf_rings, align 4
  %arrayidx55 = getelementptr i32, ptr %19, i32 7
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx55, align 4
  %conv56 = trunc i32 %48 to i16
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 8
  %49 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv56, ptr %max_rx_ques, align 2
  %50 = load i32, ptr %arrayidx55, align 4
  %shr60 = lshr i32 %50, 16
  %conv61 = trunc i32 %shr60 to i16
  %max_tx_vlan_keys = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 24
  %51 = ptrtoint ptr %max_tx_vlan_keys to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv61, ptr %max_tx_vlan_keys, align 2
  %arrayidx64 = getelementptr i32, ptr %19, i32 8
  %52 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx64, align 4
  %conv65 = trunc i32 %53 to i16
  %max_local_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 30
  %54 = ptrtoint ptr %max_local_ipv6_addrs to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv65, ptr %max_local_ipv6_addrs, align 4
  %55 = load i32, ptr %arrayidx64, align 4
  %shr69 = lshr i32 %55, 16
  %conv70 = trunc i32 %shr69 to i16
  %max_remote_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 31
  %56 = ptrtoint ptr %max_remote_ipv6_addrs to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv70, ptr %max_remote_ipv6_addrs, align 2
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %58, i32 0, i32 54
  %59 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sriov1.i, align 8
  %num_vfs.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_vfs.i, align 2
  %conv2.i = zext i8 %62 to i16
  %63 = mul nuw nsw i16 %conv2.i, 7
  %mul.i = add nuw nsw i16 %63, 7
  %div.i = udiv i16 %conv29, %mul.i
  %sub.i = add nsw i16 %div.i, -1
  %num_allowed_vlans.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %60, i32 0, i32 4
  %64 = ptrtoint ptr %num_allowed_vlans.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub.i, ptr %num_allowed_vlans.i, align 2
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %65 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32720, i16 %68)
  %cmp.i.i = icmp eq i16 %68, -32720
  %spec.store.select.i = select i1 %cmp.i.i, i16 1, i16 %sub.i
  %69 = ptrtoint ptr %num_allowed_vlans.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %spec.store.select.i, ptr %num_allowed_vlans.i, align 2
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %70 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev.i, align 4
  %conv6.i = zext i16 %spec.store.select.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %71, ptr noundef nonnull @.str.55, i32 noundef %conv6.i) #10
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 8
  %sriov.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %73, i32 0, i32 54
  %74 = ptrtoint ptr %sriov.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov.i, align 8
  %ff_max1.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %max_tx_mac_filters to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %max_tx_mac_filters, align 4
  %78 = ptrtoint ptr %ff_max1.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %ff_max1.i, align 4
  %79 = ptrtoint ptr %max_rx_ucast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max_rx_ucast_mac_filters, align 4
  %num_rx_ucast_mac_filters.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %num_rx_ucast_mac_filters.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %num_rx_ucast_mac_filters.i, align 2
  %82 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %max_rx_mcast_mac_filters, align 2
  %num_rx_mcast_mac_filters.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 2
  %84 = ptrtoint ptr %num_rx_mcast_mac_filters.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %num_rx_mcast_mac_filters.i, align 4
  %85 = ptrtoint ptr %max_tx_vlan_keys to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %max_tx_vlan_keys, align 2
  %num_txvlan_keys.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 3
  %87 = ptrtoint ptr %num_txvlan_keys.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %num_txvlan_keys.i, align 2
  %88 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %max_rx_ques, align 2
  %num_rx_queues.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 4
  %90 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %num_rx_queues.i, align 4
  %91 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %max_tx_ques, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 5
  %93 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %num_tx_queues.i, align 2
  %94 = ptrtoint ptr %max_rx_lro_flow to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %max_rx_lro_flow, align 4
  %conv.i = zext i16 %95 to i32
  %num_lro_flows_supported.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 9
  %96 = ptrtoint ptr %num_lro_flows_supported.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv.i, ptr %num_lro_flows_supported.i, align 4
  %97 = ptrtoint ptr %max_rx_ip_addr to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_rx_ip_addr, align 2
  %num_destip.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 8
  %99 = ptrtoint ptr %num_destip.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %num_destip.i, align 4
  %100 = ptrtoint ptr %max_rx_buf_rings to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %max_rx_buf_rings, align 4
  %num_rx_buf_rings.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 6
  %102 = ptrtoint ptr %num_rx_buf_rings.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %num_rx_buf_rings.i, align 4
  %103 = ptrtoint ptr %max_rx_status_rings to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %max_rx_status_rings, align 2
  %num_rx_status_rings.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 7
  %105 = ptrtoint ptr %num_rx_status_rings.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %num_rx_status_rings.i, align 2
  %106 = ptrtoint ptr %max_remote_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %max_remote_ipv6_addrs, align 2
  %max_remote_ipv6_addrs2.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 11
  %108 = ptrtoint ptr %max_remote_ipv6_addrs2.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %max_remote_ipv6_addrs2.i, align 2
  %109 = ptrtoint ptr %max_local_ipv6_addrs to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %max_local_ipv6_addrs, align 4
  %max_local_ipv6_addrs3.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %75, i32 0, i32 7, i32 10
  %111 = ptrtoint ptr %max_local_ipv6_addrs3.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %max_local_ipv6_addrs3.i, align 4
  %112 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev.i.i, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %total_pf to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %total_pf, align 4
  %conv77 = zext i8 %115 to i32
  %116 = ptrtoint ptr %total_rss_engines to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %total_rss_engines, align 1
  %conv79 = zext i8 %117 to i32
  %118 = ptrtoint ptr %max_vports to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %max_vports, align 2
  %conv81 = zext i16 %119 to i32
  %120 = load i16, ptr %max_tx_ques, align 4
  %conv83 = zext i16 %120 to i32
  %121 = load i16, ptr %max_tx_mac_filters, align 4
  %conv85 = zext i16 %121 to i32
  %122 = load i16, ptr %max_rx_mcast_mac_filters, align 2
  %conv87 = zext i16 %122 to i32
  %123 = load i16, ptr %max_rx_ucast_mac_filters, align 4
  %conv89 = zext i16 %123 to i32
  %124 = load i16, ptr %max_rx_ip_addr, align 2
  %conv91 = zext i16 %124 to i32
  %125 = load i16, ptr %max_rx_lro_flow, align 4
  %conv93 = zext i16 %125 to i32
  %126 = load i16, ptr %max_rx_status_rings, align 2
  %conv95 = zext i16 %126 to i32
  %127 = load i16, ptr %max_rx_buf_rings, align 4
  %conv97 = zext i16 %127 to i32
  %128 = load i16, ptr %max_rx_ques, align 2
  %conv99 = zext i16 %128 to i32
  %129 = load i16, ptr %max_tx_vlan_keys, align 2
  %conv101 = zext i16 %129 to i32
  %130 = load i16, ptr %max_local_ipv6_addrs, align 4
  %conv103 = zext i16 %130 to i32
  %131 = load i16, ptr %max_remote_ipv6_addrs, align 2
  %conv105 = zext i16 %131 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.53, i32 noundef %conv77, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv91, i32 noundef %conv93, i32 noundef %conv95, i32 noundef %conv97, i32 noundef %conv99, i32 noundef %conv101, i32 noundef %conv103, i32 noundef %conv105) #10
  br label %out

out:                                              ; preds = %if.end4, %do.end
  %retval.0.i150 = phi i32 [ 0, %if.end4 ], [ %retval.0.i151, %do.end ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i150, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 460, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1749, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1759, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1797, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qlcnic_sriov_pf_reinit._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @qlcnic_sriov_pf_reinit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1819, i32 22}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1827, i32 8}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1838, i32 7}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1844, i32 22}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1875, i32 7}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1886, i32 7}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1905, i32 7}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1909, i32 7}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1933, i32 7}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1942, i32 7}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1965, i32 22}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 2041, i32 7}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 311, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qlcnic_sriov_pf_config_vport._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @qlcnic_sriov_pf_config_vport._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 397, i32 3}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @qlcnic_sriov_pf_cfg_eswitch._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @qlcnic_sriov_pf_cfg_eswitch._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 351, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qlcnic_sriov_pf_cfg_vlan_filtering._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 470, i32 7}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 473, i32 8}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 625, i32 7}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 644, i32 8}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 661, i32 22}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 423, i32 7}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 425, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qlcnic_sriov_pf_create_flr_queue._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @qlcnic_sriov_pf_create_flr_queue._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @qlcnic_pf_bc_cmd_hdlr, !75, !"qlcnic_pf_bc_cmd_hdlr", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1464, i32 46}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 716, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qlcnic_sriov_set_vf_acl._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @qlcnic_sriov_set_vf_acl._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @qlcnic_pf_fw_cmd_hdlr, !82, !"qlcnic_pf_fw_cmd_hdlr", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1471, i32 49}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1220, i32 31}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1228, i32 30}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1231, i32 30}
!89 = distinct !{null, !90, !"qlcnic_pf_passthru_supp_cmds", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1456, i32 18}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1717, i32 31}
!93 = !{ptr @qlcnic_sriov_schedule_flr.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1702, i32 2}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1637, i32 4}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @qlcnic_sriov_del_tx_ctx._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @qlcnic_sriov_del_tx_ctx._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1611, i32 4}
!103 = !{ptr @qlcnic_sriov_del_rx_ctx._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qlcnic_sriov_del_rx_ctx._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 372, i32 3}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qlcnic_sriov_pf_cfg_flood._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @qlcnic_sriov_pf_cfg_flood._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 186, i32 3}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qlcnic_sriov_get_pf_info._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @qlcnic_sriov_get_pf_info._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 209, i32 2}
!117 = !{ptr @qlcnic_sriov_get_pf_info._entry.52, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qlcnic_sriov_get_pf_info._entry_ptr.54, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 170, i32 31}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 60, i32 3}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qlcnic_sriov_pf_set_vport_info._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qlcnic_sriov_pf_set_vport_info._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_pf.c", i32 1986, i32 32}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2157844056}
!138 = !{i64 5037010}
!139 = !{i8 0, i8 2}
