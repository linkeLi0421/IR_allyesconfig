; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/abm/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/abm/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.nfp_abm = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.173, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.162, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.162 = type { %struct.napi_struct }
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
%struct.anon.173 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.nfp_abm_link = type { ptr, ptr, i32, i32, i32, i64, ptr, i8, i8, %struct.list_head, ptr, %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.137, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.137 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.161 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.174, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.146 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.146 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i8, i32, ptr }
%struct.nfp_reprs = type { i32, [0 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.136 = type { ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abm\00", [28 x i8] zeroinitializer }, align 32
@app_abm = dso_local constant { %struct.nfp_app_type, [48 x i8] } { %struct.nfp_app_type { i32 4, ptr @.str, i32 0, i8 0, ptr @nfp_abm_init, ptr @nfp_abm_clean, ptr null, ptr null, ptr null, ptr @nfp_abm_vnic_alloc, ptr @nfp_abm_vnic_free, ptr @nfp_abm_vnic_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_abm_port_get_stats, ptr @nfp_abm_port_get_stats_count, ptr @nfp_abm_port_get_stats_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_abm_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr @nfp_abm_eswitch_mode_get, ptr @nfp_abm_eswitch_mode_set, ptr @nfp_abm_repr_get }, [48 x i8] zeroinitializer }, align 32
@nfp_abm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: ABM NIC requires ETH table\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp_abm_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/abm/main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_abm_init._entry_ptr = internal global ptr @nfp_abm_init._entry, section ".printk_index", align 4
@nfp_abm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfp: ETH entries don't match vNICs (%d vs %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@nfp_abm_init._entry_ptr.8 = internal global ptr @nfp_abm_init._entry.6, section ".printk_index", align 4
@nfp_abm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: ABM NIC requires mac_stats symbol\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_abm_init._entry_ptr.12 = internal global ptr @nfp_abm_init._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_abm_vnic_set_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 267, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: No entry for persistent MAC address\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_abm_vnic_set_mac\00", [43 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry_ptr = internal global ptr @nfp_abm_vnic_set_mac._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"eth%u.mac.pf%u\00", [17 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 278, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nfp: Failed to access the NSP for persistent MAC address: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry_ptr.18 = internal global ptr @nfp_abm_vnic_set_mac._entry.16, section ".printk_index", align 4
@nfp_abm_vnic_set_mac._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 284, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: NSP doesn't support PF MAC generation\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry_ptr.21 = internal global ptr @nfp_abm_vnic_set_mac._entry.19, section ".printk_index", align 4
@nfp_abm_vnic_set_mac._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 294, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: Reading persistent MAC address failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry_ptr.24 = internal global ptr @nfp_abm_vnic_set_mac._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", [54 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.14, ptr @.str.3, i32 303, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: Can't parse persistent MAC address (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_abm_vnic_set_mac._entry_ptr.28 = internal global ptr @nfp_abm_vnic_set_mac._entry.26, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"left over qdiscs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"q%u_no_wait\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"q%u_delayed\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"duplicate repr\00", [17 x i8] zeroinitializer }, align 32
@nfp_abm_spawn_repr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 136, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: %s Port %d Representor(%s) created\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_abm_spawn_repr\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_abm_spawn_repr._entry_ptr = internal global ptr @nfp_abm_spawn_repr._entry, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIe\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Phys\00", [27 x i8] zeroinitializer }, align 32
@nfp_abm_repr_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfp_abm_repr_get.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 7, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 538, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"app_abm\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 536, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 451, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 455, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 460, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 267, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 272, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 277, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 284, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 293, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 299, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 302, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 378, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 367, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 422, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 423, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 129, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 134, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/abm/main.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 66, i32 10 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @nfp_abm_init._entry, ptr @nfp_abm_init._entry.6, ptr @nfp_abm_init._entry.9, ptr @nfp_abm_init._entry_ptr, ptr @nfp_abm_init._entry_ptr.12, ptr @nfp_abm_init._entry_ptr.8, ptr @nfp_abm_spawn_repr._entry, ptr @nfp_abm_spawn_repr._entry_ptr, ptr @nfp_abm_vnic_set_mac._entry, ptr @nfp_abm_vnic_set_mac._entry.16, ptr @nfp_abm_vnic_set_mac._entry.19, ptr @nfp_abm_vnic_set_mac._entry.22, ptr @nfp_abm_vnic_set_mac._entry.26, ptr @nfp_abm_vnic_set_mac._entry_ptr, ptr @nfp_abm_vnic_set_mac._entry_ptr.18, ptr @nfp_abm_vnic_set_mac._entry_ptr.21, ptr @nfp_abm_vnic_set_mac._entry_ptr.24, ptr @nfp_abm_vnic_set_mac._entry_ptr.28, ptr @.str, ptr @app_abm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @xa_init_flags.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @app_abm to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_vnic_set_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_vnic_set_mac._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_vnic_set_mac._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_vnic_set_mac._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_vnic_set_mac._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_spawn_repr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_init(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_tbl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %5) #9
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_vnics = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_data_vnics, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end13, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cpp7 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cpp7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpp7, align 4
  %call8 = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent9 = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent9, align 8
  %16 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_data_vnics, align 4
  %18 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eth_tbl, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %21) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %mac_stats_bar = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %mac_stats_bar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_stats_bar, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %cpp19 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %24 = ptrtoint ptr %cpp19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpp19, align 4
  %call20 = tail call ptr @nfp_cpp_device(ptr noundef %25) #9
  %parent21 = getelementptr inbounds %struct.device, ptr %call20, i32 0, i32 1
  %26 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent21, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 64) #13
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %priv, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %app, ptr %call7.i.i, align 8
  %call28 = tail call i32 @nfp_abm_ctrl_find_addrs(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.err_free_abm_crit_edge

if.end26.err_free_abm_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_abm

if.end31:                                         ; preds = %if.end26
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_bands, align 8
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 64) #9
  %34 = extractvalue { i32, i1 } %33, 1
  %35 = extractvalue { i32, i1 } %33, 0
  %retval.0.i = select i1 %34, i32 -1, i32 %35
  %num_thresholds = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %num_thresholds to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %num_thresholds, align 4
  %call34 = tail call ptr @bitmap_zalloc(i32 noundef %retval.0.i, i32 noundef 3264) #9
  %threshold_undef = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %threshold_undef to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call34, ptr %threshold_undef, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end31.err_free_abm_crit_edge, label %if.end38

if.end31.err_free_abm_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_abm

if.end38:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %num_thresholds to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_thresholds, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #9
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !79

kvcalloc.exit.thread:                             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %thresholds145 = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %thresholds145 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %thresholds145, align 8
  br label %err_free_thresh_umap

kvcalloc.exit:                                    ; preds = %if.end38
  %43 = extractvalue { i32, i1 } %40, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %43, i32 noundef 3520, i32 noundef -1) #14
  %thresholds = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %thresholds to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i, ptr %thresholds, align 8
  %tobool42.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool42.not, label %kvcalloc.exit.err_free_thresh_umap_crit_edge, label %kvcalloc.exit142

kvcalloc.exit.err_free_thresh_umap_crit_edge:     ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_thresh_umap

kvcalloc.exit142:                                 ; preds = %kvcalloc.exit
  %45 = ptrtoint ptr %num_thresholds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_thresholds, align 4
  %call.i.i.i139 = tail call noalias ptr @kvmalloc_node(i32 noundef %46, i32 noundef 3520, i32 noundef -1) #14
  %actions = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.i139, ptr %actions, align 8
  %tobool48.not = icmp eq ptr %call.i.i.i139, null
  br i1 %tobool48.not, label %kvcalloc.exit142.err_free_thresh_crit_edge, label %if.end50

kvcalloc.exit142.err_free_thresh_crit_edge:       ; preds = %kvcalloc.exit142
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_thresh

if.end50:                                         ; preds = %kvcalloc.exit142
  %red_support.i = getelementptr inbounds %struct.nfp_abm, ptr %call7.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %red_support.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %red_support.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end50.if.end54_crit_edge, label %for.cond.preheader.i

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.cond.preheader.i:                             ; preds = %if.end50
  %50 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_bands, align 8
  %mul10.mask.i = and i32 %51, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul10.mask.i)
  %cmp11.not.i = icmp eq i32 %mul10.mask.i, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.nfp_abm_fw_init_reset.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nfp_abm_fw_init_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_fw_init_reset.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @__nfp_abm_ctrl_set_q_lvl(ptr noundef nonnull %call7.i.i, i32 noundef %i.012.i, i32 noundef 2147483647) #9
  %call1.i = tail call i32 @__nfp_abm_ctrl_set_q_act(ptr noundef nonnull %call7.i.i, i32 noundef %i.012.i, i32 noundef 2) #9
  %inc.i = add nuw i32 %i.012.i, 1
  %52 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_bands, align 8
  %mul.i = shl i32 %53, 6
  %cmp.i = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nfp_abm_fw_init_reset.exit_crit_edge

for.body.i.nfp_abm_fw_init_reset.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_fw_init_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nfp_abm_fw_init_reset.exit:                       ; preds = %for.body.i.nfp_abm_fw_init_reset.exit_crit_edge, %for.cond.preheader.i.nfp_abm_fw_init_reset.exit_crit_edge
  %call2.i = tail call i32 @nfp_abm_ctrl_qm_disable(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool52.not = icmp eq i32 %call2.i, 0
  br i1 %tobool52.not, label %nfp_abm_fw_init_reset.exit.if.end54_crit_edge, label %nfp_abm_fw_init_reset.exit.err_free_act_crit_edge

nfp_abm_fw_init_reset.exit.err_free_act_crit_edge: ; preds = %nfp_abm_fw_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_act

nfp_abm_fw_init_reset.exit.if.end54_crit_edge:    ; preds = %nfp_abm_fw_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %nfp_abm_fw_init_reset.exit.if.end54_crit_edge, %if.end50.if.end54_crit_edge
  %54 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_data_vnics, align 4
  %call56 = tail call ptr @nfp_reprs_alloc(i32 noundef %55) #9
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end54.err_free_act_crit_edge, label %do.body65

if.end54.err_free_act_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_act

do.body65:                                        ; preds = %if.end54
  %reprs66 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 4
  %56 = ptrtoint ptr %reprs66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call56, ptr %reprs66, align 4
  %57 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_data_vnics, align 4
  %call74 = tail call ptr @nfp_reprs_alloc(i32 noundef %58) #9
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %err_free_phys, label %do.body83

do.body83:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx85 = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %call74, ptr %arrayidx85, align 4
  br label %cleanup

err_free_phys:                                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 0) #9
  br label %err_free_act

err_free_act:                                     ; preds = %err_free_phys, %if.end54.err_free_act_crit_edge, %nfp_abm_fw_init_reset.exit.err_free_act_crit_edge
  %err.0 = phi i32 [ %call2.i, %nfp_abm_fw_init_reset.exit.err_free_act_crit_edge ], [ -12, %err_free_phys ], [ -12, %if.end54.err_free_act_crit_edge ]
  %60 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %actions, align 8
  tail call void @kvfree(ptr noundef %61) #9
  br label %err_free_thresh

err_free_thresh:                                  ; preds = %err_free_act, %kvcalloc.exit142.err_free_thresh_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_act ], [ -12, %kvcalloc.exit142.err_free_thresh_crit_edge ]
  %62 = ptrtoint ptr %thresholds to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %thresholds, align 8
  tail call void @kvfree(ptr noundef %63) #9
  br label %err_free_thresh_umap

err_free_thresh_umap:                             ; preds = %err_free_thresh, %kvcalloc.exit.err_free_thresh_umap_crit_edge, %kvcalloc.exit.thread
  %err.2 = phi i32 [ %err.1, %err_free_thresh ], [ -12, %kvcalloc.exit.err_free_thresh_umap_crit_edge ], [ -12, %kvcalloc.exit.thread ]
  %64 = ptrtoint ptr %threshold_undef to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %threshold_undef, align 4
  tail call void @bitmap_free(ptr noundef %65) #9
  br label %err_free_abm

err_free_abm:                                     ; preds = %err_free_thresh_umap, %if.end31.err_free_abm_crit_edge, %if.end26.err_free_abm_crit_edge
  %err.3 = phi i32 [ %call28, %if.end26.err_free_abm_crit_edge ], [ %err.2, %err_free_thresh_umap ], [ -12, %if.end31.err_free_abm_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_abm, %do.body83, %if.end22.cleanup_crit_edge, %do.end18, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %err.3, %err_free_abm ], [ 0, %do.body83 ], [ -22, %do.end18 ], [ -22, %do.end ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_abm_clean(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %eswitch_mode.i = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %eswitch_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.nfp_abm_eswitch_clean_up.exit_crit_edge, label %if.then.i

entry.nfp_abm_eswitch_clean_up.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_eswitch_clean_up.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pf1.i.i.i = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf1.i.i.i, align 4
  %vnics.i.i.i = getelementptr inbounds %struct.nfp_pf, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %vnics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn12.i.i.i = load ptr, ptr %vnics.i.i.i, align 4
  %cmp.not13.i.i.i = icmp eq ptr %.pn12.i.i.i, %vnics.i.i.i
  br i1 %cmp.not13.i.i.i, label %if.then.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge, label %if.then.i.for.body.i.i.i_crit_edge

if.then.i.for.body.i.i.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i.i

if.then.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_eswitch_set_legacy.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.for.body.i.i.i_crit_edge
  %.pn14.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn12.i.i.i, %if.then.i.for.body.i.i.i_crit_edge ]
  %app_priv.i.i.i = getelementptr i8, ptr %.pn14.i.i.i, i32 24
  %9 = ptrtoint ptr %app_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %app_priv.i.i.i, align 8
  tail call fastcc void @nfp_abm_kill_reprs(ptr noundef %1, ptr noundef %10) #9
  %11 = ptrtoint ptr %.pn14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn14.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %vnics.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_eswitch_set_legacy.exit.i

nfp_abm_eswitch_set_legacy.exit.i:                ; preds = %for.body.i.i.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge, %if.then.i.nfp_abm_eswitch_set_legacy.exit.i_crit_edge
  %call.i.i = tail call i32 @nfp_abm_ctrl_qm_disable(ptr noundef %1) #9
  %12 = ptrtoint ptr %eswitch_mode.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %eswitch_mode.i, align 4
  br label %nfp_abm_eswitch_clean_up.exit

nfp_abm_eswitch_clean_up.exit:                    ; preds = %nfp_abm_eswitch_set_legacy.exit.i, %entry.nfp_abm_eswitch_clean_up.exit_crit_edge
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 1) #9
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 0) #9
  %threshold_undef = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %threshold_undef to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %threshold_undef, align 4
  tail call void @bitmap_free(ptr noundef %14) #9
  %actions = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %actions, align 4
  tail call void @kvfree(ptr noundef %16) #9
  %thresholds = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %thresholds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %thresholds, align 4
  tail call void @kvfree(ptr noundef %18) #9
  tail call void @kfree(ptr noundef %1) #9
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_vnic_alloc(ptr nocapture noundef readonly %app, ptr noundef %nn, i32 noundef %id) #0 align 64 {
entry:
  %addr.i98.i = alloca [6 x i8], align 1
  %addr.i96.i = alloca [6 x i8], align 1
  %addr.i94.i = alloca [6 x i8], align 1
  %addr.i91.i = alloca [6 x i8], align 1
  %addr.i.i = alloca [6 x i8], align 1
  %mac_addr.i = alloca [6 x i8], align 4
  %hwinfo.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_tbl, align 4
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %app_priv = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %7 = ptrtoint ptr %app_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %app_priv, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %call7.i.i, align 8
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %vnic to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nn, ptr %vnic, align 4
  %id2 = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %id, ptr %id2, align 8
  %max_rx_rings = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 12
  %11 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_rx_rings, align 8
  %total_queues = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %total_queues to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %total_queues, align 8
  %dscp_map = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %dscp_map to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %dscp_map, ptr %dscp_map, align 8
  %prev.i = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dscp_map, ptr %prev.i, align 4
  %call4 = tail call i32 @nfp_abm_ctrl_read_params(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8.i.i, label %if.end.err_free_alink_crit_edge

if.end.err_free_alink_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_alink

if.end8.i.i:                                      ; preds = %if.end
  %prio_map_len = getelementptr inbounds %struct.nfp_abm, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %prio_map_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prio_map_len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #14
  %prio_map = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %prio_map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %prio_map, align 8
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.err_free_alink_crit_edge, label %if.end12

if.end8.i.i.err_free_alink_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_alink

if.end12:                                         ; preds = %if.end8.i.i
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %19 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpp, align 4
  %index = getelementptr %struct.nfp_eth_table, ptr %3, i32 0, i32 2, i32 %id, i32 1
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %call13 = tail call i32 @nfp_eth_set_configured(ptr noundef %20, i32 noundef %22, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %err_free_priomap, label %if.end15

if.end15:                                         ; preds = %if.end12
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %26, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %27 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pf, align 4
  %eth_tbl.i = getelementptr inbounds %struct.nfp_pf, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eth_tbl.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr.i) #9
  %31 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i8], ptr %mac_addr.i, i32 0, i32 5
  %36 = call ptr @memset(ptr %mac_addr.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hwinfo.i) #9
  %37 = call ptr @memset(ptr %hwinfo.i, i32 255, i32 32)
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %id)
  %cmp.i = icmp ult i32 %39, %id
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %28, i32 0, i32 1
  %40 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpp.i, align 4
  %call.i = tail call ptr @nfp_cpp_device(ptr noundef %41) #9
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.13) #12
  %44 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #9
  %46 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr.i.i, align 1
  %49 = and i8 %48, -4
  %50 = or i8 %49, 2
  store i8 %50, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 55
  %51 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #9
  br label %nfp_abm_vnic_set_mac.exit

if.end.i:                                         ; preds = %if.end15
  %arrayidx.i = getelementptr %struct.nfp_eth_table, ptr %30, i32 0, i32 2, i32 %id
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %pf_id.i = getelementptr inbounds %struct.nfp_abm, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pf_id.i, align 4
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hwinfo.i, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %53, i32 noundef %55) #9
  %cpp3.i = getelementptr inbounds %struct.nfp_pf, ptr %28, i32 0, i32 1
  %56 = ptrtoint ptr %cpp3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cpp3.i, align 4
  %call4.i = tail call ptr @nfp_nsp_open(ptr noundef %57) #9
  %cmp.i.i47 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %do.end9.i, label %if.end16.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %cpp3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpp3.i, align 4
  %call11.i = tail call ptr @nfp_cpp_device(ptr noundef %59) #9
  %parent12.i = getelementptr inbounds %struct.device, ptr %call11.i, i32 0, i32 1
  %60 = ptrtoint ptr %parent12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent12.i, align 8
  %62 = ptrtoint ptr %call4.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.17, i32 noundef %62) #12
  %63 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i91.i) #9
  %65 = call ptr @memset(ptr %addr.i91.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i91.i, i32 noundef 6) #9
  %66 = ptrtoint ptr %addr.i91.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr.i91.i, align 1
  %68 = and i8 %67, -4
  %69 = or i8 %68, 2
  store i8 %69, ptr %addr.i91.i, align 1
  call void @dev_addr_mod(ptr noundef %64, i32 noundef 0, ptr noundef nonnull %addr.i91.i, i32 noundef 6) #9
  %addr_assign_type.i92.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 55
  %70 = ptrtoint ptr %addr_assign_type.i92.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %addr_assign_type.i92.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i91.i) #9
  br label %nfp_abm_vnic_set_mac.exit

if.end16.i:                                       ; preds = %if.end.i
  %call.i.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call4.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %call.i.i)
  %cmp.i93.i = icmp ugt i16 %call.i.i, 24
  br i1 %cmp.i93.i, label %if.end27.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %cpp3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cpp3.i, align 4
  %call23.i = tail call ptr @nfp_cpp_device(ptr noundef %72) #9
  %parent24.i = getelementptr inbounds %struct.device, ptr %call23.i, i32 0, i32 1
  %73 = ptrtoint ptr %parent24.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent24.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.20) #12
  %75 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i94.i) #9
  %77 = call ptr @memset(ptr %addr.i94.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i94.i, i32 noundef 6) #9
  %78 = ptrtoint ptr %addr.i94.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %addr.i94.i, align 1
  %80 = and i8 %79, -4
  %81 = or i8 %80, 2
  store i8 %81, ptr %addr.i94.i, align 1
  call void @dev_addr_mod(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %addr.i94.i, i32 noundef 6) #9
  %addr_assign_type.i95.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 55
  %82 = ptrtoint ptr %addr_assign_type.i95.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %addr_assign_type.i95.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i94.i) #9
  call void @nfp_nsp_close(ptr noundef %call4.i) #9
  br label %nfp_abm_vnic_set_mac.exit

if.end27.i:                                       ; preds = %if.end16.i
  %call29.i = call i32 @nfp_nsp_hwinfo_lookup(ptr noundef %call4.i, ptr noundef nonnull %hwinfo.i, i32 noundef 32) #9
  call void @nfp_nsp_close(ptr noundef %call4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool.not.i, label %if.end39.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %cpp3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cpp3.i, align 4
  %call35.i = call ptr @nfp_cpp_device(ptr noundef %84) #9
  %parent36.i = getelementptr inbounds %struct.device, ptr %call35.i, i32 0, i32 1
  %85 = ptrtoint ptr %parent36.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent36.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.23, i32 noundef %call29.i) #12
  %87 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i96.i) #9
  %89 = call ptr @memset(ptr %addr.i96.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i96.i, i32 noundef 6) #9
  %90 = ptrtoint ptr %addr.i96.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %addr.i96.i, align 1
  %92 = and i8 %91, -4
  %93 = or i8 %92, 2
  store i8 %93, ptr %addr.i96.i, align 1
  call void @dev_addr_mod(ptr noundef %88, i32 noundef 0, ptr noundef nonnull %addr.i96.i, i32 noundef 6) #9
  %addr_assign_type.i97.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 55
  %94 = ptrtoint ptr %addr_assign_type.i97.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %addr_assign_type.i97.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i96.i) #9
  br label %nfp_abm_vnic_set_mac.exit

if.end39.i:                                       ; preds = %if.end27.i
  %call47.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %hwinfo.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %mac_addr.i, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call47.i)
  %cmp48.not.i = icmp eq i32 %call47.i, 6
  br i1 %cmp48.not.i, label %if.end59.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %cpp3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cpp3.i, align 4
  %call54.i = call ptr @nfp_cpp_device(ptr noundef %96) #9
  %parent55.i = getelementptr inbounds %struct.device, ptr %call54.i, i32 0, i32 1
  %97 = ptrtoint ptr %parent55.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent55.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.27, ptr noundef nonnull %hwinfo.i) #12
  %99 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i98.i) #9
  %101 = call ptr @memset(ptr %addr.i98.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i98.i, i32 noundef 6) #9
  %102 = ptrtoint ptr %addr.i98.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %addr.i98.i, align 1
  %104 = and i8 %103, -4
  %105 = or i8 %104, 2
  store i8 %105, ptr %addr.i98.i, align 1
  call void @dev_addr_mod(ptr noundef %100, i32 noundef 0, ptr noundef nonnull %addr.i98.i, i32 noundef 6) #9
  %addr_assign_type.i99.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 55
  %106 = ptrtoint ptr %addr_assign_type.i99.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %addr_assign_type.i99.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i98.i) #9
  br label %nfp_abm_vnic_set_mac.exit

if.end59.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev, align 4
  call void @dev_addr_mod(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %mac_addr.i, i32 noundef 6) #9
  %109 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev, align 4
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 54
  %111 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mac_addr.i, align 4
  %113 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %perm_addr.i, align 4
  %114 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %34, align 4
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %110, i32 0, i32 54, i32 4
  %116 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %add.ptr1.i.i, align 2
  br label %nfp_abm_vnic_set_mac.exit

nfp_abm_vnic_set_mac.exit:                        ; preds = %if.end59.i, %do.end52.i, %do.end33.i, %do.end21.i, %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hwinfo.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr.i) #9
  %qdiscs = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %qdiscs, ptr noundef nonnull @.str.29, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 11, i32 1
  %117 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3264, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.nfp_abm_link, ptr %call7.i.i, i32 0, i32 11, i32 2
  %118 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %xa_head.i, align 4
  br label %cleanup

err_free_priomap:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %prio_map to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prio_map, align 8
  tail call void @kfree(ptr noundef %120) #9
  br label %err_free_alink

err_free_alink:                                   ; preds = %err_free_priomap, %if.end8.i.i.err_free_alink_crit_edge, %if.end.err_free_alink_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_free_alink_crit_edge ], [ %call13, %err_free_priomap ], [ -12, %if.end8.i.i.err_free_alink_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_alink, %nfp_abm_vnic_set_mac.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free_alink ], [ 0, %nfp_abm_vnic_set_mac.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_abm_vnic_free(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %app_priv = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %0 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @nfp_abm_kill_reprs(ptr noundef %3, ptr noundef %1)
  %xa_head.i = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %do.end, !prof !80

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 367, i32 noundef 9, ptr noundef nonnull @.str.30) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %prio_map = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %prio_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prio_map, align 8
  tail call void @kfree(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_vnic_init(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %app_priv = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %0 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %num_bands.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_bands.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bands.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp ugt i32 %5, 1
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prio_map = getelementptr inbounds %struct.nfp_abm_link, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %prio_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prio_map, align 8
  %call1 = tail call i32 @nfp_abm_ctrl_prio_map_update(ptr noundef %1, ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp_abm_port_get_stats(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %port, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %app_priv = getelementptr i8, ptr %3, i32 2324
  %4 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_priv, align 4
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vnic, align 4
  %num_r_vecs16 = getelementptr inbounds %struct.nfp_net_dp, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %num_r_vecs16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_r_vecs16, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp117.not = icmp eq i32 %9, 0
  br i1 %cmp117.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.addr.018 = phi ptr [ %incdec.ptr4, %for.body.for.body_crit_edge ], [ %data, %if.end.for.body_crit_edge ]
  %call2 = tail call i64 @nfp_abm_ctrl_stat_non_sto(ptr noundef %5, i32 noundef %i.019) #9
  %incdec.ptr = getelementptr i64, ptr %data.addr.018, i32 1
  %10 = ptrtoint ptr %data.addr.018 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call2, ptr %data.addr.018, align 8
  %call3 = tail call i64 @nfp_abm_ctrl_stat_sto(ptr noundef %5, i32 noundef %i.019) #9
  %incdec.ptr4 = getelementptr i64, ptr %data.addr.018, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call3, ptr %incdec.ptr, align 8
  %inc = add nuw i32 %i.019, 1
  %12 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vnic, align 4
  %num_r_vecs = getelementptr inbounds %struct.nfp_net_dp, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %num_r_vecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_r_vecs, align 16
  %cmp1 = icmp ult i32 %inc, %15
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %data, %entry.cleanup_crit_edge ], [ %data, %if.end.cleanup_crit_edge ], [ %incdec.ptr4, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_abm_port_get_stats_count(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %app_priv = getelementptr i8, ptr %3, i32 2324
  %4 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_priv, align 4
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vnic, align 4
  %num_r_vecs = getelementptr inbounds %struct.nfp_net_dp, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %num_r_vecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_r_vecs, align 16
  %mul = shl i32 %9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp_abm_port_get_stats_strings(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %port, ptr noundef %data) #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %type = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %app_priv = getelementptr i8, ptr %4, i32 2324
  %5 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %app_priv, align 4
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vnic, align 4
  %num_r_vecs8 = getelementptr inbounds %struct.nfp_net_dp, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %num_r_vecs8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_r_vecs8, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19.not = icmp eq i32 %10, 0
  br i1 %cmp19.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.31, i32 noundef %i.010) #9
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.32, i32 noundef %i.010) #9
  %inc = add nuw i32 %i.010, 1
  %11 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vnic, align 4
  %num_r_vecs = getelementptr inbounds %struct.nfp_net_dp, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %num_r_vecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_r_vecs, align 16
  %cmp1 = icmp ult i32 %inc, %14
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %15 = ptrtoint ptr %data.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0 = load ptr, ptr %data.addr, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_setup_tc(ptr nocapture noundef readnone %app, ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type2 = getelementptr inbounds %struct.nfp_port, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 11, label %sw.bb
    i32 9, label %sw.bb4
    i32 7, label %sw.bb7
    i32 12, label %sw.bb10
    i32 5, label %sw.bb13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %app_priv = getelementptr i8, ptr %netdev, i32 2324
  %3 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %app_priv, align 4
  %call3 = tail call i32 @nfp_abm_setup_root(ptr noundef %netdev, ptr noundef %4, ptr noundef %type_data) #9
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %app_priv5 = getelementptr i8, ptr %netdev, i32 2324
  %5 = ptrtoint ptr %app_priv5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %app_priv5, align 4
  %call6 = tail call i32 @nfp_abm_setup_tc_mq(ptr noundef %netdev, ptr noundef %6, ptr noundef %type_data) #9
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %app_priv8 = getelementptr i8, ptr %netdev, i32 2324
  %7 = ptrtoint ptr %app_priv8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %app_priv8, align 4
  %call9 = tail call i32 @nfp_abm_setup_tc_red(ptr noundef %netdev, ptr noundef %8, ptr noundef %type_data) #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %app_priv11 = getelementptr i8, ptr %netdev, i32 2324
  %9 = ptrtoint ptr %app_priv11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %app_priv11, align 4
  %call12 = tail call i32 @nfp_abm_setup_tc_gred(ptr noundef %netdev, ptr noundef %10, ptr noundef %type_data) #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @nfp_abm_setup_cls_block(ptr noundef %netdev, ptr noundef %add.ptr.i, ptr noundef %type_data) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.bb13 ], [ %call12, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_abm_eswitch_mode_get(ptr nocapture noundef readonly %app) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %eswitch_mode = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_abm_eswitch_mode_set(ptr nocapture noundef readonly %app, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %eswitch_mode = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode, align 4
  %conv = zext i16 %mode to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %mode, label %if.end.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %pf1.i.i = getelementptr inbounds %struct.nfp_app, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pf1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf1.i.i, align 4
  %vnics.i.i = getelementptr inbounds %struct.nfp_pf, ptr %8, i32 0, i32 31
  %9 = ptrtoint ptr %vnics.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn12.i.i = load ptr, ptr %vnics.i.i, align 4
  %cmp.not13.i.i = icmp eq ptr %.pn12.i.i, %vnics.i.i
  br i1 %cmp.not13.i.i, label %sw.bb.nfp_abm_eswitch_set_legacy.exit_crit_edge, label %sw.bb.for.body.i.i_crit_edge

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

sw.bb.nfp_abm_eswitch_set_legacy.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_eswitch_set_legacy.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %.pn14.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn12.i.i, %sw.bb.for.body.i.i_crit_edge ]
  %app_priv.i.i = getelementptr i8, ptr %.pn14.i.i, i32 24
  %10 = ptrtoint ptr %app_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app_priv.i.i, align 8
  tail call fastcc void @nfp_abm_kill_reprs(ptr noundef %1, ptr noundef %11) #9
  %12 = ptrtoint ptr %.pn14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i = load ptr, ptr %.pn14.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %vnics.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.nfp_abm_eswitch_set_legacy.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.nfp_abm_eswitch_set_legacy.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_eswitch_set_legacy.exit

nfp_abm_eswitch_set_legacy.exit:                  ; preds = %for.body.i.i.nfp_abm_eswitch_set_legacy.exit_crit_edge, %sw.bb.nfp_abm_eswitch_set_legacy.exit_crit_edge
  %call.i = tail call i32 @nfp_abm_ctrl_qm_disable(ptr noundef %1) #9
  %13 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %eswitch_mode, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %pf2.i = getelementptr inbounds %struct.nfp_app, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pf2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf2.i, align 4
  %red_support.i = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %red_support.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %red_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %sw.bb3.cleanup_crit_edge, label %if.end.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3
  %call.i8 = tail call i32 @nfp_abm_ctrl_qm_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool3.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %vnics.i = getelementptr inbounds %struct.nfp_pf, ptr %17, i32 0, i32 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end10.i.for.cond.i_crit_edge, %if.end5.i
  %.pn.in.i = phi ptr [ %vnics.i, %if.end5.i ], [ %.pn.i, %if.end10.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vnics.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %app_priv.i = getelementptr i8, ptr %.pn.i, i32 24
  %21 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %app_priv.i, align 8
  %call7.i = tail call fastcc i32 @nfp_abm_spawn_repr(ptr noundef %15, ptr noundef %22, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %for.body.i.err_kill_all_reprs.i_crit_edge

for.body.i.err_kill_all_reprs.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kill_all_reprs.i

if.end10.i:                                       ; preds = %for.body.i
  %call11.i = tail call fastcc i32 @nfp_abm_spawn_repr(ptr noundef %15, ptr noundef %22, i32 noundef 2) #9
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.for.cond.i_crit_edge, label %if.end10.i.err_kill_all_reprs.i_crit_edge

if.end10.i.err_kill_all_reprs.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kill_all_reprs.i

if.end10.i.for.cond.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %eswitch_mode, align 4
  br label %cleanup

err_kill_all_reprs.i:                             ; preds = %if.end10.i.err_kill_all_reprs.i_crit_edge, %for.body.i.err_kill_all_reprs.i_crit_edge
  %err.0.ph.i = phi i32 [ %call11.i, %if.end10.i.err_kill_all_reprs.i_crit_edge ], [ %call7.i, %for.body.i.err_kill_all_reprs.i_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %pf1.i.i10 = getelementptr inbounds %struct.nfp_app, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pf1.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pf1.i.i10, align 4
  %vnics.i.i11 = getelementptr inbounds %struct.nfp_pf, ptr %27, i32 0, i32 31
  %28 = ptrtoint ptr %vnics.i.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn12.i.i12 = load ptr, ptr %vnics.i.i11, align 4
  %cmp.not13.i.i13 = icmp eq ptr %.pn12.i.i12, %vnics.i.i11
  br i1 %cmp.not13.i.i13, label %err_kill_all_reprs.i.nfp_abm_kill_reprs_all.exit.i_crit_edge, label %err_kill_all_reprs.i.for.body.i.i18_crit_edge

err_kill_all_reprs.i.for.body.i.i18_crit_edge:    ; preds = %err_kill_all_reprs.i
  br label %for.body.i.i18

err_kill_all_reprs.i.nfp_abm_kill_reprs_all.exit.i_crit_edge: ; preds = %err_kill_all_reprs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_kill_reprs_all.exit.i

for.body.i.i18:                                   ; preds = %for.body.i.i18.for.body.i.i18_crit_edge, %err_kill_all_reprs.i.for.body.i.i18_crit_edge
  %.pn14.i.i14 = phi ptr [ %.pn.i.i16, %for.body.i.i18.for.body.i.i18_crit_edge ], [ %.pn12.i.i12, %err_kill_all_reprs.i.for.body.i.i18_crit_edge ]
  %app_priv.i.i15 = getelementptr i8, ptr %.pn14.i.i14, i32 24
  %29 = ptrtoint ptr %app_priv.i.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %app_priv.i.i15, align 8
  tail call fastcc void @nfp_abm_kill_reprs(ptr noundef %1, ptr noundef %30) #9
  %31 = ptrtoint ptr %.pn14.i.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i.i16 = load ptr, ptr %.pn14.i.i14, align 4
  %cmp.not.i.i17 = icmp eq ptr %.pn.i.i16, %vnics.i.i11
  br i1 %cmp.not.i.i17, label %for.body.i.i18.nfp_abm_kill_reprs_all.exit.i_crit_edge, label %for.body.i.i18.for.body.i.i18_crit_edge

for.body.i.i18.for.body.i.i18_crit_edge:          ; preds = %for.body.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i18

for.body.i.i18.nfp_abm_kill_reprs_all.exit.i_crit_edge: ; preds = %for.body.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_kill_reprs_all.exit.i

nfp_abm_kill_reprs_all.exit.i:                    ; preds = %for.body.i.i18.nfp_abm_kill_reprs_all.exit.i_crit_edge, %err_kill_all_reprs.i.nfp_abm_kill_reprs_all.exit.i_crit_edge
  %call20.i = tail call i32 @nfp_abm_ctrl_qm_disable(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %nfp_abm_kill_reprs_all.exit.i, %for.end.i, %if.end.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %nfp_abm_eswitch_set_legacy.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfp_abm_eswitch_set_legacy.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %err.0.ph.i, %nfp_abm_kill_reprs_all.exit.i ], [ 0, %for.end.i ], [ -95, %sw.bb3.cleanup_crit_edge ], [ %call.i8, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp_abm_repr_get(ptr noundef %app, i32 noundef %port_id, ptr nocapture noundef readnone %redir_egress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %port_id, 16
  %shr = and i32 %and, 255
  %arrayidx = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

land.lhs.true:                                    ; preds = %entry
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.do.end42_crit_edge, label %land.lhs.true39

land.lhs.true.do.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

land.lhs.true39:                                  ; preds = %land.lhs.true
  %.b78 = load i1, ptr @nfp_abm_repr_get.__warned, align 1
  br i1 %.b78, label %land.lhs.true39.do.end42_crit_edge, label %if.then

land.lhs.true39.do.end42_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.then:                                          ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_abm_repr_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.39) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then, %land.lhs.true39.do.end42_crit_edge, %land.lhs.true.do.end42_crit_edge, %entry.do.end42_crit_edge
  %tobool44.not = icmp eq ptr %1, null
  br i1 %tobool44.not, label %do.end42.cleanup_crit_edge, label %if.end46

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %do.end42
  %conv47 = and i32 %port_id, 255
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv47, i32 %3)
  %cmp.not = icmp ult i32 %conv47, %3
  br i1 %cmp.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %arrayidx56 = getelementptr %struct.nfp_reprs, ptr %1, i32 0, i32 1, i32 %conv47
  %4 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx56, align 4
  %call58 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end50
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true63

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %.b7677 = load i1, ptr @nfp_abm_repr_get.__warned.40, align 1
  br i1 %.b7677, label %land.lhs.true63.cleanup_crit_edge, label %if.then65

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_abm_repr_get.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 73, ptr noundef nonnull @.str.39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %land.lhs.true63.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end42.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end42.cleanup_crit_edge ], [ null, %if.end46.cleanup_crit_edge ], [ %5, %if.then65 ], [ %5, %land.lhs.true63.cleanup_crit_edge ], [ %5, %land.lhs.true60.cleanup_crit_edge ], [ %5, %if.end50.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_find_addrs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_reprs_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_reprs_clean_and_free_by_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_abm_ctrl_set_q_lvl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_abm_ctrl_set_q_act(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_qm_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_abm_kill_reprs(ptr nocapture noundef readonly %abm, ptr nocapture noundef readonly %alink) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %call.i = tail call ptr @nfp_reprs_get_locked(ptr noundef %1, i32 noundef 1) #9
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  %call1.i = tail call ptr @nfp_repr_get_locked(ptr noundef %1, ptr noundef %call.i, i32 noundef %3) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.nfp_abm_kill_repr.exit_crit_edge, label %if.end.i

entry.nfp_abm_kill_repr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_kill_repr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_lock() #9
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr %struct.nfp_reprs, ptr %call.i, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %arrayidx.i, align 4
  tail call void @rtnl_unlock() #9
  tail call void @synchronize_rcu() #9
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 2304
  tail call void @nfp_repr_clean_and_free(ptr noundef %add.ptr.i.i) #9
  br label %nfp_abm_kill_repr.exit

nfp_abm_kill_repr.exit:                           ; preds = %if.end.i, %entry.nfp_abm_kill_repr.exit_crit_edge
  %7 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %abm, align 4
  %call.i4 = tail call ptr @nfp_reprs_get_locked(ptr noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 8
  %call1.i6 = tail call ptr @nfp_repr_get_locked(ptr noundef %8, ptr noundef %call.i4, i32 noundef %10) #9
  %tobool.not.i7 = icmp eq ptr %call1.i6, null
  br i1 %tobool.not.i7, label %nfp_abm_kill_repr.exit.nfp_abm_kill_repr.exit11_crit_edge, label %if.end.i10

nfp_abm_kill_repr.exit.nfp_abm_kill_repr.exit11_crit_edge: ; preds = %nfp_abm_kill_repr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_kill_repr.exit11

if.end.i10:                                       ; preds = %nfp_abm_kill_repr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_lock() #9
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 8
  %arrayidx.i8 = getelementptr %struct.nfp_reprs, ptr %call.i4, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %arrayidx.i8, align 4
  tail call void @rtnl_unlock() #9
  tail call void @synchronize_rcu() #9
  %add.ptr.i.i9 = getelementptr i8, ptr %call1.i6, i32 2304
  tail call void @nfp_repr_clean_and_free(ptr noundef %add.ptr.i.i9) #9
  br label %nfp_abm_kill_repr.exit11

nfp_abm_kill_repr.exit11:                         ; preds = %if.end.i10, %nfp_abm_kill_repr.exit.nfp_abm_kill_repr.exit11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_reprs_get_locked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_repr_get_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_repr_clean_and_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_read_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_eth_set_configured(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_hwinfo_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_prio_map_update(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_abm_ctrl_stat_non_sto(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_abm_ctrl_stat_sto(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_setup_root(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_setup_tc_mq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_setup_tc_red(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_setup_tc_gred(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_setup_cls_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_qm_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_spawn_repr(ptr noundef %app, ptr noundef %alink, i32 noundef %ptype) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ptype)
  %cmp = icmp eq i32 %ptype, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %0 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnic, align 4
  %max_rx_rings = getelementptr inbounds %struct.nfp_net, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rx_rings, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rtype.0 = phi i32 [ 1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %txqs.0 = phi i32 [ %3, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %call = tail call ptr @nfp_repr_alloc_mqs(ptr noundef %app, i32 noundef %txqs.0, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %app_priv = getelementptr i8, ptr %call, i32 2324
  %4 = ptrtoint ptr %app_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %alink, ptr %app_priv, align 4
  %call4 = tail call ptr @nfp_port_alloc(ptr noundef %app, i32 noundef %ptype, ptr noundef nonnull %call) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call4 to i32
  br label %err_free_repr

if.end8:                                          ; preds = %if.end2
  br i1 %cmp, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.end8
  %eth_forced = getelementptr inbounds %struct.nfp_port, ptr %call4, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %eth_forced to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %eth_forced, align 4
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 4
  %id = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call11 = tail call i32 @nfp_port_init_phy_port(ptr noundef %8, ptr noundef %app, ptr noundef %call4, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end22_crit_edge, label %if.then10.err_free_port_crit_edge

if.then10.err_free_port_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_port

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alink, align 8
  %pf_id = getelementptr inbounds %struct.nfp_abm, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pf_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pf_id, align 4
  %15 = getelementptr inbounds %struct.nfp_port, ptr %call4, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %15, align 4
  %pf17 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %17 = ptrtoint ptr %pf17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pf17, align 4
  %max_data_vnics = getelementptr inbounds %struct.nfp_pf, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_data_vnics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp18 = icmp ugt i32 %20, 1
  %pf_split = getelementptr inbounds %struct.nfp_port, ptr %call4, i32 0, i32 6, i32 0, i32 2
  %frombool = zext i1 %cmp18 to i8
  %21 = ptrtoint ptr %pf_split to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %pf_split, align 4
  %id19 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %22 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id19, align 8
  %pf_split_id = getelementptr inbounds %struct.nfp_port, ptr %call4, i32 0, i32 6, i32 0, i32 3
  %24 = ptrtoint ptr %pf_split_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pf_split_id, align 4
  %vnic20 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %25 = ptrtoint ptr %vnic20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vnic20, align 4
  %ctrl_bar = getelementptr inbounds %struct.nfp_net_dp, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_bar, align 4
  %vnic21 = getelementptr inbounds %struct.nfp_port, ptr %call4, i32 0, i32 6, i32 0, i32 4
  %29 = ptrtoint ptr %vnic21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %vnic21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else15, %if.then10.if.end22_crit_edge
  %vnic23 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %30 = ptrtoint ptr %vnic23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vnic23, align 4
  %pdev = getelementptr inbounds %struct.nfp_net, ptr %31, i32 0, i32 54
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #9
  %35 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr.i, align 1
  %38 = and i8 %37, -4
  %39 = or i8 %38, 2
  store i8 %39, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %40 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #9
  %id25 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %41 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id25, align 8
  %shl.i = shl nuw nsw i32 %rtype.0, 16
  %and28.i = and i32 %42, 255
  %or.i = or i32 %and28.i, %shl.i
  %43 = ptrtoint ptr %vnic23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vnic23, align 4
  %netdev29 = getelementptr inbounds %struct.nfp_net_dp, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %netdev29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev29, align 4
  %call30 = call i32 @nfp_repr_init(ptr noundef %app, ptr noundef nonnull %call, i32 noundef %or.i, ptr noundef %call4, ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end22.err_free_port_crit_edge

if.end22.err_free_port_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_port

if.end33:                                         ; preds = %if.end22
  %call34 = call ptr @nfp_reprs_get_locked(ptr noundef %app, i32 noundef %rtype.0) #9
  %47 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id25, align 8
  %call36 = call ptr @nfp_repr_get_locked(ptr noundef %app, ptr noundef %call34, i32 noundef %48) #9
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end33.if.end52_crit_edge, label %do.end, !prof !80

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 129, i32 noundef 9, ptr noundef nonnull @.str.33) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end33.if.end52_crit_edge
  call void @rtnl_lock() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  %49 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id25, align 8
  %arrayidx89 = getelementptr %struct.nfp_reprs, ptr %call34, i32 0, i32 1, i32 %50
  %51 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call, ptr %arrayidx89, align 4
  call void @rtnl_unlock() #9
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %52 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpp, align 4
  %call104 = call ptr @nfp_cpp_device(ptr noundef %53) #9
  %parent105 = getelementptr inbounds %struct.device, ptr %call104, i32 0, i32 1
  %54 = ptrtoint ptr %parent105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ptype)
  %cmp106 = icmp eq i32 %ptype, 2
  %cond = select i1 %cmp106, ptr @.str.37, ptr @.str.38
  %56 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id25, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond, i32 noundef %57, ptr noundef nonnull %call) #12
  br label %cleanup

err_free_port:                                    ; preds = %if.end22.err_free_port_crit_edge, %if.then10.err_free_port_crit_edge
  %err.0 = phi i32 [ %call11, %if.then10.err_free_port_crit_edge ], [ %call30, %if.end22.err_free_port_crit_edge ]
  call void @nfp_port_free(ptr noundef %call4) #9
  br label %err_free_repr

err_free_repr:                                    ; preds = %err_free_port, %if.then6
  %err.1 = phi i32 [ %5, %if.then6 ], [ %err.0, %err_free_port ]
  call void @nfp_repr_free(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_repr, %if.end52, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_free_repr ], [ 0, %if.end52 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_repr_alloc_mqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_init_phy_port(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_repr_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_port_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_repr_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 538, i32 11}
!2 = !{ptr @app_abm, !3, !"app_abm", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 536, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 451, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfp_abm_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfp_abm_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 455, i32 3}
!14 = !{ptr @nfp_abm_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfp_abm_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 460, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_abm_init._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_abm_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 267, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfp_abm_vnic_set_mac._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_abm_vnic_set_mac._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 272, i32 35}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 277, i32 3}
!30 = !{ptr @nfp_abm_vnic_set_mac._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfp_abm_vnic_set_mac._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 284, i32 3}
!34 = !{ptr @nfp_abm_vnic_set_mac._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfp_abm_vnic_set_mac._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 293, i32 3}
!38 = !{ptr @nfp_abm_vnic_set_mac._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfp_abm_vnic_set_mac._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 299, i32 21}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 302, i32 3}
!44 = !{ptr @nfp_abm_vnic_set_mac._entry.26, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nfp_abm_vnic_set_mac._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @xa_init_flags.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 367, i32 2}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 422, i32 26}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 423, i32 26}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 129, i32 2}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 134, i32 2}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nfp_abm_spawn_repr._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfp_abm_spawn_repr._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 66, i32 10}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/abm/main.c", i32 73, i32 9}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2159259182}
