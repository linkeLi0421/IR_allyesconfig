; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.137, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.137 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.170, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.146 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.146 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.170 = type { %struct.anon.172 }
%struct.anon.172 = type { i32, i32, i8, i32, ptr }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.169, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.158, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.158 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.169 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_main.c\00", [46 x i8] zeroinitializer }, align 32
@nfp_net_refresh_port_table_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: Error refreshing port config!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfp_net_refresh_port_table_sync\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_net_refresh_port_table_sync._entry_ptr = internal global ptr @nfp_net_refresh_port_table_sync._entry, section ".printk_index", align 4
@nfp_net_refresh_eth_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: Error refreshing port state table!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_net_refresh_eth_port\00", [39 x i8] zeroinitializer }, align 32
@nfp_net_refresh_eth_port._entry_ptr = internal global ptr @nfp_net_refresh_eth_port._entry, section ".printk_index", align 4
@nfp_net_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&pf->port_refresh_work)\00", [54 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 655, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp: No %s, giving up.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_net_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry_ptr = internal global ptr @nfp_net_pci_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"symbol table\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"firmware found\00", [17 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str, i32 677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: Unknown Firmware ABI %d.%d.%d.%d\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry_ptr.14 = internal global ptr @nfp_net_pci_probe._entry.12, section ".printk_index", align 4
@nfp_net_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str, i32 685, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nfp: OBSOLETE Firmware detected - VF isolation not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry_ptr.18 = internal global ptr @nfp_net_pci_probe._entry.15, section ".printk_index", align 4
@nfp_net_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str, i32 694, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Unsupported Firmware ABI %d.%d.%d.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_net_pci_probe._entry_ptr.21 = internal global ptr @nfp_net_pci_probe._entry.19, section ".printk_index", align 4
@nfp_net_eth_port_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@nfp_net_eth_port_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 534, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: Warning: port #%d not present after reconfig\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_net_eth_port_update\00", [40 x i8] zeroinitializer }, align 32
@nfp_net_eth_port_update._entry_ptr = internal global ptr @nfp_net_eth_port_update._entry, section ".printk_index", align 4
@nfp_net_eth_port_update._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 538, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"nfp: Port #%d config changed, unregistering. Driver reload required before port will be operational again.\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_net_eth_port_update._entry_ptr.27 = internal global ptr @nfp_net_eth_port_update._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfd_cfg_pf%u_num_ports\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net.bar0\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_pf%d_net_bar0\00", [17 x i8] zeroinitializer }, align 32
@nfp_net_pci_map_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: Failed to find data vNIC memory symbol\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_net_pci_map_mem\00", [44 x i8] zeroinitializer }, align 32
@nfp_net_pci_map_mem._entry_ptr = internal global ptr @nfp_net_pci_map_mem._entry, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_mac_stats\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net.macstats\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"net.vfcfg\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_pf%d_net_vf_bar\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net.vfcfg_tbl2\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_pf%d_net_vf_cfg2\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"net.qc\00", [25 x i8] zeroinitializer }, align 32
@nfp_net_pci_map_mem._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str, i32 501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Failed to map Queue Controller area.\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_net_pci_map_mem._entry_ptr.42 = internal global ptr @nfp_net_pci_map_mem._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net.ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_pf%u_net_ctrl_bar\00", [45 x i8] zeroinitializer }, align 32
@nfp_net_pf_app_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: Failed to find ctrl vNIC memory symbol\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_net_pf_app_init\00", [44 x i8] zeroinitializer }, align 32
@nfp_net_pf_app_init._entry_ptr = internal global ptr @nfp_net_pf_app_init._entry, section ".printk_index", align 4
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_pf%u_net_app_id\00", [47 x i8] zeroinitializer }, align 32
@nfp_net_pf_alloc_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 252, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: Unable to allocate MSI-X vectors\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_net_pf_alloc_irqs\00", [42 x i8] zeroinitializer }, align 32
@nfp_net_pf_alloc_irqs._entry_ptr = internal global ptr @nfp_net_pf_alloc_irqs._entry, section ".printk_index", align 4
@nfp_net_is_data_vnic.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net.h\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 554, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 571, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 629, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 651, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 654, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 676, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 685, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 692, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 528, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 533, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 538, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 76, i32 40 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 453, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 453, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 456, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 462, i32 47 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 463, i32 9 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 474, i32 40 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 474, i32 53 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 486, i32 40 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 487, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 498, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 501, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 326, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 326, i32 46 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 329, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 81, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private constant [53 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 252, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 880, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @nfp_net_eth_port_update._entry, ptr @nfp_net_eth_port_update._entry.25, ptr @nfp_net_eth_port_update._entry_ptr, ptr @nfp_net_eth_port_update._entry_ptr.27, ptr @nfp_net_pci_map_mem._entry, ptr @nfp_net_pci_map_mem._entry.40, ptr @nfp_net_pci_map_mem._entry_ptr, ptr @nfp_net_pci_map_mem._entry_ptr.42, ptr @nfp_net_pci_probe._entry, ptr @nfp_net_pci_probe._entry.12, ptr @nfp_net_pci_probe._entry.15, ptr @nfp_net_pci_probe._entry.19, ptr @nfp_net_pci_probe._entry_ptr, ptr @nfp_net_pci_probe._entry_ptr.14, ptr @nfp_net_pci_probe._entry_ptr.18, ptr @nfp_net_pci_probe._entry_ptr.21, ptr @nfp_net_pf_alloc_irqs._entry, ptr @nfp_net_pf_alloc_irqs._entry_ptr, ptr @nfp_net_pf_app_init._entry, ptr @nfp_net_pf_app_init._entry_ptr, ptr @nfp_net_refresh_eth_port._entry, ptr @nfp_net_refresh_eth_port._entry_ptr, ptr @nfp_net_refresh_port_table_sync._entry, ptr @nfp_net_refresh_port_table_sync._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nfp_net_pci_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_refresh_port_table_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_refresh_eth_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_eth_port_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_eth_port_update._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_map_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pci_map_mem._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pf_app_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_pf_alloc_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_get_mac_addr(ptr nocapture noundef readnone %pf, ptr noundef %netdev, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__nfp_port_get_eth_port(ptr noundef %port) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #6
  %0 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #6
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr.i, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #6
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mac_addr = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call, i32 0, i32 10
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #6
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 54
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr, align 4
  %8 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.nfp_eth_table_port, ptr %call, i32 0, i32 10, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 54, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_port_get_eth_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_refresh_port_table_sync(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !106

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 554, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %1 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %vnics, align 4
  %cmp.i.not = icmp eq ptr %2, %vnics
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  tail call void @rtnl_lock() #6
  %ports = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 32
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn173 = load ptr, ptr %ports, align 4
  %cmp31.not174 = icmp eq ptr %.pn173, %ports
  br i1 %cmp31.not174, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27.for.body_crit_edge
  %.pn175 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn173, %if.end27.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn175, i32 -388
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #6
  %4 = ptrtoint ptr %.pn175 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn175, align 4
  %cmp31.not = icmp eq ptr %.pn, %ports
  br i1 %cmp31.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end27.for.end_crit_edge
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call39 = tail call ptr @nfp_eth_read_ports(ptr noundef %6) #6
  %tobool40.not = icmp eq ptr %call39, null
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn169187 = load ptr, ptr %ports, align 4
  %cmp50.not188 = icmp eq ptr %.pn169187, %ports
  br i1 %tobool40.not, label %for.cond47.preheader, label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.end
  br i1 %cmp50.not188, label %for.cond77.preheader.for.end96_crit_edge, label %for.cond77.preheader.for.body83_crit_edge

for.cond77.preheader.for.body83_crit_edge:        ; preds = %for.cond77.preheader
  br label %for.body83

for.cond77.preheader.for.end96_crit_edge:         ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end96

for.cond47.preheader:                             ; preds = %for.end
  br i1 %cmp50.not188, label %for.cond47.preheader.for.end65_crit_edge, label %for.cond47.preheader.for.body53_crit_edge

for.cond47.preheader.for.body53_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body53

for.cond47.preheader.for.end65_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end65

for.body53:                                       ; preds = %for.inc59.for.body53_crit_edge, %for.cond47.preheader.for.body53_crit_edge
  %.pn169189 = phi ptr [ %.pn169, %for.inc59.for.body53_crit_edge ], [ %.pn169187, %for.cond47.preheader.for.body53_crit_edge ]
  %port.1 = getelementptr i8, ptr %.pn169189, i32 -396
  %call54 = tail call ptr @__nfp_port_get_eth_port(ptr noundef %port.1) #6
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %for.body53.for.inc59_crit_edge, label %if.then56

for.body53.for.inc59_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc59

if.then56:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  %flags57 = getelementptr i8, ptr %.pn169189, i32 -388
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags57) #6
  br label %for.inc59

for.inc59:                                        ; preds = %if.then56, %for.body53.for.inc59_crit_edge
  %8 = ptrtoint ptr %.pn169189 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn169 = load ptr, ptr %.pn169189, align 4
  %cmp50.not = icmp eq ptr %.pn169, %ports
  br i1 %cmp50.not, label %for.inc59.for.end65_crit_edge, label %for.inc59.for.body53_crit_edge

for.inc59.for.body53_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53

for.inc59.for.end65_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end65

for.end65:                                        ; preds = %for.inc59.for.end65_crit_edge, %for.cond47.preheader.for.end65_crit_edge
  tail call void @rtnl_unlock() #6
  %9 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpp, align 4
  %call70 = tail call ptr @nfp_cpp_device(ptr noundef %10) #6
  %parent = getelementptr inbounds %struct.device, ptr %call70, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.body83:                                       ; preds = %for.inc90.for.body83_crit_edge, %for.cond77.preheader.for.body83_crit_edge
  %.pn170179 = phi ptr [ %.pn170, %for.inc90.for.body83_crit_edge ], [ %.pn169187, %for.cond77.preheader.for.body83_crit_edge ]
  %port.2180 = getelementptr i8, ptr %.pn170179, i32 -396
  %call84 = tail call ptr @__nfp_port_get_eth_port(ptr noundef %port.2180) #6
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %for.body83.for.inc90_crit_edge, label %if.then86

for.body83.for.inc90_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

if.then86:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp, align 4
  %call88 = tail call fastcc i32 @nfp_net_eth_port_update(ptr noundef %14, ptr noundef %port.2180, ptr noundef nonnull %call39)
  br label %for.inc90

for.inc90:                                        ; preds = %if.then86, %for.body83.for.inc90_crit_edge
  %15 = ptrtoint ptr %.pn170179 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn170 = load ptr, ptr %.pn170179, align 4
  %cmp80.not = icmp eq ptr %.pn170, %ports
  br i1 %cmp80.not, label %for.inc90.for.end96_crit_edge, label %for.inc90.for.body83_crit_edge

for.inc90.for.body83_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body83

for.inc90.for.end96_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end96

for.end96:                                        ; preds = %for.inc90.for.end96_crit_edge, %for.cond77.preheader.for.end96_crit_edge
  tail call void @rtnl_unlock() #6
  tail call void @kfree(ptr noundef nonnull %call39) #6
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %16 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %app, align 4
  %call97 = tail call i32 @nfp_reprs_resync_phys_ports(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %for.end96.cleanup_crit_edge

for.end96.cleanup_crit_edge:                      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %for.end96
  %18 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vnics, align 4
  %cmp113.not183 = icmp eq ptr %19, %vnics
  br i1 %cmp113.not183, label %if.end100.cleanup_crit_edge, label %if.end100.for.body116_crit_edge

if.end100.for.body116_crit_edge:                  ; preds = %if.end100
  br label %for.body116

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body116:                                      ; preds = %for.inc123.for.body116_crit_edge, %if.end100.for.body116_crit_edge
  %.pn171.in184 = phi ptr [ %.pn171186, %for.inc123.for.body116_crit_edge ], [ %19, %if.end100.for.body116_crit_edge ]
  %nn.0185 = getelementptr i8, ptr %.pn171.in184, i32 -58864
  %20 = ptrtoint ptr %.pn171.in184 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn171186 = load ptr, ptr %.pn171.in184, align 16
  %port117 = getelementptr i8, ptr %.pn171.in184, i32 20
  %21 = ptrtoint ptr %port117 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port117, align 4
  %tobool118.not = icmp eq ptr %22, null
  br i1 %tobool118.not, label %for.body116.for.inc123_crit_edge, label %lor.lhs.false

for.body116.for.inc123_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc123

lor.lhs.false:                                    ; preds = %for.body116
  %type = getelementptr inbounds %struct.nfp_port, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp120.not = icmp eq i32 %24, 0
  br i1 %cmp120.not, label %if.end122, label %lor.lhs.false.for.inc123_crit_edge

lor.lhs.false.for.inc123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc123

if.end122:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %nn.0185)
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef %nn.0185)
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122, %lor.lhs.false.for.inc123_crit_edge, %for.body116.for.inc123_crit_edge
  %cmp113.not = icmp eq ptr %.pn171186, %vnics
  br i1 %cmp113.not, label %for.inc123.cleanup_crit_edge, label %for.inc123.for.body116_crit_edge

for.inc123.for.body116_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body116

for.inc123.cleanup_crit_edge:                     ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc123.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %for.end96.cleanup_crit_edge, %for.end65, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.end65 ], [ 0, %if.end.cleanup_crit_edge ], [ %call97, %for.end96.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ], [ 0, %for.inc123.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_eth_read_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_eth_port_update(ptr noundef %cpp, ptr noundef %port, ptr noundef readonly %eth_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @nfp_net_eth_port_update.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !107

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_eth_port_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 528) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %eth_table, null
  br i1 %tobool.not.i, label %if.end29.if.then39_crit_edge, label %land.rhs.lr.ph.i

if.end29.if.then39_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

land.rhs.lr.ph.i:                                 ; preds = %if.end29
  %3 = ptrtoint ptr %eth_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eth_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %exitcond.not.i70 = icmp eq i32 %4, 0
  br i1 %exitcond.not.i70, label %land.rhs.lr.ph.i.if.then39_crit_edge, label %land.rhs.lr.ph.i.for.body.i_crit_edge

land.rhs.lr.ph.i.for.body.i_crit_edge:            ; preds = %land.rhs.lr.ph.i
  br label %for.body.i

land.rhs.lr.ph.i.if.then39_crit_edge:             ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.rhs.lr.ph.i.for.body.i_crit_edge
  %i.012.i71 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %land.rhs.lr.ph.i.for.body.i_crit_edge ]
  %index1.i = getelementptr %struct.nfp_eth_table, ptr %eth_table, i32 0, i32 2, i32 %i.012.i71, i32 1
  %5 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %2)
  %cmp2.i = icmp eq i32 %6, %2
  br i1 %cmp2.i, label %nfp_net_find_port.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i71, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.if.then39_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then39_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

nfp_net_find_port.exit:                           ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.nfp_eth_table, ptr %eth_table, i32 0, i32 2, i32 %i.012.i71
  %tobool38.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool38.not, label %nfp_net_find_port.exit.if.then39_crit_edge, label %if.end45

nfp_net_find_port.exit.if.then39_crit_edge:       ; preds = %nfp_net_find_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %nfp_net_find_port.exit.if.then39_crit_edge, %for.inc.i.if.then39_crit_edge, %land.rhs.lr.ph.i.if.then39_crit_edge, %if.end29.if.then39_crit_edge
  %flags = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %call43 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent = getelementptr inbounds %struct.device, ptr %call43, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef %10) #9
  br label %cleanup

if.end45:                                         ; preds = %nfp_net_find_port.exit
  %override_changed = getelementptr %struct.nfp_eth_table, ptr %eth_table, i32 0, i32 2, i32 %i.012.i71, i32 16
  %11 = ptrtoint ptr %override_changed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %override_changed, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool46.not = icmp eq i8 %12, 0
  br i1 %tobool46.not, label %if.end45.if.end54_crit_edge, label %do.end50

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent52 = getelementptr inbounds %struct.device, ptr %call51, i32 0, i32 1
  %13 = ptrtoint ptr %parent52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent52, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %16) #9
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %if.end45.if.end54_crit_edge
  %eth_port55 = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6, i32 0, i32 2
  %18 = ptrtoint ptr %eth_port55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eth_port55, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %arrayidx.i, i32 68)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then39
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -5, %if.then39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_reprs_resync_phys_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_pf_clean_vnic(ptr nocapture noundef readonly %pf, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.rhs.i:                                       ; preds = %entry
  %port.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.if.end_crit_edge, label %nfp_net_is_data_vnic.exit.if.then_crit_edge

nfp_net_is_data_vnic.exit.if.then_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

nfp_net_is_data_vnic.exit.if.end_crit_edge:       ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nfp_net_is_data_vnic.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %5 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i, align 4
  %vnic_clean.i = getelementptr inbounds %struct.nfp_app_type, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %vnic_clean.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vnic_clean.i, align 4
  %tobool.not.i17 = icmp eq ptr %10, null
  br i1 %tobool.not.i17, label %if.then.if.end_crit_edge, label %if.then.i18

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %6, ptr noundef %nn) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i18, %if.then.if.end_crit_edge, %nfp_net_is_data_vnic.exit.if.end_crit_edge
  %port = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_devlink_port_type_clear(ptr noundef nonnull %12) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %debugfs_dir = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 52
  tail call void @nfp_net_debugfs_dir_clean(ptr noundef %debugfs_dir) #6
  tail call void @nfp_net_clean(ptr noundef %nn) #6
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_devlink_port_unregister(ptr noundef nonnull %14) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_pf_free_vnic(ptr nocapture noundef %pf, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.rhs.i:                                       ; preds = %entry
  %port.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.if.end_crit_edge, label %nfp_net_is_data_vnic.exit.if.then_crit_edge

nfp_net_is_data_vnic.exit.if.then_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

nfp_net_is_data_vnic.exit.if.end_crit_edge:       ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nfp_net_is_data_vnic.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %5 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i, align 4
  %vnic_free.i = getelementptr inbounds %struct.nfp_app_type, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %vnic_free.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vnic_free.i, align 4
  %tobool.not.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i6, label %if.then.if.end_crit_edge, label %if.then.i7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %6, ptr noundef %nn) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i7, %if.then.if.end_crit_edge, %nfp_net_is_data_vnic.exit.if.end_crit_edge
  %port = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  tail call void @nfp_port_free(ptr noundef %12) #6
  %vnic_list = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 53
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vnic_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 53, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %vnic_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vnic_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %vnic_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %vnic_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 53, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 30
  %21 = ptrtoint ptr %num_vnics to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_vnics, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %num_vnics, align 4
  tail call void @nfp_net_free(ptr noundef %nn) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_refresh_port_table(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %pf1 = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf1, align 4
  %flags = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %wq = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq, align 4
  %port_refresh_work = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 34
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %port_refresh_work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_refresh_eth_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %cpp1 = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp1, align 4
  %flags = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #6
  %call = tail call ptr @nfp_eth_read_ports(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %3) #6
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @nfp_net_eth_port_update(ptr noundef %3, ptr noundef %port, ptr noundef nonnull %call)
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ -5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_pci_probe(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %fw_ver = alloca %struct.nfp_net_fw_version, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #6
  %0 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfp_net_fw_version, ptr %fw_ver, i32 0, i32 3
  %port_refresh_work = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34
  %3 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fw_ver, align 4
  tail call void @__init_work(ptr noundef %port_refresh_work, i32 noundef 0) #6
  %4 = ptrtoint ptr %port_refresh_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %port_refresh_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfp_net_pci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34, i32 1
  %5 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nfp_net_refresh_vnics, ptr %func, align 4
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %8 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtbl, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %10 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpp, align 4
  %call9 = tail call ptr @nfp_cpp_device(ptr noundef %11) #6
  %parent = getelementptr inbounds %struct.device, ptr %call9, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %fw_loaded = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 16
  %14 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_loaded, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool10.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %pf, ptr noundef nonnull @.str.28, i32 noundef 1) #6
  %max_data_vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 29
  %16 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %max_data_vnics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %mul.i = shl i32 %call.i, 15
  %data_vnic_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 3
  %call.i162 = tail call ptr @nfp_pf_map_rtsym(ptr noundef %pf, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %mul.i, ptr noundef %data_vnic_bar.i) #6
  %cmp.i.i = icmp ugt ptr %call.i162, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %17 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpp.i, align 4
  %call2.i = tail call ptr @nfp_cpp_device(ptr noundef %18) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call2.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.31) #9
  br label %nfp_net_pci_map_mem.exit

if.end.i:                                         ; preds = %if.end15
  %eth_tbl.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 25
  %21 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eth_tbl.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then4.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then4.i:                                       ; preds = %if.end.i
  %max_index.i = getelementptr inbounds %struct.nfp_eth_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_index.i, align 4
  %add.i = shl i32 %24, 9
  %mul6.i = add i32 %add.i, 512
  %25 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtbl, align 4
  %mac_stats_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 6
  %call7.i = tail call ptr @nfp_rtsym_map(ptr noundef %26, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %mul6.i, ptr noundef %mac_stats_bar.i) #6
  %mac_stats_mem.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 7
  %27 = ptrtoint ptr %mac_stats_mem.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %mac_stats_mem.i, align 4
  %cmp.i127.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %if.then10.i, label %if.then4.i.if.end19.i_crit_edge

if.then4.i.if.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.then4.i
  %cmp.not.i = icmp eq ptr %call7.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.end16.i, label %if.then10.i.err_unmap_ctrl.i_crit_edge

if.then10.i.err_unmap_ctrl.i_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_ctrl.i

if.end16.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %mac_stats_mem.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mac_stats_mem.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i, %if.then4.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %limit_vfs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 14
  %29 = ptrtoint ptr %limit_vfs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %limit_vfs.i, align 4
  %mul20.i = shl i32 %30, 15
  %vf_cfg_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 8
  %call21.i = tail call ptr @nfp_pf_map_rtsym(ptr noundef %pf, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %mul20.i, ptr noundef %vf_cfg_bar.i) #6
  %vf_cfg_mem.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 9
  %31 = ptrtoint ptr %vf_cfg_mem.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call21.i, ptr %vf_cfg_mem.i, align 4
  %cmp.i128.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %if.then24.i, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then24.i:                                      ; preds = %if.end19.i
  %cmp27.not.i = icmp eq ptr %call21.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp27.not.i, label %if.end31.i, label %if.then24.i.err_unmap_mac_stats.i_crit_edge

if.then24.i.err_unmap_mac_stats.i_crit_edge:      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_mac_stats.i

if.end31.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %vf_cfg_mem.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %vf_cfg_mem.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end31.i, %if.end19.i.if.end33.i_crit_edge
  %33 = ptrtoint ptr %limit_vfs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %limit_vfs.i, align 4
  %mul35.i = shl i32 %34, 4
  %add36.i = add i32 %mul35.i, 16
  %vfcfg_tbl2_area.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 10
  %call37.i = tail call ptr @nfp_pf_map_rtsym(ptr noundef %pf, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %add36.i, ptr noundef %vfcfg_tbl2_area.i) #6
  %vfcfg_tbl2.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 11
  %35 = ptrtoint ptr %vfcfg_tbl2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call37.i, ptr %vfcfg_tbl2.i, align 4
  %cmp.i129.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129.i, label %if.then40.i, label %if.end33.i.if.end49.i_crit_edge

if.end33.i.if.end49.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end33.i
  %cmp43.not.i = icmp eq ptr %call37.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp43.not.i, label %if.end47.i, label %if.then40.i.err_unmap_vf_cfg.i_crit_edge

if.then40.i.err_unmap_vf_cfg.i_crit_edge:         ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_vf_cfg.i

if.end47.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %vfcfg_tbl2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %vfcfg_tbl2.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end47.i, %if.end33.i.if.end49.i_crit_edge
  %cpp50.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %37 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpp50.i, align 4
  %qc_area.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 5
  %call51.i = tail call ptr @nfp_cpp_map_area(ptr noundef %38, ptr noundef nonnull @.str.39, i32 noundef 8192, i64 noundef 524288, i32 noundef 524288, ptr noundef %qc_area.i) #6
  %cmp.i130.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130.i, label %do.end56.i, label %if.end19

do.end56.i:                                       ; preds = %if.end49.i
  %39 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpp50.i, align 4
  %call58.i = tail call ptr @nfp_cpp_device(ptr noundef %40) #6
  %parent59.i = getelementptr inbounds %struct.device, ptr %call58.i, i32 0, i32 1
  %41 = ptrtoint ptr %parent59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent59.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41) #9
  %43 = ptrtoint ptr %vfcfg_tbl2_area.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vfcfg_tbl2_area.i, align 4
  %tobool63.not.i = icmp eq ptr %44, null
  br i1 %tobool63.not.i, label %do.end56.i.err_unmap_vf_cfg.i_crit_edge, label %if.then64.i

do.end56.i.err_unmap_vf_cfg.i_crit_edge:          ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_vf_cfg.i

if.then64.i:                                      ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %44) #6
  br label %err_unmap_vf_cfg.i

err_unmap_vf_cfg.i:                               ; preds = %if.then64.i, %do.end56.i.err_unmap_vf_cfg.i_crit_edge, %if.then40.i.err_unmap_vf_cfg.i_crit_edge
  %err.0.in.i = phi ptr [ %call51.i, %if.then64.i ], [ %call51.i, %do.end56.i.err_unmap_vf_cfg.i_crit_edge ], [ %call37.i, %if.then40.i.err_unmap_vf_cfg.i_crit_edge ]
  %45 = ptrtoint ptr %vf_cfg_bar.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vf_cfg_bar.i, align 4
  %tobool68.not.i = icmp eq ptr %46, null
  br i1 %tobool68.not.i, label %err_unmap_vf_cfg.i.err_unmap_mac_stats.i_crit_edge, label %if.then69.i

err_unmap_vf_cfg.i.err_unmap_mac_stats.i_crit_edge: ; preds = %err_unmap_vf_cfg.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_mac_stats.i

if.then69.i:                                      ; preds = %err_unmap_vf_cfg.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %46) #6
  br label %err_unmap_mac_stats.i

err_unmap_mac_stats.i:                            ; preds = %if.then69.i, %err_unmap_vf_cfg.i.err_unmap_mac_stats.i_crit_edge, %if.then24.i.err_unmap_mac_stats.i_crit_edge
  %err.1.in.i = phi ptr [ %err.0.in.i, %if.then69.i ], [ %err.0.in.i, %err_unmap_vf_cfg.i.err_unmap_mac_stats.i_crit_edge ], [ %call21.i, %if.then24.i.err_unmap_mac_stats.i_crit_edge ]
  %mac_stats_bar72.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 6
  %47 = ptrtoint ptr %mac_stats_bar72.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac_stats_bar72.i, align 4
  %tobool73.not.i = icmp eq ptr %48, null
  br i1 %tobool73.not.i, label %err_unmap_mac_stats.i.err_unmap_ctrl.i_crit_edge, label %if.then74.i

err_unmap_mac_stats.i.err_unmap_ctrl.i_crit_edge: ; preds = %err_unmap_mac_stats.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap_ctrl.i

if.then74.i:                                      ; preds = %err_unmap_mac_stats.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %48) #6
  br label %err_unmap_ctrl.i

err_unmap_ctrl.i:                                 ; preds = %if.then74.i, %err_unmap_mac_stats.i.err_unmap_ctrl.i_crit_edge, %if.then10.i.err_unmap_ctrl.i_crit_edge
  %err.2.in.i = phi ptr [ %err.1.in.i, %if.then74.i ], [ %err.1.in.i, %err_unmap_mac_stats.i.err_unmap_ctrl.i_crit_edge ], [ %call7.i, %if.then10.i.err_unmap_ctrl.i_crit_edge ]
  %49 = ptrtoint ptr %data_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data_vnic_bar.i, align 4
  tail call void @nfp_cpp_area_release_free(ptr noundef %50) #6
  br label %nfp_net_pci_map_mem.exit

nfp_net_pci_map_mem.exit:                         ; preds = %err_unmap_ctrl.i, %do.end.i
  %retval.0.i.in = phi ptr [ %call.i162, %do.end.i ], [ %err.2.in.i, %err_unmap_ctrl.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end49.i
  %51 = ptrtoint ptr %data_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_vnic_bar.i, align 4
  %call20 = tail call ptr @nfp_cpp_area_iomem(ptr noundef %52) #6
  %53 = ptrtoint ptr %qc_area.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %qc_area.i, align 4
  %call21 = tail call ptr @nfp_cpp_area_iomem(ptr noundef %54) #6
  %tobool22.not = icmp eq ptr %call20, null
  %tobool23.not = icmp eq ptr %call21, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.end19.err_unmap_crit_edge, label %if.end25

if.end19.err_unmap_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end25:                                         ; preds = %if.end19
  call void @nfp_net_get_fw_version(ptr noundef nonnull %fw_ver, ptr noundef nonnull %call20) #6
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool26.not = icmp eq i8 %56, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end25.do.end34_crit_edge

if.end25.do.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

lor.lhs.false27:                                  ; preds = %if.end25
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp29.not = icmp eq i8 %58, 0
  br i1 %cmp29.not, label %land.lhs.true9.i, label %lor.lhs.false27.do.end34_crit_edge

lor.lhs.false27.do.end34_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false27.do.end34_crit_edge, %if.end25.do.end34_crit_edge
  %59 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cpp50.i, align 4
  %call36 = call ptr @nfp_cpp_device(ptr noundef %60) #6
  %parent37 = getelementptr inbounds %struct.device, ptr %call36, i32 0, i32 1
  %61 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent37, align 8
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %2, align 1
  %conv39 = zext i8 %64 to i32
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %1, align 2
  %conv41 = zext i8 %66 to i32
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %0, align 1
  %conv42 = zext i8 %68 to i32
  %69 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fw_ver, align 4
  %conv43 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef %conv39, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43) #9
  br label %err_unmap

land.lhs.true9.i:                                 ; preds = %lor.lhs.false27
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp13.i = icmp eq i8 %72, 0
  br i1 %cmp13.i, label %nfp_net_fw_ver_eq.exit, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

nfp_net_fw_ver_eq.exit:                           ; preds = %land.lhs.true9.i
  %73 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp18.i = icmp eq i8 %74, 1
  br i1 %cmp18.i, label %if.then46, label %nfp_net_fw_ver_eq.exit.if.else_crit_edge

nfp_net_fw_ver_eq.exit.if.else_crit_edge:         ; preds = %nfp_net_fw_ver_eq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then46:                                        ; preds = %nfp_net_fw_ver_eq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cpp50.i, align 4
  %call51 = call ptr @nfp_cpp_device(ptr noundef %76) #6
  %parent52 = getelementptr inbounds %struct.device, ptr %call51, i32 0, i32 1
  %77 = ptrtoint ptr %parent52 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent52, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.16) #9
  br label %if.end69

if.else:                                          ; preds = %nfp_net_fw_ver_eq.exit.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %0, align 1
  %.off = add i8 %80, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %if.else.if.end69_crit_edge, label %do.end57

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cpp50.i, align 4
  %call59 = call ptr @nfp_cpp_device(ptr noundef %82) #6
  %parent60 = getelementptr inbounds %struct.device, ptr %call59, i32 0, i32 1
  %83 = ptrtoint ptr %parent60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent60, align 8
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %2, align 1
  %conv62 = zext i8 %86 to i32
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %1, align 2
  %conv64 = zext i8 %88 to i32
  %89 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %0, align 1
  %conv66 = zext i8 %90 to i32
  %91 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fw_ver, align 4
  %conv68 = zext i8 %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.20, i32 noundef %conv62, i32 noundef %conv64, i32 noundef %conv66, i32 noundef %conv68) #9
  br label %err_unmap

if.end69:                                         ; preds = %if.else.if.end69_crit_edge, %if.then46
  %stride.0 = phi i32 [ 2, %if.then46 ], [ 4, %if.else.if.end69_crit_edge ]
  %call.i.i = call i32 @nfp_pf_rtsym_read_optional(ptr noundef %pf, ptr noundef nonnull @.str.47, i32 noundef 1) #6
  %call1.i = call ptr @nfp_app_alloc(ptr noundef %pf, i32 noundef %call.i.i) #6
  %app.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %93 = ptrtoint ptr %app.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call1.i, ptr %app.i, align 4
  %cmp.i.i163 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i163, label %if.then.i, label %if.end.i164

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %call1.i to i32
  br label %nfp_net_pf_app_init.exit

if.end.i164:                                      ; preds = %if.end69
  %lock.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %95 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %app.i, align 4
  %type.i.i = getelementptr inbounds %struct.nfp_app, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %type.i.i, align 4
  %init.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i, label %nfp_app_init.exit.thread.i, label %nfp_app_init.exit.i

nfp_app_init.exit.thread.i:                       ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %if.end10.i

nfp_app_init.exit.i:                              ; preds = %if.end.i164
  %call.i59.i = call i32 %100(ptr noundef %96) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool.not.i165 = icmp eq i32 %call.i59.i, 0
  br i1 %tobool.not.i165, label %nfp_app_init.exit.i.if.end10.i_crit_edge, label %nfp_app_init.exit.i.err_free.i_crit_edge

nfp_app_init.exit.i.err_free.i_crit_edge:         ; preds = %nfp_app_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free.i

nfp_app_init.exit.i.if.end10.i_crit_edge:         ; preds = %nfp_app_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %nfp_app_init.exit.i.if.end10.i_crit_edge, %nfp_app_init.exit.thread.i
  %101 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %app.i, align 4
  %tobool.not.i60.i = icmp eq ptr %102, null
  br i1 %tobool.not.i60.i, label %if.end10.i.if.end73_crit_edge, label %nfp_app_needs_ctrl_vnic.exit.i

if.end10.i.if.end73_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

nfp_app_needs_ctrl_vnic.exit.i:                   ; preds = %if.end10.i
  %type.i61.i = getelementptr inbounds %struct.nfp_app, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %type.i61.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %type.i61.i, align 4
  %ctrl_msg_rx.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %104, i32 0, i32 26
  %105 = ptrtoint ptr %ctrl_msg_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctrl_msg_rx.i.i, align 4
  %tobool1.i.not.i = icmp eq ptr %106, null
  br i1 %tobool1.i.not.i, label %nfp_app_needs_ctrl_vnic.exit.i.if.end73_crit_edge, label %if.end14.i

nfp_app_needs_ctrl_vnic.exit.i.if.end73_crit_edge: ; preds = %nfp_app_needs_ctrl_vnic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end14.i:                                       ; preds = %nfp_app_needs_ctrl_vnic.exit.i
  %ctrl_vnic_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 4
  %call15.i = call ptr @nfp_pf_map_rtsym(ptr noundef %pf, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 32768, ptr noundef %ctrl_vnic_bar.i) #6
  %cmp.i62.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %do.end.i168, label %if.end20.i

do.end.i168:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %cpp50.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cpp50.i, align 4
  %call18.i = call ptr @nfp_cpp_device(ptr noundef %108) #6
  %parent.i167 = getelementptr inbounds %struct.device, ptr %call18.i, i32 0, i32 1
  %109 = ptrtoint ptr %parent.i167 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %parent.i167, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.45) #9
  br label %err_app_clean.i

if.end20.i:                                       ; preds = %if.end14.i
  %call21.i169 = call fastcc ptr @nfp_net_pf_alloc_vnic(ptr noundef %pf, i1 noundef zeroext false, ptr noundef %call15.i, ptr noundef nonnull %call21, i32 noundef %stride.0, i32 noundef 0) #6
  %ctrl_vnic.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 18
  %111 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call21.i169, ptr %ctrl_vnic.i, align 4
  %cmp.i63.i = icmp ugt ptr %call21.i169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then24.i170, label %if.end20.i.if.end73_crit_edge

if.end20.i.if.end73_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then24.i170:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %ctrl_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ctrl_vnic_bar.i, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %113) #6
  br label %err_app_clean.i

err_app_clean.i:                                  ; preds = %if.then24.i170, %do.end.i168
  %err.0.in.i171 = phi ptr [ %call15.i, %do.end.i168 ], [ %call21.i169, %if.then24.i170 ]
  %err.0.i = ptrtoint ptr %err.0.in.i171 to i32
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %114 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %app.i, align 4
  %type.i64.i = getelementptr inbounds %struct.nfp_app, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %type.i64.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %type.i64.i, align 4
  %clean.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %clean.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clean.i.i, align 4
  %tobool.not.i65.i = icmp eq ptr %119, null
  br i1 %tobool.not.i65.i, label %err_app_clean.i.nfp_app_clean.exit.i_crit_edge, label %if.then.i.i

err_app_clean.i.nfp_app_clean.exit.i_crit_edge:   ; preds = %err_app_clean.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_app_clean.exit.i

if.then.i.i:                                      ; preds = %err_app_clean.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %119(ptr noundef %115) #6
  br label %nfp_app_clean.exit.i

nfp_app_clean.exit.i:                             ; preds = %if.then.i.i, %err_app_clean.i.nfp_app_clean.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %err_free.i

err_free.i:                                       ; preds = %nfp_app_clean.exit.i, %nfp_app_init.exit.i.err_free.i_crit_edge
  %err.1.i = phi i32 [ %call.i59.i, %nfp_app_init.exit.i.err_free.i_crit_edge ], [ %err.0.i, %nfp_app_clean.exit.i ]
  %120 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %app.i, align 4
  call void @nfp_app_free(ptr noundef %121) #6
  %122 = ptrtoint ptr %app.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %app.i, align 4
  br label %nfp_net_pf_app_init.exit

nfp_net_pf_app_init.exit:                         ; preds = %err_free.i, %if.then.i
  %retval.0.i172 = phi i32 [ %94, %if.then.i ], [ %err.1.i, %err_free.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i172)
  %tobool71.not = icmp eq i32 %retval.0.i172, 0
  br i1 %tobool71.not, label %nfp_net_pf_app_init.exit.if.end73_crit_edge, label %nfp_net_pf_app_init.exit.err_unmap_crit_edge

nfp_net_pf_app_init.exit.err_unmap_crit_edge:     ; preds = %nfp_net_pf_app_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

nfp_net_pf_app_init.exit.if.end73_crit_edge:      ; preds = %nfp_net_pf_app_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end73:                                         ; preds = %nfp_net_pf_app_init.exit.if.end73_crit_edge, %if.end20.i.if.end73_crit_edge, %nfp_app_needs_ctrl_vnic.exit.i.if.end73_crit_edge, %if.end10.i.if.end73_crit_edge
  %call74 = call i32 @nfp_shared_buf_register(ptr noundef %pf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.err_devlink_unreg_crit_edge

if.end73.err_devlink_unreg_crit_edge:             ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_devlink_unreg

if.end77:                                         ; preds = %if.end73
  %call78 = call i32 @nfp_devlink_params_register(ptr noundef %pf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.err_shared_buf_unreg_crit_edge

if.end77.err_shared_buf_unreg_crit_edge:          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_shared_buf_unreg

if.end81:                                         ; preds = %if.end77
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %123 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pf, align 4
  %call82 = call ptr @nfp_net_debugfs_device_add(ptr noundef %124) #6
  %ddir = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 28
  %125 = ptrtoint ptr %ddir to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call82, ptr %ddir, align 4
  %call83 = call fastcc i32 @nfp_net_pf_alloc_vnics(ptr noundef %pf, ptr noundef nonnull %call20, ptr noundef nonnull %call21, i32 noundef %stride.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end81.err_clean_ddir_crit_edge

if.end81.err_clean_ddir_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clean_ddir

if.end86:                                         ; preds = %if.end81
  %call87 = call fastcc i32 @nfp_net_pf_alloc_irqs(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_free_vnics_crit_edge

if.end86.err_free_vnics_crit_edge:                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_vnics

if.end90:                                         ; preds = %if.end86
  %call91 = call fastcc i32 @nfp_net_pf_app_start(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err_free_irqs_crit_edge

if.end90.err_free_irqs_crit_edge:                 ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_irqs

if.end94:                                         ; preds = %if.end90
  %call95 = call fastcc i32 @nfp_net_pf_init_vnics(ptr noundef %pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %err_stop_app

if.end98:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @devlink_register(ptr noundef %call) #6
  br label %cleanup

err_stop_app:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @nfp_net_pf_app_stop(ptr noundef %pf)
  br label %err_free_irqs

err_free_irqs:                                    ; preds = %err_stop_app, %if.end90.err_free_irqs_crit_edge
  %err.0 = phi i32 [ %call91, %if.end90.err_free_irqs_crit_edge ], [ %call95, %err_stop_app ]
  call fastcc void @nfp_net_pf_free_irqs(ptr noundef %pf)
  br label %err_free_vnics

err_free_vnics:                                   ; preds = %err_free_irqs, %if.end86.err_free_vnics_crit_edge
  %err.1 = phi i32 [ %call87, %if.end86.err_free_vnics_crit_edge ], [ %err.0, %err_free_irqs ]
  call fastcc void @nfp_net_pf_free_vnics(ptr noundef %pf)
  br label %err_clean_ddir

err_clean_ddir:                                   ; preds = %err_free_vnics, %if.end81.err_clean_ddir_crit_edge
  %err.2 = phi i32 [ %call83, %if.end81.err_clean_ddir_crit_edge ], [ %err.1, %err_free_vnics ]
  call void @nfp_net_debugfs_dir_clean(ptr noundef %ddir) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @nfp_devlink_params_unregister(ptr noundef %pf) #6
  br label %err_shared_buf_unreg

err_shared_buf_unreg:                             ; preds = %err_clean_ddir, %if.end77.err_shared_buf_unreg_crit_edge
  %err.3 = phi i32 [ %call78, %if.end77.err_shared_buf_unreg_crit_edge ], [ %err.2, %err_clean_ddir ]
  call void @nfp_shared_buf_unregister(ptr noundef %pf) #6
  br label %err_devlink_unreg

err_devlink_unreg:                                ; preds = %err_shared_buf_unreg, %if.end73.err_devlink_unreg_crit_edge
  %err.4 = phi i32 [ %call74, %if.end73.err_devlink_unreg_crit_edge ], [ %err.3, %err_shared_buf_unreg ]
  %call103 = call zeroext i1 @cancel_work_sync(ptr noundef %port_refresh_work) #6
  %ctrl_vnic.i173 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 18
  %126 = ptrtoint ptr %ctrl_vnic.i173 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ctrl_vnic.i173, align 4
  %tobool.not.i174 = icmp eq ptr %127, null
  br i1 %tobool.not.i174, label %err_devlink_unreg.if.end.i182_crit_edge, label %if.then.i176

err_devlink_unreg.if.end.i182_crit_edge:          ; preds = %err_devlink_unreg
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i182

if.then.i176:                                     ; preds = %err_devlink_unreg
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef nonnull %127) #6
  %ctrl_vnic_bar.i175 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 4
  %128 = ptrtoint ptr %ctrl_vnic_bar.i175 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctrl_vnic_bar.i175, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %129) #6
  br label %if.end.i182

if.end.i182:                                      ; preds = %if.then.i176, %err_devlink_unreg.if.end.i182_crit_edge
  %lock.i177 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %lock.i177, i32 noundef 0) #6
  %130 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %app.i, align 4
  %type.i.i179 = getelementptr inbounds %struct.nfp_app, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %type.i.i179 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %type.i.i179, align 4
  %clean.i.i180 = getelementptr inbounds %struct.nfp_app_type, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %clean.i.i180 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clean.i.i180, align 4
  %tobool.not.i.i181 = icmp eq ptr %135, null
  br i1 %tobool.not.i.i181, label %if.end.i182.nfp_net_pf_app_clean.exit_crit_edge, label %if.then.i.i183

if.end.i182.nfp_net_pf_app_clean.exit_crit_edge:  ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pf_app_clean.exit

if.then.i.i183:                                   ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  call void %135(ptr noundef %131) #6
  br label %nfp_net_pf_app_clean.exit

nfp_net_pf_app_clean.exit:                        ; preds = %if.then.i.i183, %if.end.i182.nfp_net_pf_app_clean.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i177) #6
  %136 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %app.i, align 4
  call void @nfp_app_free(ptr noundef %137) #6
  %138 = ptrtoint ptr %app.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %app.i, align 4
  br label %err_unmap

err_unmap:                                        ; preds = %nfp_net_pf_app_clean.exit, %nfp_net_pf_app_init.exit.err_unmap_crit_edge, %do.end57, %do.end34, %if.end19.err_unmap_crit_edge
  %err.5 = phi i32 [ -22, %do.end34 ], [ %retval.0.i172, %nfp_net_pf_app_init.exit.err_unmap_crit_edge ], [ %err.4, %nfp_net_pf_app_clean.exit ], [ -22, %do.end57 ], [ -5, %if.end19.err_unmap_crit_edge ]
  %139 = ptrtoint ptr %vfcfg_tbl2_area.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vfcfg_tbl2_area.i, align 4
  %tobool.not.i186 = icmp eq ptr %140, null
  br i1 %tobool.not.i186, label %err_unmap.if.end.i189_crit_edge, label %if.then.i187

err_unmap.if.end.i189_crit_edge:                  ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i189

if.then.i187:                                     ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfp_cpp_area_release_free(ptr noundef nonnull %140) #6
  br label %if.end.i189

if.end.i189:                                      ; preds = %if.then.i187, %err_unmap.if.end.i189_crit_edge
  %141 = ptrtoint ptr %vf_cfg_bar.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vf_cfg_bar.i, align 4
  %tobool2.not.i = icmp eq ptr %142, null
  br i1 %tobool2.not.i, label %if.end.i189.if.end5.i_crit_edge, label %if.then3.i

if.end.i189.if.end5.i_crit_edge:                  ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfp_cpp_area_release_free(ptr noundef nonnull %142) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i189.if.end5.i_crit_edge
  %mac_stats_bar.i190 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 6
  %143 = ptrtoint ptr %mac_stats_bar.i190 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mac_stats_bar.i190, align 4
  %tobool6.not.i = icmp eq ptr %144, null
  br i1 %tobool6.not.i, label %if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge, label %if.then7.i

if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pci_unmap_mem.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfp_cpp_area_release_free(ptr noundef nonnull %144) #6
  br label %nfp_net_pci_unmap_mem.exit

nfp_net_pci_unmap_mem.exit:                       ; preds = %if.then7.i, %if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge
  %145 = ptrtoint ptr %qc_area.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %qc_area.i, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %146) #6
  %147 = ptrtoint ptr %data_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data_vnic_bar.i, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %148) #6
  br label %cleanup

cleanup:                                          ; preds = %nfp_net_pci_unmap_mem.exit, %if.end98, %nfp_net_pci_map_mem.exit, %if.end.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %err.5, %nfp_net_pci_unmap_mem.exit ], [ 0, %if.end98 ], [ -22, %do.end8 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.i, %nfp_net_pci_map_mem.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_refresh_vnics(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -140
  %lock = getelementptr i8, ptr %work, i32 52
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call = tail call i32 @nfp_net_refresh_port_table_sync(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_iomem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_shared_buf_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_devlink_params_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_debugfs_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_pf_alloc_vnics(ptr noundef %pf, ptr noundef %ctrl_bar, ptr noundef %qc_bar, i32 noundef %stride) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_data_vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 29
  %0 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_data_vnics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ctrl_bar.addr.026 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %ctrl_bar, %entry.for.body_crit_edge ]
  %call = tail call fastcc ptr @nfp_net_pf_alloc_vnic(ptr noundef %pf, i1 noundef zeroext true, ptr noundef %ctrl_bar.addr.026, ptr noundef %qc_bar, i32 noundef %stride, i32 noundef %i.027)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = ptrtoint ptr %call to i32
  %vnics.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %3 = ptrtoint ptr %vnics.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vnics.i, align 4
  %cmp.not23.i = icmp eq ptr %4, %vnics.i
  br i1 %cmp.not23.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn26.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %if.then.for.body.i_crit_edge ]
  %nn.025.i = getelementptr i8, ptr %.pn.in24.i, i32 -58864
  %5 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn26.i = load ptr, ptr %.pn.in24.i, align 16
  %netdev.i.i = getelementptr i8, ptr %.pn.in24.i, i32 -58860
  %6 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %for.body.i.if.then.i_crit_edge

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %port.i.i = getelementptr i8, ptr %.pn.in24.i, i32 20
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.nfp_net_is_data_vnic.exit.i_crit_edge, label %land.rhs4.i.i

land.rhs.i.i.nfp_net_is_data_vnic.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit.i

land.rhs4.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs4.i.i.nfp_net_is_data_vnic.exit.i_crit_edge, label %if.then.i.i, !prof !107

land.rhs4.i.i.nfp_net_is_data_vnic.exit.i_crit_edge: ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit.i

if.then.i.i:                                      ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit.i

nfp_net_is_data_vnic.exit.i:                      ; preds = %if.then.i.i, %land.rhs4.i.i.nfp_net_is_data_vnic.exit.i_crit_edge, %land.rhs.i.i.nfp_net_is_data_vnic.exit.i_crit_edge
  %10 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load ptr, ptr %netdev.i.i, align 4
  %tobool41.i.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool41.i.not.i, label %nfp_net_is_data_vnic.exit.i.for.inc.i_crit_edge, label %nfp_net_is_data_vnic.exit.i.if.then.i_crit_edge

nfp_net_is_data_vnic.exit.i.if.then.i_crit_edge:  ; preds = %nfp_net_is_data_vnic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nfp_net_is_data_vnic.exit.i.for.inc.i_crit_edge:  ; preds = %nfp_net_is_data_vnic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %nfp_net_is_data_vnic.exit.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef %nn.025.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %nfp_net_is_data_vnic.exit.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn26.i, %vnics.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %ctrl_bar.addr.026, i32 32768
  %port = getelementptr inbounds %struct.nfp_net, ptr %call, i32 0, i32 57
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.nfp_port, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %15 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_data_vnics, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %17 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %vnics, align 4
  %cmp.i24.not = icmp eq ptr %18, %vnics
  %. = select i1 %cmp.i24.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.inc.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %for.end ], [ %2, %if.then.cleanup_crit_edge ], [ %2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_pf_alloc_irqs(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %0 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn87 = load ptr, ptr %vnics, align 4
  %cmp.not88 = icmp eq ptr %.pn87, %vnics
  br i1 %cmp.not88, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn87, %entry.for.body_crit_edge ]
  %wanted_irqs.089 = phi i32 [ %add2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_r_vecs = getelementptr i8, ptr %.pn90, i32 -58816
  %1 = ptrtoint ptr %num_r_vecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_r_vecs, align 16
  %add = add i32 %wanted_irqs.089, 2
  %add2 = add i32 %add, %2
  %3 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %vnics
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %wanted_irqs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add2, %for.body.for.end_crit_edge ]
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %wanted_irqs.0.lcssa, i32 8) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !106

kcalloc.exit.thread:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_entries79 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 13
  %6 = ptrtoint ptr %irq_entries79 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %irq_entries79, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %irq_entries = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 13
  %8 = ptrtoint ptr %irq_entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %irq_entries, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf, align 4
  %num_vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 30
  %11 = ptrtoint ptr %num_vnics to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_vnics, align 4
  %mul = mul i32 %12, 3
  %call10 = tail call i32 @nfp_net_irqs_alloc(ptr noundef %10, ptr noundef nonnull %call8.i.i, i32 noundef %mul, i32 noundef %wanted_irqs.0.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %13 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp, align 4
  %call13 = tail call ptr @nfp_cpp_device(ptr noundef %14) #6
  %parent = getelementptr inbounds %struct.device, ptr %call13, i32 0, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.48) #9
  %17 = ptrtoint ptr %irq_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_entries, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %19 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn7791 = load ptr, ptr %vnics, align 4
  %cmp25.not92 = icmp eq ptr %.pn7791, %vnics
  br i1 %cmp25.not92, label %if.end15.cleanup_crit_edge, label %for.body27.preheader

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body27.preheader:                             ; preds = %if.end15
  %20 = ptrtoint ptr %num_vnics to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_vnics, align 4
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.preheader
  %.pn7795 = phi ptr [ %.pn77, %for.body27.for.body27_crit_edge ], [ %.pn7791, %for.body27.preheader ]
  %vnics_left.094 = phi i32 [ %add31, %for.body27.for.body27_crit_edge ], [ %21, %for.body27.preheader ]
  %irqs_left.093 = phi i32 [ %sub36, %for.body27.for.body27_crit_edge ], [ %call10, %for.body27.preheader ]
  %nn.1 = getelementptr i8, ptr %.pn7795, i32 -58864
  %num_r_vecs29 = getelementptr i8, ptr %.pn7795, i32 -58816
  %22 = ptrtoint ptr %num_r_vecs29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_r_vecs29, align 16
  %add30 = add i32 %23, 2
  %add31 = add i32 %vnics_left.094, -1
  %sub = add i32 %add31, %irqs_left.093
  %div = udiv i32 %sub, %vnics_left.094
  %24 = tail call i32 @llvm.umin.i32(i32 %add30, i32 %div)
  %25 = ptrtoint ptr %irq_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_entries, align 4
  %sub35 = sub i32 %call10, %irqs_left.093
  %arrayidx = getelementptr %struct.msix_entry, ptr %26, i32 %sub35
  tail call void @nfp_net_irqs_assign(ptr noundef %nn.1, ptr noundef %arrayidx, i32 noundef %24) #6
  %sub36 = sub i32 %irqs_left.093, %24
  %27 = ptrtoint ptr %.pn7795 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn77 = load ptr, ptr %.pn7795, align 4
  %cmp25.not = icmp eq ptr %.pn77, %vnics
  br i1 %cmp25.not, label %for.body27.cleanup_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body27.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %for.body27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_pf_app_start(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_vnic.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 18
  %0 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_vnic.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @nfp_net_pf_init_vnic(ptr noundef %pf, ptr noundef nonnull %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_vnic.i, align 4
  %call6.i = tail call i32 @nfp_ctrl_open(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end_crit_edge, label %if.end4.i.cleanup.sink.split_crit_edge

if.end4.i.cleanup.sink.split_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app, align 4
  %6 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_vnic.i, align 4
  %call1 = tail call i32 @nfp_app_start(ptr noundef %5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_ctrl_stop_crit_edge

if.end.err_ctrl_stop_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ctrl_stop

if.end4:                                          ; preds = %if.end
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 15
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app, align 4
  %tobool.not.i26 = icmp eq ptr %11, null
  br i1 %tobool.not.i26, label %if.then6.err_app_stop_crit_edge, label %lor.lhs.false.i

if.then6.err_app_stop_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_app_stop

lor.lhs.false.i:                                  ; preds = %if.then6
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %sriov_enable.i = getelementptr inbounds %struct.nfp_app_type, ptr %13, i32 0, i32 31
  %14 = ptrtoint ptr %sriov_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_enable.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_app_stop_crit_edge, label %nfp_app_sriov_enable.exit

lor.lhs.false.i.err_app_stop_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_app_stop

nfp_app_sriov_enable.exit:                        ; preds = %lor.lhs.false.i
  %call.i27 = tail call i32 %15(ptr noundef nonnull %11, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool10.not = icmp eq i32 %call.i27, 0
  br i1 %tobool10.not, label %nfp_app_sriov_enable.exit.cleanup_crit_edge, label %nfp_app_sriov_enable.exit.err_app_stop_crit_edge

nfp_app_sriov_enable.exit.err_app_stop_crit_edge: ; preds = %nfp_app_sriov_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_app_stop

nfp_app_sriov_enable.exit.cleanup_crit_edge:      ; preds = %nfp_app_sriov_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_app_stop:                                     ; preds = %nfp_app_sriov_enable.exit.err_app_stop_crit_edge, %lor.lhs.false.i.err_app_stop_crit_edge, %if.then6.err_app_stop_crit_edge
  %retval.0.i2937 = phi i32 [ %call.i27, %nfp_app_sriov_enable.exit.err_app_stop_crit_edge ], [ -95, %lor.lhs.false.i.err_app_stop_crit_edge ], [ -95, %if.then6.err_app_stop_crit_edge ]
  %16 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %app, align 4
  tail call void @nfp_app_stop(ptr noundef %17) #6
  br label %err_ctrl_stop

err_ctrl_stop:                                    ; preds = %err_app_stop, %if.end.err_ctrl_stop_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_ctrl_stop_crit_edge ], [ %retval.0.i2937, %err_app_stop ]
  %18 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_vnic.i, align 4
  %tobool.not.i31 = icmp eq ptr %19, null
  br i1 %tobool.not.i31, label %err_ctrl_stop.cleanup_crit_edge, label %if.end.i32

err_ctrl_stop.cleanup_crit_edge:                  ; preds = %err_ctrl_stop
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i32:                                       ; preds = %err_ctrl_stop
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_ctrl_close(ptr noundef nonnull %19) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i32, %if.end4.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %if.end.i32 ], [ %call6.i, %if.end4.i.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_vnic.i, align 4
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err_ctrl_stop.cleanup_crit_edge, %nfp_app_sriov_enable.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfp_app_sriov_enable.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ %err.0, %err_ctrl_stop.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_pf_init_vnics(ptr noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %0 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn62 = load ptr, ptr %vnics, align 4
  %cmp.not64 = icmp eq ptr %.pn62, %vnics
  br i1 %cmp.not64, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn62, %entry.for.body_crit_edge ]
  %id.065 = phi i32 [ %id.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nn.068 = getelementptr i8, ptr %.pn67, i32 -58864
  %netdev.i = getelementptr i8, ptr %.pn67, i32 -58860
  %1 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %land.rhs.i, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs.i:                                       ; preds = %for.body
  %port.i = getelementptr i8, ptr %.pn67, i32 20
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.for.inc_crit_edge, label %nfp_net_is_data_vnic.exit.if.end_crit_edge

nfp_net_is_data_vnic.exit.if.end_crit_edge:       ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nfp_net_is_data_vnic.exit.for.inc_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %nfp_net_is_data_vnic.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %call2 = tail call fastcc i32 @nfp_net_pf_init_vnic(ptr noundef %pf, ptr noundef %nn.068, i32 noundef %id.065)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %if.end
  %.pn46.in69 = getelementptr inbounds %struct.list_head, ptr %.pn67, i32 0, i32 1
  %6 = ptrtoint ptr %.pn46.in69 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn4670 = load ptr, ptr %.pn46.in69, align 4
  %cmp17.not72 = icmp eq ptr %.pn4670, %vnics
  br i1 %cmp17.not72, label %for.cond14.preheader.cleanup_crit_edge, label %for.cond14.preheader.for.body19_crit_edge

for.cond14.preheader.for.body19_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body19

for.cond14.preheader.cleanup_crit_edge:           ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %id.065, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %nfp_net_is_data_vnic.exit.for.inc_crit_edge
  %id.1 = phi i32 [ %inc, %if.end4 ], [ %id.065, %nfp_net_is_data_vnic.exit.for.inc_crit_edge ]
  %7 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp.not = icmp eq ptr %.pn, %vnics
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body19:                                       ; preds = %for.inc23.for.body19_crit_edge, %for.cond14.preheader.for.body19_crit_edge
  %.pn4673 = phi ptr [ %.pn46, %for.inc23.for.body19_crit_edge ], [ %.pn4670, %for.cond14.preheader.for.body19_crit_edge ]
  %nn.176 = getelementptr i8, ptr %.pn4673, i32 -58864
  %netdev.i47 = getelementptr i8, ptr %.pn4673, i32 -58860
  %8 = ptrtoint ptr %netdev.i47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i47, align 4
  %tobool.not.i48 = icmp eq ptr %9, null
  br i1 %tobool.not.i48, label %land.rhs.i51, label %for.body19.if.then21_crit_edge

for.body19.if.then21_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

land.rhs.i51:                                     ; preds = %for.body19
  %port.i49 = getelementptr i8, ptr %.pn4673, i32 20
  %10 = ptrtoint ptr %port.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i49, align 4
  %tobool1.not.i50 = icmp eq ptr %11, null
  br i1 %tobool1.not.i50, label %land.rhs.i51.nfp_net_is_data_vnic.exit56_crit_edge, label %land.rhs4.i53

land.rhs.i51.nfp_net_is_data_vnic.exit56_crit_edge: ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit56

land.rhs4.i53:                                    ; preds = %land.rhs.i51
  %.b50.i52 = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i52, label %land.rhs4.i53.nfp_net_is_data_vnic.exit56_crit_edge, label %if.then.i54, !prof !107

land.rhs4.i53.nfp_net_is_data_vnic.exit56_crit_edge: ; preds = %land.rhs4.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit56

if.then.i54:                                      ; preds = %land.rhs4.i53
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit56

nfp_net_is_data_vnic.exit56:                      ; preds = %if.then.i54, %land.rhs4.i53.nfp_net_is_data_vnic.exit56_crit_edge, %land.rhs.i51.nfp_net_is_data_vnic.exit56_crit_edge
  %12 = ptrtoint ptr %netdev.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr58 = load ptr, ptr %netdev.i47, align 4
  %tobool41.i55.not = icmp eq ptr %.pr58, null
  br i1 %tobool41.i55.not, label %nfp_net_is_data_vnic.exit56.for.inc23_crit_edge, label %nfp_net_is_data_vnic.exit56.if.then21_crit_edge

nfp_net_is_data_vnic.exit56.if.then21_crit_edge:  ; preds = %nfp_net_is_data_vnic.exit56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

nfp_net_is_data_vnic.exit56.for.inc23_crit_edge:  ; preds = %nfp_net_is_data_vnic.exit56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

if.then21:                                        ; preds = %nfp_net_is_data_vnic.exit56.if.then21_crit_edge, %for.body19.if.then21_crit_edge
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %nn.176)
  br label %for.inc23

for.inc23:                                        ; preds = %if.then21, %nfp_net_is_data_vnic.exit56.for.inc23_crit_edge
  %.pn46.in = getelementptr inbounds %struct.list_head, ptr %.pn4673, i32 0, i32 1
  %13 = ptrtoint ptr %.pn46.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn46 = load ptr, ptr %.pn46.in, align 4
  %cmp17.not = icmp eq ptr %.pn46, %vnics
  br i1 %cmp17.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body19_crit_edge

for.inc23.for.body19_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond14.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %for.cond14.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %for.inc23.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_pf_app_stop(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 15
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %sriov_disable.i = getelementptr inbounds %struct.nfp_app_type, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %sriov_disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_disable.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %app1 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %8 = ptrtoint ptr %app1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app1, align 4
  tail call void @nfp_app_stop(ptr noundef %9) #6
  %ctrl_vnic.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 18
  %10 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_vnic.i, align 4
  %tobool.not.i5 = icmp eq ptr %11, null
  br i1 %tobool.not.i5, label %if.end.nfp_net_pf_app_stop_ctrl.exit_crit_edge, label %if.end.i

if.end.nfp_net_pf_app_stop_ctrl.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pf_app_stop_ctrl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_ctrl_close(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %ctrl_vnic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_vnic.i, align 4
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %13) #6
  br label %nfp_net_pf_app_stop_ctrl.exit

nfp_net_pf_app_stop_ctrl.exit:                    ; preds = %if.end.i, %if.end.nfp_net_pf_app_stop_ctrl.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_pf_free_irqs(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  tail call void @nfp_net_irqs_disable(ptr noundef %1) #6
  %irq_entries = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 13
  %2 = ptrtoint ptr %irq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_entries, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_pf_free_vnics(ptr noundef %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %0 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnics, align 4
  %cmp.not23 = icmp eq ptr %1, %vnics
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn26, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %nn.025 = getelementptr i8, ptr %.pn.in24, i32 -58864
  %2 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn26 = load ptr, ptr %.pn.in24, align 16
  %netdev.i = getelementptr i8, ptr %.pn.in24, i32 -58860
  %3 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %land.rhs.i, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.rhs.i:                                       ; preds = %for.body
  %port.i = getelementptr i8, ptr %.pn.in24, i32 20
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.for.inc_crit_edge, label %nfp_net_is_data_vnic.exit.if.then_crit_edge

nfp_net_is_data_vnic.exit.if.then_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

nfp_net_is_data_vnic.exit.for.inc_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %nfp_net_is_data_vnic.exit.if.then_crit_edge, %for.body.if.then_crit_edge
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef %nn.025)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %nfp_net_is_data_vnic.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn26, %vnics
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_dir_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_devlink_params_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_shared_buf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_net_pci_remove(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #6
  tail call void @devlink_unregister(ptr noundef %call) #6
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %0 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnics, align 4
  %cmp.not51 = icmp eq ptr %1, %vnics
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in52 = phi ptr [ %.pn54, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %nn.053 = getelementptr i8, ptr %.pn.in52, i32 -58864
  %2 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn54 = load ptr, ptr %.pn.in52, align 16
  %netdev.i = getelementptr i8, ptr %.pn.in52, i32 -58860
  %3 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %land.rhs.i, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs.i:                                       ; preds = %for.body
  %port.i = getelementptr i8, ptr %.pn.in52, i32 20
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge, label %land.rhs4.i

land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, %land.rhs.i.nfp_net_is_data_vnic.exit_crit_edge
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.for.inc_crit_edge, label %nfp_net_is_data_vnic.exit.if.end_crit_edge

nfp_net_is_data_vnic.exit.if.end_crit_edge:       ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nfp_net_is_data_vnic.exit.for.inc_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %nfp_net_is_data_vnic.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %nn.053)
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef %nn.053)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %nfp_net_is_data_vnic.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn54, %vnics
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %num_vfs.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 15
  %8 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i36 = icmp eq i32 %9, 0
  br i1 %tobool.not.i36, label %for.end.if.end.i_crit_edge, label %if.then.i37

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i37:                                      ; preds = %for.end
  %app.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %10 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i37.if.end.i_crit_edge, label %land.lhs.true.i.i

if.then.i37.if.end.i_crit_edge:                   ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.then.i37
  %type.i.i = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i.i, align 4
  %sriov_disable.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %sriov_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_disable.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef nonnull %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i_crit_edge, %if.then.i37.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %app1.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %16 = ptrtoint ptr %app1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %app1.i, align 4
  tail call void @nfp_app_stop(ptr noundef %17) #6
  %ctrl_vnic.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 18
  %18 = ptrtoint ptr %ctrl_vnic.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_vnic.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %19, null
  br i1 %tobool.not.i5.i, label %if.end.i.nfp_net_pf_app_stop.exit_crit_edge, label %if.end.i.i

if.end.i.nfp_net_pf_app_stop.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pf_app_stop.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_ctrl_close(ptr noundef nonnull %19) #6
  %20 = ptrtoint ptr %ctrl_vnic.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_vnic.i.i, align 4
  tail call fastcc void @nfp_net_pf_clean_vnic(ptr noundef %pf, ptr noundef %21) #6
  br label %nfp_net_pf_app_stop.exit

nfp_net_pf_app_stop.exit:                         ; preds = %if.end.i.i, %if.end.i.nfp_net_pf_app_stop.exit_crit_edge
  %ddir = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 28
  tail call void @nfp_net_debugfs_dir_clean(ptr noundef %ddir) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @nfp_devlink_params_unregister(ptr noundef %pf) #6
  tail call void @nfp_shared_buf_unregister(ptr noundef %pf) #6
  %22 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pf, align 4
  tail call void @nfp_net_irqs_disable(ptr noundef %23) #6
  %irq_entries.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 13
  %24 = ptrtoint ptr %irq_entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_entries.i, align 4
  tail call void @kfree(ptr noundef %25) #6
  %26 = ptrtoint ptr %ctrl_vnic.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_vnic.i.i, align 4
  %tobool.not.i38 = icmp eq ptr %27, null
  br i1 %tobool.not.i38, label %nfp_net_pf_app_stop.exit.if.end.i43_crit_edge, label %if.then.i39

nfp_net_pf_app_stop.exit.if.end.i43_crit_edge:    ; preds = %nfp_net_pf_app_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i43

if.then.i39:                                      ; preds = %nfp_net_pf_app_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @nfp_net_pf_free_vnic(ptr noundef %pf, ptr noundef nonnull %27) #6
  %ctrl_vnic_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 4
  %28 = ptrtoint ptr %ctrl_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_vnic_bar.i, align 4
  tail call void @nfp_cpp_area_release_free(ptr noundef %29) #6
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i39, %nfp_net_pf_app_stop.exit.if.end.i43_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %30 = ptrtoint ptr %app1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %app1.i, align 4
  %type.i.i41 = getelementptr inbounds %struct.nfp_app, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %type.i.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type.i.i41, align 4
  %clean.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %clean.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clean.i.i, align 4
  %tobool.not.i.i42 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i42, label %if.end.i43.nfp_net_pf_app_clean.exit_crit_edge, label %if.then.i.i44

if.end.i43.nfp_net_pf_app_clean.exit_crit_edge:   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pf_app_clean.exit

if.then.i.i44:                                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %35(ptr noundef %31) #6
  br label %nfp_net_pf_app_clean.exit

nfp_net_pf_app_clean.exit:                        ; preds = %if.then.i.i44, %if.end.i43.nfp_net_pf_app_clean.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %36 = ptrtoint ptr %app1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %app1.i, align 4
  tail call void @nfp_app_free(ptr noundef %37) #6
  %38 = ptrtoint ptr %app1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %app1.i, align 4
  %vfcfg_tbl2_area.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 10
  %39 = ptrtoint ptr %vfcfg_tbl2_area.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfcfg_tbl2_area.i, align 4
  %tobool.not.i45 = icmp eq ptr %40, null
  br i1 %tobool.not.i45, label %nfp_net_pf_app_clean.exit.if.end.i47_crit_edge, label %if.then.i46

nfp_net_pf_app_clean.exit.if.end.i47_crit_edge:   ; preds = %nfp_net_pf_app_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47

if.then.i46:                                      ; preds = %nfp_net_pf_app_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %40) #6
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i46, %nfp_net_pf_app_clean.exit.if.end.i47_crit_edge
  %vf_cfg_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 8
  %41 = ptrtoint ptr %vf_cfg_bar.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vf_cfg_bar.i, align 4
  %tobool2.not.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i, label %if.end.i47.if.end5.i_crit_edge, label %if.then3.i

if.end.i47.if.end5.i_crit_edge:                   ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %42) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i47.if.end5.i_crit_edge
  %mac_stats_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 6
  %43 = ptrtoint ptr %mac_stats_bar.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac_stats_bar.i, align 4
  %tobool6.not.i = icmp eq ptr %44, null
  br i1 %tobool6.not.i, label %if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge, label %if.then7.i

if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_pci_unmap_mem.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_cpp_area_release_free(ptr noundef nonnull %44) #6
  br label %nfp_net_pci_unmap_mem.exit

nfp_net_pci_unmap_mem.exit:                       ; preds = %if.then7.i, %if.end5.i.nfp_net_pci_unmap_mem.exit_crit_edge
  %qc_area.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 5
  %45 = ptrtoint ptr %qc_area.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qc_area.i, align 4
  tail call void @nfp_cpp_area_release_free(ptr noundef %46) #6
  %data_vnic_bar.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 3
  %47 = ptrtoint ptr %data_vnic_bar.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data_vnic_bar.i, align 4
  tail call void @nfp_cpp_area_release_free(ptr noundef %48) #6
  %port_refresh_work = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 34
  %call15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %port_refresh_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_port_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_pf_rtsym_read_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_pf_map_rtsym(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_map_area(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_area_release_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_net_pf_alloc_vnic(ptr noundef %pf, i1 noundef zeroext %needs_netdev, ptr noundef %ctrl_bar, ptr noundef %qc_bar, i32 noundef %stride, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctrl_bar, i32 72
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %add.ptr4 = getelementptr i8, ptr %ctrl_bar, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %add.ptr10 = getelementptr i8, ptr %ctrl_bar, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !109
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %add.ptr16 = getelementptr i8, ptr %ctrl_bar, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !109
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %call20 = tail call ptr @nfp_net_alloc(ptr noundef %7, ptr noundef %ctrl_bar, i1 noundef zeroext %needs_netdev, i32 noundef %3, i32 noundef %5) #6
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %1)
  %9 = tail call i32 @llvm.bswap.i32(i32 %0)
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app, align 4
  %app22 = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 55
  %12 = ptrtoint ptr %app22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %app22, align 4
  %fw_ver = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 1
  tail call void @nfp_net_get_fw_version(ptr noundef %fw_ver, ptr noundef %ctrl_bar) #6
  %mul = shl i32 %9, 11
  %add.ptr23 = getelementptr i8, ptr %qc_bar, i32 %mul
  %tx_bar = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 41
  %13 = ptrtoint ptr %tx_bar to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr23, ptr %tx_bar, align 4
  %mul24 = shl i32 %8, 11
  %add.ptr25 = getelementptr i8, ptr %qc_bar, i32 %mul24
  %rx_bar = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 42
  %14 = ptrtoint ptr %rx_bar to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr25, ptr %rx_bar, align 16
  %is_vf = getelementptr inbounds %struct.nfp_net_dp, ptr %call20, i32 0, i32 2
  %15 = ptrtoint ptr %is_vf to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %is_vf, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_vf, align 8
  %stride_rx = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 14
  %16 = ptrtoint ptr %stride_rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %stride, ptr %stride_rx, align 32
  %stride_tx = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 13
  %17 = ptrtoint ptr %stride_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %stride, ptr %stride_tx, align 4
  br i1 %needs_netdev, label %if.then27, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end
  %18 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %vnic_alloc.i = getelementptr inbounds %struct.nfp_app_type, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %vnic_alloc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vnic_alloc.i, align 4
  %call.i = tail call i32 %23(ptr noundef %19, ptr noundef %call20, i32 noundef %id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.then27.if.end34_crit_edge, label %if.then31

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_net_free(ptr noundef %call20) #6
  %24 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %num_vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 30
  %25 = ptrtoint ptr %num_vnics to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_vnics, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %num_vnics, align 4
  %vnic_list = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 53
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31
  %prev.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vnic_list, ptr noundef %28, ptr noundef %vnics) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vnic_list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %vnic_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vnics, ptr %vnic_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_net, ptr %call20, i32 0, i32 53, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %vnic_list, ptr %28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end34.cleanup_crit_edge, %if.then31, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %if.then31 ], [ %call20, %entry.cleanup_crit_edge ], [ %call20, %if.end34.cleanup_crit_edge ], [ %call20, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_app_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_alloc(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_irqs_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_irqs_assign(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_app_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_pf_init_vnic(ptr nocapture noundef readonly %pf, ptr noundef %nn, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 2
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id1, align 8
  %port = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %app, align 4
  %call = tail call i32 @nfp_devlink_port_register(ptr noundef %4, ptr noundef nonnull %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @nfp_net_init(ptr noundef %nn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_devlink_port_clean_crit_edge

if.end5.err_devlink_port_clean_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_devlink_port_clean

if.end9:                                          ; preds = %if.end5
  %ddir = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 28
  %5 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddir, align 4
  tail call void @nfp_net_debugfs_vnic_add(ptr noundef %nn, ptr noundef %6) #6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_devlink_port_type_eth_set(ptr noundef nonnull %8) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  tail call void @nfp_net_info(ptr noundef %nn) #6
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

land.rhs.i:                                       ; preds = %if.end14
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs4.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs4.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @nfp_net_is_data_vnic.__already_done, align 1
  br i1 %.b50.i, label %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge, label %if.then.i, !prof !107

land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge:  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_is_data_vnic.exit

if.then.i:                                        ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_is_data_vnic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 880, i32 noundef 9, ptr noundef null) #6
  br label %nfp_net_is_data_vnic.exit

nfp_net_is_data_vnic.exit:                        ; preds = %if.then.i, %land.rhs4.i.nfp_net_is_data_vnic.exit_crit_edge
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %netdev.i, align 4
  %tobool41.i.not = icmp eq ptr %.pr, null
  br i1 %tobool41.i.not, label %nfp_net_is_data_vnic.exit.cleanup_crit_edge, label %nfp_net_is_data_vnic.exit.if.then16_crit_edge

nfp_net_is_data_vnic.exit.if.then16_crit_edge:    ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

nfp_net_is_data_vnic.exit.cleanup_crit_edge:      ; preds = %nfp_net_is_data_vnic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %nfp_net_is_data_vnic.exit.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %app17 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 2
  %14 = ptrtoint ptr %app17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %app17, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %vnic_init.i = getelementptr inbounds %struct.nfp_app_type, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %vnic_init.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vnic_init.i, align 4
  %tobool.not.i57 = icmp eq ptr %19, null
  br i1 %tobool.not.i57, label %if.then16.cleanup_crit_edge, label %nfp_app_vnic_init.exit

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nfp_app_vnic_init.exit:                           ; preds = %if.then16
  %call.i = tail call i32 %19(ptr noundef %15, ptr noundef %nn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %nfp_app_vnic_init.exit.cleanup_crit_edge, label %err_devlink_port_type_clean

nfp_app_vnic_init.exit.cleanup_crit_edge:         ; preds = %nfp_app_vnic_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_devlink_port_type_clean:                      ; preds = %nfp_app_vnic_init.exit
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %err_devlink_port_type_clean.if.end27_crit_edge, label %if.then25

err_devlink_port_type_clean.if.end27_crit_edge:   ; preds = %err_devlink_port_type_clean
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %err_devlink_port_type_clean
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_devlink_port_type_clear(ptr noundef nonnull %21) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %err_devlink_port_type_clean.if.end27_crit_edge
  %debugfs_dir = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 52
  tail call void @nfp_net_debugfs_dir_clean(ptr noundef %debugfs_dir) #6
  tail call void @nfp_net_clean(ptr noundef %nn) #6
  br label %err_devlink_port_clean

err_devlink_port_clean:                           ; preds = %if.end27, %if.end5.err_devlink_port_clean_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.err_devlink_port_clean_crit_edge ], [ %call.i, %if.end27 ]
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %err_devlink_port_clean.cleanup_crit_edge, label %if.then30

err_devlink_port_clean.cleanup_crit_edge:         ; preds = %err_devlink_port_clean
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %err_devlink_port_clean
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_devlink_port_unregister(ptr noundef nonnull %23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %err_devlink_port_clean.cleanup_crit_edge, %nfp_app_vnic_init.exit.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %nfp_net_is_data_vnic.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %nfp_app_vnic_init.exit.cleanup_crit_edge ], [ 0, %nfp_net_is_data_vnic.exit.cleanup_crit_edge ], [ %err.0, %if.then30 ], [ %err.0, %err_devlink_port_clean.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ctrl_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_devlink_port_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_vnic_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_devlink_port_type_eth_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_ctrl_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_irqs_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 554, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 571, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nfp_net_refresh_port_table_sync._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @nfp_net_refresh_port_table_sync._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 629, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfp_net_refresh_eth_port._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfp_net_refresh_eth_port._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @nfp_net_pci_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 651, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 654, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfp_net_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_net_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 676, i32 3}
!26 = !{ptr @nfp_net_pci_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfp_net_pci_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 685, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nfp_net_pci_probe._entry.15, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_net_pci_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 692, i32 4}
!35 = !{ptr @nfp_net_pci_probe._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_net_pci_probe._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 528, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 533, i32 3}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfp_net_eth_port_update._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_net_eth_port_update._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 538, i32 3}
!47 = !{ptr @nfp_net_eth_port_update._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nfp_net_eth_port_update._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 76, i32 40}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 453, i32 29}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 453, i32 41}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 456, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nfp_net_pci_map_mem._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfp_net_pci_map_mem._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 462, i32 47}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 463, i32 9}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 474, i32 40}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 474, i32 53}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 486, i32 40}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 487, i32 8}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 498, i32 34}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 501, i32 3}
!76 = !{ptr @nfp_net_pci_map_mem._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nfp_net_pci_map_mem._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 326, i32 34}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 326, i32 46}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 329, i32 3}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @nfp_net_pf_app_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @nfp_net_pf_app_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 81, i32 40}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_main.c", i32 252, i32 3}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nfp_net_pf_alloc_irqs._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nfp_net_pf_alloc_irqs._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net.h", i32 880, i32 2}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i8 0, i8 2}
!109 = !{i64 6059599}
!110 = !{i64 2158810638}
!111 = !{i64 2158811131}
!112 = !{i64 2158811624}
!113 = !{i64 2158812117}
