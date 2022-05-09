; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_pf.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_pf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.enetc_pf = type { ptr, i32, i32, ptr, [6 x %struct.enetc_mac_filter], [2 x %struct.enetc_msg_swbd], %struct.work_struct, [24 x i8], i8, [2 x i32], [128 x i32], ptr, ptr, ptr, i32, %struct.phylink_config }
%struct.enetc_mac_filter = type { %union.anon.118, i32 }
%union.anon.118 = type { [2 x i32] }
%struct.enetc_msg_swbd = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.enetc_msg_cmd_header = type { i16, i16 }
%struct.enetc_vf_state = type { i32 }
%struct.enetc_msg_cmd_set_primary_mac = type { %struct.enetc_msg_cmd_header, %struct.sockaddr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.enetc_cmd_rfse = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.enetc_mdio_priv = type { ptr, i32 }
%struct.enetc_ndev_priv = type { ptr, ptr, ptr, i32, [2 x ptr], i16, i16, i16, i16, i16, i32, i32, ptr, [16 x ptr], [16 x ptr], ptr, %struct.psfp_cap, ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.sk_buff_head }
%struct.psfp_cap = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@enetc_msg_handle_rxmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 654, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"command not supported (cmd_type: 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enetc_msg_handle_rxmsg\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_pf.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_msg_handle_rxmsg._entry_ptr = internal global ptr @enetc_msg_handle_rxmsg._entry, section ".printk_index", align 4
@__initcall__kmod_fsl_enetc__355_1356_enetc_pf_driver_init6 = internal global ptr @enetc_pf_driver_init, section ".initcall6.init", align 4
@enetc_pf_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.8, ptr @enetc_pf_id_table, ptr @enetc_pf_probe, ptr @enetc_pf_remove, ptr null, ptr null, ptr null, ptr @enetc_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_enetc_pf_driver_exit = internal global ptr @enetc_pf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [38 x i8] c"fsl_enetc.description=ENETC PF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [62 x i8] c"fsl_enetc.file=drivers/net/ethernet/freescale/enetc/fsl-enetc\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [31 x i8] c"fsl_enetc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@enetc_msg_pf_set_vf_primary_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 630, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Attempt to override PF set mac addr for VF%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"enetc_msg_pf_set_vf_primary_mac_addr\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@enetc_msg_pf_set_vf_primary_mac_addr._entry_ptr = internal global ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl_enetc\00", [22 x i8] zeroinitializer }, align 32
@enetc_pf_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6487, i32 57600, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1195, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Could not register with IERB driver: %pe, please update the device tree\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enetc_pf_probe\00", [17 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr = internal global ptr @enetc_pf_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI probing failed\0A\00", [44 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 1204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not map PF space, probing a VF?\0A\00", [57 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.14 = internal global ptr @enetc_pf_probe._entry.12, section ".printk_index", align 4
@enetc_pf_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 1215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize RFS memory\0A\00", [63 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.17 = internal global ptr @enetc_pf_probe._entry.15, section ".printk_index", align 4
@enetc_pf_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 1221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize RSS memory\0A\00", [63 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.20 = internal global ptr @enetc_pf_probe._entry.18, section ".printk_index", align 4
@enetc_pf_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 1226, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device is disabled, skipping\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.24 = internal global ptr @enetc_pf_probe._entry.21, section ".printk_index", align 4
@enetc_pf_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.2, i32 1246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netdev creation failed\0A\00", [40 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.27 = internal global ptr @enetc_pf_probe._entry.25, section ".printk_index", align 4
@enetc_ndev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @enetc_open, ptr @enetc_close, ptr @enetc_xmit, ptr null, ptr null, ptr null, ptr @enetc_pf_set_rx_mode, ptr @enetc_pf_set_mac_addr, ptr null, ptr null, ptr @enetc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_stats, ptr @enetc_vlan_rx_add_vid, ptr @enetc_vlan_rx_del_vid, ptr null, ptr null, ptr null, ptr @enetc_pf_set_vf_mac, ptr @enetc_pf_set_vf_vlan, ptr null, ptr @enetc_pf_set_vf_spoofchk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_pf_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_setup_bpf, ptr @enetc_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.2, i32 1258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SI resource alloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.30 = internal global ptr @enetc_pf_probe._entry.28, section ".printk_index", align 4
@enetc_pf_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.2, i32 1264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to configure SI\0A\00", [40 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.33 = internal global ptr @enetc_pf_probe._entry.31, section ".printk_index", align 4
@enetc_pf_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.2, i32 1270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSIX alloc failed\0A\00", [45 x i8] zeroinitializer }, align 32
@enetc_pf_probe._entry_ptr.36 = internal global ptr @enetc_pf_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,ls1028a-enetc-ierb\00", [41 x i8] zeroinitializer }, align 32
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@enetc_setup_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 420, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no MAC address specified for SI%d, using %pM\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enetc_setup_mac_address\00", [40 x i8] zeroinitializer }, align 32
@enetc_setup_mac_address._entry_ptr = internal global ptr @enetc_setup_mac_address._entry, section ".printk_index", align 4
@enetc_port_si_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 486, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found %d rings, expected %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enetc_port_si_configure\00", [40 x i8] zeroinitializer }, align 32
@enetc_port_si_configure._entry_ptr = internal global ptr @enetc_port_si_configure._entry, section ".printk_index", align 4
@enetc_sync_mac_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 186, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fallback to HT filt (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enetc_sync_mac_filters\00", [41 x i8] zeroinitializer }, align 32
@enetc_sync_mac_filters._entry_ptr = internal global ptr @enetc_sync_mac_filters._entry, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Freescale ENETC MDIO Bus\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot register MDIO bus\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Freescale ENETC internal MDIO Bus\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-imdio\00", [23 x i8] zeroinitializer }, align 32
@enetc_imdio_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 853, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot register internal MDIO bus (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_imdio_create\00", [45 x i8] zeroinitializer }, align 32
@enetc_imdio_create._entry_ptr = internal global ptr @enetc_imdio_create._entry, section ".printk_index", align 4
@enetc_imdio_create._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot create mdio device (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@enetc_imdio_create._entry_ptr.54 = internal global ptr @enetc_imdio_create._entry.52, section ".printk_index", align 4
@enetc_imdio_create._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot create lynx pcs (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@enetc_imdio_create._entry_ptr.57 = internal global ptr @enetc_imdio_create._entry.55, section ".printk_index", align 4
@enetc_mac_phylink_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr null, ptr @enetc_pl_mac_config, ptr null, ptr null, ptr @enetc_pl_mac_link_down, ptr @enetc_pl_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@enetc_sriov_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 682, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enetc_msg_psi_init (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enetc_sriov_configure\00", [42 x i8] zeroinitializer }, align 32
@enetc_sriov_configure._entry_ptr = internal global ptr @enetc_sriov_configure._entry, section ".printk_index", align 4
@enetc_sriov_configure._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_enable_sriov err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@enetc_sriov_configure._entry_ptr.62 = internal global ptr @enetc_sriov_configure._entry.60, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 22, i64 28]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 653, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"enetc_pf_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1347, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 629, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1356, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"enetc_pf_id_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1341, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1193, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1199, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1204, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1215, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1221, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1226, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1246, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"enetc_ndev_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 728, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1258, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1264, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1270, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1166, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 419, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 485, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 185, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 911, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 804, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 811, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 815, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 841, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 849, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 853, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 860, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 868, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"enetc_mac_phylink_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1063, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 682, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [51 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_pf.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 688, i32 4 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_enetc_pf_driver_exit, ptr @__initcall__kmod_fsl_enetc__355_1356_enetc_pf_driver_init6, ptr @enetc_imdio_create._entry, ptr @enetc_imdio_create._entry.52, ptr @enetc_imdio_create._entry.55, ptr @enetc_imdio_create._entry_ptr, ptr @enetc_imdio_create._entry_ptr.54, ptr @enetc_imdio_create._entry_ptr.57, ptr @enetc_msg_handle_rxmsg._entry, ptr @enetc_msg_handle_rxmsg._entry_ptr, ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry, ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry_ptr, ptr @enetc_pf_driver_exit, ptr @enetc_pf_probe._entry, ptr @enetc_pf_probe._entry.12, ptr @enetc_pf_probe._entry.15, ptr @enetc_pf_probe._entry.18, ptr @enetc_pf_probe._entry.21, ptr @enetc_pf_probe._entry.25, ptr @enetc_pf_probe._entry.28, ptr @enetc_pf_probe._entry.31, ptr @enetc_pf_probe._entry.34, ptr @enetc_pf_probe._entry_ptr, ptr @enetc_pf_probe._entry_ptr.14, ptr @enetc_pf_probe._entry_ptr.17, ptr @enetc_pf_probe._entry_ptr.20, ptr @enetc_pf_probe._entry_ptr.24, ptr @enetc_pf_probe._entry_ptr.27, ptr @enetc_pf_probe._entry_ptr.30, ptr @enetc_pf_probe._entry_ptr.33, ptr @enetc_pf_probe._entry_ptr.36, ptr @enetc_port_si_configure._entry, ptr @enetc_port_si_configure._entry_ptr, ptr @enetc_setup_mac_address._entry, ptr @enetc_setup_mac_address._entry_ptr, ptr @enetc_sriov_configure._entry, ptr @enetc_sriov_configure._entry.60, ptr @enetc_sriov_configure._entry_ptr, ptr @enetc_sriov_configure._entry_ptr.62, ptr @enetc_sync_mac_filters._entry, ptr @enetc_sync_mac_filters._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @enetc_pf_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @enetc_pf_id_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @enetc_ndev_ops, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @enetc_mac_phylink_ops, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_handle_rxmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_ndev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_setup_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_port_si_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_sync_mac_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_imdio_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_imdio_create._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_imdio_create._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_mac_phylink_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_sriov_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_sriov_configure._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_msg_handle_rxmsg(ptr nocapture noundef readonly %pf, i32 noundef %vf_id, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.enetc_pf, ptr %pf, i32 0, i32 5, i32 %vf_id
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %status, align 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cond = icmp eq i16 %8, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %id.i = getelementptr inbounds %struct.enetc_msg_cmd_header, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.not.i = icmp eq i16 %14, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.enetc_msg_pf_set_vf_primary_mac_addr.exit_crit_edge

sw.bb.enetc_msg_pf_set_vf_primary_mac_addr.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_msg_pf_set_vf_primary_mac_addr.exit

if.end.i:                                         ; preds = %sw.bb
  %vf_state1.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 3
  %15 = ptrtoint ptr %vf_state1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vf_state1.i, align 4
  %arrayidx.i = getelementptr %struct.enetc_vf_state, ptr %16, i32 %vf_id
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.5, i32 noundef %vf_id) #11
  br label %enetc_msg_pf_set_vf_primary_mac_addr.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sa_data.i = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, ptr %6, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %sa_data.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %add.ptr.i.i = getelementptr %struct.enetc_msg_cmd_set_primary_mac, ptr %6, i32 0, i32 1, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %10, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.i.i, align 4
  %add.i = shl i32 %vf_id, 3
  %add.i.i = add i32 %add.i, 264
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %21) #8, !srcloc !131
  %27 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port.i.i, align 4
  %add5.i.i = add i32 %add.i, 268
  %add.ptr6.i.i = getelementptr i8, ptr %28, i32 %add5.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 %24) #8, !srcloc !132
  br label %enetc_msg_pf_set_vf_primary_mac_addr.exit

enetc_msg_pf_set_vf_primary_mac_addr.exit:        ; preds = %if.else.i, %do.end.i, %sw.bb.enetc_msg_pf_set_vf_primary_mac_addr.exit_crit_edge
  %retval.0.i = phi i16 [ 1, %sw.bb.enetc_msg_pf_set_vf_primary_mac_addr.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %do.end.i ]
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %retval.0.i, ptr %status, align 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %8 to i32
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %enetc_msg_pf_set_vf_primary_mac_addr.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @enetc_pf_driver, ptr noundef null, ptr noundef nonnull @.str.8) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pf_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @enetc_pf_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %hash_key.i = alloca [40 x i8], align 1
  %rfse.i = alloca %struct.enetc_cmd_rfse, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end4_crit_edge, label %lor.lhs.false.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #8
  br i1 %call.i, label %if.end.i, label %lor.lhs.false.i.if.end4_crit_edge

lor.lhs.false.i.if.end4_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.do.end_crit_edge, label %lor.lhs.false3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call1.i) #8
  br i1 %call4.i, label %if.end6.i, label %lor.lhs.false3.i.do.end_crit_edge

lor.lhs.false3.i.do.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end6.i:                                        ; preds = %lor.lhs.false3.i
  %call7.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call1.i) #8
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.cleanup_crit_edge, label %enetc_pf_register_with_ierb.exit

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

enetc_pf_register_with_ierb.exit:                 ; preds = %if.end6.i
  %call11.i = tail call i32 @enetc_ierb_register_pf(ptr noundef nonnull %call7.i, ptr noundef %pdev) #8
  %2 = zext i32 %call11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11.i, label %enetc_pf_register_with_ierb.exit.do.end_crit_edge [
    i32 -517, label %enetc_pf_register_with_ierb.exit.cleanup_crit_edge
    i32 0, label %enetc_pf_register_with_ierb.exit.if.end4_crit_edge
  ]

enetc_pf_register_with_ierb.exit.if.end4_crit_edge: ; preds = %enetc_pf_register_with_ierb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

enetc_pf_register_with_ierb.exit.cleanup_crit_edge: ; preds = %enetc_pf_register_with_ierb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

enetc_pf_register_with_ierb.exit.do.end_crit_edge: ; preds = %enetc_pf_register_with_ierb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %enetc_pf_register_with_ierb.exit.do.end_crit_edge, %lor.lhs.false3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i196 = phi i32 [ %call11.i, %enetc_pf_register_with_ierb.exit.do.end_crit_edge ], [ -19, %lor.lhs.false3.i.do.end_crit_edge ], [ -19, %if.end.i.do.end_crit_edge ]
  %3 = inttoptr i32 %retval.0.i196 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %3) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %enetc_pf_register_with_ierb.exit.if.end4_crit_edge, %lor.lhs.false.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call i32 @enetc_pci_probe(ptr noundef %pdev, ptr noundef nonnull @.str.8, i32 noundef 744) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call5, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %hw = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1
  %port = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end10.if.then15_crit_edge, label %lor.lhs.false

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end10
  %global = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %lor.lhs.false.if.then15_crit_edge, label %if.end20

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %err_map_pf_space

if.end20:                                         ; preds = %lor.lhs.false
  %cbd_ring = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 4
  %call23 = tail call i32 @enetc_setup_cbdr(ptr noundef %dev, ptr noundef %hw, i32 noundef 64, ptr noundef %cbd_ring) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.err_map_pf_space_crit_edge

if.end20.err_map_pf_space_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_map_pf_space

if.end26:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %rfse.i) #8
  %10 = call ptr @memset(ptr %rfse.i, i32 0, i32 116)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 6148
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %14 = lshr i32 %13, 20
  %add.i = and i32 %14, 240
  %15 = or i32 %add.i, 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end26
  %i.07.i = phi i32 [ 0, %if.end26 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call2.i = call i32 @enetc_set_fs_entry(ptr noundef %5, ptr noundef nonnull %rfse.i, i32 noundef %i.07.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i179 = icmp ne i32 %call2.i, 0
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.07.i, i32 %15)
  %exitcond.not.i = icmp eq i32 %i.07.i, %15
  %or.cond.i = select i1 %tobool.not.i179, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %enetc_init_port_rfs_memory.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

enetc_init_port_rfs_memory.exit:                  ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %rfse.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool28.not = icmp eq i32 %call2.i, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %enetc_init_port_rfs_memory.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %err_setup_mac_addresses

if.end34:                                         ; preds = %enetc_init_port_rfs_memory.exit
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 4
  %add.ptr.i181 = getelementptr i8, ptr %17, i32 5124
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #8, !srcloc !133
  %19 = lshr i32 %18, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %and.i = and i32 %19, 15
  %mul.i = shl nuw nsw i32 32, %and.i
  %20 = shl nuw nsw i32 %mul.i, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #12
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end34.do.end40_crit_edge, label %enetc_init_port_rss_memory.exit

if.end34.do.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

enetc_init_port_rss_memory.exit:                  ; preds = %if.end34
  %call6.i = call i32 @enetc_set_rss_table(ptr noundef %5, ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i) #8
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool36.not = icmp eq i32 %call6.i, 0
  br i1 %tobool36.not, label %if.end42, label %enetc_init_port_rss_memory.exit.do.end40_crit_edge

enetc_init_port_rss_memory.exit.do.end40_crit_edge: ; preds = %enetc_init_port_rss_memory.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

do.end40:                                         ; preds = %enetc_init_port_rss_memory.exit.do.end40_crit_edge, %if.end34.do.end40_crit_edge
  %retval.0.i182204 = phi i32 [ %call6.i, %enetc_init_port_rss_memory.exit.do.end40_crit_edge ], [ -12, %if.end34.do.end40_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %err_setup_mac_addresses

if.end42:                                         ; preds = %enetc_init_port_rss_memory.exit
  br i1 %tobool.not.i, label %if.end42.if.end50_crit_edge, label %land.lhs.true

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end42
  %call44 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #8
  br i1 %call44, label %land.lhs.true.if.end50_crit_edge, label %do.end48

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end48:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %err_setup_mac_addresses

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  %add.ptr.i183 = getelementptr i8, ptr %5, i32 96
  %21 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %add.ptr.i183, align 4
  %call53 = call i32 @pci_sriov_get_totalvfs(ptr noundef %pdev) #8
  %total_vfs = getelementptr i8, ptr %5, i32 104
  %22 = ptrtoint ptr %total_vfs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call53, ptr %total_vfs, align 4
  %call.i184 = call fastcc i32 @enetc_setup_mac_address(ptr noundef %1, ptr noundef %add.ptr.i183, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool.not.i185 = icmp eq i32 %call.i184, 0
  br i1 %tobool.not.i185, label %if.end50.for.cond.i_crit_edge, label %if.end50.err_setup_mac_addresses_crit_edge

if.end50.err_setup_mac_addresses_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup_mac_addresses

if.end50.for.cond.i_crit_edge:                    ; preds = %if.end50
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i189.for.cond.i_crit_edge, %if.end50.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %add.i186, %for.body.i189.for.cond.i_crit_edge ], [ 0, %if.end50.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %24)
  %cmp.i = icmp slt i32 %i.0.i, %24
  br i1 %cmp.i, label %for.body.i189, label %if.end57

for.body.i189:                                    ; preds = %for.cond.i
  %add.i186 = add nuw nsw i32 %i.0.i, 1
  %call1.i187 = call fastcc i32 @enetc_setup_mac_address(ptr noundef null, ptr noundef %add.ptr.i183, i32 noundef %add.i186) #8
  %tobool2.not.i188 = icmp eq i32 %call1.i187, 0
  br i1 %tobool2.not.i188, label %for.body.i189.for.cond.i_crit_edge, label %for.body.i189.err_setup_mac_addresses_crit_edge

for.body.i189.err_setup_mac_addresses_crit_edge:  ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_setup_mac_addresses

for.body.i189.for.cond.i_crit_edge:               ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end57:                                         ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hash_key.i) #8
  %25 = call ptr @memset(ptr %hash_key.i, i32 255, i32 40)
  %26 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i183, align 4
  %hw1.i = getelementptr inbounds %struct.enetc_si, ptr %27, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 6400
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %31 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 6400
  %33 = or i32 %30, 50331648
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %33) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %34 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %35, i32 7936
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %37 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %38, i32 7936
  %39 = or i32 %36, 256
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %39) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %40 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %41, i32 32788
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %42 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.i19.i = getelementptr i8, ptr %43, i32 8224
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %44 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.1.i.i = getelementptr i8, ptr %45, i32 8228
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.1.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %46 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.2.i.i = getelementptr i8, ptr %47, i32 8232
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.2.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %48 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.3.i.i = getelementptr i8, ptr %49, i32 8236
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.3.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %50 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.4.i.i = getelementptr i8, ptr %51, i32 8240
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.4.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %52 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.5.i.i = getelementptr i8, ptr %53, i32 8244
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.5.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %54 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.6.i.i = getelementptr i8, ptr %55, i32 8248
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.6.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %56 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.7.i.i = getelementptr i8, ptr %57, i32 8252
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.7.i.i, i32 -2145058816) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %58 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %59, i32 32776
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 277348352) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %60 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %61, i32 36872
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 277348352) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %62 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port.i.i, align 4
  %add.ptr8.i20.i = getelementptr i8, ptr %63, i32 32796
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i20.i, i32 16777216) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %64 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i183, align 4
  %port.i21.i = getelementptr inbounds %struct.enetc_si, ptr %65, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %port.i21.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %67, i32 2304
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #8, !srcloc !133
  %69 = call i32 @llvm.bswap.i32(i32 %68) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %shr.i.i = lshr i32 %69, 24
  %shr3.i.i = lshr i32 %69, 16
  %and.i.i = and i32 %shr3.i.i, 255
  %70 = call i32 @llvm.umin.i32(i32 %shr.i.i, i32 %and.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %70)
  %cmp4.i.i = icmp ult i32 %70, 8
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.end57.if.end.i.i_crit_edge, !prof !136

if.end57.if.end.i.i_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %or8.i.i = mul nuw nsw i32 %70, 65537
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %65, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.40, i32 noundef %70, i32 noundef 8) #11
  %phi.bo.i.i = or i32 %or8.i.i, 50331648
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end57.if.end.i.i_crit_edge
  %num_rings.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %70, %if.end57.if.end.i.i_crit_edge ]
  %val.0.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i ], [ 50855944, %if.end57.if.end.i.i_crit_edge ]
  %73 = ptrtoint ptr %port.i21.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port.i21.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %74, i32 2368
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %75 = call i32 @llvm.bswap.i32(i32 %val.0.i.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %75) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %76 = and i32 %num_rings.0.i.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.end.i.i.if.end23.i.i_crit_edge, label %if.then17.i.i

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nsw i32 %num_rings.0.i.i, -8
  %total_vfs.i.i = getelementptr i8, ptr %65, i32 104
  %78 = ptrtoint ptr %total_vfs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %total_vfs.i.i, align 4
  %div.i.i = sdiv i32 %sub.i.i, %79
  %and18.i.i = and i32 %div.i.i, 255
  %or19.i.i = mul nuw nsw i32 %and18.i.i, 65537
  %or22.i.i = add nuw nsw i32 %or19.i.i, 50352128
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then17.i.i, %if.end.i.i.if.end23.i.i_crit_edge
  %val.1.i.i = phi i32 [ %or22.i.i, %if.then17.i.i ], [ 50352128, %if.end.i.i.if.end23.i.i_crit_edge ]
  %total_vfs24.i.i = getelementptr i8, ptr %65, i32 104
  %80 = ptrtoint ptr %total_vfs24.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %total_vfs24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp2564.i.i = icmp sgt i32 %81, 0
  br i1 %cmp2564.i.i, label %for.body.lr.ph.i.i, label %if.end23.i.i.enetc_port_si_configure.exit.i_crit_edge

if.end23.i.i.enetc_port_si_configure.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_port_si_configure.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end23.i.i
  %82 = call i32 @llvm.bswap.i32(i32 %val.1.i.i) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %83 = ptrtoint ptr %port.i21.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port.i21.i, align 4
  %add.i.i = add nuw nsw i32 %i.065.i.i, 1
  %mul.i.i = mul i32 %add.i.i, 12
  %add27.i.i = add i32 %mul.i.i, 2368
  %add.ptr28.i.i = getelementptr i8, ptr %84, i32 %add27.i.i
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %82) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %85 = ptrtoint ptr %total_vfs24.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %total_vfs24.i.i, align 4
  %cmp25.i.i = icmp slt i32 %add.i.i, %86
  br i1 %cmp25.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.enetc_port_si_configure.exit.i_crit_edge

for.body.i.i.enetc_port_si_configure.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_port_si_configure.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

enetc_port_si_configure.exit.i:                   ; preds = %for.body.i.i.enetc_port_si_configure.exit.i_crit_edge, %if.end23.i.i.enetc_port_si_configure.exit.i_crit_edge
  %87 = ptrtoint ptr %port.i21.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port.i21.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %88, i32 520
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 50331648) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %89 = ptrtoint ptr %port.i21.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port.i21.i, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %90, i32 5888
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i, i32 16777216) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void @get_random_bytes(ptr noundef nonnull %hash_key.i, i32 noundef 40) #8
  call void @enetc_set_rss_key(ptr noundef %hw1.i, ptr noundef nonnull %hash_key.i) #8
  %91 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i183, align 4
  %port.i23.i = getelementptr inbounds %struct.enetc_si, ptr %92, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %port.i23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %port.i23.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %94, i32 6148
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %96 = lshr i32 %95, 20
  %add.i25.i = and i32 %96, 240
  %mul.i26.i = add nuw nsw i32 %add.i25.i, 16
  %total_vfs.i27.i = getelementptr i8, ptr %92, i32 104
  %97 = ptrtoint ptr %total_vfs.i27.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %total_vfs.i27.i, align 4
  %add3.i.i = add i32 %98, 1
  %div.i28.i = sdiv i32 %mul.i26.i, %add3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp26.i.i = icmp sgt i32 %98, 0
  br i1 %cmp26.i.i, label %for.body.lr.ph.i29.i, label %enetc_port_si_configure.exit.i.enetc_configure_port.exit_crit_edge

enetc_port_si_configure.exit.i.enetc_configure_port.exit_crit_edge: ; preds = %enetc_port_si_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_configure_port.exit

for.body.lr.ph.i29.i:                             ; preds = %enetc_port_si_configure.exit.i
  %99 = call i32 @llvm.bswap.i32(i32 %div.i28.i) #8
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %for.body.i30.i.for.body.i30.i_crit_edge, %for.body.lr.ph.i29.i
  %i.027.i.i = phi i32 [ 0, %for.body.lr.ph.i29.i ], [ %add6.i.i, %for.body.i30.i.for.body.i30.i_crit_edge ]
  %100 = ptrtoint ptr %port.i23.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %port.i23.i, align 4
  %add6.i.i = add nuw nsw i32 %i.027.i.i, 1
  %mul7.i.i = shl i32 %add6.i.i, 2
  %add8.i.i = add i32 %mul7.i.i, 6164
  %add.ptr9.i.i = getelementptr i8, ptr %101, i32 %add8.i.i
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %99) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %102 = ptrtoint ptr %total_vfs.i27.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %total_vfs.i27.i, align 4
  %cmp.i.i = icmp slt i32 %add6.i.i, %103
  br i1 %cmp.i.i, label %for.body.i30.i.for.body.i30.i_crit_edge, label %for.body.i30.i.enetc_configure_port.exit_crit_edge

for.body.i30.i.enetc_configure_port.exit_crit_edge: ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_configure_port.exit

for.body.i30.i.for.body.i30.i_crit_edge:          ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i30.i

enetc_configure_port.exit:                        ; preds = %for.body.i30.i.enetc_configure_port.exit_crit_edge, %enetc_port_si_configure.exit.i.enetc_configure_port.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %98, %enetc_port_si_configure.exit.i.enetc_configure_port.exit_crit_edge ], [ %103, %for.body.i30.i.enetc_configure_port.exit_crit_edge ]
  %104 = ptrtoint ptr %port.i23.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %port.i23.i, align 4
  %add.ptr11.i31.i = getelementptr i8, ptr %105, i32 6164
  %mul13.i.i = mul i32 %.lcssa.i.i, %div.i28.i
  %sub.i32.i = sub i32 %mul.i26.i, %mul13.i.i
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %106 = call i32 @llvm.bswap.i32(i32 %sub.i32.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i31.i, i32 %106) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %107 = ptrtoint ptr %port.i23.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %port.i23.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %108, i32 6144
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 128) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %vlan_promisc_simap.i = getelementptr i8, ptr %5, i32 276
  %109 = ptrtoint ptr %vlan_promisc_simap.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 7, ptr %vlan_promisc_simap.i, align 4
  %110 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %111, i32 28
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %113 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.i35.i = getelementptr i8, ptr %114, i32 28
  %115 = or i32 %112, 117440512
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i35.i, i32 %115) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %116 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %117, i32 24
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 0) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %118 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %port.i.i, align 4
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 1792) #8, !srcloc !131
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hash_key.i) #8
  call void @enetc_get_si_caps(ptr noundef %5) #8
  %call58 = call ptr @alloc_etherdev_mqs(i32 noundef 320, i32 noundef 8, i32 noundef 8) #8
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end65

if.then60:                                        ; preds = %enetc_configure_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %err_setup_mac_addresses

if.end65:                                         ; preds = %enetc_configure_port.exit
  call fastcc void @enetc_pf_netdev_setup(ptr noundef %5, ptr noundef nonnull %call58)
  %add.ptr.i192 = getelementptr i8, ptr %call58, i32 2304
  call void @enetc_init_si_rings_params(ptr noundef %add.ptr.i192) #8
  %call67 = call i32 @enetc_alloc_si_resources(ptr noundef %add.ptr.i192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %err_alloc_si_res

if.end74:                                         ; preds = %if.end65
  %call75 = call i32 @enetc_configure_si(ptr noundef %add.ptr.i192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %err_alloc_msix

if.end82:                                         ; preds = %if.end74
  %call83 = call i32 @enetc_alloc_msix(ptr noundef %add.ptr.i192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %err_alloc_msix

if.end90:                                         ; preds = %if.end82
  %if_mode = getelementptr i8, ptr %5, i32 812
  %call91 = call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef %if_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end90.if.end102_crit_edge

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then93:                                        ; preds = %if.end90
  %call94 = call fastcc i32 @enetc_mdiobus_create(ptr noundef %add.ptr.i183, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then93.err_mdiobus_create_crit_edge

if.then93.err_mdiobus_create_crit_edge:           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mdiobus_create

if.end97:                                         ; preds = %if.then93
  %call98 = call fastcc i32 @enetc_phylink_create(ptr noundef %add.ptr.i192, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.if.end102_crit_edge, label %if.end97.err_phylink_create_crit_edge

if.end97.err_phylink_create_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_phylink_create

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end102:                                        ; preds = %if.end97.if.end102_crit_edge, %if.end90.if.end102_crit_edge
  %call103 = call i32 @register_netdev(ptr noundef nonnull %call58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.cleanup_crit_edge, label %err_reg_netdev

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_reg_netdev:                                   ; preds = %if.end102
  %phylink.i = getelementptr i8, ptr %call58, i32 2504
  %120 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phylink.i, align 4
  %tobool.not.i193 = icmp eq ptr %121, null
  br i1 %tobool.not.i193, label %err_reg_netdev.err_phylink_create_crit_edge, label %if.then.i

err_reg_netdev.err_phylink_create_crit_edge:      ; preds = %err_reg_netdev
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_phylink_create

if.then.i:                                        ; preds = %err_reg_netdev
  call void @__sanitizer_cov_trace_pc() #10
  call void @phylink_destroy(ptr noundef nonnull %121) #8
  br label %err_phylink_create

err_phylink_create:                               ; preds = %if.then.i, %err_reg_netdev.err_phylink_create_crit_edge, %if.end97.err_phylink_create_crit_edge
  %err.0 = phi i32 [ %call98, %if.end97.err_phylink_create_crit_edge ], [ %call103, %err_reg_netdev.err_phylink_create_crit_edge ], [ %call103, %if.then.i ]
  call fastcc void @enetc_mdiobus_destroy(ptr noundef %add.ptr.i183)
  br label %err_mdiobus_create

err_mdiobus_create:                               ; preds = %err_phylink_create, %if.then93.err_mdiobus_create_crit_edge
  %err.1 = phi i32 [ %err.0, %err_phylink_create ], [ %call94, %if.then93.err_mdiobus_create_crit_edge ]
  call void @enetc_free_msix(ptr noundef %add.ptr.i192) #8
  br label %err_alloc_msix

err_alloc_msix:                                   ; preds = %err_mdiobus_create, %do.end88, %do.end80
  %err.2 = phi i32 [ %call75, %do.end80 ], [ %call83, %do.end88 ], [ %err.1, %err_mdiobus_create ]
  call void @enetc_free_si_resources(ptr noundef %add.ptr.i192) #8
  br label %err_alloc_si_res

err_alloc_si_res:                                 ; preds = %err_alloc_msix, %do.end72
  %err.3 = phi i32 [ %call67, %do.end72 ], [ %err.2, %err_alloc_msix ]
  %ndev107 = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 3
  %122 = ptrtoint ptr %ndev107 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %ndev107, align 4
  call void @free_netdev(ptr noundef nonnull %call58) #8
  br label %err_setup_mac_addresses

err_setup_mac_addresses:                          ; preds = %err_alloc_si_res, %if.then60, %for.body.i189.err_setup_mac_addresses_crit_edge, %if.end50.err_setup_mac_addresses_crit_edge, %do.end48, %do.end40, %do.end32
  %err.4 = phi i32 [ %call2.i, %do.end32 ], [ %retval.0.i182204, %do.end40 ], [ %err.3, %err_alloc_si_res ], [ -12, %if.then60 ], [ -19, %do.end48 ], [ %call.i184, %if.end50.err_setup_mac_addresses_crit_edge ], [ %call1.i187, %for.body.i189.err_setup_mac_addresses_crit_edge ]
  call void @enetc_teardown_cbdr(ptr noundef %cbd_ring) #8
  br label %err_map_pf_space

err_map_pf_space:                                 ; preds = %err_setup_mac_addresses, %if.end20.err_map_pf_space_crit_edge, %if.then15
  %err.5 = phi i32 [ %call23, %if.end20.err_map_pf_space_crit_edge ], [ %err.4, %err_setup_mac_addresses ], [ -19, %if.then15 ]
  call void @enetc_pci_remove(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_map_pf_space, %if.end102.cleanup_crit_edge, %if.then7, %enetc_pf_register_with_ierb.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then7 ], [ %err.5, %err_map_pf_space ], [ %call11.i, %enetc_pf_register_with_ierb.exit.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ], [ -517, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pf_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %num_vfs = getelementptr i8, ptr %1, i32 100
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enetc_msg_psi_free(ptr noundef %add.ptr.i) #8
  %vf_state.i = getelementptr i8, ptr %1, i32 108
  %6 = ptrtoint ptr %vf_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_state.i, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_vfs, align 4
  tail call void @pci_disable_sriov(ptr noundef %pdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void @unregister_netdev(ptr noundef %10) #8
  %phylink.i = getelementptr i8, ptr %3, i32 2504
  %11 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phylink.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.enetc_phylink_destroy.exit_crit_edge, label %if.then.i

if.end.enetc_phylink_destroy.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_phylink_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phylink_destroy(ptr noundef nonnull %12) #8
  br label %enetc_phylink_destroy.exit

enetc_phylink_destroy.exit:                       ; preds = %if.then.i, %if.end.enetc_phylink_destroy.exit_crit_edge
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 2304
  tail call fastcc void @enetc_mdiobus_destroy(ptr noundef %add.ptr.i)
  tail call void @enetc_free_msix(ptr noundef %add.ptr.i15) #8
  tail call void @enetc_free_si_resources(ptr noundef %add.ptr.i15) #8
  %cbd_ring = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 4
  tail call void @enetc_teardown_cbdr(ptr noundef %cbd_ring) #8
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  tail call void @free_netdev(ptr noundef %14) #8
  tail call void @enetc_pci_remove(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_sriov_configure(ptr noundef %pdev, i32 noundef %num_vfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %tobool.not = icmp eq i32 %num_vfs, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enetc_msg_psi_free(ptr noundef %add.ptr.i) #8
  %vf_state = getelementptr i8, ptr %1, i32 108
  %2 = ptrtoint ptr %vf_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_state, align 4
  tail call void @kfree(ptr noundef %3) #8
  %num_vfs2 = getelementptr i8, ptr %1, i32 100
  %4 = ptrtoint ptr %num_vfs2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_vfs2, align 4
  tail call void @pci_disable_sriov(ptr noundef %pdev) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %num_vfs3 = getelementptr i8, ptr %1, i32 100
  %5 = ptrtoint ptr %num_vfs3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %num_vfs, ptr %num_vfs3, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_vfs, i32 4) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !136

kcalloc.exit.thread:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %vf_state550 = getelementptr i8, ptr %1, i32 108
  %8 = ptrtoint ptr %vf_state550 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vf_state550, align 4
  br label %if.then8

if.end7.i.i:                                      ; preds = %if.else
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #12
  %vf_state5 = getelementptr i8, ptr %1, i32 108
  %10 = ptrtoint ptr %vf_state5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %vf_state5, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.if.then8_crit_edge, label %if.end

if.end7.i.i.if.then8_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end7.i.i.if.then8_crit_edge, %kcalloc.exit.thread
  %11 = ptrtoint ptr %num_vfs3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_vfs3, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %call10 = tail call i32 @enetc_msg_psi_init(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call10) #11
  br label %err_msg_psi

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @pci_enable_sriov(ptr noundef %pdev, i32 noundef %num_vfs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %do.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.61, i32 noundef %call14) #11
  tail call void @enetc_msg_psi_free(ptr noundef %add.ptr.i) #8
  br label %err_msg_psi

err_msg_psi:                                      ; preds = %do.end19, %do.end
  %err.0 = phi i32 [ %call10, %do.end ], [ %call14, %do.end19 ]
  %12 = ptrtoint ptr %vf_state5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf_state5, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %num_vfs3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num_vfs3, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_msg_psi, %if.end13.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %err.0, %err_msg_psi ], [ -12, %if.then8 ], [ %num_vfs, %if.end13.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_pci_probe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_cbdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_get_totalvfs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_get_si_caps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_pf_netdev_setup(ptr noundef %si, ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndev, ptr %add.ptr.i, align 4
  %si3 = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %si3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %si, ptr %si3, align 4
  %5 = load ptr, ptr %si, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dev6 = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev5, ptr %dev6, align 4
  %ndev7 = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 3
  %7 = ptrtoint ptr %ndev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ndev, ptr %ndev7, align 4
  %msg_enable = getelementptr i8, ptr %ndev, i32 2336
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 32767, ptr %msg_enable, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @enetc_ndev_ops, ptr %netdev_ops, align 8
  tail call void @enetc_set_ethtool_ops(ptr noundef %ndev) #8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 115
  %10 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %watchdog_timeo, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %11 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9578, ptr %max_mtu, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 5497559253897, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %13 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1099512742313, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 26
  %14 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1114121, ptr %vlan_features, align 8
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 8
  %15 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 6047315067785, ptr %hw_features, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags, align 16
  %or9 = or i64 %19, 4096
  store i64 %or9, ptr %priv_flags, align 16
  %hw_features10 = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 10
  %20 = ptrtoint ptr %hw_features10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_features10, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %active_offloads = getelementptr i8, ptr %ndev, i32 2340
  %22 = ptrtoint ptr %active_offloads to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_offloads, align 4
  %or13 = or i32 %23, 512
  store i32 %or13, ptr %active_offloads, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %24 = ptrtoint ptr %hw_features10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_features10, align 4
  %and16 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end27_crit_edge, label %land.lhs.true

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end14
  %26 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %si3, align 4
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 6920
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %31 = and i32 %30, -65536
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %psfp_cap.i.i = getelementptr i8, ptr %ndev, i32 2484
  %33 = ptrtoint ptr %psfp_cap.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %psfp_cap.i.i, align 4
  %34 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %si3, align 4
  %port3.i.i = getelementptr inbounds %struct.enetc_si, ptr %35, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %37, i32 6936
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %39 = and i32 %38, -65536
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %max_psfp_filter.i.i = getelementptr i8, ptr %ndev, i32 2488
  %41 = ptrtoint ptr %max_psfp_filter.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_psfp_filter.i.i, align 4
  %42 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %si3, align 4
  %port10.i.i = getelementptr inbounds %struct.enetc_si, ptr %43, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %port10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port10.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %45, i32 6952
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #8, !srcloc !133
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %and13.i.i = and i32 %47, 65535
  %max_psfp_gate.i.i = getelementptr i8, ptr %ndev, i32 2492
  %48 = ptrtoint ptr %max_psfp_gate.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and13.i.i, ptr %max_psfp_gate.i.i, align 4
  %and15.i.i = lshr i32 %47, 16
  %shr.i.i = and i32 %and15.i.i, 7
  %max_psfp_gatelist.i.i = getelementptr i8, ptr %ndev, i32 2496
  %49 = ptrtoint ptr %max_psfp_gatelist.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr.i.i, ptr %max_psfp_gatelist.i.i, align 4
  %50 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %si3, align 4
  %port19.i.i = getelementptr inbounds %struct.enetc_si, ptr %51, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %port19.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port19.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %53, i32 6968
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %55 = and i32 %54, -65536
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %max_psfp_meter.i.i = getelementptr i8, ptr %ndev, i32 2500
  %57 = ptrtoint ptr %max_psfp_meter.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %max_psfp_meter.i.i, align 4
  %call.i = tail call i32 @enetc_psfp_init(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then20, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %hw1.i = getelementptr inbounds %struct.enetc_si, ptr %27, i32 0, i32 1
  %58 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %59, i32 72448
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %61 = or i32 %60, 251658240
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %61) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %active_offloads21 = getelementptr i8, ptr %ndev, i32 2340
  %62 = ptrtoint ptr %active_offloads21 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %active_offloads21, align 4
  %or22 = or i32 %63, 1024
  store i32 %or22, ptr %active_offloads21, align 4
  %64 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features, align 16
  %or24 = or i64 %65, 562949953421312
  store i64 %or24, ptr %features, align 16
  %66 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %hw_features, align 8
  %or26 = or i64 %67, 562949953421312
  store i64 %or26, ptr %hw_features, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %land.lhs.true.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %hw = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #8
  %68 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %add.ptr.i2 = getelementptr i8, ptr %70, i32 128
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #8, !srcloc !133
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %addr.i, align 4
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %74, i32 132
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !137
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %68, align 4
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_init_si_rings_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_alloc_si_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_configure_si(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_alloc_msix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_mdiobus_create(ptr nocapture noundef %pf, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef nonnull @.str.44) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev1.i, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %enetc_mdio_probe.exit.thread47, label %if.end.i

enetc_mdio_probe.exit.thread47:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.45, ptr %name.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @enetc_mdio_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @enetc_mdio_write, ptr %write.i, align 8
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1.i, ptr %parent.i, align 4
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hw.i, ptr %9, align 4
  %mdio_base.i = getelementptr inbounds %struct.enetc_mdio_priv, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %mdio_base.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7168, ptr %mdio_base.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.46, ptr noundef %retval.0.i.i) #8
  %call6.i = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %enetc_mdio_probe.exit.thread, label %enetc_mdio_probe.exit

enetc_mdio_probe.exit.thread:                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mdio.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 11
  %18 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %mdio.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %if.end4

enetc_mdio_probe.exit:                            ; preds = %dev_name.exit.i
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1.i, i32 noundef %call6.i, ptr noundef nonnull @.str.47) #8
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool2.not = icmp eq i32 %call9.i, 0
  br i1 %tobool2.not, label %enetc_mdio_probe.exit.if.end4_crit_edge, label %enetc_mdio_probe.exit.cleanup_crit_edge

enetc_mdio_probe.exit.cleanup_crit_edge:          ; preds = %enetc_mdio_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

enetc_mdio_probe.exit.if.end4_crit_edge:          ; preds = %enetc_mdio_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %enetc_mdio_probe.exit.if.end4_crit_edge, %enetc_mdio_probe.exit.thread, %entry.if.end4_crit_edge
  %if_mode.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 14
  %19 = ptrtoint ptr %if_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %if_mode.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %20, label %if.end4.cleanup_crit_edge [
    i32 4, label %if.end4.if.then6_crit_edge
    i32 22, label %if.end4.if.then6_crit_edge59
    i32 28, label %if.end4.if.then6_crit_edge60
  ]

if.end4.if.then6_crit_edge60:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end4.if.then6_crit_edge59:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.if.then6_crit_edge59, %if.end4.if.then6_crit_edge60
  %22 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev1.i21 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %call.i22 = tail call ptr @mdiobus_alloc_size(i32 noundef 8) #8
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %if.then6.if.then9_crit_edge, label %if.end.i34

if.then6.if.then9_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end.i34:                                       ; preds = %if.then6
  %name.i24 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 1
  %26 = ptrtoint ptr %name.i24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.48, ptr %name.i24, align 4
  %read.i25 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 4
  %27 = ptrtoint ptr %read.i25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @enetc_mdio_read, ptr %read.i25, align 4
  %write.i26 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 5
  %28 = ptrtoint ptr %write.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @enetc_mdio_write, ptr %write.i26, align 8
  %parent.i27 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 9
  %29 = ptrtoint ptr %parent.i27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1.i21, ptr %parent.i27, align 4
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 13
  %30 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %phy_mask.i, align 8
  %priv.i28 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 3
  %31 = ptrtoint ptr %priv.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i28, align 8
  %33 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pf, align 4
  %hw.i29 = getelementptr inbounds %struct.enetc_si, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %hw.i29, ptr %32, align 4
  %mdio_base.i30 = getelementptr inbounds %struct.enetc_mdio_priv, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %mdio_base.i30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32816, ptr %mdio_base.i30, align 4
  %id.i31 = getelementptr inbounds %struct.mii_bus, ptr %call.i22, i32 0, i32 2
  %init_name.i.i32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i32, align 8
  %tobool.not.i.i33 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i33, label %if.end.i.i35, label %if.end.i34.dev_name.exit.i40_crit_edge

if.end.i34.dev_name.exit.i40_crit_edge:           ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i40

if.end.i.i35:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev1.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i21, align 4
  br label %dev_name.exit.i40

dev_name.exit.i40:                                ; preds = %if.end.i.i35, %if.end.i34.dev_name.exit.i40_crit_edge
  %retval.0.i.i36 = phi ptr [ %40, %if.end.i.i35 ], [ %38, %if.end.i34.dev_name.exit.i40_crit_edge ]
  %call5.i37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i31, i32 noundef 61, ptr noundef nonnull @.str.49, ptr noundef %retval.0.i.i36) #8
  %call6.i38 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i22, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i38)
  %tobool7.not.i39 = icmp eq i32 %call6.i38, 0
  br i1 %tobool7.not.i39, label %if.end9.i, label %enetc_imdio_create.exit.thread56

enetc_imdio_create.exit.thread56:                 ; preds = %dev_name.exit.i40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i21, ptr noundef nonnull @.str.50, i32 noundef %call6.i38) #11
  br label %if.then9.sink.split

if.end9.i:                                        ; preds = %dev_name.exit.i40
  %call10.i = tail call ptr @mdio_device_create(ptr noundef nonnull %call.i22, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then12.i, label %if.end17.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call10.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i21, ptr noundef nonnull @.str.53, i32 noundef %41) #11
  br label %enetc_imdio_create.exit

if.end17.i:                                       ; preds = %if.end9.i
  %call18.i = tail call ptr @lynx_pcs_create(ptr noundef %call10.i) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %enetc_imdio_create.exit.thread

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mdio_device_free(ptr noundef %call10.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i21, ptr noundef nonnull @.str.56, i32 noundef -12) #11
  br label %enetc_imdio_create.exit

enetc_imdio_create.exit.thread:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %imdio.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 12
  %42 = ptrtoint ptr %imdio.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i22, ptr %imdio.i, align 4
  %pcs.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 13
  %43 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call18.i, ptr %pcs.i, align 4
  br label %cleanup

enetc_imdio_create.exit:                          ; preds = %if.then20.i, %if.then12.i
  %err.0.i = phi i32 [ %41, %if.then12.i ], [ -12, %if.then20.i ]
  tail call void @mdiobus_unregister(ptr noundef nonnull %call.i22) #8
  br label %if.then9.sink.split

if.then9.sink.split:                              ; preds = %enetc_imdio_create.exit, %enetc_imdio_create.exit.thread56
  %retval.0.i4155.ph = phi i32 [ %call6.i38, %enetc_imdio_create.exit.thread56 ], [ %err.0.i, %enetc_imdio_create.exit ]
  tail call void @mdiobus_free(ptr noundef nonnull %call.i22) #8
  br label %if.then9

if.then9:                                         ; preds = %if.then9.sink.split, %if.then6.if.then9_crit_edge
  %retval.0.i4155 = phi i32 [ -12, %if.then6.if.then9_crit_edge ], [ %retval.0.i4155.ph, %if.then9.sink.split ]
  %mdio.i42 = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 11
  %44 = ptrtoint ptr %mdio.i42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio.i42, align 4
  %tobool.not.i43 = icmp eq ptr %45, null
  br i1 %tobool.not.i43, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mdiobus_unregister(ptr noundef nonnull %45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then9.cleanup_crit_edge, %enetc_imdio_create.exit.thread, %if.end4.cleanup_crit_edge, %enetc_mdio_probe.exit.cleanup_crit_edge, %enetc_mdio_probe.exit.thread47
  %retval.0 = phi i32 [ %call9.i, %enetc_mdio_probe.exit.cleanup_crit_edge ], [ -12, %enetc_mdio_probe.exit.thread47 ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %enetc_imdio_create.exit.thread ], [ %retval.0.i4155, %if.then9.cleanup_crit_edge ], [ %retval.0.i4155, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_phylink_create(ptr nocapture noundef %priv, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  %phylink_config = getelementptr i8, ptr %1, i32 816
  %4 = ptrtoint ptr %phylink_config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %phylink_config, align 4
  %type = getelementptr i8, ptr %1, i32 820
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %mac_capabilities = getelementptr i8, ptr %1, i32 836
  %6 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 511, ptr %mac_capabilities, align 4
  %supported_interfaces = getelementptr i8, ptr %1, i32 832
  %7 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported_interfaces, align 4
  %or.i6.i = or i32 %8, 272637458
  store i32 %or.i6.i, ptr %supported_interfaces, align 4
  %tobool.not = icmp eq ptr %node, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode
  %if_mode = getelementptr i8, ptr %1, i32 812
  %9 = ptrtoint ptr %if_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_mode, align 4
  %call18 = tail call ptr @phylink_create(ptr noundef %phylink_config, ptr noundef %spec.select, i32 noundef %10, ptr noundef nonnull @enetc_mac_phylink_ops) #8
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phylink21 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 17
  %12 = ptrtoint ptr %phylink21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %phylink21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_mdiobus_destroy(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 11
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.enetc_mdio_remove.exit_crit_edge, label %if.then.i

entry.enetc_mdio_remove.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_mdio_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mdiobus_unregister(ptr noundef nonnull %1) #8
  br label %enetc_mdio_remove.exit

enetc_mdio_remove.exit:                           ; preds = %if.then.i, %entry.enetc_mdio_remove.exit_crit_edge
  %pcs.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 13
  %2 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs.i, align 4
  %tobool.not.i2 = icmp eq ptr %3, null
  br i1 %tobool.not.i2, label %enetc_mdio_remove.exit.if.end.i_crit_edge, label %if.then.i3

enetc_mdio_remove.exit.if.end.i_crit_edge:        ; preds = %enetc_mdio_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i3:                                       ; preds = %enetc_mdio_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @lynx_get_mdio_device(ptr noundef nonnull %3) #8
  tail call void @mdio_device_free(ptr noundef %call.i) #8
  %4 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs.i, align 4
  tail call void @lynx_pcs_destroy(ptr noundef %5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i3, %enetc_mdio_remove.exit.if.end.i_crit_edge
  %imdio.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 12
  %6 = ptrtoint ptr %imdio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imdio.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.end.i.enetc_imdio_remove.exit_crit_edge, label %if.then4.i

if.end.i.enetc_imdio_remove.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_imdio_remove.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mdiobus_unregister(ptr noundef nonnull %7) #8
  %8 = ptrtoint ptr %imdio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imdio.i, align 4
  tail call void @mdiobus_free(ptr noundef %9) #8
  br label %enetc_imdio_remove.exit

enetc_imdio_remove.exit:                          ; preds = %if.then4.i, %if.end.i.enetc_imdio_remove.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_free_msix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_free_si_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_teardown_cbdr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_pci_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_ierb_register_pf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_fs_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_rss_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_setup_mac_address(ptr noundef %np, ptr nocapture noundef readonly %pf, i32 noundef %si) unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #8
  %4 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = call i32 @of_get_mac_address(ptr noundef nonnull %np, ptr noundef nonnull %mac_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call)
  %cmp = icmp eq i32 %call, -517
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 4
  %conv.i = zext i16 %8 to i32
  %or.i = or i32 %6, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %mul.i = shl i32 %si, 3
  %add.i = add i32 %mul.i, 256
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 %add.i
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !133
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i, align 4
  %add3.i = add i32 %mul.i, 260
  %add.ptr4.i = getelementptr i8, ptr %13, i32 %add3.i
  %14 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #8, !srcloc !137
  %15 = call i32 @llvm.bswap.i32(i32 %11) #8
  %16 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mac_addr, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %14) #8
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %19 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac_addr, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 4
  %conv.i30 = zext i16 %22 to i32
  %or.i31 = or i32 %20, %conv.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i31)
  %cmp.i32 = icmp eq i32 %or.i31, 0
  br i1 %cmp.i32, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #8
  %23 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac_addr, align 4
  %25 = and i8 %24, -4
  %26 = or i8 %25, 2
  store i8 %26, ptr %mac_addr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.38, i32 noundef %si, ptr noundef nonnull %mac_addr) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %27 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac_addr, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31) #8
  %port.i34 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port.i34, align 4
  %mul.i35 = shl i32 %si, 3
  %add.i36 = add i32 %mul.i35, 256
  %add.ptr2.i = getelementptr i8, ptr %34, i32 %add.i36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %29) #8, !srcloc !131
  %35 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port.i34, align 4
  %add5.i = add i32 %mul.i35, 260
  %add.ptr6.i37 = getelementptr i8, ptr %36, i32 %add5.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i37, i16 %32) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -517, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_set_rss_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_set_ethtool_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_psfp_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_open(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_close(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_xmit(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pf_set_rx_mode(ptr noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %add.ptr.i93 = getelementptr i8, ptr %1, i32 96
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %mprom.0.off0 = select i1 %not.tobool.not, i1 true, i1 %tobool6.not
  br i1 %tobool.not, label %if.then10, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then10:                                        ; preds = %entry
  %mac_filter = getelementptr i8, ptr %1, i32 112
  %mac_addr_cnt.i = getelementptr i8, ptr %1, i32 120
  %4 = ptrtoint ptr %mac_addr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mac_addr_cnt.i, align 4
  %5 = ptrtoint ptr %mac_filter to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %mac_filter, align 4
  %uc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %8 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.0196 = load ptr, ptr %uc, align 4
  %cmp15.not197 = icmp eq ptr %ha.0196, %uc
  br i1 %cmp15.not197, label %if.then10.if.end26_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body:                                         ; preds = %cond.false.i.i.for.body_crit_edge, %if.then10.for.body_crit_edge
  %ha.0198 = phi ptr [ %ha.0, %cond.false.i.i.for.body_crit_edge ], [ %ha.0196, %if.then10.for.body_crit_edge ]
  br i1 %cmp, label %if.then17, label %cond.false.i.i

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0196, i32 0, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %11 = ptrtoint ptr %mac_filter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mac_filter, align 4
  %add.ptr.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0196, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 116
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i.i, align 2
  %15 = ptrtoint ptr %mac_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_addr_cnt.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %mac_addr_cnt.i, align 4
  br label %if.end26

cond.false.i.i:                                   ; preds = %for.body
  %arrayidx.4.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %conv.4.i.i.i = zext i8 %18 to i64
  %19 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %arrayidx.3.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %21 to i64
  %22 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %23 = or i64 %19, %22
  %arrayidx.1.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %25 to i64
  %26 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %addr19 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2
  %27 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr19, align 1
  %conv.i.i.i = zext i8 %28 to i64
  %29 = shl nuw nsw i64 %conv.i.i.i, 16
  %shl.2.i.i.i = or i64 %26, %29
  %arrayidx.2.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %31 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %32 = shl nuw nsw i64 %or.2.i.i.i, 24
  %shl.5.i.i.i = or i64 %23, %32
  %arrayidx.5.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0198, i32 0, i32 2, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %conv.5.i.i.i = zext i8 %34 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  %35 = tail call i64 @llvm.bswap.i64(i64 %or.5.i.i.i) #8
  %shr.i.i = lshr i64 %35, 16
  %and.i.i = and i64 %shr.i.i, 4467856773185
  %call.i.i.i = tail call i32 @__sw_hweight64(i64 noundef %and.i.i) #8
  %and740.i.i = and i32 %call.i.i.i, 1
  %and.i.i.1 = and i64 %shr.i.i, 8935713546370
  %call.i.i.i.1 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i.1) #8
  %and740.i.i.1 = shl i32 %call.i.i.i.1, 1
  %shl741.i.i.1 = and i32 %and740.i.i.1, 2
  %or742.i.i.1 = or i32 %shl741.i.i.1, %and740.i.i
  %and.i.i.2 = and i64 %shr.i.i, 17871427092740
  %call.i.i.i.2 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i.2) #8
  %and740.i.i.2 = shl i32 %call.i.i.i.2, 2
  %shl741.i.i.2 = and i32 %and740.i.i.2, 4
  %or742.i.i.2 = or i32 %shl741.i.i.2, %or742.i.i.1
  %and.i.i.3 = and i64 %shr.i.i, 35742854185480
  %call.i.i.i.3 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i.3) #8
  %and740.i.i.3 = shl i32 %call.i.i.i.3, 3
  %shl741.i.i.3 = and i32 %and740.i.i.3, 8
  %or742.i.i.3 = or i32 %shl741.i.i.3, %or742.i.i.2
  %and.i.i.4 = and i64 %shr.i.i, 71485708370960
  %call.i.i.i.4 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i.4) #8
  %and740.i.i.4 = shl i32 %call.i.i.i.4, 4
  %shl741.i.i.4 = and i32 %and740.i.i.4, 16
  %or742.i.i.4 = or i32 %shl741.i.i.4, %or742.i.i.3
  %and.i.i.5 = and i64 %shr.i.i, 142971416741920
  %call.i.i.i.5 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i.5) #8
  %and740.i.i.5 = and i32 %call.i.i.i.5, 1
  %shl.i.i = shl nuw i32 1, %or742.i.i.4
  %add.ptr.i.i95 = getelementptr i32, ptr %mac_filter, i32 %and740.i.i.5
  %36 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i95, align 4
  %or.i.i = or i32 %37, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i95, align 4
  %38 = ptrtoint ptr %mac_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_addr_cnt.i, align 4
  %inc.i97 = add i32 %39, 1
  store i32 %inc.i97, ptr %mac_addr_cnt.i, align 4
  %40 = ptrtoint ptr %ha.0198 to i32
  call void @__asan_load4_noabort(i32 %40)
  %ha.0 = load ptr, ptr %ha.0198, align 4
  %cmp15.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp15.not, label %cond.false.i.i.if.end26_crit_edge, label %cond.false.i.i.for.body_crit_edge

cond.false.i.i.for.body_crit_edge:                ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.false.i.i.if.end26_crit_edge:                ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %cond.false.i.i.if.end26_crit_edge, %if.then17, %if.then10.if.end26_crit_edge, %entry.if.end26_crit_edge
  br i1 %mprom.0.off0, label %if.end26.if.end57_crit_edge, label %if.then28

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then28:                                        ; preds = %if.end26
  %arrayidx30 = getelementptr i8, ptr %1, i32 124
  %mac_addr_cnt.i98 = getelementptr i8, ptr %1, i32 132
  %41 = ptrtoint ptr %mac_addr_cnt.i98 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mac_addr_cnt.i98, align 4
  %42 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 0, ptr %arrayidx30, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %43 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %43)
  %ha.1199 = load ptr, ptr %mc, align 4
  %cmp40.not200 = icmp eq ptr %ha.1199, %mc
  br i1 %cmp40.not200, label %if.then28.if.then60_crit_edge, label %if.then28.for.body42_crit_edge

if.then28.for.body42_crit_edge:                   ; preds = %if.then28
  br label %for.body42

if.then28.if.then60_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

for.body42:                                       ; preds = %for.inc50.for.body42_crit_edge, %if.then28.for.body42_crit_edge
  %ha.1201 = phi ptr [ %ha.1, %for.inc50.for.body42_crit_edge ], [ %ha.1199, %if.then28.for.body42_crit_edge ]
  %addr43 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2
  %44 = ptrtoint ptr %addr43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr43, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not = icmp eq i32 %46, 0
  br i1 %tobool.i.not, label %for.body42.for.inc50_crit_edge, label %cond.false.i.i171

for.body42.for.inc50_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50

cond.false.i.i171:                                ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.4.i.i.i108 = getelementptr %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %arrayidx.4.i.i.i108 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.4.i.i.i108, align 1
  %conv.4.i.i.i109 = zext i8 %48 to i64
  %49 = shl nuw nsw i64 %conv.4.i.i.i109, 8
  %arrayidx.3.i.i.i106 = getelementptr %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i.i.i106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3.i.i.i106, align 1
  %conv.3.i.i.i107 = zext i8 %51 to i64
  %52 = shl nuw nsw i64 %conv.3.i.i.i107, 16
  %53 = or i64 %49, %52
  %arrayidx.1.i.i.i100 = getelementptr %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx.1.i.i.i100 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.1.i.i.i100, align 1
  %conv.1.i.i.i101 = zext i8 %55 to i64
  %56 = shl nuw nsw i64 %conv.1.i.i.i101, 8
  %57 = ptrtoint ptr %addr43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr43, align 1
  %conv.i.i.i99 = zext i8 %58 to i64
  %59 = shl nuw nsw i64 %conv.i.i.i99, 16
  %shl.2.i.i.i102 = or i64 %56, %59
  %arrayidx.2.i.i.i103 = getelementptr %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %arrayidx.2.i.i.i103 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.2.i.i.i103, align 1
  %conv.2.i.i.i104 = zext i8 %61 to i64
  %or.2.i.i.i105 = or i64 %shl.2.i.i.i102, %conv.2.i.i.i104
  %62 = shl nuw nsw i64 %or.2.i.i.i105, 24
  %shl.5.i.i.i110 = or i64 %53, %62
  %arrayidx.5.i.i.i111 = getelementptr %struct.netdev_hw_addr, ptr %ha.1201, i32 0, i32 2, i32 5
  %63 = ptrtoint ptr %arrayidx.5.i.i.i111 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.5.i.i.i111, align 1
  %conv.5.i.i.i112 = zext i8 %64 to i64
  %or.5.i.i.i113 = or i64 %shl.5.i.i.i110, %conv.5.i.i.i112
  %65 = tail call i64 @llvm.bswap.i64(i64 %or.5.i.i.i113) #8
  %shr.i.i114 = lshr i64 %65, 16
  %and.i.i119 = and i64 %shr.i.i114, 4467856773185
  %call.i.i.i170 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119) #8
  %and740.i.i173 = and i32 %call.i.i.i170, 1
  %and.i.i119.1 = and i64 %shr.i.i114, 8935713546370
  %call.i.i.i170.1 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119.1) #8
  %and740.i.i173.1 = shl i32 %call.i.i.i170.1, 1
  %shl741.i.i174.1 = and i32 %and740.i.i173.1, 2
  %or742.i.i175.1 = or i32 %shl741.i.i174.1, %and740.i.i173
  %and.i.i119.2 = and i64 %shr.i.i114, 17871427092740
  %call.i.i.i170.2 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119.2) #8
  %and740.i.i173.2 = shl i32 %call.i.i.i170.2, 2
  %shl741.i.i174.2 = and i32 %and740.i.i173.2, 4
  %or742.i.i175.2 = or i32 %shl741.i.i174.2, %or742.i.i175.1
  %and.i.i119.3 = and i64 %shr.i.i114, 35742854185480
  %call.i.i.i170.3 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119.3) #8
  %and740.i.i173.3 = shl i32 %call.i.i.i170.3, 3
  %shl741.i.i174.3 = and i32 %and740.i.i173.3, 8
  %or742.i.i175.3 = or i32 %shl741.i.i174.3, %or742.i.i175.2
  %and.i.i119.4 = and i64 %shr.i.i114, 71485708370960
  %call.i.i.i170.4 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119.4) #8
  %and740.i.i173.4 = shl i32 %call.i.i.i170.4, 4
  %shl741.i.i174.4 = and i32 %and740.i.i173.4, 16
  %or742.i.i175.4 = or i32 %shl741.i.i174.4, %or742.i.i175.3
  %and.i.i119.5 = and i64 %shr.i.i114, 142971416741920
  %call.i.i.i170.5 = tail call i32 @__sw_hweight64(i64 noundef %and.i.i119.5) #8
  %and740.i.i173.5 = and i32 %call.i.i.i170.5, 1
  %shl.i.i180 = shl nuw i32 1, %or742.i.i175.4
  %add.ptr.i.i182 = getelementptr i32, ptr %arrayidx30, i32 %and740.i.i173.5
  %66 = ptrtoint ptr %add.ptr.i.i182 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i182, align 4
  %or.i.i183 = or i32 %67, %shl.i.i180
  store i32 %or.i.i183, ptr %add.ptr.i.i182, align 4
  %68 = ptrtoint ptr %mac_addr_cnt.i98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mac_addr_cnt.i98, align 4
  %inc.i185 = add i32 %69, 1
  store i32 %inc.i185, ptr %mac_addr_cnt.i98, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %cond.false.i.i171, %for.body42.for.inc50_crit_edge
  %70 = ptrtoint ptr %ha.1201 to i32
  call void @__asan_load4_noabort(i32 %70)
  %ha.1 = load ptr, ptr %ha.1201, align 4
  %cmp40.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp40.not, label %for.inc50.if.end57_crit_edge, label %for.inc50.for.body42_crit_edge

for.inc50.for.body42_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

for.inc50.if.end57_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %for.inc50.if.end57_crit_edge, %if.end26.if.end57_crit_edge
  %mprom.0.off0.not = xor i1 %mprom.0.off0, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %mprom.0.off0.not
  br i1 %brmerge, label %if.end57.if.then60_crit_edge, label %if.end57.if.end61_crit_edge

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end57.if.then60_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.then60:                                        ; preds = %if.end57.if.then60_crit_edge, %if.then28.if.then60_crit_edge
  %mac_filter.i = getelementptr i8, ptr %1, i32 112
  %71 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i93, align 4
  %errata.i.i = getelementptr inbounds %struct.enetc_si, ptr %72, i32 0, i32 2
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %72, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup23.i.for.body.i_crit_edge, %if.then60
  %f.061.i = phi ptr [ %mac_filter.i, %if.then60 ], [ %incdec.ptr.i, %cleanup23.i.for.body.i_crit_edge ]
  %cmp3.i = phi i1 [ true, %if.then60 ], [ false, %cleanup23.i.for.body.i_crit_edge ]
  %mac_addr_cnt.i187 = getelementptr inbounds %struct.enetc_mac_filter, ptr %f.061.i, i32 0, i32 1
  %73 = ptrtoint ptr %mac_addr_cnt.i187 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mac_addr_cnt.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %cmp3.i, label %if.then.i193, label %if.else.i

if.then.i193:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @enetc_clear_mac_flt_entry(ptr noundef %72, i32 noundef 3) #8
  %75 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %errata.i.i, align 4
  %and.i205 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i191206 = icmp eq i32 %and.i205, 0
  %77 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %port.i.i, align 4
  %cond.i = select i1 %tobool.not.i191206, i32 7424, i32 7432
  %add.ptr.i192 = getelementptr i8, ptr %78, i32 %cond.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %79 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %80, i32 7428
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !131
  br label %cleanup23.i.sink.split

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %errata.i.i, align 4
  %and.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i191 = icmp eq i32 %and.i, 0
  %83 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port.i.i, align 4
  %cond10.i = select i1 %tobool.not.i191, i32 7432, i32 7424
  %add.ptr13.i = getelementptr i8, ptr %84, i32 %cond10.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %85 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %port.i.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %86, i32 7436
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 0) #8, !srcloc !131
  br label %cleanup23.i.sink.split

if.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp2.i = icmp eq i32 %74, 1
  %spec.select.i = and i1 %cmp3.i, %cmp2.i
  br i1 %spec.select.i, label %if.then11.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end9.i
  %87 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %errata.i.i, align 4
  %and.i.i188 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i188)
  %tobool.not.i.i = icmp eq i32 %and.i.i188, 0
  %89 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port.i.i, align 4
  %cond.i.i189 = select i1 %tobool.not.i.i, i32 7424, i32 7432
  %add.ptr.i.i190 = getelementptr i8, ptr %90, i32 %cond.i.i189
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %91 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %92, i32 7428
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %call13.i = tail call i32 @enetc_set_mac_flt_entry(ptr noundef %72, i32 noundef 3, ptr noundef %f.061.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then11.i.cleanup23.i_crit_edge, label %do.end.i

if.then11.i.cleanup23.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %72, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %call13.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.end9.i.if.end17.i_crit_edge
  br i1 %cmp3.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 @enetc_clear_mac_flt_entry(ptr noundef %72, i32 noundef 3) #8
  %95 = ptrtoint ptr %f.061.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %f.061.i, align 4
  %97 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %errata.i.i, align 4
  %and.i4854.i = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4854.i)
  %tobool.not.i4955.i = icmp eq i32 %and.i4854.i, 0
  %99 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %port.i.i, align 4
  %cond.i51.i = select i1 %tobool.not.i4955.i, i32 7424, i32 7432
  %add.ptr.i52.i = getelementptr i8, ptr %100, i32 %cond.i51.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %101 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %101) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %102 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %103, i32 7428
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 0) #8, !srcloc !131
  br label %cleanup23.i.sink.split

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %f.061.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %f.061.i, align 4
  %106 = ptrtoint ptr %errata.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %errata.i.i, align 4
  %and.i48.i = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48.i)
  %tobool.not.i49.i = icmp eq i32 %and.i48.i, 0
  %108 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port.i.i, align 4
  %cond12.i.i = select i1 %tobool.not.i49.i, i32 7432, i32 7424
  %add.ptr15.i.i = getelementptr i8, ptr %109, i32 %cond12.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %110) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %111 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %port.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %112, i32 7436
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 0) #8, !srcloc !131
  br label %cleanup23.i.sink.split

cleanup23.i.sink.split:                           ; preds = %if.else.i.i, %if.then.i.i, %if.else.i, %if.then.i193
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup23.i

cleanup23.i:                                      ; preds = %cleanup23.i.sink.split, %if.then11.i.cleanup23.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.enetc_mac_filter, ptr %f.061.i, i32 1
  br i1 %cmp3.i, label %cleanup23.i.for.body.i_crit_edge, label %cleanup23.i.if.end61_crit_edge

cleanup23.i.if.end61_crit_edge:                   ; preds = %cleanup23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

cleanup23.i.for.body.i_crit_edge:                 ; preds = %cleanup23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end61:                                         ; preds = %cleanup23.i.if.end61_crit_edge, %if.end57.if.end61_crit_edge
  %113 = shl nuw nsw i32 %and5, 7
  %psipmr.0 = select i1 %tobool.not, i32 %113, i32 65537
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %port, align 4
  %add.ptr62 = getelementptr i8, ptr %115, i32 24
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %117 = and i32 %116, -16777473
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %or = or i32 %118, %psipmr.0
  %119 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %port, align 4
  %add.ptr66 = getelementptr i8, ptr %120, i32 24
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %121 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %121) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_set_mac_addr(ptr noundef %ndev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  %si = getelementptr i8, ptr %ndev, i32 2312
  %5 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %si, align 4
  %7 = ptrtoint ptr %sa_data to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %sa_data, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %6, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #8, !srcloc !131
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %16, i32 260
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %12) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_ioctl(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enetc_get_stats(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vlan_rx_add_vid(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %prot, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %1, i32 288
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %active_vlans, i32 %div2.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %3, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %and.i = and i32 %conv, 65
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and.i) #8
  %and105.i = and i32 %call.i.i, 1
  %and.i.1 = and i32 %conv, 130
  %call.i.i.1 = tail call i32 @__sw_hweight8(i32 noundef %and.i.1) #8
  %and105.i.1 = shl i32 %call.i.i.1, 1
  %shl106.i.1 = and i32 %and105.i.1, 2
  %or107.i.1 = or i32 %shl106.i.1, %and105.i
  %and.i.2 = and i32 %conv, 260
  %call.i.i.2 = tail call i32 @__sw_hweight8(i32 noundef %and.i.2) #8
  %and105.i.2 = shl i32 %call.i.i.2, 2
  %shl106.i.2 = and i32 %and105.i.2, 4
  %or107.i.2 = or i32 %shl106.i.2, %or107.i.1
  %and.i.3 = and i32 %conv, 520
  %call.i.i.3 = tail call i32 @__sw_hweight8(i32 noundef %and.i.3) #8
  %and105.i.3 = shl i32 %call.i.i.3, 3
  %shl106.i.3 = and i32 %and105.i.3, 8
  %or107.i.3 = or i32 %shl106.i.3, %or107.i.2
  %and.i.4 = and i32 %conv, 1040
  %call.i.i.4 = tail call i32 @__sw_hweight8(i32 noundef %and.i.4) #8
  %and105.i.4 = shl i32 %call.i.i.4, 4
  %shl106.i.4 = and i32 %and105.i.4, 16
  %or107.i.4 = or i32 %shl106.i.4, %or107.i.3
  %and.i.5 = and i32 %conv, 2080
  %call.i.i.5 = tail call i32 @__sw_hweight8(i32 noundef %and.i.5) #8
  %and105.i.5 = and i32 %call.i.i.5, 1
  %vlan_ht_filter = getelementptr i8, ptr %1, i32 280
  %shl.i10 = shl nuw i32 1, %or107.i.4
  %add.ptr.i11 = getelementptr i32, ptr %vlan_ht_filter, i32 %and105.i.5
  %4 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i11, align 4
  %or.i12 = or i32 %5, %shl.i10
  store i32 %or.i12, ptr %add.ptr.i11, align 4
  %6 = and i32 %5, %shl.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i14 = getelementptr i8, ptr %1, i32 96
  %7 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i14, align 4
  %9 = ptrtoint ptr %vlan_ht_filter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vlan_ht_filter, align 4
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %12, i32 7680
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %13) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 7684
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vlan_rx_del_vid(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %prot, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 96
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %1, i32 288
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %active_vlans, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call fastcc void @enetc_sync_vlan_ht_filter(ptr noundef %add.ptr.i4, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_set_vf_mac(ptr nocapture noundef readonly %ndev, i32 noundef %vf, ptr nocapture noundef readonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %total_vfs = getelementptr i8, ptr %1, i32 104
  %2 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf)
  %cmp.not = icmp sgt i32 %3, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %vf_state5 = getelementptr i8, ptr %1, i32 108
  %9 = ptrtoint ptr %vf_state5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_state5, align 4
  %arrayidx = getelementptr %struct.enetc_vf_state, ptr %10, i32 %vf
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %si, align 4
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %mac, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr.i.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #8
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %14, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 4
  %add = shl i32 %vf, 3
  %add.i = add i32 %add, 264
  %add.ptr2.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %17) #8, !srcloc !131
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.i, align 4
  %add5.i = add i32 %add, 268
  %add.ptr6.i = getelementptr i8, ptr %24, i32 %add5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %20) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_set_vf_vlan(ptr nocapture noundef readonly %ndev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %errata = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errata, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %total_vfs = getelementptr i8, ptr %1, i32 104
  %4 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vf)
  %cmp.not = icmp sgt i32 %5, %vf
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp5.not = icmp eq i16 %proto, -32512
  br i1 %cmp5.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %tobool.not.i = icmp eq i16 %vlan, 0
  %conv.i = zext i8 %qos to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %conv1.i = zext i16 %vlan to i32
  %or.i = or i32 %shl.i, %conv1.i
  %or2.i = or i32 %or.i, -2147483648
  %val.0.i = select i1 %tobool.not.i, i32 0, i32 %or2.i
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %add = shl i32 %vf, 2
  %add.i = add i32 %add, 580
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -93, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_set_vf_spoofchk(ptr nocapture noundef readonly %ndev, i32 noundef %vf, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %total_vfs = getelementptr i8, ptr %1, i32 104
  %2 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf)
  %cmp.not = icmp sgt i32 %3, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %6 = mul i32 %vf, 12
  %add3 = add i32 %6, 2380
  %add.ptr = getelementptr i8, ptr %5, i32 %add3
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %8 = and i32 %7, -8388609
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cond = select i1 %en, i32 32768, i32 0
  %or = or i32 %9, %cond
  %10 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si, align 4
  %port7 = getelementptr inbounds %struct.enetc_si, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port7, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 %add3
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_pf_set_features(ptr noundef %ndev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %si = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si, align 4
  %add.ptr.i23 = getelementptr i8, ptr %3, i32 96
  %and3 = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %vlan_promisc_simap.i24 = getelementptr i8, ptr %3, i32 276
  %4 = ptrtoint ptr %vlan_promisc_simap.i24 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vlan_promisc_simap.i24, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i8 %5, -2
  %7 = ptrtoint ptr %vlan_promisc_simap.i24 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %vlan_promisc_simap.i24, align 4
  %8 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i23, align 4
  %port.i.i = getelementptr inbounds %struct.enetc_si, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 28
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %13 = and i32 %12, -117440513
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 28
  %17 = and i8 %5, 6
  %and3.i.i = zext i8 %17 to i32
  %or.i.i = or i32 %14, %and3.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %18) #8, !srcloc !131
  br label %if.end6.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i8 %5, 1
  %20 = ptrtoint ptr %vlan_promisc_simap.i24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %vlan_promisc_simap.i24, align 4
  %21 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i23, align 4
  %port.i.i25 = getelementptr inbounds %struct.enetc_si, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %port.i.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %24, i32 28
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %26 = and i32 %25, -117440513
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %port.i.i25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i.i25, align 4
  %add.ptr2.i.i27 = getelementptr i8, ptr %29, i32 28
  %30 = and i8 %19, 7
  %and3.i.i28 = zext i8 %30 to i32
  %or.i.i29 = or i32 %27, %and3.i.i28
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i29) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i27, i32 %31) #8, !srcloc !131
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.else, %if.then5
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  %and7 = and i64 %xor, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %and10 = and i64 %features, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %32 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %si.i, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %35, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !133
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %and.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i32 %37, -2081
  %cond.i = select i1 %tobool11.not, i32 0, i32 2080
  %or.i = or i32 %and3.i, %cond.i
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %39, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %40) #8, !srcloc !131
  br label %enetc_set_loopback.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %42, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %44 = and i32 %43, -8650753
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %or13.i = select i1 %tobool11.not, i32 0, i32 33792
  %or17.i = or i32 %45, %or13.i
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %47, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %48) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %50, i32 36872
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %48) #8, !srcloc !131
  br label %enetc_set_loopback.exit

enetc_set_loopback.exit:                          ; preds = %if.else.i, %if.then.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %if.end13

if.end13:                                         ; preds = %enetc_set_loopback.exit, %if.end6.if.end13_crit_edge
  %call14 = tail call i32 @enetc_set_features(ptr noundef %ndev, i64 noundef %features) #8
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_bpf(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_xdp_xmit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_clear_mac_flt_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_mac_flt_entry(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_sync_vlan_ht_filter(ptr noundef %pf, i1 noundef zeroext %rehash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rehash, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %vlan_ht_filter = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vlan_ht_filter to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %vlan_ht_filter, align 4
  %active_vlans = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 10
  %call = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call)
  %cmp19 = icmp slt i32 %call, 4096
  br i1 %cmp19, label %if.then.for.body.i.preheader_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.for.body.i.preheader_crit_edge:           ; preds = %if.then
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.i.preheader.for.body.i.preheader_crit_edge, %if.then.for.body.i.preheader_crit_edge
  %i.020 = phi i32 [ %call7, %for.body.i.preheader.for.body.i.preheader_crit_edge ], [ %call, %if.then.for.body.i.preheader_crit_edge ]
  %and.i = and i32 %i.020, 65
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and.i) #8
  %and105.i = and i32 %call.i.i, 1
  %and.i.1 = and i32 %i.020, 130
  %call.i.i.1 = tail call i32 @__sw_hweight8(i32 noundef %and.i.1) #8
  %and105.i.1 = shl i32 %call.i.i.1, 1
  %shl106.i.1 = and i32 %and105.i.1, 2
  %or107.i.1 = or i32 %shl106.i.1, %and105.i
  %and.i.2 = and i32 %i.020, 260
  %call.i.i.2 = tail call i32 @__sw_hweight8(i32 noundef %and.i.2) #8
  %and105.i.2 = shl i32 %call.i.i.2, 2
  %shl106.i.2 = and i32 %and105.i.2, 4
  %or107.i.2 = or i32 %shl106.i.2, %or107.i.1
  %and.i.3 = and i32 %i.020, 520
  %call.i.i.3 = tail call i32 @__sw_hweight8(i32 noundef %and.i.3) #8
  %and105.i.3 = shl i32 %call.i.i.3, 3
  %shl106.i.3 = and i32 %and105.i.3, 8
  %or107.i.3 = or i32 %shl106.i.3, %or107.i.2
  %and.i.4 = and i32 %i.020, 1040
  %call.i.i.4 = tail call i32 @__sw_hweight8(i32 noundef %and.i.4) #8
  %and105.i.4 = shl i32 %call.i.i.4, 4
  %shl106.i.4 = and i32 %and105.i.4, 16
  %or107.i.4 = or i32 %shl106.i.4, %or107.i.3
  %and.i.5 = and i32 %i.020, 2080
  %call.i.i.5 = tail call i32 @__sw_hweight8(i32 noundef %and.i.5) #8
  %and105.i.5 = and i32 %call.i.i.5, 1
  %shl.i = shl nuw i32 1, %or107.i.4
  %add.ptr.i = getelementptr i32, ptr %vlan_ht_filter, i32 %and105.i.5
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %2, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %add = add i32 %i.020, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add) #8
  %cmp = icmp slt i32 %call7, 4096
  br i1 %cmp, label %for.body.i.preheader.for.body.i.preheader_crit_edge, label %for.body.i.preheader.if.end_crit_edge

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i.preheader.for.body.i.preheader_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.end:                                           ; preds = %for.body.i.preheader.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %vlan_ht_filter8 = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 9
  %5 = ptrtoint ptr %vlan_ht_filter8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vlan_ht_filter8, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %4, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %8, i32 7680
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %9) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 7684
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_features(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_mdio_read(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_pcs_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pl_mac_config(ptr nocapture noundef readonly %config, i32 noundef %mode, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -720
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %9 = and i32 %8, -125829121
  %10 = or i32 %9, 100663296
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #8, !srcloc !131
  br label %if.end7.sink.split.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %cmp.i = icmp eq i32 %3, 28
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.enetc_mac_config.exit_crit_edge

if.end.i.enetc_mac_config.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enetc_mac_config.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %port5.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %14, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 1048576) #8, !srcloc !131
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then4.i, %if.end.thread.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %enetc_mac_config.exit

enetc_mac_config.exit:                            ; preds = %if.end7.sink.split.i, %if.end.i.enetc_mac_config.exit_crit_edge
  %pcs = getelementptr i8, ptr %config, i32 -8
  %15 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcs, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %enetc_mac_config.exit.if.end_crit_edge, label %if.then

enetc_mac_config.exit.if.end_crit_edge:           ; preds = %enetc_mac_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %enetc_mac_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev, align 4
  %phylink = getelementptr i8, ptr %20, i32 2504
  %21 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phylink, align 4
  tail call void @phylink_set_pcs(ptr noundef %22, ptr noundef nonnull %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %enetc_mac_config.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pl_mac_link_down(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -720
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 36872
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_pl_mac_link_up(ptr nocapture noundef readonly %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -720
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %hw2 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %active_offloads = getelementptr i8, ptr %3, i32 2340
  %4 = ptrtoint ptr %active_offloads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_offloads, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @enetc_sched_speed_set(ptr noundef %add.ptr.i, i32 noundef %speed) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp ne i32 %mode, 2
  %6 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  %or.cond = and i1 %cmp.i, %7
  br i1 %or.cond, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %9, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !133
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %12 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %speed, label %if.then6.if.end11.i_crit_edge [
    i32 1000, label %if.then.i
    i32 100, label %if.then2.i
    i32 10, label %if.then7.i
  ]

if.then6.if.end11.i_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %11, -24577
  %or.i = or i32 %and.i, 16384
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i32 %11, -24577
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i = and i32 %11, -24577
  %or9.i = or i32 %and8.i, 8192
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.then2.i, %if.then.i, %if.then6.if.end11.i_crit_edge
  %val.0.i = phi i32 [ %or.i, %if.then.i ], [ %and3.i, %if.then2.i ], [ %or9.i, %if.then7.i ], [ %11, %if.then6.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp12.i = icmp eq i32 %duplex, 1
  %and16.i = and i32 %val.0.i, -4097
  %masksel.i = select i1 %cmp12.i, i32 4096, i32 0
  %val.1.i = or i32 %and16.i, %masksel.i
  call void @__sanitizer_cov_trace_cmp4(i32 %val.1.i, i32 %11)
  %cmp18.i = icmp eq i32 %val.1.i, %11
  br i1 %cmp18.i, label %if.end11.i.if.end7_crit_edge, label %if.end20.i

if.end11.i.if.end7_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %14, i32 33536
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %15) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end20.i, %if.end11.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %num_rx_rings = getelementptr i8, ptr %3, i32 2328
  %16 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp82.not = icmp eq i16 %17, 0
  br i1 %cmp82.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %masksel80 = select i1 %tx_pause, i32 16, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw2, align 4
  %mul = shl i32 %idx.083, 9
  %add = add nuw nsw i32 %mul, 33024
  %add.ptr10 = getelementptr i8, ptr %19, i32 %add
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %21 = and i32 %20, -268435457
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %rbmr.0 = or i32 %22, %masksel80
  %23 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw2, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 %add
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %rbmr.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %inc = add nuw nsw i32 %idx.083, 1
  %26 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  br i1 %tx_pause, label %if.then22, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end.if.end23_crit_edge
  %pause_off_thresh.0 = phi i32 [ 9600, %if.then22 ], [ 0, %for.end.if.end23_crit_edge ]
  %pause_on_thresh.0 = phi i32 [ 28800, %if.then22 ], [ 0, %for.end.if.end23_crit_edge ]
  %init_quanta.0 = phi i32 [ 65535, %if.then22 ], [ 0, %for.end.if.end23_crit_edge ]
  %refresh_quanta.0 = phi i32 [ 32767, %if.then22 ], [ 0, %for.end.if.end23_crit_edge ]
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 32852
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %init_quanta.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %30) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  %add.ptr26 = getelementptr i8, ptr %32, i32 36948
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %30) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 32868
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %refresh_quanta.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %35) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 4
  %add.ptr30 = getelementptr i8, ptr %37, i32 36964
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %35) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %add.ptr32 = getelementptr i8, ptr %39, i32 1040
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %pause_on_thresh.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %40) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 4
  %add.ptr34 = getelementptr i8, ptr %42, i32 1044
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %pause_off_thresh.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %43) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port, align 4
  %add.ptr36 = getelementptr i8, ptr %45, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %47 = and i32 %46, -65537
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %masksel = select i1 %rx_pause, i32 0, i32 256
  %cmd_cfg.0 = or i32 %48, %masksel
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port, align 4
  %add.ptr45 = getelementptr i8, ptr %50, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %cmd_cfg.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %51) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port, align 4
  %add.ptr47 = getelementptr i8, ptr %53, i32 36872
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %51) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port, align 4
  %add.ptr.i77 = getelementptr i8, ptr %55, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %57 = or i32 %56, 50331648
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port, align 4
  %add.ptr2.i = getelementptr i8, ptr %59, i32 32776
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %57) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port, align 4
  %add.ptr4.i = getelementptr i8, ptr %61, i32 36872
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %57) #8, !srcloc !131
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_sched_speed_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_get_mdio_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lynx_pcs_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_msg_psi_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_msg_psi_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 653, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @enetc_msg_handle_rxmsg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @enetc_msg_handle_rxmsg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_fsl_enetc__355_1356_enetc_pf_driver_init6, !9, !"__initcall__kmod_fsl_enetc__355_1356_enetc_pf_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1356, i32 1}
!10 = !{ptr @__exitcall_enetc_pf_driver_exit, !9, !"__exitcall_enetc_pf_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description356, !12, !"__UNIQUE_ID_description356", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1358, i32 1}
!13 = !{ptr @__UNIQUE_ID_file357, !14, !"__UNIQUE_ID_file357", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1359, i32 1}
!15 = !{ptr @__UNIQUE_ID_license358, !14, !"__UNIQUE_ID_license358", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 629, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @enetc_msg_pf_set_vf_primary_mac_addr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @enetc_pf_driver, !24, !"enetc_pf_driver", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1347, i32 26}
!25 = !{ptr @enetc_pf_id_table, !26, !"enetc_pf_id_table", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1341, i32 35}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1193, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @enetc_pf_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @enetc_pf_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1199, i32 41}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1204, i32 3}
!36 = !{ptr @enetc_pf_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @enetc_pf_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1215, i32 3}
!40 = !{ptr @enetc_pf_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @enetc_pf_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1221, i32 3}
!44 = !{ptr @enetc_pf_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @enetc_pf_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1226, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @enetc_pf_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @enetc_pf_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1246, i32 3}
!53 = !{ptr @enetc_pf_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @enetc_pf_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1258, i32 3}
!57 = !{ptr @enetc_pf_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @enetc_pf_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1264, i32 3}
!61 = !{ptr @enetc_pf_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @enetc_pf_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1270, i32 3}
!65 = !{ptr @enetc_pf_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @enetc_pf_probe._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1166, i32 10}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 419, i32 3}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @enetc_setup_mac_address._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @enetc_setup_mac_address._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 485, i32 3}
!76 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @enetc_port_si_configure._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @enetc_port_si_configure._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @enetc_ndev_ops, !80, !"enetc_ndev_ops", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 728, i32 36}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 185, i32 4}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @enetc_sync_mac_filters._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @enetc_sync_mac_filters._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 911, i32 39}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 804, i32 14}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 811, i32 37}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 815, i32 34}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 841, i32 14}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 849, i32 37}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 853, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @enetc_imdio_create._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @enetc_imdio_create._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 860, i32 3}
!105 = !{ptr @enetc_imdio_create._entry.52, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @enetc_imdio_create._entry_ptr.54, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 868, i32 3}
!109 = !{ptr @enetc_imdio_create._entry.55, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @enetc_imdio_create._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @enetc_mac_phylink_ops, !112, !"enetc_mac_phylink_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 1063, i32 37}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 682, i32 4}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @enetc_sriov_configure._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @enetc_sriov_configure._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_pf.c", i32 688, i32 4}
!120 = !{ptr @enetc_sriov_configure._entry.60, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @enetc_sriov_configure._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 6254748}
!132 = !{i64 6254128}
!133 = !{i64 6255166}
!134 = !{i64 2153795515}
!135 = !{i64 2153796870}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 6254328}
