; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.enic_intr_mod_table = type { i32, i32 }
%struct.enic_intr_mod_range = type { i32, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.160, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.160 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.enic_msix_entry = type { i32, [24 x i8], ptr, ptr, ptr }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vxlan_offload = type { i16, i8, i8 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32, i32, %struct.vnic_rx_bytes_counter, i32, i32, i64 }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rfs_flw_tbl = type { i16, i32, i16, [1024 x %struct.hlist_head], %struct.spinlock, %struct.timer_list }
%struct.hlist_head = type { ptr }
%struct.vnic_gen_stats = type { i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.152, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.152 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.158 = type { [10 x i8], [6 x i8] }
%struct.anon.159 = type { [4 x i8], [4 x i8] }
%struct.cq_desc = type { i16, i16, [11 x i8], i8 }
%struct.vnic_intr_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_wq_buf = type { ptr, i32, ptr, i32, i32, i32, ptr, i64, i8, i8, i8, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cq_enet_rq_desc = type { i16, i16, i32, i16, i16, i16, i8, i8 }
%struct.vnic_rq_buf = type { ptr, i32, ptr, i32, i32, i32, ptr, i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.rq_enet_desc = type { i64, i16, [6 x i8] }
%struct.vnic_rq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.106, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.106 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.wq_enet_desc = type { i64, i16, i16, i16, i16 }
%struct.anon.127 = type { i16, i16 }
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vnic_tx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.vnic_stats = type { %struct.vnic_tx_stats, %struct.vnic_rx_stats }
%struct.vnic_rx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.enic_port_profile = type { i32, i8, [40 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8] }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }

@__UNIQUE_ID_description585 = internal constant [47 x i8] c"enic.description=Cisco VIC Ethernet NIC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author586 = internal constant [47 x i8] c"enic.author=Scott Feldman <scofeldm@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file587 = internal constant [47 x i8] c"enic.file=drivers/net/ethernet/cisco/enic/enic\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [17 x i8] c"enic.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_enic__603_3035_enic_driver_init6 = internal global ptr @enic_driver_init, section ".initcall6.init", align 4
@enic_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @enic_id_table, ptr @enic_probe, ptr @enic_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_enic_driver_exit = internal global ptr @enic_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enic\00", [27 x i8] zeroinitializer }, align 32
@enic_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4407, i32 67, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4407, i32 68, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4407, i32 113, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@enic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2704, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot enable PCI device, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enic_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/cisco/enic/enic_main.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr = internal global ptr @enic_probe._entry, section ".printk_index", align 4
@enic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot request PCI regions, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.8 = internal global ptr @enic_probe._entry.6, section ".printk_index", align 4
@enic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No usable DMA configuration, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.11 = internal global ptr @enic_probe._entry.9, section ".printk_index", align 4
@enic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot memory-map BAR %d, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.14 = internal global ptr @enic_probe._entry.12, section ".printk_index", align 4
@enic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vNIC registration failed, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.17 = internal global ptr @enic_probe._entry.15, section ".printk_index", align 4
@enic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SRIOV enable failed, aborting. pci_enable_sriov() returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.20 = internal global ptr @enic_probe._entry.18, section ".printk_index", align 4
@enic_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vNIC dev open failed, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.23 = internal global ptr @enic_probe._entry.21, section ".printk_index", align 4
@enic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&enic->devcmd_lock\00", [45 x i8] zeroinitializer }, align 32
@enic_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&enic->enic_api_lock\00", [43 x i8] zeroinitializer }, align 32
@enic_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 2813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to set ingress vlan rewrite mode, aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.29 = internal global ptr @enic_probe._entry.27, section ".printk_index", align 4
@enic_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 2835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vNIC dev init failed, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.32 = internal global ptr @enic_probe._entry.30, section ".printk_index", align 4
@enic_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 2842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device initialization failed, aborting\0A\00", [56 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.35 = internal global ptr @enic_probe._entry.33, section ".printk_index", align 4
@enic_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&enic->notify_timer)\00", [42 x i8] zeroinitializer }, align 32
@enic_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&enic->reset)\00", [32 x i8] zeroinitializer }, align 32
@enic_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&enic->tx_hang_reset)\00", [56 x i8] zeroinitializer }, align 32
@enic_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&enic->change_mtu_work)\00", [54 x i8] zeroinitializer }, align 32
@enic_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&enic->wq_lock[i]\00", [46 x i8] zeroinitializer }, align 32
@enic_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 2870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid MAC address, aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.48 = internal global ptr @enic_probe._entry.46, section ".printk_index", align 4
@enic_netdev_dynamic_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @enic_open, ptr @enic_stop, ptr @enic_hard_start_xmit, ptr @enic_features_check, ptr null, ptr null, ptr @enic_set_rx_mode, ptr @enic_set_mac_address_dynamic, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_change_mtu, ptr null, ptr @enic_tx_timeout, ptr @enic_get_stats, ptr null, ptr null, ptr null, ptr @enic_vlan_rx_add_vid, ptr @enic_vlan_rx_kill_vid, ptr @enic_poll_controller, ptr null, ptr null, ptr @enic_set_vf_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_set_vf_port, ptr @enic_get_vf_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_rx_flow_steer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enic_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @enic_open, ptr @enic_stop, ptr @enic_hard_start_xmit, ptr @enic_features_check, ptr null, ptr null, ptr @enic_set_rx_mode, ptr @enic_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_change_mtu, ptr null, ptr @enic_tx_timeout, ptr @enic_get_stats, ptr null, ptr null, ptr null, ptr @enic_vlan_rx_add_vid, ptr @enic_vlan_rx_kill_vid, ptr @enic_poll_controller, ptr null, ptr null, ptr @enic_set_vf_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_set_vf_port, ptr @enic_get_vf_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_rx_flow_steer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enic_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 2893, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loopback tag=0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.52 = internal global ptr @enic_probe._entry.49, section ".printk_index", align 4
@enic_udp_tunnels_v4 = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr @enic_udp_tunnel_set_port, ptr @enic_udp_tunnel_unset_port, ptr null, ptr null, i32 4, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@enic_udp_tunnels = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr @enic_udp_tunnel_set_port, ptr @enic_udp_tunnel_unset_port, ptr null, ptr null, i32 0, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@enic_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.2, ptr @.str.3, i32 2967, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot register net device, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@enic_probe._entry_ptr.55 = internal global ptr @enic_probe._entry.53, section ".printk_index", align 4
@enic_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 2147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vNIC device open failed, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enic_dev_open\00", [18 x i8] zeroinitializer }, align 32
@enic_dev_open._entry_ptr = internal global ptr @enic_dev_open._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@enic_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 2585, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Using default conversion factor for interrupt coalesce timer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enic_dev_init\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@enic_dev_init._entry_ptr = internal global ptr @enic_dev_init._entry, section ".printk_index", align 4
@enic_dev_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.3, i32 2594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Get vNIC configuration failed, aborting\0A\00", [55 x i8] zeroinitializer }, align 32
@enic_dev_init._entry_ptr.63 = internal global ptr @enic_dev_init._entry.61, section ".printk_index", align 4
@enic_dev_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.3, i32 2614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Failed to set intr mode based on resource counts and system capabilities, aborting\0A\00", [44 x i8] zeroinitializer }, align 32
@enic_dev_init._entry_ptr.66 = internal global ptr @enic_dev_init._entry.64, section ".printk_index", align 4
@enic_dev_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.59, ptr @.str.3, i32 2623, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to alloc vNIC resources, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@enic_dev_init._entry_ptr.69 = internal global ptr @enic_dev_init._entry.67, section ".printk_index", align 4
@enic_dev_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.3, i32 2631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to config nic, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@enic_dev_init._entry_ptr.72 = internal global ptr @enic_dev_init._entry.70, section ".printk_index", align 4
@enic_kdump_kernel_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 2565, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Running from within kdump kernel. Using minimal resources\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enic_kdump_kernel_config\00", [39 x i8] zeroinitializer }, align 32
@enic_kdump_kernel_config._entry_ptr = internal global ptr @enic_kdump_kernel_config._entry, section ".printk_index", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@enic_set_rss_nic_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 2290, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RSS disabled, Failed to set RSS cpu indirection table.\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enic_set_rss_nic_cfg\00", [43 x i8] zeroinitializer }, align 32
@enic_set_rss_nic_cfg._entry_ptr = internal global ptr @enic_set_rss_nic_cfg._entry, section ".printk_index", align 4
@enic_set_rss_nic_cfg._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 2294, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RSS disabled, Failed to set RSS key.\0A\00", [58 x i8] zeroinitializer }, align 32
@enic_set_rss_nic_cfg._entry_ptr.79 = internal global ptr @enic_set_rss_nic_cfg._entry.77, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@enic_dma_map_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.84, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014enic: %s: PCI dma mapping failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enic_dma_map_check\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/cisco/enic/enic.h\00", [57 x i8] zeroinitializer }, align 32
@enic_dma_map_check._entry_ptr = internal global ptr @enic_dma_map_check._entry, section ".printk_index", align 4
@mod_table = internal constant { [11 x %struct.enic_intr_mod_table], [40 x i8] } { [11 x %struct.enic_intr_mod_table] [%struct.enic_intr_mod_table { i32 4000, i32 0 }, %struct.enic_intr_mod_table { i32 4400, i32 10 }, %struct.enic_intr_mod_table { i32 5060, i32 20 }, %struct.enic_intr_mod_table { i32 5230, i32 30 }, %struct.enic_intr_mod_table { i32 5540, i32 40 }, %struct.enic_intr_mod_table { i32 5820, i32 50 }, %struct.enic_intr_mod_table { i32 6120, i32 60 }, %struct.enic_intr_mod_table { i32 6435, i32 70 }, %struct.enic_intr_mod_table { i32 6745, i32 80 }, %struct.enic_intr_mod_table { i32 7000, i32 90 }, %struct.enic_intr_mod_table { i32 -1, i32 100 }], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"msg lvl changed from 0x%x to 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"interface MTU (%d) set higher than switch port MTU (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Link UP\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link DOWN\0A\00", [21 x i8] zeroinitializer }, align 32
@mod_range = internal constant { [3 x %struct.enic_intr_mod_range], [40 x i8] } { [3 x %struct.enic_intr_mod_range] [%struct.enic_intr_mod_range zeroinitializer, %struct.enic_intr_mod_range { i32 0, i32 3 }, %struct.enic_intr_mod_range { i32 3, i32 6 }], [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vNIC soft reset failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to request irq.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to alloc notify buffer, aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to alloc receive buffers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-tx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-err\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-notify\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WQ[%d] error_status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RQ[%d] error_status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"irq_update_affinity_hint failed, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Registering only %d out of %d unicast addresses\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Registering only %d out of %d multicast addresses\0A\00", [45 x i8] zeroinitializer }, align 32
@enic_rfs_timer_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&enic->rfs_h.rfs_may_expire)\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vNIC hang reset failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"interface MTU set as %d\0A\00", [39 x i8] zeroinitializer }, align 32
@_enic_change_mtu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@enic_preload_tcp_csum_encap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Non ipv4/ipv6 inner pkt for encap offload\00", [54 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"interface MTU (%d) set higher than port MTU (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@enic_set_vf_port.zero_addr = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error getting mac for vf %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [8 x i64] [i64 6, i64 4, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 16, i64 68, i64 113]
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"enic_driver\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 3028, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 3035, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"enic_id_table\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 73, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2704, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2710, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2725, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2741, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2754, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2773, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2796, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2803, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2804, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2812, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2835, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2842, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2852, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2856, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2857, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2858, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2861, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2870, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [24 x i8] c"enic_netdev_dynamic_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2495, i32 36 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"enic_netdev_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2519, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2893, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"enic_udp_tunnels_v4\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 234, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"enic_udp_tunnels\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 228, i32 41 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2967, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2146, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2584, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2594, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2613, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2623, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2631, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2565, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2289, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2294, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 326, i32 6 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/cisco/enic/enic.h\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 308, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"mod_table\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 91, i32 35 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 396, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 417, i32 6 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 430, i32 29 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 433, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant [10 x i8] c"mod_range\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 108, i32 35 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2159, i32 28 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1897, i32 22 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1906, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1916, i32 23 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1751, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1762, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1770, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1777, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 376, i32 29 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 384, i32 29 }
@___asan_gen_.436 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 108, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 156, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 942, i32 23 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 913, i32 23 }
@___asan_gen_.447 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [47 x i8] c"../drivers/net/ethernet/cisco/enic/enic_clsf.h\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 23, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2172, i32 28 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2068, i32 22 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2025, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 856, i32 22 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 647, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 598, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 2052, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1101, i32 18 }
@___asan_gen_.477 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.478 = private constant [47 x i8] c"../drivers/net/ethernet/cisco/enic/enic_main.c\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1150, i32 23 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_author586, ptr @__UNIQUE_ID_description585, ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_enic_driver_exit, ptr @__initcall__kmod_enic__603_3035_enic_driver_init6, ptr @enic_dev_init._entry, ptr @enic_dev_init._entry.61, ptr @enic_dev_init._entry.64, ptr @enic_dev_init._entry.67, ptr @enic_dev_init._entry.70, ptr @enic_dev_init._entry_ptr, ptr @enic_dev_init._entry_ptr.63, ptr @enic_dev_init._entry_ptr.66, ptr @enic_dev_init._entry_ptr.69, ptr @enic_dev_init._entry_ptr.72, ptr @enic_dev_open._entry, ptr @enic_dev_open._entry_ptr, ptr @enic_dma_map_check._entry, ptr @enic_dma_map_check._entry_ptr, ptr @enic_driver_exit, ptr @enic_kdump_kernel_config._entry, ptr @enic_kdump_kernel_config._entry_ptr, ptr @enic_probe._entry, ptr @enic_probe._entry.12, ptr @enic_probe._entry.15, ptr @enic_probe._entry.18, ptr @enic_probe._entry.21, ptr @enic_probe._entry.27, ptr @enic_probe._entry.30, ptr @enic_probe._entry.33, ptr @enic_probe._entry.46, ptr @enic_probe._entry.49, ptr @enic_probe._entry.53, ptr @enic_probe._entry.6, ptr @enic_probe._entry.9, ptr @enic_probe._entry_ptr, ptr @enic_probe._entry_ptr.11, ptr @enic_probe._entry_ptr.14, ptr @enic_probe._entry_ptr.17, ptr @enic_probe._entry_ptr.20, ptr @enic_probe._entry_ptr.23, ptr @enic_probe._entry_ptr.29, ptr @enic_probe._entry_ptr.32, ptr @enic_probe._entry_ptr.35, ptr @enic_probe._entry_ptr.48, ptr @enic_probe._entry_ptr.52, ptr @enic_probe._entry_ptr.55, ptr @enic_probe._entry_ptr.8, ptr @enic_set_rss_nic_cfg._entry, ptr @enic_set_rss_nic_cfg._entry.77, ptr @enic_set_rss_nic_cfg._entry_ptr, ptr @enic_set_rss_nic_cfg._entry_ptr.79, ptr @enic_driver, ptr @.str, ptr @enic_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @enic_probe.__key, ptr @.str.24, ptr @enic_probe.__key.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @enic_probe.__key.36, ptr @.str.37, ptr @enic_probe.__key.38, ptr @.str.39, ptr @enic_probe.__key.40, ptr @.str.41, ptr @enic_probe.__key.42, ptr @.str.43, ptr @enic_probe.__key.44, ptr @.str.45, ptr @.str.47, ptr @enic_netdev_dynamic_ops, ptr @enic_netdev_ops, ptr @.str.50, ptr @.str.51, ptr @enic_udp_tunnels_v4, ptr @enic_udp_tunnels, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @mod_table, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @mod_range, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @enic_rfs_timer_start.__key, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @enic_set_vf_port.zero_addr, ptr @.str.112], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_netdev_dynamic_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_udp_tunnels_v4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_udp_tunnels to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dev_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_kdump_kernel_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_set_rss_nic_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_set_rss_nic_cfg._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_dma_map_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_table to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_rfs_timer_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_set_vf_port.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @enic_is_dynamic(ptr nocapture noundef readonly %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %3)
  %cmp = icmp eq i16 %3, 68
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @enic_sriov_enabled(ptr nocapture noundef readonly %enic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 4
  %and = and i32 %1, 1
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @enic_is_valid_vf(ptr nocapture noundef readonly %enic, i32 noundef %vf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp = icmp sgt i32 %vf, -1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_vfs = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp1 = icmp ugt i32 %conv, %vf
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_reset_addr_lists(ptr nocapture noundef %enic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  %uc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 65
  tail call void @__hw_addr_unsync_dev(ptr noundef %uc.i, ptr noundef %1, ptr noundef null) #12
  %mc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  tail call void @__hw_addr_unsync_dev(ptr noundef %mc.i, ptr noundef %1, ptr noundef null) #12
  %mc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 16
  %2 = ptrtoint ptr %mc_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mc_count, align 8
  %uc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 17
  %3 = ptrtoint ptr %uc_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %uc_count, align 4
  %flags = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__enic_set_rsskey(ptr noundef %enic) local_unnamed_addr #2 align 64 {
entry:
  %rss_key_buf_pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rss_key_buf_pa) #12
  %0 = ptrtoint ptr %rss_key_buf_pa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rss_key_buf_pa, align 4, !annotation !228
  %pdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %rss_key_buf_pa, i32 noundef 2592, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.023.frozen = freeze i32 %i.023
  %div = udiv i32 %i.023.frozen, 10
  %3 = mul i32 %div, 10
  %rem.decomposed = sub i32 %i.023.frozen, %3
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 48, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr [4 x %struct.anon.158], ptr %call.i, i32 0, i32 %div
  %arrayidx2 = getelementptr [10 x i8], ptr %arrayidx1, i32 0, i32 %rem.decomposed
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2, align 1
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %7 = ptrtoint ptr %rss_key_buf_pa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rss_key_buf_pa, align 4
  %call3 = call i32 @enic_set_rss_key(ptr noundef %enic, i32 noundef %8, i64 noundef 64) #12
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %rss_key_buf_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rss_key_buf_pa, align 4
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %12, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rss_key_buf_pa) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_set_rss_key(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @enic_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @enic_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @enic_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %done.i.i = alloca i32, align 4
  %patch_level = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 16640, i32 noundef 8, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 128
  %pdev6 = getelementptr i8, ptr %call, i32 2308
  %3 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev6, align 4
  %call7 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  br label %err_out_free_netdev

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #15
  br label %err_out_disable_device

if.end17:                                         ; preds = %if.end10
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 140737488355327) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end17.if.end30_crit_edge, label %if.then21

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then21:                                        ; preds = %if.end17
  %call.i545 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i545)
  %cmp.i546 = icmp eq i32 %call.i545, 0
  br i1 %cmp.i546, label %if.then21.if.end30_crit_edge, label %do.end28

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #15
  br label %err_out_release_regions

if.end30:                                         ; preds = %if.then21.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %.sink = phi i64 [ 140737488355327, %if.end17.if.end30_crit_edge ], [ 4294967295, %if.then21.if.end30_crit_edge ]
  %call1.i547 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %.sink) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %i.0599 = phi i32 [ 0, %if.end30 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0599
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0599, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %if.end33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0599, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp36 = icmp eq i32 %7, 0
  br i1 %cmp36, label %if.end33.cond.end_crit_edge, label %cond.false

if.end33.cond.end_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %7, 1
  %add = sub i32 %sub, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end33.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end33.cond.end_crit_edge ]
  %arrayidx42 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 3, i32 %i.0599
  %len = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 3, i32 %i.0599, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %len, align 4
  %call46 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %i.0599, i32 noundef %cond) #12
  %11 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call46, ptr %arrayidx42, align 4
  %tobool52.not = icmp eq ptr %call46, null
  br i1 %tobool52.not, label %do.end56, label %if.end57

do.end56:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %i.0599) #15
  br label %err_out_iounmap

if.end57:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %bus_addr = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 3, i32 %i.0599, i32 1
  %14 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bus_addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end57, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0599, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %bar63 = getelementptr i8, ptr %call, i32 2360
  %call64 = tail call ptr @vnic_dev_register(ptr noundef null, ptr noundef %add.ptr.i, ptr noundef %pdev, ptr noundef %bar63, i32 noundef 6) #12
  %vdev = getelementptr i8, ptr %call, i32 2432
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call64, ptr %vdev, align 128
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #15
  br label %err_out_iounmap

if.end71:                                         ; preds = %for.end
  %call73 = tail call i32 @vnic_devcmd_init(ptr noundef nonnull %call64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.err_out_vnic_unregister_crit_edge

if.end71.err_out_vnic_unregister_crit_edge:       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_vnic_unregister

if.end76:                                         ; preds = %if.end71
  %call77 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call77)
  %tobool78.not = icmp eq i16 %call77, 0
  br i1 %tobool78.not, label %if.end76.if.end7.i.i_crit_edge, label %if.then79

if.end76.if.end7.i.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then79:                                        ; preds = %if.end76
  %conv = zext i16 %call77 to i32
  %add80 = add nuw nsw i32 %conv, 14
  %num_vfs = getelementptr i8, ptr %call, i32 3580
  %call81 = tail call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add80, ptr noundef %num_vfs) #12
  %16 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool83.not = icmp eq i16 %17, 0
  br i1 %tobool83.not, label %if.then79.if.end7.i.i_crit_edge, label %if.then84

if.then79.if.end7.i.i_crit_edge:                  ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then84:                                        ; preds = %if.then79
  %conv86 = zext i16 %17 to i32
  %call87 = tail call i32 @pci_enable_sriov(ptr noundef %pdev, i32 noundef %conv86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end93, label %do.end92

do.end92:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call87) #15
  br label %err_out_vnic_unregister

if.end93:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %priv_flags = getelementptr i8, ptr %call, i32 3540
  %18 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priv_flags, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %priv_flags, align 4
  %20 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_vfs, align 4
  %conv95 = zext i16 %21 to i32
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end93, %if.then79.if.end7.i.i_crit_edge, %if.end76.if.end7.i.i_crit_edge
  %num_pps.0 = phi i32 [ %conv95, %if.end93 ], [ 1, %if.then79.if.end7.i.i_crit_edge ], [ 1, %if.end76.if.end7.i.i_crit_edge ]
  %22 = mul nuw nsw i32 %num_pps.0, 92
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #16
  %pp = getelementptr i8, ptr %call, i32 3632
  %23 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %pp, align 16
  %tobool100.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool100.not, label %if.end7.i.i.err_out_disable_sriov_pp_crit_edge, label %if.end102

if.end7.i.i.err_out_disable_sriov_pp_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_disable_sriov_pp

if.end102:                                        ; preds = %if.end7.i.i
  %24 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i.i) #12
  %26 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %done.i.i, align 4, !annotation !228
  %call.i.i = tail call i32 @vnic_dev_open(ptr noundef %25, i32 noundef 2) #12, !callees !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i550, label %if.end102.do.end108_crit_edge

if.end102.do.end108_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end.i.i550:                                    ; preds = %if.end102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -200, %27
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i552.do.body.i.i_crit_edge, %if.end.i.i550
  %call1.i.i = call i32 @vnic_dev_open_done(ptr noundef %25, ptr noundef nonnull %done.i.i) #12, !callees !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.body.i.i.do.end108_crit_edge

do.body.i.i.do.end108_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end4.i.i:                                      ; preds = %do.body.i.i
  %28 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i552, label %do.body110

if.end7.i.i552:                                   ; preds = %if.end4.i.i
  %call8.i.i551 = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %30
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end7.i.i552.do.body.i.i_crit_edge, label %if.end7.i.i552.do.end108_crit_edge

if.end7.i.i552.do.end108_crit_edge:               ; preds = %if.end7.i.i552
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end7.i.i552.do.body.i.i_crit_edge:             ; preds = %if.end7.i.i552
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end108:                                        ; preds = %if.end7.i.i552.do.end108_crit_edge, %do.body.i.i.do.end108_crit_edge, %if.end102.do.end108_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end102.do.end108_crit_edge ], [ %call1.i.i, %do.body.i.i.do.end108_crit_edge ], [ -110, %if.end7.i.i552.do.end108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  %31 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev6, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i.ph.i) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #15
  br label %err_out_disable_sriov

do.body110:                                       ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  %devcmd_lock = getelementptr i8, ptr %call, i32 3484
  call void @__raw_spin_lock_init(ptr noundef %devcmd_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @enic_probe.__key, i16 noundef signext 3) #12
  %enic_api_lock = getelementptr i8, ptr %call, i32 3584
  call void @__raw_spin_lock_init(ptr noundef %enic_api_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @enic_probe.__key.25, i16 noundef signext 3) #12
  %call118 = call i32 @enic_dev_set_ig_vlan_rewrite_mode(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end124, label %do.end123

do.end123:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #15
  br label %err_out_dev_close

if.end124:                                        ; preds = %do.body110
  call void @netif_carrier_off(ptr noundef %call) #12
  %33 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev6, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %36)
  %cmp.i553.not = icmp eq i16 %36, 68
  br i1 %cmp.i553.not, label %if.end124.if.end136_crit_edge, label %if.then127

if.end124.if.end136_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then127:                                       ; preds = %if.end124
  %37 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdev, align 128
  %call129 = call i32 @vnic_dev_init(ptr noundef %38, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then127.if.end136_crit_edge, label %do.end134

if.then127.if.end136_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

do.end134:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #15
  br label %err_out_dev_close

if.end136:                                        ; preds = %if.then127.if.end136_crit_edge, %if.end124.if.end136_crit_edge
  %39 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev6, align 4
  %dev.i.i555 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %call2.i = call i32 @enic_dev_intr_coal_timer_info(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i556 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i556, label %if.end136.if.end.i_crit_edge, label %do.end.i558

if.end136.if.end.i_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i558:                                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i555, ptr noundef nonnull @.str.58) #15
  %43 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_intr_coal_timer_info_default(ptr noundef %44) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i558, %if.end136.if.end.i_crit_edge
  %call3.i = call i32 @enic_get_vnic_config(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i555, ptr noundef nonnull @.str.62) #15
  br label %do.end142

if.end9.i:                                        ; preds = %if.end.i
  call void @enic_get_res_counts(ptr noundef %add.ptr.i) #12
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %45 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp.i.not.i.i = icmp eq i64 %45, -1
  br i1 %cmp.i.not.i.i, label %if.end9.i.enic_kdump_kernel_config.exit.i_crit_edge, label %do.end.i.i

if.end9.i.enic_kdump_kernel_config.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_kdump_kernel_config.exit.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev6, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.73) #15
  %rq_count.i.i = getelementptr i8, ptr %call, i32 9248
  %48 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %rq_count.i.i, align 32
  %wq_count.i.i = getelementptr i8, ptr %call, i32 6624
  %49 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %wq_count.i.i, align 32
  %rq_desc_count.i.i = getelementptr i8, ptr %call, i32 2320
  %50 = ptrtoint ptr %rq_desc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 64, ptr %rq_desc_count.i.i, align 8
  %wq_desc_count.i.i = getelementptr i8, ptr %call, i32 2316
  %51 = ptrtoint ptr %wq_desc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 64, ptr %wq_desc_count.i.i, align 4
  %mtu.i.i = getelementptr i8, ptr %call, i32 2324
  %52 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mtu.i.i, align 4
  %54 = call i16 @llvm.umin.i16(i16 %53, i16 1500) #12
  %55 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %mtu.i.i, align 4
  br label %enic_kdump_kernel_config.exit.i

enic_kdump_kernel_config.exit.i:                  ; preds = %do.end.i.i, %if.end9.i.enic_kdump_kernel_config.exit.i_crit_edge
  %rq_count.i85.i = getelementptr i8, ptr %call, i32 9248
  %56 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rq_count.i85.i, align 32
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 8) #12
  %wq_count.i86.i = getelementptr i8, ptr %call, i32 6624
  %59 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wq_count.i86.i, align 32
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 8) #12
  %add.i.i = add nuw nsw i32 %61, %58
  %add7.i.i = add nuw nsw i32 %add.i.i, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %enic_kdump_kernel_config.exit.i
  %i.0261.i.i = phi i32 [ 0, %enic_kdump_kernel_config.exit.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %i.0261.i.i to i16
  %entry19.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.0261.i.i, i32 1
  %62 = ptrtoint ptr %entry19.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %entry19.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0261.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add7.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %config.i.i = getelementptr i8, ptr %call, i32 2312
  %63 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %config.i.i, align 8
  %and.i.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool20.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool20.not.i.i, label %for.end.i.i.if.end61.i.i_crit_edge, label %land.lhs.true.i.i

for.end.i.i.if.end61.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %intr_mode.i.i = getelementptr i8, ptr %call, i32 2329
  %65 = ptrtoint ptr %intr_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %intr_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp25.i.i = icmp eq i8 %66, 0
  br i1 %cmp25.i.i, label %land.lhs.true35.i.i, label %land.lhs.true.i.i.if.end61.i.i_crit_edge

land.lhs.true.i.i.if.end61.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true.i.i
  %cq_count.i.i = getelementptr i8, ptr %call, i32 14592
  %67 = ptrtoint ptr %cq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cq_count.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add.i.i)
  %cmp37.not.i.i = icmp ult i32 %68, %add.i.i
  br i1 %cmp37.not.i.i, label %land.lhs.true35.i.i.if.end61.i.i_crit_edge, label %land.lhs.true39.i.i

land.lhs.true35.i.i.if.end61.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

land.lhs.true39.i.i:                              ; preds = %land.lhs.true35.i.i
  %intr_count.i.i = getelementptr i8, ptr %call, i32 13144
  %69 = ptrtoint ptr %intr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %intr_count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add7.i.i)
  %cmp42.not.i.i = icmp ult i32 %70, %add7.i.i
  br i1 %cmp42.not.i.i, label %land.lhs.true39.i.i.if.end61.i.i_crit_edge, label %if.then44.i.i

land.lhs.true39.i.i.if.end61.i.i_crit_edge:       ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

if.then44.i.i:                                    ; preds = %land.lhs.true39.i.i
  %71 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev6, align 4
  %msix_entry45.i.i = getelementptr i8, ptr %call, i32 2616
  %call.i.i559 = call i32 @pci_enable_msix_range(ptr noundef %72, ptr noundef %msix_entry45.i.i, i32 noundef %add7.i.i, i32 noundef %add7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i559)
  %cmp50.i.i = icmp sgt i32 %call.i.i559, 0
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.then44.i.i.if.end61.i.i_crit_edge

if.then44.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

if.then52.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %58, ptr %rq_count.i85.i, align 32
  %74 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %61, ptr %wq_count.i86.i, align 32
  %75 = ptrtoint ptr %cq_count.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i.i, ptr %cq_count.i.i, align 128
  %76 = ptrtoint ptr %intr_count.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add7.i.i, ptr %intr_count.i.i, align 8
  br label %if.end16.i

if.end61.i.i:                                     ; preds = %if.then44.i.i.if.end61.i.i_crit_edge, %land.lhs.true39.i.i.if.end61.i.i_crit_edge, %land.lhs.true35.i.i.if.end61.i.i_crit_edge, %land.lhs.true.i.i.if.end61.i.i_crit_edge, %for.end.i.i.if.end61.i.i_crit_edge
  %intr_mode63.i.i = getelementptr i8, ptr %call, i32 2329
  %77 = ptrtoint ptr %intr_mode63.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %intr_mode63.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp65.i.i = icmp eq i8 %78, 0
  br i1 %cmp65.i.i, label %land.lhs.true67.i.i, label %if.end61.i.i.if.end107.i.i_crit_edge

if.end61.i.i.if.end107.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i.i

land.lhs.true67.i.i:                              ; preds = %if.end61.i.i
  %79 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rq_count.i85.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp69.not.i.i = icmp eq i32 %80, 0
  br i1 %cmp69.not.i.i, label %land.lhs.true67.i.i.do.end15.i_crit_edge, label %land.lhs.true71.i.i

land.lhs.true67.i.i.do.end15.i_crit_edge:         ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

land.lhs.true71.i.i:                              ; preds = %land.lhs.true67.i.i
  %81 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wq_count.i86.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %61)
  %cmp73.not.i.i = icmp ult i32 %82, %61
  br i1 %cmp73.not.i.i, label %land.lhs.true71.i.i.if.end107thread-pre-split.i.i_crit_edge, label %land.lhs.true75.i.i

land.lhs.true71.i.i.if.end107thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107thread-pre-split.i.i

land.lhs.true75.i.i:                              ; preds = %land.lhs.true71.i.i
  %cq_count76.i.i = getelementptr i8, ptr %call, i32 14592
  %83 = ptrtoint ptr %cq_count76.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cq_count76.i.i, align 128
  %add77.i.i = add nuw nsw i32 %61, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %61)
  %cmp78.not.not.i.i = icmp ugt i32 %84, %61
  br i1 %cmp78.not.not.i.i, label %land.lhs.true80.i.i, label %land.lhs.true75.i.i.if.end107thread-pre-split.i.i_crit_edge

land.lhs.true75.i.i.if.end107thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107thread-pre-split.i.i

land.lhs.true80.i.i:                              ; preds = %land.lhs.true75.i.i
  %intr_count81.i.i = getelementptr i8, ptr %call, i32 13144
  %85 = ptrtoint ptr %intr_count81.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %intr_count81.i.i, align 8
  %add83.i.i = add nuw nsw i32 %61, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %add83.i.i)
  %cmp84.not.i.i = icmp ult i32 %86, %add83.i.i
  br i1 %cmp84.not.i.i, label %land.lhs.true80.i.i.if.end107thread-pre-split.i.i_crit_edge, label %if.then86.i.i

land.lhs.true80.i.i.if.end107thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107thread-pre-split.i.i

if.then86.i.i:                                    ; preds = %land.lhs.true80.i.i
  %87 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev6, align 4
  %msix_entry88.i.i = getelementptr i8, ptr %call, i32 2616
  %call94.i.i = call i32 @pci_enable_msix_range(ptr noundef %88, ptr noundef %msix_entry88.i.i, i32 noundef %add83.i.i, i32 noundef %add83.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i.i)
  %cmp95.i.i = icmp sgt i32 %call94.i.i, 0
  br i1 %cmp95.i.i, label %if.then97.i.i, label %if.then86.i.i.if.end107thread-pre-split.i.i_crit_edge

if.then86.i.i.if.end107thread-pre-split.i.i_crit_edge: ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107thread-pre-split.i.i

if.then97.i.i:                                    ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %rq_count.i85.i, align 32
  %90 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %61, ptr %wq_count.i86.i, align 32
  %91 = ptrtoint ptr %cq_count76.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add77.i.i, ptr %cq_count76.i.i, align 128
  %92 = ptrtoint ptr %intr_count81.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add83.i.i, ptr %intr_count81.i.i, align 8
  br label %if.end16.i

if.end107thread-pre-split.i.i:                    ; preds = %if.then86.i.i.if.end107thread-pre-split.i.i_crit_edge, %land.lhs.true80.i.i.if.end107thread-pre-split.i.i_crit_edge, %land.lhs.true75.i.i.if.end107thread-pre-split.i.i_crit_edge, %land.lhs.true71.i.i.if.end107thread-pre-split.i.i_crit_edge
  %93 = ptrtoint ptr %intr_mode63.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %.pr.i.i = load i8, ptr %intr_mode63.i.i, align 1
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.end107thread-pre-split.i.i, %if.end61.i.i.if.end107.i.i_crit_edge
  %94 = phi i8 [ %.pr.i.i, %if.end107thread-pre-split.i.i ], [ %78, %if.end61.i.i.if.end107.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp111.i.i = icmp ult i8 %94, 2
  br i1 %cmp111.i.i, label %land.lhs.true113.i.i, label %if.end107.i.i.if.end139.i.i_crit_edge

if.end107.i.i.if.end139.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

land.lhs.true113.i.i:                             ; preds = %if.end107.i.i
  %95 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr255.i.i = load i32, ptr %rq_count.i85.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr255.i.i)
  %cmp115.not.i.i = icmp eq i32 %.pr255.i.i, 0
  br i1 %cmp115.not.i.i, label %land.lhs.true113.i.i.if.end139.i.i_crit_edge, label %land.lhs.true117.i.i

land.lhs.true113.i.i.if.end139.i.i_crit_edge:     ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

land.lhs.true117.i.i:                             ; preds = %land.lhs.true113.i.i
  %96 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wq_count.i86.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp119.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp119.not.i.i, label %land.lhs.true117.i.i.if.end139.i.i_crit_edge, label %land.lhs.true121.i.i

land.lhs.true117.i.i.if.end139.i.i_crit_edge:     ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

land.lhs.true121.i.i:                             ; preds = %land.lhs.true117.i.i
  %cq_count122.i.i = getelementptr i8, ptr %call, i32 14592
  %98 = ptrtoint ptr %cq_count122.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cq_count122.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp123.i.i = icmp ugt i32 %99, 1
  br i1 %cmp123.i.i, label %land.lhs.true125.i.i, label %land.lhs.true121.i.i.if.end139.i.i_crit_edge

land.lhs.true121.i.i.if.end139.i.i_crit_edge:     ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

land.lhs.true125.i.i:                             ; preds = %land.lhs.true121.i.i
  %intr_count126.i.i = getelementptr i8, ptr %call, i32 13144
  %100 = ptrtoint ptr %intr_count126.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %intr_count126.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp127.not.i.i = icmp eq i32 %101, 0
  br i1 %cmp127.not.i.i, label %land.lhs.true125.i.i.if.end139.i.i_crit_edge, label %land.lhs.true129.i.i

land.lhs.true125.i.i.if.end139.i.i_crit_edge:     ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

land.lhs.true129.i.i:                             ; preds = %land.lhs.true125.i.i
  %102 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev6, align 4
  %call131.i.i = call i32 @pci_enable_msi(ptr noundef %103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i.i)
  %tobool132.not.i.i = icmp eq i32 %call131.i.i, 0
  br i1 %tobool132.not.i.i, label %if.then133.i.i, label %land.lhs.true129.i.i.if.end139.i.i_crit_edge

land.lhs.true129.i.i.if.end139.i.i_crit_edge:     ; preds = %land.lhs.true129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

if.then133.i.i:                                   ; preds = %land.lhs.true129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %rq_count.i85.i, align 32
  %105 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %wq_count.i86.i, align 32
  %106 = ptrtoint ptr %cq_count122.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %cq_count122.i.i, align 128
  %107 = ptrtoint ptr %intr_count126.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %intr_count126.i.i, align 8
  br label %if.end16.i

if.end139.i.i:                                    ; preds = %land.lhs.true129.i.i.if.end139.i.i_crit_edge, %land.lhs.true125.i.i.if.end139.i.i_crit_edge, %land.lhs.true121.i.i.if.end139.i.i_crit_edge, %land.lhs.true117.i.i.if.end139.i.i_crit_edge, %land.lhs.true113.i.i.if.end139.i.i_crit_edge, %if.end107.i.i.if.end139.i.i_crit_edge
  %108 = ptrtoint ptr %intr_mode63.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %.pr257.i.i = load i8, ptr %intr_mode63.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr257.i.i)
  %cmp143.i.i = icmp ult i8 %.pr257.i.i, 3
  br i1 %cmp143.i.i, label %land.lhs.true145.i.i, label %if.end139.i.i.do.end15.i_crit_edge

if.end139.i.i.do.end15.i_crit_edge:               ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

land.lhs.true145.i.i:                             ; preds = %if.end139.i.i
  %109 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr259.i.i = load i32, ptr %rq_count.i85.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr259.i.i)
  %cmp147.not.i.i = icmp eq i32 %.pr259.i.i, 0
  br i1 %cmp147.not.i.i, label %land.lhs.true145.i.i.do.end15.i_crit_edge, label %land.lhs.true149.i.i

land.lhs.true145.i.i.do.end15.i_crit_edge:        ; preds = %land.lhs.true145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

land.lhs.true149.i.i:                             ; preds = %land.lhs.true145.i.i
  %110 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %wq_count.i86.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp151.not.i.i = icmp eq i32 %111, 0
  br i1 %cmp151.not.i.i, label %land.lhs.true149.i.i.do.end15.i_crit_edge, label %land.lhs.true153.i.i

land.lhs.true149.i.i.do.end15.i_crit_edge:        ; preds = %land.lhs.true149.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

land.lhs.true153.i.i:                             ; preds = %land.lhs.true149.i.i
  %cq_count154.i.i = getelementptr i8, ptr %call, i32 14592
  %112 = ptrtoint ptr %cq_count154.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cq_count154.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp155.i.i = icmp ugt i32 %113, 1
  br i1 %cmp155.i.i, label %land.lhs.true157.i.i, label %land.lhs.true153.i.i.do.end15.i_crit_edge

land.lhs.true153.i.i.do.end15.i_crit_edge:        ; preds = %land.lhs.true153.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

land.lhs.true157.i.i:                             ; preds = %land.lhs.true153.i.i
  %intr_count158.i.i = getelementptr i8, ptr %call, i32 13144
  %114 = ptrtoint ptr %intr_count158.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %intr_count158.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp159.i.i = icmp ugt i32 %115, 2
  br i1 %cmp159.i.i, label %if.then161.i.i, label %land.lhs.true157.i.i.do.end15.i_crit_edge

land.lhs.true157.i.i.do.end15.i_crit_edge:        ; preds = %land.lhs.true157.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

if.then161.i.i:                                   ; preds = %land.lhs.true157.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %rq_count.i85.i, align 32
  %117 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %wq_count.i86.i, align 32
  %118 = ptrtoint ptr %cq_count154.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %cq_count154.i.i, align 128
  %119 = ptrtoint ptr %intr_count158.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3, ptr %intr_count158.i.i, align 8
  br label %if.end16.i

do.end15.i:                                       ; preds = %land.lhs.true157.i.i.do.end15.i_crit_edge, %land.lhs.true153.i.i.do.end15.i_crit_edge, %land.lhs.true149.i.i.do.end15.i_crit_edge, %land.lhs.true145.i.i.do.end15.i_crit_edge, %if.end139.i.i.do.end15.i_crit_edge, %land.lhs.true67.i.i.do.end15.i_crit_edge
  %120 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_set_intr_mode(ptr noundef %121, i32 noundef 0) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i555, ptr noundef nonnull @.str.65) #15
  br label %do.end142

if.end16.i:                                       ; preds = %if.then161.i.i, %if.then133.i.i, %if.then97.i.i, %if.then52.i.i
  %.sink262.i.i = phi i32 [ 1, %if.then161.i.i ], [ 2, %if.then133.i.i ], [ 3, %if.then97.i.i ], [ 3, %if.then52.i.i ]
  %122 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_set_intr_mode(ptr noundef %123, i32 noundef %.sink262.i.i) #12
  %call17.i = call i32 @enic_alloc_vnic_resources(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end23.i, label %if.end16.i.err_out_free_vnic_resources.i_crit_edge

if.end16.i.err_out_free_vnic_resources.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_vnic_resources.i

if.end23.i:                                       ; preds = %if.end16.i
  call void @enic_init_vnic_resources(ptr noundef %add.ptr.i) #12
  %call24.i = call fastcc i32 @enic_set_rss_nic_cfg(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end23.i.err_out_free_vnic_resources.i_crit_edge

if.end23.i.err_out_free_vnic_resources.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_vnic_resources.i

if.end30.i:                                       ; preds = %if.end23.i
  %124 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vdev, align 128
  %call32.i = call i32 @vnic_dev_get_intr_mode(ptr noundef %125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call32.i)
  %cond.i560 = icmp eq i32 %call32.i, 3
  br i1 %cond.i560, label %for.cond.preheader.i, label %sw.default.i

for.cond.preheader.i:                             ; preds = %if.end30.i
  %126 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rq_count.i85.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp98.not.i = icmp eq i32 %127, 0
  br i1 %cmp98.not.i, label %for.cond.preheader.i.for.cond35.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond35.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond35.preheader.i

sw.default.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  %napi.i = getelementptr i8, ptr %call, i32 9272
  call void @netif_napi_add(ptr noundef %42, ptr noundef %napi.i, ptr noundef nonnull @enic_poll, i32 noundef 64) #12
  br label %if.end143

for.cond35.preheader.i:                           ; preds = %for.body.i.for.cond35.preheader.i_crit_edge, %for.cond.preheader.i.for.cond35.preheader.i_crit_edge
  %128 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %wq_count.i86.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp36100.not.i = icmp eq i32 %129, 0
  br i1 %cmp36100.not.i, label %for.cond35.preheader.i.if.end143_crit_edge, label %for.cond35.preheader.i.for.body37.i_crit_edge

for.cond35.preheader.i.for.body37.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body37.i

for.cond35.preheader.i.if.end143_crit_edge:       ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.099.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %i.099.i
  call void @netif_napi_add(ptr noundef %42, ptr noundef %arrayidx34.i, ptr noundef nonnull @enic_poll_msix_rq, i32 noundef 64) #12
  %inc.i = add nuw i32 %i.099.i, 1
  %130 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rq_count.i85.i, align 32
  %cmp.i561 = icmp ult i32 %inc.i, %131
  br i1 %cmp.i561, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond35.preheader.i_crit_edge

for.body.i.for.cond35.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond35.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body37.i:                                     ; preds = %for.body37.i.for.body37.i_crit_edge, %for.cond35.preheader.i.for.body37.i_crit_edge
  %i.1101.i = phi i32 [ %inc42.i, %for.body37.i.for.body37.i_crit_edge ], [ 0, %for.cond35.preheader.i.for.body37.i_crit_edge ]
  %132 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rq_count.i85.i, align 32
  %add.i89.i = add i32 %133, %i.1101.i
  %arrayidx40.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %add.i89.i
  call void @netif_napi_add(ptr noundef %42, ptr noundef %arrayidx40.i, ptr noundef nonnull @enic_poll_msix_wq, i32 noundef 64) #12
  %inc42.i = add nuw i32 %i.1101.i, 1
  %134 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %wq_count.i86.i, align 32
  %cmp36.i = icmp ult i32 %inc42.i, %135
  br i1 %cmp36.i, label %for.body37.i.for.body37.i_crit_edge, label %for.body37.i.if.end143_crit_edge

for.body37.i.if.end143_crit_edge:                 ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

for.body37.i.for.body37.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37.i

err_out_free_vnic_resources.i:                    ; preds = %if.end23.i.err_out_free_vnic_resources.i_crit_edge, %if.end16.i.err_out_free_vnic_resources.i_crit_edge
  %.str.71.sink.i = phi ptr [ @.str.68, %if.end16.i.err_out_free_vnic_resources.i_crit_edge ], [ @.str.71, %if.end23.i.err_out_free_vnic_resources.i_crit_edge ]
  %err.0.i = phi i32 [ %call17.i, %if.end16.i.err_out_free_vnic_resources.i_crit_edge ], [ %call24.i, %if.end23.i.err_out_free_vnic_resources.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i555, ptr noundef nonnull %.str.71.sink.i) #15
  call fastcc void @enic_free_affinity_hint(ptr noundef %add.ptr.i) #12
  %136 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %vdev, align 128
  %call.i90.i = call i32 @vnic_dev_get_intr_mode(ptr noundef %137) #12
  %138 = zext i32 %call.i90.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i90.i, label %err_out_free_vnic_resources.i.enic_clear_intr_mode.exit.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
  ]

err_out_free_vnic_resources.i.enic_clear_intr_mode.exit.i_crit_edge: ; preds = %err_out_free_vnic_resources.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_clear_intr_mode.exit.i

sw.bb.i.i:                                        ; preds = %err_out_free_vnic_resources.i
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev6, align 4
  call void @pci_disable_msix(ptr noundef %140) #12
  br label %enic_clear_intr_mode.exit.i

sw.bb1.i.i:                                       ; preds = %err_out_free_vnic_resources.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdev6, align 4
  call void @pci_disable_msi(ptr noundef %142) #12
  br label %enic_clear_intr_mode.exit.i

enic_clear_intr_mode.exit.i:                      ; preds = %sw.bb1.i.i, %sw.bb.i.i, %err_out_free_vnic_resources.i.enic_clear_intr_mode.exit.i_crit_edge
  %143 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_set_intr_mode(ptr noundef %144, i32 noundef 0) #12
  call void @enic_free_vnic_resources(ptr noundef %add.ptr.i) #12
  br label %do.end142

do.end142:                                        ; preds = %enic_clear_intr_mode.exit.i, %do.end15.i, %do.end8.i
  %retval.0.i = phi i32 [ %call3.i, %do.end8.i ], [ -22, %do.end15.i ], [ %err.0.i, %enic_clear_intr_mode.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #15
  br label %err_out_dev_close

if.end143:                                        ; preds = %for.body37.i.if.end143_crit_edge, %for.cond35.preheader.i.if.end143_crit_edge, %sw.default.i
  %145 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %wq_count.i86.i, align 32
  %call144 = call i32 @netif_set_real_num_tx_queues(ptr noundef %call, i32 noundef %146) #12
  %147 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rq_count.i85.i, align 32
  %call145 = call i32 @netif_set_real_num_rx_queues(ptr noundef %call, i32 noundef %148) #12
  %notify_timer = getelementptr i8, ptr %call, i32 2436
  call void @init_timer_key(ptr noundef %notify_timer, ptr noundef nonnull @enic_notify_timer, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @enic_probe.__key.36) #12
  call void @enic_rfs_flw_tbl_init(ptr noundef %add.ptr.i) #12
  %rx_coalesce_setting.i = getelementptr i8, ptr %call, i32 3556
  %149 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vdev, align 128
  %call.i563 = call i32 @vnic_dev_port_speed(ptr noundef %150) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i563)
  %cmp.i564 = icmp ugt i32 %call.i563, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %call.i563)
  %cmp1.i = icmp ugt i32 %call.i563, 4000
  %..i = zext i1 %cmp1.i to i32
  %index.0.i = select i1 %cmp.i564, i32 2, i32 %..i
  %arrayidx.i = getelementptr [3 x %struct.enic_intr_mod_range], ptr @mod_range, i32 0, i32 %index.0.i
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i, align 4
  %153 = ptrtoint ptr %rx_coalesce_setting.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %rx_coalesce_setting.i, align 4
  %large_pkt_range_start.i = getelementptr [3 x %struct.enic_intr_mod_range], ptr @mod_range, i32 0, i32 %index.0.i, i32 1
  %154 = ptrtoint ptr %large_pkt_range_start.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %large_pkt_range_start.i, align 4
  %large_pkt_range_start7.i = getelementptr i8, ptr %call, i32 3560
  %156 = ptrtoint ptr %large_pkt_range_start7.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %large_pkt_range_start7.i, align 4
  %range_end.i = getelementptr i8, ptr %call, i32 3564
  %157 = ptrtoint ptr %range_end.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 125, ptr %range_end.i, align 4
  %158 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rq_count.i85.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp822.not.i = icmp eq i32 %159, 0
  br i1 %cmp822.not.i, label %if.end143.enic_set_rx_coal_setting.exit_crit_edge, label %for.body.lr.ph.i

if.end143.enic_set_rx_coal_setting.exit_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_coal_setting.exit

for.body.lr.ph.i:                                 ; preds = %if.end143
  %intr_timer_usec.i = getelementptr i8, ptr %call, i32 2348
  %160 = ptrtoint ptr %intr_timer_usec.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %intr_timer_usec.i, align 4
  br label %for.body.i566

for.body.i566:                                    ; preds = %for.body.i566.for.body.i566_crit_edge, %for.body.lr.ph.i
  %index.123.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i565, %for.body.i566.for.body.i566_crit_edge ]
  %cur_rx_coal_timeval.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %index.123.i, i32 8
  %162 = ptrtoint ptr %cur_rx_coal_timeval.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %cur_rx_coal_timeval.i, align 8
  %inc.i565 = add nuw i32 %index.123.i, 1
  %163 = ptrtoint ptr %rq_count.i85.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rq_count.i85.i, align 32
  %cmp8.i = icmp ult i32 %inc.i565, %164
  br i1 %cmp8.i, label %for.body.i566.for.body.i566_crit_edge, label %for.body.i566.enic_set_rx_coal_setting.exit_crit_edge

for.body.i566.enic_set_rx_coal_setting.exit_crit_edge: ; preds = %for.body.i566
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_coal_setting.exit

for.body.i566.for.body.i566_crit_edge:            ; preds = %for.body.i566
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i566

enic_set_rx_coal_setting.exit:                    ; preds = %for.body.i566.enic_set_rx_coal_setting.exit_crit_edge, %if.end143.enic_set_rx_coal_setting.exit_crit_edge
  %use_adaptive_rx_coalesce.i = getelementptr i8, ptr %call, i32 3568
  %165 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %use_adaptive_rx_coalesce.i, align 4
  %reset = getelementptr i8, ptr %call, i32 2484
  call void @__init_work(ptr noundef %reset, i32 noundef 0) #12
  %166 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -64, ptr %reset, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2500
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.39, ptr noundef nonnull @enic_probe.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry153 = getelementptr i8, ptr %call, i32 2488
  %167 = ptrtoint ptr %entry153 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %entry153, ptr %entry153, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2492
  %168 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %entry153, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2496
  %169 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @enic_reset, ptr %func, align 4
  %tx_hang_reset = getelementptr i8, ptr %call, i32 2528
  call void @__init_work(ptr noundef %tx_hang_reset, i32 noundef 0) #12
  %170 = ptrtoint ptr %tx_hang_reset to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -64, ptr %tx_hang_reset, align 32
  %lockdep_map163 = getelementptr i8, ptr %call, i32 2544
  call void @lockdep_init_map_type(ptr noundef %lockdep_map163, ptr noundef nonnull @.str.41, ptr noundef nonnull @enic_probe.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry165 = getelementptr i8, ptr %call, i32 2532
  %171 = ptrtoint ptr %entry165 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %entry165, ptr %entry165, align 4
  %prev.i567 = getelementptr i8, ptr %call, i32 2536
  %172 = ptrtoint ptr %prev.i567 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %entry165, ptr %prev.i567, align 4
  %func167 = getelementptr i8, ptr %call, i32 2540
  %173 = ptrtoint ptr %func167 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @enic_tx_hang_reset, ptr %func167, align 4
  %change_mtu_work = getelementptr i8, ptr %call, i32 2572
  call void @__init_work(ptr noundef %change_mtu_work, i32 noundef 0) #12
  %174 = ptrtoint ptr %change_mtu_work to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -64, ptr %change_mtu_work, align 4
  %lockdep_map176 = getelementptr i8, ptr %call, i32 2588
  call void @lockdep_init_map_type(ptr noundef %lockdep_map176, ptr noundef nonnull @.str.43, ptr noundef nonnull @enic_probe.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry178 = getelementptr i8, ptr %call, i32 2576
  %175 = ptrtoint ptr %entry178 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %entry178, ptr %entry178, align 4
  %prev.i568 = getelementptr i8, ptr %call, i32 2580
  %176 = ptrtoint ptr %prev.i568 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %entry178, ptr %prev.i568, align 4
  %func180 = getelementptr i8, ptr %call, i32 2584
  %177 = ptrtoint ptr %func180 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @enic_change_mtu_work, ptr %func180, align 4
  %178 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %wq_count.i86.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp185601.not = icmp eq i32 %179, 0
  br i1 %cmp185601.not, label %enic_set_rx_coal_setting.exit.for.end195_crit_edge, label %enic_set_rx_coal_setting.exit.do.body188_crit_edge

enic_set_rx_coal_setting.exit.do.body188_crit_edge: ; preds = %enic_set_rx_coal_setting.exit
  br label %do.body188

enic_set_rx_coal_setting.exit.for.end195_crit_edge: ; preds = %enic_set_rx_coal_setting.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end195

do.body188:                                       ; preds = %do.body188.do.body188_crit_edge, %enic_set_rx_coal_setting.exit.do.body188_crit_edge
  %i.1602 = phi i32 [ %inc194, %do.body188.do.body188_crit_edge ], [ 0, %enic_set_rx_coal_setting.exit.do.body188_crit_edge ]
  %arrayidx189 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 28, i32 %i.1602
  call void @__raw_spin_lock_init(ptr noundef %arrayidx189, ptr noundef nonnull @.str.45, ptr noundef nonnull @enic_probe.__key.44, i16 noundef signext 3) #12
  %inc194 = add nuw i32 %i.1602, 1
  %180 = ptrtoint ptr %wq_count.i86.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %wq_count.i86.i, align 32
  %cmp185 = icmp ult i32 %inc194, %181
  br i1 %cmp185, label %do.body188.do.body188_crit_edge, label %do.body188.for.end195_crit_edge

do.body188.for.end195_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end195

do.body188.do.body188_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188

for.end195:                                       ; preds = %do.body188.for.end195_crit_edge, %enic_set_rx_coal_setting.exit.for.end195_crit_edge
  %mtu = getelementptr i8, ptr %call, i32 2324
  %182 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %mtu, align 4
  %conv196 = zext i16 %183 to i32
  %port_mtu = getelementptr i8, ptr %call, i32 3552
  %184 = ptrtoint ptr %port_mtu to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv196, ptr %port_mtu, align 32
  %mac_addr = getelementptr i8, ptr %call, i32 3528
  %185 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pdev6, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 8
  %187 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %device.i.i, align 2
  %189 = zext i16 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %188, label %if.else.i [
    i16 68, label %for.end195.if.then.i570_crit_edge
    i16 113, label %for.end195.if.then.i570_crit_edge608
  ]

for.end195.if.then.i570_crit_edge608:             ; preds = %for.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i570

for.end195.if.then.i570_crit_edge:                ; preds = %for.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i570

if.then.i570:                                     ; preds = %for.end195.if.then.i570_crit_edge, %for.end195.if.then.i570_crit_edge608
  %190 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mac_addr, align 4
  %192 = and i32 %191, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.i.not.i.i = icmp eq i32 %192, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.i570.land.lhs.true.i_crit_edge

if.then.i570.land.lhs.true.i_crit_edge:           ; preds = %if.then.i570
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then.i570
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 3532
  %193 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %194 to i32
  %or.i.i.i = or i32 %191, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end204_crit_edge

is_valid_ether_addr.exit.i.if.end204_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, %if.then.i570.land.lhs.true.i_crit_edge
  %add.ptr.i20.i = getelementptr i8, ptr %call, i32 3532
  %195 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %add.ptr.i20.i, align 2
  %conv.i.i571 = zext i16 %196 to i32
  %or.i.i = or i32 %191, %conv.i.i571
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i21.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i21.i, label %land.lhs.true.i.if.end204_crit_edge, label %land.lhs.true.i.err_out_dev_deinit_crit_edge

land.lhs.true.i.err_out_dev_deinit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_dev_deinit

land.lhs.true.i.if.end204_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

if.else.i:                                        ; preds = %for.end195
  %197 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mac_addr, align 4
  %199 = and i32 %198, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.i.not.i22.i = icmp eq i32 %199, 0
  br i1 %tobool.i.not.i22.i, label %is_valid_ether_addr.exit28.i, label %if.else.i.err_out_dev_deinit_crit_edge

if.else.i.err_out_dev_deinit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_dev_deinit

is_valid_ether_addr.exit28.i:                     ; preds = %if.else.i
  %add.ptr.i.i23.i = getelementptr i8, ptr %call, i32 3532
  %200 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %add.ptr.i.i23.i, align 2
  %conv.i.i24.i = zext i16 %201 to i32
  %or.i.i25.i = or i32 %198, %conv.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i25.i)
  %cmp.i.i26.not.i = icmp eq i32 %or.i.i25.i, 0
  br i1 %cmp.i.i26.not.i, label %is_valid_ether_addr.exit28.i.err_out_dev_deinit_crit_edge, label %is_valid_ether_addr.exit28.i.if.end204_crit_edge

is_valid_ether_addr.exit28.i.if.end204_crit_edge: ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

is_valid_ether_addr.exit28.i.err_out_dev_deinit_crit_edge: ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_dev_deinit

if.end204:                                        ; preds = %is_valid_ether_addr.exit28.i.if.end204_crit_edge, %land.lhs.true.i.if.end204_crit_edge, %is_valid_ether_addr.exit.i.if.end204_crit_edge
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #12
  %intr_timer_usec = getelementptr i8, ptr %call, i32 2348
  %202 = ptrtoint ptr %intr_timer_usec to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %intr_timer_usec, align 4
  %tx_coalesce_usecs = getelementptr i8, ptr %call, i32 3576
  %204 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %tx_coalesce_usecs, align 8
  %rx_coalesce_usecs = getelementptr i8, ptr %call, i32 3572
  %205 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %203, ptr %rx_coalesce_usecs, align 4
  %206 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pdev6, align 4
  %device.i574 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 8
  %208 = ptrtoint ptr %device.i574 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %device.i574, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %209)
  %switch.selectcmp.case1 = icmp eq i16 %209, 68
  call void @__sanitizer_cov_trace_const_cmp2(i16 113, i16 %209)
  %switch.selectcmp.case2 = icmp eq i16 %209, 113
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %210 = select i1 %switch.selectcmp, ptr @enic_netdev_dynamic_ops, ptr @enic_netdev_ops
  %netdev_ops213 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %211 = ptrtoint ptr %netdev_ops213 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %210, ptr %netdev_ops213, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %212 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 200, ptr %watchdog_timeo, align 4
  call void @enic_set_ethtool_ops(ptr noundef %call) #12
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %213 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %features, align 16
  %or215 = or i64 %214, 384
  store i64 %or215, ptr %features, align 16
  %215 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %config.i.i, align 8
  %and218 = and i32 %216, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.end204.if.end232_crit_edge, label %if.then222

if.end204.if.end232_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then222:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  %and224 = and i64 %or215, -129
  %217 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %and224, ptr %features, align 16
  %loop_enable = getelementptr i8, ptr %call, i32 6628
  %218 = ptrtoint ptr %loop_enable to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 1, ptr %loop_enable, align 4
  %loop_tag = getelementptr i8, ptr %call, i32 2352
  %219 = ptrtoint ptr %loop_tag to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %loop_tag, align 8
  %loop_tag226 = getelementptr i8, ptr %call, i32 6630
  %221 = ptrtoint ptr %loop_tag226 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %loop_tag226, align 2
  %conv231 = zext i16 %220 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %conv231) #15
  br label %if.end232

if.end232:                                        ; preds = %if.then222, %if.end204.if.end232_crit_edge
  %222 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %config.i.i, align 8
  %and235 = and i32 %223, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end232.if.end241_crit_edge, label %if.then239

if.end232.if.end241_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.then239:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %224 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %hw_features, align 8
  %or240 = or i64 %225, 9
  store i64 %or240, ptr %hw_features, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end232.if.end241_crit_edge
  %226 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %config.i.i, align 8
  %and244 = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end241.if.end251_crit_edge, label %if.then248

if.end241.if.end251_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251

if.then248:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  %hw_features249 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %228 = ptrtoint ptr %hw_features249 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %hw_features249, align 8
  %or250 = or i64 %229, 1376256
  store i64 %or250, ptr %hw_features249, align 8
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end241.if.end251_crit_edge
  %230 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %config.i.i, align 8
  %and254 = and i32 %231, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.end251.if.end261_crit_edge, label %if.then258

if.end251.if.end261_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261

if.then258:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  %hw_features259 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %232 = ptrtoint ptr %hw_features259 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %hw_features259, align 8
  %or260 = or i64 %233, 549755813888
  store i64 %or260, ptr %hw_features259, align 8
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %if.end251.if.end261_crit_edge
  %234 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %config.i.i, align 8
  %and264 = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.end261.if.end271_crit_edge, label %if.then268

if.end261.if.end271_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.then268:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  %hw_features269 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %236 = ptrtoint ptr %hw_features269 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %hw_features269, align 8
  %or270 = or i64 %237, 1099511627776
  store i64 %or270, ptr %hw_features269, align 8
  br label %if.end271

if.end271:                                        ; preds = %if.then268, %if.end261.if.end271_crit_edge
  %238 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %config.i.i, align 8
  %and274 = and i32 %239, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %if.end271.if.end323_crit_edge, label %if.then278

if.end271.if.end323_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

if.then278:                                       ; preds = %if.end271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %patch_level) #12
  %240 = ptrtoint ptr %patch_level to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 -1, ptr %patch_level, align 8, !annotation !228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #12
  %241 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 0, ptr %a1, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 27
  %242 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %hw_enc_features, align 16
  %or279 = or i64 %243, 1099714330632
  store i64 %or279, ptr %hw_enc_features, align 16
  %hw_features281 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %244 = ptrtoint ptr %hw_features281 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %hw_features281, align 8
  %or282 = or i64 %245, %or279
  store i64 %or282, ptr %hw_features281, align 8
  %246 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %vdev, align 128
  %call284 = call i32 @vnic_dev_get_supported_feature_ver(ptr noundef %247, i8 noundef zeroext 0, ptr noundef nonnull %patch_level, ptr noundef nonnull %a1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then278.if.end287_crit_edge, label %if.then286

if.then278.if.end287_crit_edge:                   ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

if.then286:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #14
  %248 = ptrtoint ptr %patch_level to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 0, ptr %patch_level, align 8
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.then278.if.end287_crit_edge
  %249 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %a1, align 8
  %conv288 = trunc i64 %250 to i8
  %flags289 = getelementptr i8, ptr %call, i32 9255
  %251 = ptrtoint ptr %flags289 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv288, ptr %flags289, align 1
  %252 = ptrtoint ptr %patch_level to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %patch_level, align 8
  %254 = trunc i64 %253 to i32
  %conv291 = and i32 %254, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv291)
  %tobool.not.i = icmp eq i32 %conv291, 0
  %255 = call i32 @llvm.ctlz.i32(i32 %conv291, i1 true) #12, !range !231
  %sub.i = sub nuw nsw i32 32, %255
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %conv293596 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool294.not = icmp eq i32 %cond.i, 0
  %sub296 = add nsw i64 %conv293596, -1
  %spec.select = select i1 %tobool294.not, i64 0, i64 %sub296
  %256 = ptrtoint ptr %patch_level to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %spec.select, ptr %patch_level, align 8
  %conv300 = trunc i64 %spec.select to i8
  %patch_level302 = getelementptr i8, ptr %call, i32 9254
  %257 = ptrtoint ptr %patch_level302 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv300, ptr %patch_level302, align 2
  %258 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %vdev, align 128
  %call304 = call i32 @vnic_dev_get_res_count(ptr noundef %259, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call304)
  %cmp305 = icmp eq i32 %call304, 1
  br i1 %cmp305, label %if.end287.if.then313_crit_edge, label %lor.lhs.false307

if.end287.if.then313_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then313

lor.lhs.false307:                                 ; preds = %if.end287
  %260 = ptrtoint ptr %flags289 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %flags289, align 1
  %262 = and i8 %261, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool312.not = icmp eq i8 %262, 0
  br i1 %tobool312.not, label %lor.lhs.false307.if.end322_crit_edge, label %lor.lhs.false307.if.then313_crit_edge

lor.lhs.false307.if.then313_crit_edge:            ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then313

lor.lhs.false307.if.end322_crit_edge:             ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end322

if.then313:                                       ; preds = %lor.lhs.false307.if.then313_crit_edge, %if.end287.if.then313_crit_edge
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 152
  %263 = ptrtoint ptr %flags289 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %flags289, align 1
  %265 = and i8 %264, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool318.not = icmp eq i8 %265, 0
  %spec.store.select = select i1 %tobool318.not, ptr @enic_udp_tunnels_v4, ptr @enic_udp_tunnels
  %266 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %spec.store.select, ptr %udp_tunnel_nic_info, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then313, %lor.lhs.false307.if.end322_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %patch_level) #12
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.end271.if.end323_crit_edge
  %hw_features324 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %267 = ptrtoint ptr %hw_features324 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %hw_features324, align 8
  %269 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %features, align 16
  %or326 = or i64 %270, %268
  store i64 %or326, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %271 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %vlan_features, align 8
  %or328 = or i64 %272, %or326
  store i64 %or328, ptr %vlan_features, align 8
  %or330 = or i64 %268, 274877906944
  store i64 %or330, ptr %hw_features324, align 8
  br i1 %cmp.i, label %if.then332, label %if.end323.if.end335_crit_edge

if.end323.if.end335_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335

if.then332:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #14
  %or334 = or i64 %or326, 32
  %273 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %or334, ptr %features, align 16
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %if.end323.if.end335_crit_edge
  %priv_flags336 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %274 = ptrtoint ptr %priv_flags336 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %priv_flags336, align 16
  %or337 = or i64 %275, 4096
  store i64 %or337, ptr %priv_flags336, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %276 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %277 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 9000, ptr %max_mtu, align 4
  %278 = ptrtoint ptr %port_mtu to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %port_mtu, align 32
  %mtu339 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %280 = ptrtoint ptr %mtu339 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %mtu339, align 4
  %call340 = call i32 @register_netdev(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.end346, label %if.end335.err_out_dev_deinit_crit_edge

if.end335.err_out_dev_deinit_crit_edge:           ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_dev_deinit

if.end346:                                        ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #14
  %rx_copybreak = getelementptr i8, ptr %call, i32 18796
  %281 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 256, ptr %rx_copybreak, align 4
  br label %cleanup

err_out_dev_deinit:                               ; preds = %if.end335.err_out_dev_deinit_crit_edge, %is_valid_ether_addr.exit28.i.err_out_dev_deinit_crit_edge, %if.else.i.err_out_dev_deinit_crit_edge, %land.lhs.true.i.err_out_dev_deinit_crit_edge
  %.str.54.sink = phi ptr [ @.str.47, %land.lhs.true.i.err_out_dev_deinit_crit_edge ], [ @.str.47, %is_valid_ether_addr.exit28.i.err_out_dev_deinit_crit_edge ], [ @.str.47, %if.else.i.err_out_dev_deinit_crit_edge ], [ @.str.54, %if.end335.err_out_dev_deinit_crit_edge ]
  %err.0 = phi i32 [ -99, %land.lhs.true.i.err_out_dev_deinit_crit_edge ], [ -99, %is_valid_ether_addr.exit28.i.err_out_dev_deinit_crit_edge ], [ -99, %if.else.i.err_out_dev_deinit_crit_edge ], [ %call340, %if.end335.err_out_dev_deinit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.54.sink) #15
  call fastcc void @enic_dev_deinit(ptr noundef %add.ptr.i)
  br label %err_out_dev_close

err_out_dev_close:                                ; preds = %err_out_dev_deinit, %do.end142, %do.end134, %do.end123
  %err.1 = phi i32 [ %call118, %do.end123 ], [ %retval.0.i, %do.end142 ], [ %err.0, %err_out_dev_deinit ], [ %call129, %do.end134 ]
  %282 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %vdev, align 128
  %call348 = call i32 @vnic_dev_close(ptr noundef %283) #12
  br label %err_out_disable_sriov

err_out_disable_sriov:                            ; preds = %err_out_dev_close, %do.end108
  %err.2 = phi i32 [ %retval.0.i.ph.i, %do.end108 ], [ %err.1, %err_out_dev_close ]
  %284 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pp, align 16
  call void @kfree(ptr noundef %285) #12
  br label %err_out_disable_sriov_pp

err_out_disable_sriov_pp:                         ; preds = %err_out_disable_sriov, %if.end7.i.i.err_out_disable_sriov_pp_crit_edge
  %err.3 = phi i32 [ %err.2, %err_out_disable_sriov ], [ -12, %if.end7.i.i.err_out_disable_sriov_pp_crit_edge ]
  %priv_flags.i = getelementptr i8, ptr %call, i32 3540
  %286 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %priv_flags.i, align 4
  %and.i = and i32 %287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool351.not = icmp eq i32 %and.i, 0
  br i1 %tobool351.not, label %err_out_disable_sriov_pp.err_out_vnic_unregister_crit_edge, label %if.then352

err_out_disable_sriov_pp.err_out_vnic_unregister_crit_edge: ; preds = %err_out_disable_sriov_pp
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_vnic_unregister

if.then352:                                       ; preds = %err_out_disable_sriov_pp
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_disable_sriov(ptr noundef %pdev) #12
  %288 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %priv_flags.i, align 4
  %and354 = and i32 %289, -2
  store i32 %and354, ptr %priv_flags.i, align 4
  br label %err_out_vnic_unregister

err_out_vnic_unregister:                          ; preds = %if.then352, %err_out_disable_sriov_pp.err_out_vnic_unregister_crit_edge, %do.end92, %if.end71.err_out_vnic_unregister_crit_edge
  %err.4 = phi i32 [ %call73, %if.end71.err_out_vnic_unregister_crit_edge ], [ %call87, %do.end92 ], [ %err.3, %if.then352 ], [ %err.3, %err_out_disable_sriov_pp.err_out_vnic_unregister_crit_edge ]
  %290 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_unregister(ptr noundef %291) #12
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_vnic_unregister, %do.end70, %do.end56
  %err.5 = phi i32 [ -19, %do.end56 ], [ %err.4, %err_out_vnic_unregister ], [ -19, %do.end70 ]
  call fastcc void @enic_iounmap(ptr noundef %add.ptr.i)
  br label %err_out_release_regions

err_out_release_regions:                          ; preds = %err_out_iounmap, %do.end28
  %err.6 = phi i32 [ %call.i545, %do.end28 ], [ %err.5, %err_out_iounmap ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_out_disable_device

err_out_disable_device:                           ; preds = %err_out_release_regions, %do.end16
  %err.7 = phi i32 [ %call11, %do.end16 ], [ %err.6, %err_out_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_disable_device, %do.end
  %err.8 = phi i32 [ %call7, %do.end ], [ %err.7, %err_out_disable_device ]
  call void @free_netdev(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_netdev, %if.end346, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.8, %err_out_free_netdev ], [ 0, %if.end346 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %reset = getelementptr i8, ptr %1, i32 2484
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset) #12
  %change_mtu_work = getelementptr i8, ptr %1, i32 2572
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %change_mtu_work) #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  tail call fastcc void @enic_dev_deinit(ptr noundef %add.ptr.i)
  %vdev = getelementptr i8, ptr %1, i32 2432
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call4 = tail call i32 @vnic_dev_close(ptr noundef %3) #12
  %priv_flags.i = getelementptr i8, ptr %1, i32 3540
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_sriov(ptr noundef %pdev) #12
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv_flags.i, align 4
  %and = and i32 %7, -2
  store i32 %and, ptr %priv_flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %pp = getelementptr i8, ptr %1, i32 3632
  %8 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pp, align 16
  tail call void @kfree(ptr noundef %9) #12
  %10 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev, align 128
  tail call void @vnic_dev_unregister(ptr noundef %11) #12
  tail call fastcc void @enic_iounmap(ptr noundef %add.ptr.i)
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vnic_dev_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_devcmd_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_set_ig_vlan_rewrite_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_notify_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -132
  tail call fastcc void @enic_notify_check(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 200
  %call = tail call i32 @round_jiffies(i32 noundef %add) #12
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_rfs_flw_tbl_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_reset(ptr noundef %work) #2 align 64 {
entry:
  %done.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -180
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #12
  %enic_api_lock.i = getelementptr i8, ptr %work, i32 1100
  tail call void @_raw_spin_lock(ptr noundef %enic_api_lock.i) #12
  %enic_api_busy.i = getelementptr i8, ptr %work, i32 1144
  %4 = ptrtoint ptr %enic_api_busy.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enic_api_busy.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %enic_api_lock.i) #12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 128
  %call2 = tail call i32 @enic_stop(ptr noundef %6)
  %vdev.i = getelementptr i8, ptr %work, i32 -52
  %7 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i.i) #12
  %9 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %done.i.i, align 4, !annotation !228
  %call.i.i = tail call i32 @vnic_dev_soft_reset(ptr noundef %8, i32 noundef 0) #12, !callees !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -200, %10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call1.i.i = call i32 @vnic_dev_soft_reset_done(ptr noundef %8, ptr noundef nonnull %done.i.i) #12, !callees !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.body.i.i.if.then.i_crit_edge

do.body.i.i.if.then.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end4.i.i:                                      ; preds = %do.body.i.i
  %11 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %enic_dev_wait.exit.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %call8.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %13
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end7.i.i.do.body.i.i_crit_edge, label %if.end7.i.i.if.then.i_crit_edge

if.end7.i.i.if.then.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end7.i.i.do.body.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

enic_dev_wait.exit.i:                             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  br label %enic_dev_soft_reset.exit

if.then.i:                                        ; preds = %if.end7.i.i.if.then.i_crit_edge, %do.body.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end.if.then.i_crit_edge ], [ %call1.i.i, %do.body.i.i.if.then.i_crit_edge ], [ -110, %if.end7.i.i.if.then.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.89, i32 noundef %retval.0.i.ph.i) #15
  br label %enic_dev_soft_reset.exit

enic_dev_soft_reset.exit:                         ; preds = %if.then.i, %enic_dev_wait.exit.i
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 128
  %uc.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 65
  call void @__hw_addr_unsync_dev(ptr noundef %uc.i.i, ptr noundef %17, ptr noundef null) #12
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 66
  call void @__hw_addr_unsync_dev(ptr noundef %mc.i.i, ptr noundef %17, ptr noundef null) #12
  %mc_count.i = getelementptr i8, ptr %work, i32 1060
  %18 = ptrtoint ptr %mc_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mc_count.i, align 8
  %uc_count.i = getelementptr i8, ptr %work, i32 1064
  %19 = ptrtoint ptr %uc_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %uc_count.i, align 4
  %flags.i = getelementptr i8, ptr %work, i32 1052
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 16
  call void @enic_init_vnic_resources(ptr noundef %add.ptr) #12
  %call4 = call fastcc i32 @enic_set_rss_nic_cfg(ptr noundef %add.ptr)
  %call5 = call i32 @enic_dev_set_ig_vlan_rewrite_mode(ptr noundef %add.ptr) #12
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  %call7 = call i32 @enic_open(ptr noundef %22)
  call void @_raw_spin_lock(ptr noundef %enic_api_lock.i) #12
  %23 = ptrtoint ptr %enic_api_busy.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %enic_api_busy.i, align 4
  call void @_raw_spin_unlock(ptr noundef %enic_api_lock.i) #12
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 128
  %call9 = call i32 @call_netdevice_notifiers(i32 noundef 3, ptr noundef %25) #12
  call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %enic_dev_soft_reset.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_tx_hang_reset(ptr noundef %work) #2 align 64 {
entry:
  %done.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -224
  tail call void @rtnl_lock() #12
  %enic_api_lock.i = getelementptr i8, ptr %work, i32 1056
  tail call void @_raw_spin_lock(ptr noundef %enic_api_lock.i) #12
  %enic_api_busy.i = getelementptr i8, ptr %work, i32 1100
  %0 = ptrtoint ptr %enic_api_busy.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %enic_api_busy.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %enic_api_lock.i) #12
  %call = tail call i32 @enic_dev_hang_notify(ptr noundef %add.ptr) #12
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 128
  %call1 = tail call i32 @enic_stop(ptr noundef %2)
  %vdev.i = getelementptr i8, ptr %work, i32 -96
  %3 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i.i) #12
  %5 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %done.i.i, align 4, !annotation !228
  %call.i.i = tail call i32 @vnic_dev_hang_reset(ptr noundef %4, i32 noundef 0) #12, !callees !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -200, %6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call1.i.i = call i32 @vnic_dev_hang_reset_done(ptr noundef %4, ptr noundef nonnull %done.i.i) #12, !callees !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.body.i.i.if.then.i_crit_edge

do.body.i.i.if.then.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end4.i.i:                                      ; preds = %do.body.i.i
  %7 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %enic_dev_wait.exit.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %call8.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %9
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end7.i.i.do.body.i.i_crit_edge, label %if.end7.i.i.if.then.i_crit_edge

if.end7.i.i.if.then.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end7.i.i.do.body.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

enic_dev_wait.exit.i:                             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  br label %enic_dev_hang_reset.exit

if.then.i:                                        ; preds = %if.end7.i.i.if.then.i_crit_edge, %do.body.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %entry.if.then.i_crit_edge ], [ %call1.i.i, %do.body.i.i.if.then.i_crit_edge ], [ -110, %if.end7.i.i.if.then.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.104, i32 noundef %retval.0.i.ph.i) #15
  br label %enic_dev_hang_reset.exit

enic_dev_hang_reset.exit:                         ; preds = %if.then.i, %enic_dev_wait.exit.i
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 128
  %uc.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 65
  call void @__hw_addr_unsync_dev(ptr noundef %uc.i.i, ptr noundef %13, ptr noundef null) #12
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 66
  call void @__hw_addr_unsync_dev(ptr noundef %mc.i.i, ptr noundef %13, ptr noundef null) #12
  %mc_count.i = getelementptr i8, ptr %work, i32 1016
  %14 = ptrtoint ptr %mc_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mc_count.i, align 8
  %uc_count.i = getelementptr i8, ptr %work, i32 1020
  %15 = ptrtoint ptr %uc_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %uc_count.i, align 4
  %flags.i = getelementptr i8, ptr %work, i32 1008
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags.i, align 16
  call void @enic_init_vnic_resources(ptr noundef %add.ptr) #12
  %call3 = call fastcc i32 @enic_set_rss_nic_cfg(ptr noundef %add.ptr)
  %call4 = call i32 @enic_dev_set_ig_vlan_rewrite_mode(ptr noundef %add.ptr) #12
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 128
  %call6 = call i32 @enic_open(ptr noundef %18)
  call void @_raw_spin_lock(ptr noundef %enic_api_lock.i) #12
  %19 = ptrtoint ptr %enic_api_busy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %enic_api_busy.i, align 4
  call void @_raw_spin_unlock(ptr noundef %enic_api_lock.i) #12
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 128
  %call8 = call i32 @call_netdevice_notifiers(i32 noundef 3, ptr noundef %21) #12
  call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_change_mtu_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -268
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %vdev = getelementptr i8, ptr %work, i32 -140
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_mtu(ptr noundef %3) #12
  tail call void @rtnl_lock() #12
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  %call1.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end31.i_crit_edge

entry.if.end31.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.rhs.i:                                       ; preds = %entry
  %.b63.i = load i1, ptr @_enic_change_mtu.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i, !prof !232

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @_enic_change_mtu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2025, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.3, i32 noundef 2025) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end31.i_crit_edge, %entry.if.end31.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end52.critedge.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end31.i
  %call41.i = tail call i32 @enic_stop(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then47.critedge.i, label %if.then40.i._enic_change_mtu.exit_crit_edge

if.then40.i._enic_change_mtu.exit_crit_edge:      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_enic_change_mtu.exit

if.then47.critedge.i:                             ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  %mtu.c.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.c.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %mtu.c.i, align 4
  %call48.i = tail call i32 @enic_open(ptr noundef %1) #12
  br label %_enic_change_mtu.exit

if.end52.critedge.i:                              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %mtu.c64.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %mtu.c64.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %mtu.c64.i, align 4
  br label %_enic_change_mtu.exit

_enic_change_mtu.exit:                            ; preds = %if.end52.critedge.i, %if.then47.critedge.i, %if.then40.i._enic_change_mtu.exit_crit_edge
  tail call void @rtnl_unlock() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.105, i32 noundef %9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_set_ethtool_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_supported_feature_ver(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_res_count(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_dev_deinit(ptr noundef %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %0 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 38, i32 %i.025
  tail call void @__netif_napi_del(ptr noundef %arrayidx) #12
  %inc = add nuw i32 %i.025, 1
  %2 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_count, align 32
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp1 = icmp eq i32 %call, 3
  br i1 %cmp1, label %for.cond2.preheader, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond2.preheader:                              ; preds = %for.end
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %6 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp326.not = icmp eq i32 %7, 0
  br i1 %cmp326.not, label %for.cond2.preheader.if.end_crit_edge, label %for.cond2.preheader.for.body4_crit_edge

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.cond2.preheader.if.end_crit_edge:             ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.127 = phi i32 [ %inc9, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %8 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_count, align 32
  %add.i = add i32 %9, %i.127
  %arrayidx7 = getelementptr %struct.enic, ptr %enic, i32 0, i32 38, i32 %add.i
  tail call void @__netif_napi_del(ptr noundef %arrayidx7) #12
  %inc9 = add nuw i32 %i.127, 1
  %10 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wq_count, align 32
  %cmp3 = icmp ult i32 %inc9, %11
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4

if.end:                                           ; preds = %for.body4.if.end_crit_edge, %for.cond2.preheader.if.end_crit_edge, %for.end.if.end_crit_edge
  tail call void @synchronize_net() #12
  tail call void @enic_free_vnic_resources(ptr noundef %enic) #12
  %12 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev, align 128
  %call.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %13) #12
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call.i, label %if.end.enic_clear_intr_mode.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

if.end.enic_clear_intr_mode.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_clear_intr_mode.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msix(ptr noundef %16) #12
  br label %enic_clear_intr_mode.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev2.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %17 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev2.i, align 4
  tail call void @pci_disable_msi(ptr noundef %18) #12
  br label %enic_clear_intr_mode.exit

enic_clear_intr_mode.exit:                        ; preds = %sw.bb1.i, %sw.bb.i, %if.end.enic_clear_intr_mode.exit_crit_edge
  %19 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev, align 128
  tail call void @vnic_dev_set_intr_mode(ptr noundef %20, i32 noundef 0) #12
  tail call fastcc void @enic_free_affinity_hint(ptr noundef %enic)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_iounmap(ptr nocapture noundef readonly %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %3) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %5) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %7) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %9) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.enic, ptr %enic, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %11) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_open(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_open_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_intr_coal_timer_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_intr_coal_timer_info_default(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_get_vnic_config(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_get_res_counts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_alloc_vnic_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_init_vnic_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enic_set_rss_nic_cfg(ptr noundef %enic) unnamed_addr #2 align 64 {
entry:
  %rss_cpu_buf_pa.i = alloca i32, align 4
  %rss_hash_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rss_hash_type) #12
  %2 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rss_hash_type, align 1, !annotation !228
  %config = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config, align 8
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %5 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ %cmp, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 128
  %call1 = call i32 @vnic_dev_capable_rss_hash_type(ptr noundef %9, ptr noundef nonnull %rss_hash_type) #12
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %land.end.if.end_crit_edge, label %if.then

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 30, ptr %rss_hash_type, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  br i1 %7, label %if.then5, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then5:                                         ; preds = %if.end
  %rss_key.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 48
  call void @netdev_rss_key_fill(ptr noundef %rss_key.i, i32 noundef 40) #12
  %call.i = call i32 @__enic_set_rsskey(ptr noundef %enic) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.if.end17.sink.split_crit_edge

if.then5.if.end17.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.sink.split

if.then8:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rss_cpu_buf_pa.i) #12
  %11 = ptrtoint ptr %rss_cpu_buf_pa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rss_cpu_buf_pa.i, align 4, !annotation !228
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i30, i32 noundef 256, ptr noundef nonnull %rss_cpu_buf_pa.i, i32 noundef 2592, i32 noundef 0) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %enic_set_rsscpu.exit.thread, label %for.cond.preheader.i

enic_set_rsscpu.exit.thread:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rss_cpu_buf_pa.i) #12
  br label %if.end17.sink.split

for.cond.preheader.i:                             ; preds = %if.then8
  %rq_count.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.02.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_count.i, align 32
  %rem.i = urem i32 %i.02.i, %15
  %conv2.i = trunc i32 %rem.i to i8
  %div1.i = lshr i32 %i.02.i, 2
  %arrayidx.i = getelementptr [32 x %struct.anon.159], ptr %call.i.i, i32 0, i32 %div1.i
  %rem3.i = and i32 %i.02.i, 3
  %arrayidx4.i = getelementptr [4 x i8], ptr %arrayidx.i, i32 0, i32 %rem3.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %enic_set_rsscpu.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

enic_set_rsscpu.exit:                             ; preds = %for.body.i
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %17 = ptrtoint ptr %rss_cpu_buf_pa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rss_cpu_buf_pa.i, align 4
  %call5.i = call i32 @enic_set_rss_cpu(ptr noundef %enic, i32 noundef %18, i64 noundef 256) #12
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %rss_cpu_buf_pa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rss_cpu_buf_pa.i, align 4
  call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 256, ptr noundef nonnull %call.i.i, i32 noundef %22, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rss_cpu_buf_pa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool10.not = icmp eq i32 %call5.i, 0
  br i1 %tobool10.not, label %enic_set_rsscpu.exit.if.end17_crit_edge, label %enic_set_rsscpu.exit.if.end17.sink.split_crit_edge

enic_set_rsscpu.exit.if.end17.sink.split_crit_edge: ; preds = %enic_set_rsscpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.sink.split

enic_set_rsscpu.exit.if.end17_crit_edge:          ; preds = %enic_set_rsscpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17.sink.split:                              ; preds = %enic_set_rsscpu.exit.if.end17.sink.split_crit_edge, %enic_set_rsscpu.exit.thread, %if.then5.if.end17.sink.split_crit_edge
  %.str.78.sink = phi ptr [ @.str.75, %enic_set_rsscpu.exit.thread ], [ @.str.75, %enic_set_rsscpu.exit.if.end17.sink.split_crit_edge ], [ @.str.78, %if.then5.if.end17.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull %.str.78.sink) #15
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %enic_set_rsscpu.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %rss_enable.0 = phi i8 [ 1, %enic_set_rsscpu.exit.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %if.end17.sink.split ]
  %23 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rss_hash_type, align 1
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %call.i32 = call i32 @enic_set_nic_cfg(ptr noundef %enic, i8 noundef zeroext 0, i8 noundef zeroext %24, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext %rss_enable.0, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rss_hash_type) #12
  ret i32 %call.i32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %rq_count.i = getelementptr i8, ptr %1, i32 9248
  %2 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_count.i, align 32
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %3
  %ring.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 3
  %4 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring.i, align 4
  %desc_size.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_size.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 4
  %8 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_clean.i, align 4
  %mul.i = mul i32 %9, %7
  %add.ptr.i56 = getelementptr i8, ptr %5, i32 %mul.i
  %type_color1.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i56, i32 0, i32 3
  %10 = ptrtoint ptr %type_color1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type_color1.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i56, i32 0, i32 1
  %12 = ptrtoint ptr %q_number6.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %q_number6.i.i, align 2
  %14 = and i16 %13, -253
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %16 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i56, align 2
  %18 = and i16 %17, -241
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %last_color.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 5
  %vdev.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 1
  %desc_count.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx, i32 0, i32 3, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %entry
  %q_number.0.i = phi i16 [ %15, %entry ], [ %43, %if.end13.i.while.cond.i_crit_edge ]
  %completed_index.0.i = phi i16 [ %19, %entry ], [ %47, %if.end13.i.while.cond.i_crit_edge ]
  %type.0.in.i = phi i8 [ %11, %entry ], [ %39, %if.end13.i.while.cond.i_crit_edge ]
  %cq_desc.0.i = phi ptr [ %add.ptr.i56, %entry ], [ %add.ptr20.i, %if.end13.i.while.cond.i_crit_edge ]
  %work_done.0.i = phi i32 [ 0, %entry ], [ %inc21.i, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.i = lshr i8 %type.0.in.i, 7
  %conv.i = zext i8 %color.0.i to i32
  %20 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %21, %conv.i
  br i1 %cmp.not.i, label %while.cond.i.vnic_cq_service.exit_crit_edge, label %while.body.i

while.cond.i.vnic_cq_service.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

while.body.i:                                     ; preds = %while.cond.i
  %type.0.i = and i8 %type.0.in.i, 15
  %22 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call fastcc i32 @enic_wq_service(ptr noundef %23, ptr noundef %cq_desc.0.i, i8 noundef zeroext %type.0.i, i16 noundef zeroext %q_number.0.i, i16 noundef zeroext %completed_index.0.i, ptr noundef null) #12, !callees !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.vnic_cq_service.exit_crit_edge

while.body.i.vnic_cq_service.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

if.end.i:                                         ; preds = %while.body.i
  %24 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %to_clean.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %to_clean.i, align 4
  %26 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %27)
  %cmp6.i = icmp eq i32 %inc.i, %27
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %to_clean.i, align 4
  %29 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11.not.i = icmp eq i32 %30, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %31 = ptrtoint ptr %last_color.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i, ptr %last_color.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %32 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring.i, align 4
  %34 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_size.i, align 4
  %36 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %to_clean.i, align 4
  %mul19.i = mul i32 %37, %35
  %add.ptr20.i = getelementptr i8, ptr %33, i32 %mul19.i
  %type_color1.i1.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 3
  %38 = ptrtoint ptr %type_color1.i1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type_color1.i1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i2.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 1
  %40 = ptrtoint ptr %q_number6.i2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %q_number6.i2.i, align 2
  %42 = and i16 %41, -253
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  %44 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr20.i, align 2
  %46 = and i16 %45, -241
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #12
  %inc21.i = add nuw nsw i32 %work_done.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond.not.i, label %if.end13.i.vnic_cq_service.exit_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end13.i.vnic_cq_service.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

vnic_cq_service.exit:                             ; preds = %if.end13.i.vnic_cq_service.exit_crit_edge, %while.body.i.vnic_cq_service.exit_crit_edge, %while.cond.i.vnic_cq_service.exit_crit_edge
  %work_done.1.i = phi i32 [ %work_done.0.i, %while.body.i.vnic_cq_service.exit_crit_edge ], [ 256, %if.end13.i.vnic_cq_service.exit_crit_edge ], [ %work_done.0.i, %while.cond.i.vnic_cq_service.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp = icmp sgt i32 %budget, 0
  br i1 %cmp, label %if.then, label %vnic_cq_service.exit.if.end_crit_edge

vnic_cq_service.exit.if.end_crit_edge:            ; preds = %vnic_cq_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %vnic_cq_service.exit
  %ring.i57 = getelementptr i8, ptr %1, i32 13196
  %48 = ptrtoint ptr %ring.i57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring.i57, align 4
  %desc_size.i58 = getelementptr i8, ptr %1, i32 13224
  %50 = ptrtoint ptr %desc_size.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %desc_size.i58, align 4
  %to_clean.i59 = getelementptr i8, ptr %1, i32 13236
  %52 = ptrtoint ptr %to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %to_clean.i59, align 4
  %mul.i60 = mul i32 %53, %51
  %add.ptr.i61 = getelementptr i8, ptr %49, i32 %mul.i60
  %type_color1.i.i62 = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i61, i32 0, i32 3
  %54 = ptrtoint ptr %type_color1.i.i62 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type_color1.i.i62, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i.i63 = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i61, i32 0, i32 1
  %56 = ptrtoint ptr %q_number6.i.i63 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %q_number6.i.i63, align 2
  %58 = and i16 %57, -253
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #12
  %60 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i61, align 2
  %62 = and i16 %61, -241
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #12
  %last_color.i64 = getelementptr i8, ptr %1, i32 13240
  %vdev.i65 = getelementptr i8, ptr %1, i32 13188
  %desc_count.i66 = getelementptr i8, ptr %1, i32 13228
  br label %while.cond.i75

while.cond.i75:                                   ; preds = %if.end13.i92.while.cond.i75_crit_edge, %if.then
  %q_number.0.i67 = phi i16 [ %59, %if.then ], [ %87, %if.end13.i92.while.cond.i75_crit_edge ]
  %completed_index.0.i68 = phi i16 [ %63, %if.then ], [ %91, %if.end13.i92.while.cond.i75_crit_edge ]
  %type.0.in.i69 = phi i8 [ %55, %if.then ], [ %83, %if.end13.i92.while.cond.i75_crit_edge ]
  %cq_desc.0.i70 = phi ptr [ %add.ptr.i61, %if.then ], [ %add.ptr20.i87, %if.end13.i92.while.cond.i75_crit_edge ]
  %work_done.0.i71 = phi i32 [ 0, %if.then ], [ %inc21.i90, %if.end13.i92.while.cond.i75_crit_edge ]
  %color.0.i72 = lshr i8 %type.0.in.i69, 7
  %conv.i73 = zext i8 %color.0.i72 to i32
  %64 = ptrtoint ptr %last_color.i64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %last_color.i64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv.i73)
  %cmp.not.i74 = icmp eq i32 %65, %conv.i73
  br i1 %cmp.not.i74, label %while.cond.i75.if.end_crit_edge, label %while.body.i79

while.cond.i75.if.end_crit_edge:                  ; preds = %while.cond.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i79:                                   ; preds = %while.cond.i75
  %type.0.i76 = and i8 %type.0.in.i69, 15
  %66 = ptrtoint ptr %vdev.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdev.i65, align 4
  %call.i77 = tail call fastcc i32 @enic_rq_service(ptr noundef %67, ptr noundef %cq_desc.0.i70, i8 noundef zeroext %type.0.i76, i16 noundef zeroext %q_number.0.i67, i16 noundef zeroext %completed_index.0.i68, ptr noundef null) #12, !callees !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i82, label %while.body.i79.if.end_crit_edge

while.body.i79.if.end_crit_edge:                  ; preds = %while.body.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i82:                                       ; preds = %while.body.i79
  %68 = ptrtoint ptr %to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %to_clean.i59, align 4
  %inc.i80 = add i32 %69, 1
  store i32 %inc.i80, ptr %to_clean.i59, align 4
  %70 = ptrtoint ptr %desc_count.i66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_count.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i80, i32 %71)
  %cmp6.i81 = icmp eq i32 %inc.i80, %71
  br i1 %cmp6.i81, label %if.then8.i85, label %if.end.i82.if.end13.i92_crit_edge

if.end.i82.if.end13.i92_crit_edge:                ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i92

if.then8.i85:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %to_clean.i59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %to_clean.i59, align 4
  %73 = ptrtoint ptr %last_color.i64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_color.i64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool11.not.i83 = icmp eq i32 %74, 0
  %cond.i84 = zext i1 %tobool11.not.i83 to i32
  %75 = ptrtoint ptr %last_color.i64 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cond.i84, ptr %last_color.i64, align 8
  br label %if.end13.i92

if.end13.i92:                                     ; preds = %if.then8.i85, %if.end.i82.if.end13.i92_crit_edge
  %76 = ptrtoint ptr %ring.i57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring.i57, align 4
  %78 = ptrtoint ptr %desc_size.i58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %desc_size.i58, align 4
  %80 = ptrtoint ptr %to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %to_clean.i59, align 4
  %mul19.i86 = mul i32 %81, %79
  %add.ptr20.i87 = getelementptr i8, ptr %77, i32 %mul19.i86
  %type_color1.i1.i88 = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i87, i32 0, i32 3
  %82 = ptrtoint ptr %type_color1.i1.i88 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %type_color1.i1.i88, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i2.i89 = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i87, i32 0, i32 1
  %84 = ptrtoint ptr %q_number6.i2.i89 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %q_number6.i2.i89, align 2
  %86 = and i16 %85, -253
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #12
  %88 = ptrtoint ptr %add.ptr20.i87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr20.i87, align 2
  %90 = and i16 %89, -241
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #12
  %inc21.i90 = add nuw nsw i32 %work_done.0.i71, 1
  %exitcond.not.i91 = icmp eq i32 %inc21.i90, %budget
  br i1 %exitcond.not.i91, label %if.end13.i92.if.end_crit_edge, label %if.end13.i92.while.cond.i75_crit_edge

if.end13.i92.while.cond.i75_crit_edge:            ; preds = %if.end13.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i75

if.end13.i92.if.end_crit_edge:                    ; preds = %if.end13.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.end13.i92.if.end_crit_edge, %while.body.i79.if.end_crit_edge, %while.cond.i75.if.end_crit_edge, %vnic_cq_service.exit.if.end_crit_edge
  %rq_work_done.0 = phi i32 [ 0, %vnic_cq_service.exit.if.end_crit_edge ], [ %work_done.0.i71, %while.cond.i75.if.end_crit_edge ], [ %budget, %if.end13.i92.if.end_crit_edge ], [ %work_done.0.i71, %while.body.i79.if.end_crit_edge ]
  %add = add i32 %rq_work_done.0, %work_done.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp8.not = icmp eq i32 %add, 0
  br i1 %cmp8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %add, 65535
  %ctrl.i = getelementptr i8, ptr %1, i32 12936
  %92 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctrl.i, align 4
  %int_credit_return4.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %93, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %94 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i, i32 %94) #12, !srcloc !236
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %rq = getelementptr i8, ptr %1, i32 6656
  %call14 = tail call fastcc i32 @vnic_rq_fill(ptr noundef %rq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  %spec.select = select i1 %tobool.not, i32 %rq_work_done.0, i32 %budget
  %use_adaptive_rx_coalesce = getelementptr i8, ptr %1, i32 3568
  %95 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool17.not = icmp eq i32 %96, 0
  br i1 %tobool17.not, label %if.end12.if.end21_crit_edge, label %if.then18

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @enic_calc_int_moderation(ptr noundef %add.ptr.i, ptr noundef %rq)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end12.if.end21_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp22 = icmp ult i32 %spec.select, %budget
  br i1 %cmp22, label %land.lhs.true, label %if.end21.if.end34_crit_edge

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end21
  %call23 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #12
  br i1 %call23, label %if.then24, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then24:                                        ; preds = %land.lhs.true
  %97 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool27.not = icmp eq i32 %98, 0
  br i1 %tobool27.not, label %if.then24.if.end31_crit_edge, label %if.then28

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then28:                                        ; preds = %if.then24
  %99 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rq, align 4
  %tobe_rx_coal_timeval.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %100, i32 9
  %101 = ptrtoint ptr %tobe_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tobe_rx_coal_timeval.i, align 4
  %cur_rx_coal_timeval.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %100, i32 8
  %103 = ptrtoint ptr %cur_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cur_rx_coal_timeval.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.not.i95 = icmp eq i32 %102, %104
  br i1 %cmp.not.i95, label %if.then28.if.end31_crit_edge, label %if.then.i

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %interrupt_offset.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %100, i32 6
  %105 = ptrtoint ptr %interrupt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %interrupt_offset.i.i, align 4
  %arrayidx6.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %106
  tail call void @vnic_intr_coalescing_timer_set(ptr noundef %arrayidx6.i, i32 noundef %102) #12
  %107 = ptrtoint ptr %tobe_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tobe_rx_coal_timeval.i, align 4
  %109 = ptrtoint ptr %cur_rx_coal_timeval.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %cur_rx_coal_timeval.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then.i, %if.then28.if.end31_crit_edge, %if.then24.if.end31_crit_edge
  %ctrl.i97 = getelementptr i8, ptr %1, i32 12936
  %110 = ptrtoint ptr %ctrl.i97 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctrl.i97, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %111, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #12, !srcloc !236
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %land.lhs.true.if.end34_crit_edge, %if.end21.if.end34_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_poll_msix_rq(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %napi1 = getelementptr i8, ptr %1, i32 9272
  %sub.ptr.lhs.cast = ptrtoint ptr %napi to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %napi1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 224
  %interrupt_offset.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %sub.ptr.div, i32 6
  %2 = ptrtoint ptr %interrupt_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interrupt_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp = icmp sgt i32 %budget, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %arrayidx5 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %sub.ptr.div
  %ring.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 3
  %4 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring.i, align 4
  %desc_size.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_size.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 4
  %8 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_clean.i, align 4
  %mul.i = mul i32 %9, %7
  %add.ptr.i61 = getelementptr i8, ptr %5, i32 %mul.i
  %type_color1.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i61, i32 0, i32 3
  %10 = ptrtoint ptr %type_color1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type_color1.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i61, i32 0, i32 1
  %12 = ptrtoint ptr %q_number6.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %q_number6.i.i, align 2
  %14 = and i16 %13, -253
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %16 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i61, align 2
  %18 = and i16 %17, -241
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %last_color.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 5
  %vdev.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 1
  %desc_count.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx5, i32 0, i32 3, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %if.then
  %q_number.0.i = phi i16 [ %15, %if.then ], [ %43, %if.end13.i.while.cond.i_crit_edge ]
  %completed_index.0.i = phi i16 [ %19, %if.then ], [ %47, %if.end13.i.while.cond.i_crit_edge ]
  %type.0.in.i = phi i8 [ %11, %if.then ], [ %39, %if.end13.i.while.cond.i_crit_edge ]
  %cq_desc.0.i = phi ptr [ %add.ptr.i61, %if.then ], [ %add.ptr20.i, %if.end13.i.while.cond.i_crit_edge ]
  %work_done.0.i = phi i32 [ 0, %if.then ], [ %inc21.i, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.i = lshr i8 %type.0.in.i, 7
  %conv.i = zext i8 %color.0.i to i32
  %20 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %21, %conv.i
  br i1 %cmp.not.i, label %while.cond.i.if.end_crit_edge, label %while.body.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %type.0.i = and i8 %type.0.in.i, 15
  %22 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call fastcc i32 @enic_rq_service(ptr noundef %23, ptr noundef %cq_desc.0.i, i8 noundef zeroext %type.0.i, i16 noundef zeroext %q_number.0.i, i16 noundef zeroext %completed_index.0.i, ptr noundef null) #12, !callees !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %24 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %to_clean.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %to_clean.i, align 4
  %26 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %27)
  %cmp6.i = icmp eq i32 %inc.i, %27
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %to_clean.i, align 4
  %29 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11.not.i = icmp eq i32 %30, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %31 = ptrtoint ptr %last_color.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i, ptr %last_color.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %32 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring.i, align 4
  %34 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_size.i, align 4
  %36 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %to_clean.i, align 4
  %mul19.i = mul i32 %37, %35
  %add.ptr20.i = getelementptr i8, ptr %33, i32 %mul19.i
  %type_color1.i1.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 3
  %38 = ptrtoint ptr %type_color1.i1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type_color1.i1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i2.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 1
  %40 = ptrtoint ptr %q_number6.i2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %q_number6.i2.i, align 2
  %42 = and i16 %41, -253
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  %44 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr20.i, align 2
  %46 = and i16 %45, -241
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #12
  %inc21.i = add nuw nsw i32 %work_done.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %budget
  br i1 %exitcond.not.i, label %if.end13.i.if.end_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.end13.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge
  %work_done.0 = phi i32 [ %work_done.0.i, %while.body.i.if.end_crit_edge ], [ %budget, %if.end13.i.if.end_crit_edge ], [ %work_done.0.i, %while.cond.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0)
  %cmp7.not = icmp eq i32 %work_done.0, 0
  br i1 %cmp7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %3
  %and.i = and i32 %work_done.0, 65535
  %ctrl.i = getelementptr inbounds %struct.vnic_intr, ptr %arrayidx10, i32 0, i32 2
  %48 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl.i, align 4
  %int_credit_return4.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %49, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %50 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i, i32 %50) #12, !srcloc !236
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %work_done.067 = phi i32 [ %work_done.0, %if.then8 ], [ 0, %if.end.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  %arrayidx13 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 33, i32 %sub.ptr.div
  %call14 = tail call fastcc i32 @vnic_rq_fill(ptr noundef %arrayidx13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  %spec.select = select i1 %tobool.not, i32 %work_done.067, i32 %budget
  %use_adaptive_rx_coalesce = getelementptr i8, ptr %1, i32 3568
  %51 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool17.not = icmp eq i32 %52, 0
  br i1 %tobool17.not, label %if.end11.if.end21_crit_edge, label %if.then18

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @enic_calc_int_moderation(ptr noundef %add.ptr.i, ptr noundef %arrayidx13)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end11.if.end21_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp22 = icmp ult i32 %spec.select, %budget
  br i1 %cmp22, label %land.lhs.true, label %if.end21.if.end34_crit_edge

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end21
  %call23 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #12
  br i1 %call23, label %if.then24, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then24:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool27.not = icmp eq i32 %54, 0
  br i1 %tobool27.not, label %if.then24.if.end31_crit_edge, label %if.then28

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then28:                                        ; preds = %if.then24
  %55 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx13, align 4
  %tobe_rx_coal_timeval.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %56, i32 9
  %57 = ptrtoint ptr %tobe_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tobe_rx_coal_timeval.i, align 4
  %cur_rx_coal_timeval.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %56, i32 8
  %59 = ptrtoint ptr %cur_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_rx_coal_timeval.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.not.i62 = icmp eq i32 %58, %60
  br i1 %cmp.not.i62, label %if.then28.if.end31_crit_edge, label %if.then.i

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %interrupt_offset.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %56, i32 6
  %61 = ptrtoint ptr %interrupt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %interrupt_offset.i.i, align 4
  %arrayidx6.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %62
  tail call void @vnic_intr_coalescing_timer_set(ptr noundef %arrayidx6.i, i32 noundef %58) #12
  %63 = ptrtoint ptr %tobe_rx_coal_timeval.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tobe_rx_coal_timeval.i, align 4
  %65 = ptrtoint ptr %cur_rx_coal_timeval.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cur_rx_coal_timeval.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then.i, %if.then28.if.end31_crit_edge, %if.then24.if.end31_crit_edge
  %arrayidx33 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %3
  %ctrl.i64 = getelementptr inbounds %struct.vnic_intr, ptr %arrayidx33, i32 0, i32 2
  %66 = ptrtoint ptr %ctrl.i64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctrl.i64, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %67, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #12, !srcloc !236
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %land.lhs.true.if.end34_crit_edge, %if.end21.if.end34_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_poll_msix_wq(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %napi1 = getelementptr i8, ptr %1, i32 9272
  %sub.ptr.lhs.cast = ptrtoint ptr %napi to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %napi1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 224
  %rq_count = getelementptr i8, ptr %1, i32 9248
  %2 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_count, align 32
  %sub = sub i32 %sub.ptr.div, %3
  %arrayidx3 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 27, i32 %sub
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %add.i = add i32 %5, %3
  %interrupt_offset.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %add.i, i32 6
  %6 = ptrtoint ptr %interrupt_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interrupt_offset.i, align 4
  %arrayidx7 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %add.i
  %ring.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 3
  %8 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring.i, align 4
  %desc_size.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_size.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 4
  %12 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %to_clean.i, align 4
  %mul.i = mul i32 %13, %11
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 %mul.i
  %type_color1.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i34, i32 0, i32 3
  %14 = ptrtoint ptr %type_color1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type_color1.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i34, i32 0, i32 1
  %16 = ptrtoint ptr %q_number6.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %q_number6.i.i, align 2
  %18 = and i16 %17, -253
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %20 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i34, align 2
  %22 = and i16 %21, -241
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #12
  %last_color.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 5
  %vdev.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 1
  %desc_count.i = getelementptr inbounds %struct.vnic_cq, ptr %arrayidx7, i32 0, i32 3, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %entry
  %q_number.0.i = phi i16 [ %19, %entry ], [ %47, %if.end13.i.while.cond.i_crit_edge ]
  %completed_index.0.i = phi i16 [ %23, %entry ], [ %51, %if.end13.i.while.cond.i_crit_edge ]
  %type.0.in.i = phi i8 [ %15, %entry ], [ %43, %if.end13.i.while.cond.i_crit_edge ]
  %cq_desc.0.i = phi ptr [ %add.ptr.i34, %entry ], [ %add.ptr20.i, %if.end13.i.while.cond.i_crit_edge ]
  %work_done.0.i = phi i32 [ 0, %entry ], [ %inc21.i, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.i = lshr i8 %type.0.in.i, 7
  %conv.i = zext i8 %color.0.i to i32
  %24 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %25, %conv.i
  br i1 %cmp.not.i, label %while.cond.i.vnic_cq_service.exit_crit_edge, label %while.body.i

while.cond.i.vnic_cq_service.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

while.body.i:                                     ; preds = %while.cond.i
  %type.0.i = and i8 %type.0.in.i, 15
  %26 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call fastcc i32 @enic_wq_service(ptr noundef %27, ptr noundef %cq_desc.0.i, i8 noundef zeroext %type.0.i, i16 noundef zeroext %q_number.0.i, i16 noundef zeroext %completed_index.0.i, ptr noundef null) #12, !callees !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.vnic_cq_service.exit_crit_edge

while.body.i.vnic_cq_service.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

if.end.i:                                         ; preds = %while.body.i
  %28 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %to_clean.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %to_clean.i, align 4
  %30 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %31)
  %cmp6.i = icmp eq i32 %inc.i, %31
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %to_clean.i, align 4
  %33 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_color.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool11.not.i = icmp eq i32 %34, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %35 = ptrtoint ptr %last_color.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i, ptr %last_color.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %36 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring.i, align 4
  %38 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc_size.i, align 4
  %40 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %to_clean.i, align 4
  %mul19.i = mul i32 %41, %39
  %add.ptr20.i = getelementptr i8, ptr %37, i32 %mul19.i
  %type_color1.i1.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 3
  %42 = ptrtoint ptr %type_color1.i1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type_color1.i1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %q_number6.i2.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 1
  %44 = ptrtoint ptr %q_number6.i2.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %q_number6.i2.i, align 2
  %46 = and i16 %45, -253
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #12
  %48 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr20.i, align 2
  %50 = and i16 %49, -241
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #12
  %inc21.i = add nuw nsw i32 %work_done.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond.not.i, label %if.end13.i.vnic_cq_service.exit_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end13.i.vnic_cq_service.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_cq_service.exit

vnic_cq_service.exit:                             ; preds = %if.end13.i.vnic_cq_service.exit_crit_edge, %while.body.i.vnic_cq_service.exit_crit_edge, %while.cond.i.vnic_cq_service.exit_crit_edge
  %work_done.1.i = phi i32 [ %work_done.0.i, %while.body.i.vnic_cq_service.exit_crit_edge ], [ 256, %if.end13.i.vnic_cq_service.exit_crit_edge ], [ %work_done.0.i, %while.cond.i.vnic_cq_service.exit_crit_edge ]
  %arrayidx10 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %7
  %and.i = and i32 %work_done.1.i, 65535
  %or3.i = or i32 %and.i, 131072
  %ctrl.i = getelementptr inbounds %struct.vnic_intr, ptr %arrayidx10, i32 0, i32 2
  %52 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl.i, align 4
  %int_credit_return4.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %53, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i, i32 %54) #12, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.1.i)
  %tobool.not = icmp eq i32 %work_done.1.i, 0
  br i1 %tobool.not, label %if.then, label %vnic_cq_service.exit.cleanup_crit_edge

vnic_cq_service.exit.cleanup_crit_edge:           ; preds = %vnic_cq_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %vnic_cq_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #12
  %55 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl.i, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %56, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #12, !srcloc !236
  br label %cleanup

cleanup:                                          ; preds = %if.then, %vnic_cq_service.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %budget, %vnic_cq_service.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_free_affinity_hint(ptr nocapture noundef readonly %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %0 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %rq_count.i.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %wq_count.i.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 128
  %call.i.peel = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.peel)
  %cond = icmp eq i32 %call.i.peel, 3
  br i1 %cond, label %sw.bb2.i.peel, label %for.body.lr.ph.lor.lhs.false.peel_crit_edge

for.body.lr.ph.lor.lhs.false.peel_crit_edge:      ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel

sw.bb2.i.peel:                                    ; preds = %for.body.lr.ph
  %4 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_count.i.i, align 32
  %6 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i.peel = sub i32 0, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i.i.peel)
  %cmp4.i.peel = icmp eq i32 %7, %add.i.i.peel
  br i1 %cmp4.i.peel, label %sw.bb2.i.peel.for.inc.peel_crit_edge, label %sw.bb2.i.peel.lor.lhs.false.peel_crit_edge

sw.bb2.i.peel.lor.lhs.false.peel_crit_edge:       ; preds = %sw.bb2.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel

sw.bb2.i.peel.for.inc.peel_crit_edge:             ; preds = %sw.bb2.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel

lor.lhs.false.peel:                               ; preds = %sw.bb2.i.peel.lor.lhs.false.peel_crit_edge, %for.body.lr.ph.lor.lhs.false.peel_crit_edge
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev.i, align 128
  %call.i10.peel = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i10.peel)
  %cond68 = icmp eq i32 %call.i10.peel, 3
  br i1 %cond68, label %sw.bb2.i17.peel, label %lor.lhs.false.peel.if.end.peel_crit_edge

lor.lhs.false.peel.if.end.peel_crit_edge:         ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel

sw.bb2.i17.peel:                                  ; preds = %lor.lhs.false.peel
  %10 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_count.i.i, align 32
  %12 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i15.peel = add i32 %11, 1
  %add1.i.i.peel = sub i32 0, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i15.peel, i32 %add1.i.i.peel)
  %cmp4.i16.peel = icmp eq i32 %add.i.i15.peel, %add1.i.i.peel
  br i1 %cmp4.i16.peel, label %sw.bb2.i17.peel.for.inc.peel_crit_edge, label %sw.bb2.i17.peel.if.end.peel_crit_edge

sw.bb2.i17.peel.if.end.peel_crit_edge:            ; preds = %sw.bb2.i17.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel

sw.bb2.i17.peel.for.inc.peel_crit_edge:           ; preds = %sw.bb2.i17.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel

if.end.peel:                                      ; preds = %sw.bb2.i17.peel.if.end.peel_crit_edge, %lor.lhs.false.peel.if.end.peel_crit_edge
  %affinity_mask.peel = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %affinity_mask.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %affinity_mask.peel, align 4
  tail call void @free_cpumask_var(ptr noundef %15) #12
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end.peel, %sw.bb2.i17.peel.for.inc.peel_crit_edge, %sw.bb2.i.peel.for.inc.peel_crit_edge
  %16 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.peel = icmp ugt i32 %17, 1
  br i1 %cmp.peel, label %for.body.peel.next, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.peel.next:                               ; preds = %for.inc.peel
  %18 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdev.i, align 128
  %call.i.peel27 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %19) #12
  %20 = zext i32 %call.i.peel27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call.i.peel27, label %for.body.peel.next.lor.lhs.false.peel33_crit_edge [
    i32 1, label %for.body.peel.next.for.inc.peel43_crit_edge
    i32 3, label %sw.bb2.i.peel28
  ]

for.body.peel.next.for.inc.peel43_crit_edge:      ; preds = %for.body.peel.next
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel43

for.body.peel.next.lor.lhs.false.peel33_crit_edge: ; preds = %for.body.peel.next
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel33

sw.bb2.i.peel28:                                  ; preds = %for.body.peel.next
  %21 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_count.i.i, align 32
  %23 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i.peel29 = add i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i.i.peel29)
  %cmp4.i.peel30 = icmp eq i32 %add.i.i.peel29, 1
  br i1 %cmp4.i.peel30, label %sw.bb2.i.peel28.for.inc.peel43_crit_edge, label %sw.bb2.i.peel28.lor.lhs.false.peel33_crit_edge

sw.bb2.i.peel28.lor.lhs.false.peel33_crit_edge:   ; preds = %sw.bb2.i.peel28
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel33

sw.bb2.i.peel28.for.inc.peel43_crit_edge:         ; preds = %sw.bb2.i.peel28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel43

lor.lhs.false.peel33:                             ; preds = %sw.bb2.i.peel28.lor.lhs.false.peel33_crit_edge, %for.body.peel.next.lor.lhs.false.peel33_crit_edge
  %25 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdev.i, align 128
  %call.i10.peel34 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i10.peel34)
  %cond72 = icmp eq i32 %call.i10.peel34, 3
  br i1 %cond72, label %sw.bb2.i17.peel35, label %lor.lhs.false.peel33.if.end.peel41_crit_edge

lor.lhs.false.peel33.if.end.peel41_crit_edge:     ; preds = %lor.lhs.false.peel33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel41

sw.bb2.i17.peel35:                                ; preds = %lor.lhs.false.peel33
  %27 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_count.i.i, align 32
  %29 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i15.peel36 = add i32 %28, 1
  %add1.i.i.peel37 = add i32 %add.i.i15.peel36, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add1.i.i.peel37)
  %cmp4.i16.peel38 = icmp eq i32 %add1.i.i.peel37, 1
  br i1 %cmp4.i16.peel38, label %sw.bb2.i17.peel35.for.inc.peel43_crit_edge, label %sw.bb2.i17.peel35.if.end.peel41_crit_edge

sw.bb2.i17.peel35.if.end.peel41_crit_edge:        ; preds = %sw.bb2.i17.peel35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel41

sw.bb2.i17.peel35.for.inc.peel43_crit_edge:       ; preds = %sw.bb2.i17.peel35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel43

if.end.peel41:                                    ; preds = %sw.bb2.i17.peel35.if.end.peel41_crit_edge, %lor.lhs.false.peel33.if.end.peel41_crit_edge
  %affinity_mask.peel42 = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 1, i32 4
  %31 = ptrtoint ptr %affinity_mask.peel42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %affinity_mask.peel42, align 4
  tail call void @free_cpumask_var(ptr noundef %32) #12
  br label %for.inc.peel43

for.inc.peel43:                                   ; preds = %if.end.peel41, %sw.bb2.i17.peel35.for.inc.peel43_crit_edge, %sw.bb2.i.peel28.for.inc.peel43_crit_edge, %for.body.peel.next.for.inc.peel43_crit_edge
  %33 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.peel45 = icmp ugt i32 %34, 2
  br i1 %cmp.peel45, label %for.body.peel.next25, label %for.inc.peel43.for.end_crit_edge

for.inc.peel43.for.end_crit_edge:                 ; preds = %for.inc.peel43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.peel.next25:                             ; preds = %for.inc.peel43
  %35 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vdev.i, align 128
  %call.i.peel48 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.peel48)
  %cond69 = icmp eq i32 %call.i.peel48, 3
  br i1 %cond69, label %sw.bb2.i.peel49, label %for.body.peel.next25.lor.lhs.false.peel54_crit_edge

for.body.peel.next25.lor.lhs.false.peel54_crit_edge: ; preds = %for.body.peel.next25
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel54

sw.bb2.i.peel49:                                  ; preds = %for.body.peel.next25
  %37 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_count.i.i, align 32
  %39 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i.peel50 = add i32 %40, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i.peel50)
  %cmp4.i.peel51 = icmp eq i32 %add.i.i.peel50, 2
  br i1 %cmp4.i.peel51, label %sw.bb2.i.peel49.for.inc.peel64_crit_edge, label %sw.bb2.i.peel49.lor.lhs.false.peel54_crit_edge

sw.bb2.i.peel49.lor.lhs.false.peel54_crit_edge:   ; preds = %sw.bb2.i.peel49
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.peel54

sw.bb2.i.peel49.for.inc.peel64_crit_edge:         ; preds = %sw.bb2.i.peel49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel64

lor.lhs.false.peel54:                             ; preds = %sw.bb2.i.peel49.lor.lhs.false.peel54_crit_edge, %for.body.peel.next25.lor.lhs.false.peel54_crit_edge
  %41 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdev.i, align 128
  %call.i10.peel55 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %42) #12
  %43 = zext i32 %call.i10.peel55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call.i10.peel55, label %lor.lhs.false.peel54.if.end.peel62_crit_edge [
    i32 1, label %lor.lhs.false.peel54.for.inc.peel64_crit_edge
    i32 3, label %sw.bb2.i17.peel56
  ]

lor.lhs.false.peel54.for.inc.peel64_crit_edge:    ; preds = %lor.lhs.false.peel54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel64

lor.lhs.false.peel54.if.end.peel62_crit_edge:     ; preds = %lor.lhs.false.peel54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel62

sw.bb2.i17.peel56:                                ; preds = %lor.lhs.false.peel54
  %44 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rq_count.i.i, align 32
  %46 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i15.peel57 = add i32 %45, 1
  %add1.i.i.peel58 = add i32 %add.i.i15.peel57, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add1.i.i.peel58)
  %cmp4.i16.peel59 = icmp eq i32 %add1.i.i.peel58, 2
  br i1 %cmp4.i16.peel59, label %sw.bb2.i17.peel56.for.inc.peel64_crit_edge, label %sw.bb2.i17.peel56.if.end.peel62_crit_edge

sw.bb2.i17.peel56.if.end.peel62_crit_edge:        ; preds = %sw.bb2.i17.peel56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.peel62

sw.bb2.i17.peel56.for.inc.peel64_crit_edge:       ; preds = %sw.bb2.i17.peel56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel64

if.end.peel62:                                    ; preds = %sw.bb2.i17.peel56.if.end.peel62_crit_edge, %lor.lhs.false.peel54.if.end.peel62_crit_edge
  %affinity_mask.peel63 = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 2, i32 4
  %48 = ptrtoint ptr %affinity_mask.peel63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %affinity_mask.peel63, align 4
  tail call void @free_cpumask_var(ptr noundef %49) #12
  br label %for.inc.peel64

for.inc.peel64:                                   ; preds = %if.end.peel62, %sw.bb2.i17.peel56.for.inc.peel64_crit_edge, %lor.lhs.false.peel54.for.inc.peel64_crit_edge, %sw.bb2.i.peel49.for.inc.peel64_crit_edge
  %50 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.peel66 = icmp ugt i32 %51, 3
  br i1 %cmp.peel66, label %for.inc.peel64.for.body_crit_edge, label %for.inc.peel64.for.end_crit_edge

for.inc.peel64.for.end_crit_edge:                 ; preds = %for.inc.peel64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.peel64.for.body_crit_edge:                ; preds = %for.inc.peel64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel64.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 3, %for.inc.peel64.for.body_crit_edge ]
  %52 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vdev.i, align 128
  %call.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cond70 = icmp eq i32 %call.i, 3
  br i1 %cond70, label %sw.bb2.i, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

sw.bb2.i:                                         ; preds = %for.body
  %54 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rq_count.i.i, align 32
  %56 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i = add i32 %57, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %i.022)
  %cmp4.i = icmp eq i32 %add.i.i, %i.022
  br i1 %cmp4.i, label %sw.bb2.i.for.inc_crit_edge, label %sw.bb2.i.lor.lhs.false_crit_edge

sw.bb2.i.lor.lhs.false_crit_edge:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

sw.bb2.i.for.inc_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %sw.bb2.i.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %58 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdev.i, align 128
  %call.i10 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i10)
  %cond71 = icmp eq i32 %call.i10, 3
  br i1 %cond71, label %sw.bb2.i17, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb2.i17:                                       ; preds = %lor.lhs.false
  %60 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rq_count.i.i, align 32
  %62 = ptrtoint ptr %wq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wq_count.i.i, align 32
  %add.i.i15 = add i32 %61, 1
  %add1.i.i = add i32 %add.i.i15, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %i.022)
  %cmp4.i16 = icmp eq i32 %add1.i.i, %i.022
  br i1 %cmp4.i16, label %sw.bb2.i17.for.inc_crit_edge, label %sw.bb2.i17.if.end_crit_edge

sw.bb2.i17.if.end_crit_edge:                      ; preds = %sw.bb2.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb2.i17.for.inc_crit_edge:                     ; preds = %sw.bb2.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %sw.bb2.i17.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %affinity_mask = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 %i.022, i32 4
  %64 = ptrtoint ptr %affinity_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %affinity_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %65) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %sw.bb2.i17.for.inc_crit_edge, %sw.bb2.i.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %66 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %intr_count, align 8
  %cmp = icmp ult i32 %inc, %67
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !237

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel64.for.end_crit_edge, %for.inc.peel43.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_free_vnic_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_set_intr_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_capable_rss_hash_type(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_set_rss_cpu(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_set_nic_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enic_wq_service(ptr noundef %vdev, ptr nocapture noundef readnone %cq_desc, i8 noundef zeroext %type, i16 noundef zeroext %q_number, i16 noundef zeroext %completed_index, ptr nocapture noundef readnone %opaque) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vnic_dev_priv(ptr noundef %vdev) #12
  %idxprom = zext i16 %q_number to i32
  %arrayidx = getelementptr %struct.enic, ptr %call, i32 0, i32 28, i32 %idxprom
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #12
  %to_clean.i = getelementptr %struct.enic, ptr %call, i32 0, i32 27, i32 %idxprom, i32 6
  %0 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to_clean.i, align 4
  %vdev.i.i.i = getelementptr %struct.enic, ptr %call, i32 0, i32 27, i32 %idxprom, i32 1
  %desc_avail.i = getelementptr %struct.enic, ptr %call, i32 0, i32 27, i32 %idxprom, i32 3, i32 9
  %conv.i = zext i16 %completed_index to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %enic_wq_free_buf.exit.i.while.cond.i_crit_edge, %entry
  %buf.0.i = phi ptr [ %1, %entry ], [ %15, %enic_wq_free_buf.exit.i.while.cond.i_crit_edge ]
  %2 = ptrtoint ptr %vdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i.i.i, align 4
  %call.i.i.i = tail call ptr @vnic_dev_priv(ptr noundef %3) #12
  %pdev1.i.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i.i.i, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_addr3.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_addr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr3.i.i.i, align 4
  %len4.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %len4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len4.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i.i, i32 noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 0) #12
  %os_buf.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %os_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %os_buf.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i.i.i, label %while.cond.i.enic_wq_free_buf.exit.i_crit_edge, label %if.then6.i.i.i

while.cond.i.enic_wq_free_buf.exit.i_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_wq_free_buf.exit.i

if.then6.i.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #12
  br label %enic_wq_free_buf.exit.i

enic_wq_free_buf.exit.i:                          ; preds = %if.then6.i.i.i, %while.cond.i.enic_wq_free_buf.exit.i_crit_edge
  %12 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_avail.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %desc_avail.i, align 4
  %14 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.0.i, align 8
  %16 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %to_clean.i, align 4
  %index.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 8
  %cmp.i = icmp eq i32 %18, %conv.i
  br i1 %cmp.i, label %vnic_wq_service.exit, label %enic_wq_free_buf.exit.i.while.cond.i_crit_edge

enic_wq_free_buf.exit.i.while.cond.i_crit_edge:   ; preds = %enic_wq_free_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

vnic_wq_service.exit:                             ; preds = %enic_wq_free_buf.exit.i
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %22, i32 %idxprom, i32 13
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %inc.i)
  %cmp = icmp ugt i32 %inc.i, 21
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %vnic_wq_service.exit.if.end_crit_edge

vnic_wq_service.exit.if.end_crit_edge:            ; preds = %vnic_wq_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %vnic_wq_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %22, i32 %idxprom
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %vnic_wq_service.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enic_rq_service(ptr noundef %vdev, ptr nocapture noundef readonly %cq_desc, i8 noundef zeroext %type, i16 noundef zeroext %q_number, i16 noundef zeroext %completed_index, ptr nocapture noundef readnone %opaque) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vnic_dev_priv(ptr noundef %vdev) #12
  %idxprom = zext i16 %q_number to i32
  %arrayidx = getelementptr %struct.enic, ptr %call, i32 0, i32 33, i32 %idxprom
  %to_clean.i = getelementptr %struct.enic, ptr %call, i32 0, i32 33, i32 %idxprom, i32 6
  %0 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to_clean.i, align 4
  %conv.i = zext i16 %completed_index to i32
  %vdev.i.i = getelementptr %struct.enic, ptr %call, i32 0, i32 33, i32 %idxprom, i32 1
  %type_color1.i.i.i.i = getelementptr inbounds %struct.cq_desc, ptr %cq_desc, i32 0, i32 3
  %q_number6.i.i.i.i = getelementptr inbounds %struct.cq_desc, ptr %cq_desc, i32 0, i32 1
  %bytes_written_flags3.i.i.i = getelementptr inbounds %struct.cq_enet_rq_desc, ptr %cq_desc, i32 0, i32 3
  %rss_hash28.i.i.i = getelementptr inbounds %struct.cq_enet_rq_desc, ptr %cq_desc, i32 0, i32 2
  %vlan.i.i.i = getelementptr inbounds %struct.cq_enet_rq_desc, ptr %cq_desc, i32 0, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.cq_enet_rq_desc, ptr %cq_desc, i32 0, i32 6
  %desc_avail.i = getelementptr %struct.enic, ptr %call, i32 0, i32 33, i32 %idxprom, i32 3, i32 9
  %index.i2 = getelementptr inbounds %struct.vnic_rq_buf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i3 = icmp eq i32 %3, %conv.i
  %4 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev.i.i, align 4
  %call.i.i4 = tail call ptr @vnic_dev_priv(ptr noundef %5) #12
  br i1 %cmp.not.i3, label %entry.if.end.i.i_crit_edge, label %entry.enic_rq_indicate_buf.exit.i_crit_edge

entry.enic_rq_indicate_buf.exit.i_crit_edge:      ; preds = %entry
  br label %enic_rq_indicate_buf.exit.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %enic_rq_indicate_buf.exit.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %buf.0.i.lcssa = phi ptr [ %1, %entry.if.end.i.i_crit_edge ], [ %123, %enic_rq_indicate_buf.exit.i.if.end.i.i_crit_edge ]
  %call.i.i.lcssa = phi ptr [ %call.i.i4, %entry.if.end.i.i_crit_edge ], [ %call.i.i, %enic_rq_indicate_buf.exit.i.if.end.i.i_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %.lcssa = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %call.i.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %7)
  %.lcssa1 = load ptr, ptr %call.i.i.lcssa, align 128
  %os_buf.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 2
  %8 = ptrtoint ptr %os_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %os_buf.i.i, align 8
  %10 = ptrtoint ptr %type_color1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type_color1.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %12 = and i8 %11, 15
  %13 = ptrtoint ptr %q_number6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %q_number6.i.i.i.i, align 2
  %15 = and i16 %14, -253
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #12
  %17 = ptrtoint ptr %cq_desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cq_desc, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %20 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %21 = ptrtoint ptr %bytes_written_flags3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bytes_written_flags3.i.i.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #12
  %24 = lshr i16 %20, 10
  %25 = trunc i16 %24 to i4
  %26 = ptrtoint ptr %rss_hash28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rss_hash28.i.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %and30.i.i.i = and i16 %23, 16383
  %29 = ptrtoint ptr %vlan.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan.i.i.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #12
  %32 = and i16 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool42.not.i.i.i = icmp eq i16 %32, 0
  %33 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %.pr.i = load i8, ptr %flags.i.i.i, align 2
  %34 = and i8 %.pr.i, 1
  %35 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool4.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool4.not.i.i, label %if.end19.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr.i)
  %tobool6.not.i.i = icmp sgt i8 %.pr.i, -1
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.then5.i.i.if.end17.i.i_crit_edge

if.then5.i.i.if.end17.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i

if.then7.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and30.i.i.i)
  %cmp.not.i.i = icmp eq i16 %and30.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.then13.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rq_bad_fcs.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 37
  %36 = ptrtoint ptr %rq_bad_fcs.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rq_bad_fcs.i.i, align 16
  %inc.i.i = add i64 %37, 1
  store i64 %inc.i.i, ptr %rq_bad_fcs.i.i, align 16
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rq_truncated_pkts.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 36
  %38 = ptrtoint ptr %rq_truncated_pkts.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rq_truncated_pkts.i.i, align 8
  %inc14.i.i = add i64 %39, 1
  store i64 %inc14.i.i, ptr %rq_truncated_pkts.i.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.then9.i.i, %if.then5.i.i.if.end17.i.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 1
  %40 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %dma_addr.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 1
  %42 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_addr.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 4
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %43, i32 noundef %45, i32 noundef 2, i32 noundef 0) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #12
  %46 = ptrtoint ptr %os_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %os_buf.i.i, align 8
  br label %vnic_rq_service.exit

if.end19.i.i:                                     ; preds = %if.end.i.i
  %47 = and i16 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool21.not.i.i = icmp eq i16 %47, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and30.i.i.i)
  %cmp23.not.i.i = icmp eq i16 %and30.i.i.i, 0
  %or.cond.i.i = select i1 %tobool21.not.i.i, i1 true, i1 %cmp23.not.i.i
  br i1 %or.cond.i.i, label %if.else115.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end19.i.i
  %conv.i.i.i = zext i16 %and30.i.i.i to i32
  %rx_copybreak.i.i.i = getelementptr i8, ptr %.lcssa1, i32 18796
  %48 = ptrtoint ptr %rx_copybreak.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_copybreak.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ult i32 %49, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.then25.i.i.if.then27.i.i_crit_edge, label %if.end.i.i.i

if.then25.i.i.if.then27.i.i_crit_edge:            ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i.i

if.end.i.i.i:                                     ; preds = %if.then25.i.i
  %add.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i, 2
  %call.i.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %.lcssa1, i32 noundef %add.i.i.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.if.then27.i.i_crit_edge, label %enic_rxcopybreak.exit.i.i

if.end.i.i.i.if.then27.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i.i

enic_rxcopybreak.exit.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %51, i32 2
  store ptr %add.ptr.i.i.i.i.i.i, ptr %data.i.i.i.i.i.i, align 4
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %53, i32 2
  store ptr %add.ptr1.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  %pdev.i.i.i = getelementptr i8, ptr %.lcssa1, i32 2308
  %54 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %dma_addr.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 1
  %56 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_addr.i.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i, i32 noundef %57, i32 noundef %conv.i.i.i, i32 noundef 2) #12
  %58 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %data7.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %60 = ptrtoint ptr %data7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data7.i.i.i, align 4
  %62 = call ptr @memcpy(ptr %59, ptr %61, i32 %conv.i.i.i)
  br label %if.end33.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i.i.if.then27.i.i_crit_edge, %if.then25.i.i.if.then27.i.i_crit_edge
  %63 = ptrtoint ptr %os_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %os_buf.i.i, align 8
  %pdev29.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 1
  %64 = ptrtoint ptr %pdev29.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev29.i.i, align 4
  %dev30.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %dma_addr31.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 1
  %66 = ptrtoint ptr %dma_addr31.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_addr31.i.i, align 4
  %len32.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 4
  %68 = ptrtoint ptr %len32.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len32.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev30.i.i, i32 noundef %67, i32 noundef %69, i32 noundef 2, i32 noundef 0) #12
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then27.i.i, %enic_rxcopybreak.exit.i.i
  %skb.0216.i.i = phi ptr [ %9, %if.then27.i.i ], [ %call.i.i.i.i.i, %enic_rxcopybreak.exit.i.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 19
  %70 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i.i) #12, !srcloc !239
  %call35.i.i = tail call ptr @skb_put(ptr noundef %skb.0216.i.i, i32 noundef %conv.i.i.i) #12
  %call36.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0216.i.i, ptr noundef %.lcssa1) #12
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 18
  %72 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %call36.i.i, ptr %protocol.i.i, align 8
  %add.i.i.i = add nuw nsw i16 %16, 1
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 10
  %73 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add.i.i.i, ptr %queue_mapping.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %.lcssa1, i32 0, i32 23
  %74 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %75, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool37.not.i.i = icmp ne i64 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not.i.i = icmp ne i32 %27, 0
  %or.cond217.i.i = select i1 %tobool37.not.i.i, i1 %tobool39.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp42.i.i = icmp eq i8 %12, 3
  %or.cond218.i.i = select i1 %or.cond217.i.i, i1 %cmp42.i.i, i1 false
  br i1 %or.cond218.i.i, label %if.then44.i.i, label %if.end33.i.i.if.end47.i.i_crit_edge

if.end33.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i.i

if.then44.i.i:                                    ; preds = %if.end33.i.i
  %76 = zext i4 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.117)
  switch i4 %25, label %if.then44.i.i.if.end47.i.i_crit_edge [
    i4 2, label %if.then44.i.i.sw.bb.i.i_crit_edge
    i4 4, label %if.then44.i.i.sw.bb.i.i_crit_edge20
    i4 6, label %if.then44.i.i.sw.bb.i.i_crit_edge21
    i4 1, label %if.then44.i.i.sw.bb46.i.i_crit_edge
    i4 3, label %if.then44.i.i.sw.bb46.i.i_crit_edge22
    i4 5, label %if.then44.i.i.sw.bb46.i.i_crit_edge23
  ]

if.then44.i.i.sw.bb46.i.i_crit_edge23:            ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46.i.i

if.then44.i.i.sw.bb46.i.i_crit_edge22:            ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46.i.i

if.then44.i.i.sw.bb46.i.i_crit_edge:              ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46.i.i

if.then44.i.i.sw.bb.i.i_crit_edge21:              ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then44.i.i.sw.bb.i.i_crit_edge20:              ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then44.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then44.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i.i

sw.bb.i.i:                                        ; preds = %if.then44.i.i.sw.bb.i.i_crit_edge, %if.then44.i.i.sw.bb.i.i_crit_edge20, %if.then44.i.i.sw.bb.i.i_crit_edge21
  %l4_hash.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15
  %77 = ptrtoint ptr %l4_hash.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i.i.i.i = load i16, ptr %l4_hash.i.i.i.i, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  %bf.set.i.i.i.i = or i16 %bf.clear.i.i.i.i, 128
  store i16 %bf.set.i.i.i.i, ptr %l4_hash.i.i.i.i, align 8
  br label %if.end47.sink.split.i.i

sw.bb46.i.i:                                      ; preds = %if.then44.i.i.sw.bb46.i.i_crit_edge, %if.then44.i.i.sw.bb46.i.i_crit_edge22, %if.then44.i.i.sw.bb46.i.i_crit_edge23
  %l4_hash.i.i183.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15
  %78 = ptrtoint ptr %l4_hash.i.i183.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i.i184.i.i = load i16, ptr %l4_hash.i.i183.i.i, align 8
  %bf.clear.i.i185.i.i = and i16 %bf.load.i.i184.i.i, -193
  store i16 %bf.clear.i.i185.i.i, ptr %l4_hash.i.i183.i.i, align 8
  br label %if.end47.sink.split.i.i

if.end47.sink.split.i.i:                          ; preds = %sw.bb46.i.i, %sw.bb.i.i
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 8
  %79 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %28, ptr %hash10.i.i.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.end47.sink.split.i.i, %if.then44.i.i.if.end47.i.i_crit_edge, %if.end33.i.i.if.end47.i.i_crit_edge
  %vxlan.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 35
  %80 = ptrtoint ptr %vxlan.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vxlan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool48.not.i.i = icmp eq i16 %81, 0
  br i1 %tobool48.not.i.i, label %if.end47.i.i.if.end72.i.i_crit_edge, label %if.then49.i.i

if.end47.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i.i

if.then49.i.i:                                    ; preds = %if.end47.i.i
  %patch_level.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 35, i32 1
  %82 = ptrtoint ptr %patch_level.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %patch_level.i.i, align 2
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %83, label %if.then49.i.i.if.end72.i.i_crit_edge [
    i8 0, label %sw.bb52.i.i
    i8 2, label %sw.bb57.i.i
  ]

if.then49.i.i.if.end72.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i.i

sw.bb52.i.i:                                      ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.i3.i = icmp ne i8 %34, 0
  %not.tobool42.not.i.i.i = xor i1 %tobool42.not.i.i.i, true
  %tobool55.i.i = select i1 %not.tobool42.not.i.i.i, i1 %tobool55.i3.i, i1 false
  %spec.select.i.i = select i1 %tobool42.not.i.i.i, i1 true, i1 %tobool55.i.i
  %85 = zext i16 %32 to i32
  %86 = shl nuw nsw i32 %85, 15
  br label %if.end72.i.i

sw.bb57.i.i:                                      ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp59.i.i = icmp ne i8 %12, 7
  %and62.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  %or.cond220.i.i = select i1 %cmp59.i.i, i1 true, i1 %tobool63.not.i.i
  br i1 %or.cond220.i.i, label %sw.bb57.i.i.if.end72.i.i_crit_edge, label %if.then64.i.i

sw.bb57.i.i.if.end72.i.i_crit_edge:               ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i.i

if.then64.i.i:                                    ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = and i32 %28, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %87)
  %88 = icmp eq i32 %87, 6
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.then64.i.i, %sw.bb57.i.i.if.end72.i.i_crit_edge, %sw.bb52.i.i, %if.then49.i.i.if.end72.i.i_crit_edge, %if.end47.i.i.if.end72.i.i_crit_edge
  %outer_csum_ok.0.shrunk.i.i = phi i1 [ true, %if.then49.i.i.if.end72.i.i_crit_edge ], [ %88, %if.then64.i.i ], [ true, %sw.bb57.i.i.if.end72.i.i_crit_edge ], [ true, %if.end47.i.i.if.end72.i.i_crit_edge ], [ %spec.select.i.i, %sw.bb52.i.i ]
  %encap.0.off0.i.i = phi i32 [ 0, %if.then49.i.i.if.end72.i.i_crit_edge ], [ 268435456, %if.then64.i.i ], [ 0, %sw.bb57.i.i.if.end72.i.i_crit_edge ], [ 0, %if.end47.i.i.if.end72.i.i_crit_edge ], [ %86, %sw.bb52.i.i ]
  %89 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %features.i.i, align 16
  %and74.i.i = and i64 %90, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and74.i.i)
  %tobool75.not.i.i = icmp ne i64 %and74.i.i, 0
  %91 = and i16 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool77.not.i.i = icmp eq i16 %91, 0
  %or.cond221.i.i = select i1 %tobool75.not.i.i, i1 %tobool77.not.i.i, i1 false
  br i1 %or.cond221.i.i, label %land.lhs.true78.i.i, label %if.end72.i.i.if.end95.i.i_crit_edge

if.end72.i.i.if.end95.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i.i

land.lhs.true78.i.i:                              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool80.not.i.i = icmp eq i8 %34, 0
  %outer_csum_ok.0.shrunk.not.i.i = xor i1 %outer_csum_ok.0.shrunk.i.i, true
  %brmerge.i.i = select i1 %tobool80.not.i.i, i1 true, i1 %outer_csum_ok.0.shrunk.not.i.i
  %92 = and i8 %.pr.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %93 = icmp eq i8 %92, 0
  %or.cond224.i.i = select i1 %brmerge.i.i, i1 true, i1 %93
  br i1 %or.cond224.i.i, label %land.lhs.true78.i.i.if.end95.i.i_crit_edge, label %if.then89.i.i

land.lhs.true78.i.i.if.end95.i.i_crit_edge:       ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i.i

if.then89.i.i:                                    ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15
  %94 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 3
  %95 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %bf.load92.i.i = load i32, ptr %csum_level.i.i, align 2
  %bf.clear93.i.i = and i32 %bf.load92.i.i, -805306369
  %bf.set94.i.i = or i32 %bf.clear93.i.i, %encap.0.off0.i.i
  store i32 %bf.set94.i.i, ptr %csum_level.i.i, align 2
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.then89.i.i, %land.lhs.true78.i.i.if.end95.i.i_crit_edge, %if.end72.i.i.if.end95.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool96.not.i.i = icmp sgt i16 %23, -1
  br i1 %tobool96.not.i.i, label %if.end95.i.i.if.end98.i.i_crit_edge, label %if.then97.i.i

if.end95.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i.i

if.then97.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 9
  %96 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 10
  %97 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %31, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 3
  %98 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then97.i.i, %if.end95.i.i.if.end98.i.i_crit_edge
  %99 = getelementptr inbounds %struct.sk_buff, ptr %skb.0216.i.i, i32 0, i32 15, i32 0, i32 11
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %101)
  %cmp.i187.i.i = icmp ult i32 %101, 5
  br i1 %cmp.i187.i.i, label %if.then.i188.i.i, label %if.end98.i.i.skb_mark_napi_id.exit.i.i_crit_edge

if.end98.i.i.skb_mark_napi_id.exit.i.i_crit_edge: ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_mark_napi_id.exit.i.i

if.then.i188.i.i:                                 ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx, align 4
  %napi_id.i.i.i = getelementptr %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 38, i32 %103, i32 15
  %104 = ptrtoint ptr %napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %napi_id.i.i.i, align 8
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %99, align 4
  br label %skb_mark_napi_id.exit.i.i

skb_mark_napi_id.exit.i.i:                        ; preds = %if.then.i188.i.i, %if.end98.i.i.skb_mark_napi_id.exit.i.i_crit_edge
  %107 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %features.i.i, align 16
  %and102.i.i = and i64 %108, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and102.i.i)
  %tobool103.not.i.i = icmp eq i64 %and102.i.i, 0
  br i1 %tobool103.not.i.i, label %if.then104.i.i, label %if.else106.i.i

if.then104.i.i:                                   ; preds = %skb_mark_napi_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call105.i.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0216.i.i) #12
  br label %if.end110.i.i

if.else106.i.i:                                   ; preds = %skb_mark_napi_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom.i.i = zext i16 %16 to i32
  %arrayidx108.i.i = getelementptr %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 38, i32 %idxprom.i.i
  %call109.i.i = tail call i32 @napi_gro_receive(ptr noundef %arrayidx108.i.i, ptr noundef %skb.0216.i.i) #12
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.else106.i.i, %if.then104.i.i
  %use_adaptive_rx_coalesce.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 19, i32 3
  %109 = ptrtoint ptr %use_adaptive_rx_coalesce.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %use_adaptive_rx_coalesce.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool111.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool111.not.i.i, label %if.end110.i.i.vnic_rq_service.exit_crit_edge, label %if.then112.i.i

if.end110.i.i.vnic_rq_service.exit_crit_edge:     ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnic_rq_service.exit

if.then112.i.i:                                   ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_size_counter.i.i = getelementptr %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 44, i32 %.lcssa, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %and30.i.i.i)
  %cmp.i190.i.i = icmp ugt i16 %and30.i.i.i, 999
  %large_pkt_bytes_cnt.i.i.i = getelementptr %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 44, i32 %.lcssa, i32 7, i32 1
  %pkt_size.sink5.i.i.i = select i1 %cmp.i190.i.i, ptr %large_pkt_bytes_cnt.i.i.i, ptr %pkt_size_counter.i.i
  %111 = ptrtoint ptr %pkt_size.sink5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pkt_size.sink5.i.i.i, align 4
  %add1.i.i.i = add i32 %112, %conv.i.i.i
  store i32 %add1.i.i.i, ptr %pkt_size.sink5.i.i.i, align 4
  br label %vnic_rq_service.exit

if.else115.i.i:                                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev116.i.i = getelementptr inbounds %struct.enic, ptr %call.i.i.lcssa, i32 0, i32 1
  %113 = ptrtoint ptr %pdev116.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev116.i.i, align 4
  %dev117.i.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %dma_addr118.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 1
  %115 = ptrtoint ptr %dma_addr118.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_addr118.i.i, align 4
  %len119.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf.0.i.lcssa, i32 0, i32 4
  %117 = ptrtoint ptr %len119.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len119.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev117.i.i, i32 noundef %116, i32 noundef %118, i32 noundef 2, i32 noundef 0) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #12
  %119 = ptrtoint ptr %os_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %os_buf.i.i, align 8
  br label %vnic_rq_service.exit

enic_rq_indicate_buf.exit.i:                      ; preds = %enic_rq_indicate_buf.exit.i.enic_rq_indicate_buf.exit.i_crit_edge, %entry.enic_rq_indicate_buf.exit.i_crit_edge
  %buf.0.i5 = phi ptr [ %123, %enic_rq_indicate_buf.exit.i.enic_rq_indicate_buf.exit.i_crit_edge ], [ %1, %entry.enic_rq_indicate_buf.exit.i_crit_edge ]
  %120 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %desc_avail.i, align 4
  %inc.i = add i32 %121, 1
  store i32 %inc.i, ptr %desc_avail.i, align 4
  %122 = ptrtoint ptr %buf.0.i5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buf.0.i5, align 8
  %124 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %to_clean.i, align 4
  %index.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %123, i32 0, i32 5
  %125 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %index.i, align 4
  %cmp.not.i = icmp eq i32 %126, %conv.i
  %127 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vdev.i.i, align 4
  %call.i.i = tail call ptr @vnic_dev_priv(ptr noundef %128) #12
  br i1 %cmp.not.i, label %enic_rq_indicate_buf.exit.i.if.end.i.i_crit_edge, label %enic_rq_indicate_buf.exit.i.enic_rq_indicate_buf.exit.i_crit_edge

enic_rq_indicate_buf.exit.i.enic_rq_indicate_buf.exit.i_crit_edge: ; preds = %enic_rq_indicate_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_rq_indicate_buf.exit.i

enic_rq_indicate_buf.exit.i.if.end.i.i_crit_edge: ; preds = %enic_rq_indicate_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

vnic_rq_service.exit:                             ; preds = %if.else115.i.i, %if.then112.i.i, %if.end110.i.i.vnic_rq_service.exit_crit_edge, %if.end17.i.i
  %129 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %desc_avail.i, align 4
  %inc1.i = add i32 %130, 1
  store i32 %inc1.i, ptr %desc_avail.i, align 4
  %131 = ptrtoint ptr %buf.0.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf.0.i.lcssa, align 8
  %133 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %to_clean.i, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnic_rq_fill(ptr nocapture noundef %rq) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %desc_avail.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_avail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not3 = icmp eq i32 %1, 0
  br i1 %cmp.not3, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %vdev.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 1
  %to_use.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 5
  %ctrl.i.i.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %enic_rq_alloc_buf.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call ptr @vnic_dev_priv(ptr noundef %3) #12
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu.i, align 4
  %add.i = add i32 %7, 18
  %8 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %to_use.i, align 4
  %os_buf.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %os_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %os_buf.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %dma_addr3.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr3.i, align 4
  %len4.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len4.i, align 8
  %desc.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i.i.i, align 8
  %conv1.i.i = zext i32 %13 to i64
  %conv2.i.i = trunc i32 %15 to i16
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i) #12
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %17, align 8
  %20 = and i16 %conv2.i.i, 16383
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #12
  %length_type.i.i.i = getelementptr inbounds %struct.rq_enet_desc, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %length_type.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %length_type.i.i.i, align 8
  %23 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %to_use.i, align 4
  %os_buf1.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %os_buf1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %11, ptr %os_buf1.i.i.i, align 8
  %os_buf_index2.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %os_buf_index2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %os_buf_index2.i.i.i, align 4
  %dma_addr3.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %dma_addr3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %13, ptr %dma_addr3.i.i.i, align 4
  %len4.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %24, i32 0, i32 4
  %28 = ptrtoint ptr %len4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %15, ptr %len4.i.i.i, align 8
  %wr_id.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %24, i32 0, i32 7
  %29 = ptrtoint ptr %wr_id.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %wr_id.i.i.i, align 8
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 8
  store ptr %31, ptr %to_use.i, align 4
  %32 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc_avail.i, align 4
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %desc_avail.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i.i, align 4
  %and.i.i.i = and i32 %35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.then.i.enic_rq_alloc_buf.exit_crit_edge

if.then.i.enic_rq_alloc_buf.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_rq_alloc_buf.exit

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i.i, align 4
  %38 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl.i.i.i, align 4
  %posted_index.i.i.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %39, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index.i.i.i, i32 %40) #12, !srcloc !236
  br label %enic_rq_alloc_buf.exitthread-pre-split

if.end.i:                                         ; preds = %while.body
  %add.i.i.i = add i32 %7, 20
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef %add.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %44, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %pdev.i = getelementptr inbounds %struct.enic, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !232

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i38.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i38.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %50, %if.end.i.i.i ], [ %48, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %add.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %52, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %51, i32 %shr.i.i
  %and.i.i = and i32 %52, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.not.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.not.i.i, label %do.body.i.i, label %if.end15.i, !prof !241

do.body.i.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %call3.i.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.then14.i_crit_edge, label %do.end.i.i

do.body.i.i.if.then14.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 128
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %56) #15
  br label %if.then14.i

if.then14.i:                                      ; preds = %do.end.i.i, %do.body.i.i.if.then14.i_crit_edge
  %gen_stats.i.i = getelementptr inbounds %struct.enic, ptr %call.i, i32 0, i32 49
  %57 = ptrtoint ptr %gen_stats.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gen_stats.i.i, align 8
  %inc.i.i = add i64 %58, 1
  store i64 %inc.i.i, ptr %gen_stats.i.i, align 8
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #12
  br label %cleanup

if.end15.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %59 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %to_use.i, align 4
  %desc.i.i41.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %desc.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc.i.i41.i, align 8
  %conv1.i42.i = zext i32 %retval.0.i.i to i64
  %conv2.i43.i = trunc i32 %add.i to i16
  %63 = tail call i64 @llvm.bswap.i64(i64 %conv1.i42.i) #12
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %62, align 8
  %65 = and i16 %conv2.i43.i, 16383
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #12
  %length_type.i.i44.i = getelementptr inbounds %struct.rq_enet_desc, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %length_type.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %length_type.i.i44.i, align 8
  %68 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %to_use.i, align 4
  %os_buf1.i.i45.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %os_buf1.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i, ptr %os_buf1.i.i45.i, align 8
  %os_buf_index2.i.i46.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %os_buf_index2.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %os_buf_index2.i.i46.i, align 4
  %dma_addr3.i.i47.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %dma_addr3.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i.i, ptr %dma_addr3.i.i47.i, align 4
  %len4.i.i48.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %69, i32 0, i32 4
  %73 = ptrtoint ptr %len4.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i, ptr %len4.i.i48.i, align 8
  %wr_id.i.i49.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %69, i32 0, i32 7
  %74 = ptrtoint ptr %wr_id.i.i49.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %wr_id.i.i49.i, align 8
  %75 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %69, align 8
  store ptr %76, ptr %to_use.i, align 4
  %77 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %desc_avail.i, align 4
  %dec.i.i51.i = add i32 %78, -1
  store i32 %dec.i.i51.i, ptr %desc_avail.i, align 4
  %index.i.i52.i = getelementptr inbounds %struct.vnic_rq_buf, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %index.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i.i52.i, align 4
  %and.i.i53.i = and i32 %80, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53.i)
  %cmp.i.i54.i = icmp eq i32 %and.i.i53.i, 0
  br i1 %cmp.i.i54.i, label %do.body.i.i57.i, label %if.end15.i.enic_rq_alloc_buf.exit_crit_edge

if.end15.i.enic_rq_alloc_buf.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_rq_alloc_buf.exit

do.body.i.i57.i:                                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %index.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i.i52.i, align 4
  %83 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl.i.i.i, align 4
  %posted_index.i.i56.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %84, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index.i.i56.i, i32 %85) #12, !srcloc !236
  br label %enic_rq_alloc_buf.exitthread-pre-split

enic_rq_alloc_buf.exitthread-pre-split:           ; preds = %do.body.i.i57.i, %do.body.i.i.i
  %86 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr = load i32, ptr %desc_avail.i, align 4
  br label %enic_rq_alloc_buf.exit

enic_rq_alloc_buf.exit:                           ; preds = %enic_rq_alloc_buf.exitthread-pre-split, %if.end15.i.enic_rq_alloc_buf.exit_crit_edge, %if.then.i.enic_rq_alloc_buf.exit_crit_edge
  %87 = phi i32 [ %.pr, %enic_rq_alloc_buf.exitthread-pre-split ], [ %dec.i.i.i, %if.then.i.enic_rq_alloc_buf.exit_crit_edge ], [ %dec.i.i51.i, %if.end15.i.enic_rq_alloc_buf.exit_crit_edge ]
  %cmp.not = icmp eq i32 %87, 0
  br i1 %cmp.not, label %enic_rq_alloc_buf.exit.cleanup_crit_edge, label %enic_rq_alloc_buf.exit.while.body_crit_edge

enic_rq_alloc_buf.exit.while.body_crit_edge:      ; preds = %enic_rq_alloc_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

enic_rq_alloc_buf.exit.cleanup_crit_edge:         ; preds = %enic_rq_alloc_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %enic_rq_alloc_buf.exit.cleanup_crit_edge, %if.then14.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then14.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %enic_rq_alloc_buf.exit.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_calc_int_moderation(ptr nocapture noundef %enic, ptr nocapture noundef readonly %rq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_setting = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 19
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 4
  %pkt_size_counter2 = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %1, i32 7
  %call4 = tail call i64 @ktime_get() #12
  %prev_ts = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %1, i32 10
  %2 = ptrtoint ptr %prev_ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %prev_ts, align 8
  %sub.i = sub i64 %call4, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #17, !srcloc !242
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #17, !srcloc !243
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %cond213.i.i.i)
  %cmp = icmp ult i64 %cond213.i.i.i, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %prev_ts to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call4, ptr %prev_ts, align 8
  %large_pkt_bytes_cnt = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %1, i32 7, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %cond213.i.i.i)
  %cmp7 = icmp ugt i64 %cond213.i.i.i, 4294967295
  br i1 %cmp7, label %if.end.for.end_crit_edge, label %cond.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end:                                         ; preds = %if.end
  %8 = ptrtoint ptr %large_pkt_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %large_pkt_bytes_cnt, align 4
  %10 = ptrtoint ptr %pkt_size_counter2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pkt_size_counter2, align 4
  %add = add i32 %11, %9
  %shl = shl i32 %add, 3
  %conv = trunc i64 %cond213.i.i.i to i32
  %div = udiv i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %div)
  %cmp11 = icmp ult i32 %div, 4000
  br i1 %cmp11, label %cond.end.for.end_crit_edge, label %for.inc

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4400, i32 %div)
  %cmp11.1 = icmp ult i32 %div, 4400
  br i1 %cmp11.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5060, i32 %div)
  %cmp11.2 = icmp ult i32 %div, 5060
  br i1 %cmp11.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5230, i32 %div)
  %cmp11.3 = icmp ult i32 %div, 5230
  br i1 %cmp11.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5540, i32 %div)
  %cmp11.4 = icmp ult i32 %div, 5540
  br i1 %cmp11.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5820, i32 %div)
  %cmp11.5 = icmp ult i32 %div, 5820
  br i1 %cmp11.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6120, i32 %div)
  %cmp11.6 = icmp ult i32 %div, 6120
  br i1 %cmp11.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6435, i32 %div)
  %cmp11.7 = icmp ult i32 %div, 6435
  br i1 %cmp11.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6745, i32 %div)
  %cmp11.8 = icmp ult i32 %div, 6745
  br i1 %cmp11.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000, i32 %div)
  %cmp11.9 = icmp ult i32 %div, 7000
  %spec.select = select i1 %cmp11.9, i32 9, i32 10
  br label %for.end

for.end:                                          ; preds = %for.inc.8, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %index3.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %for.inc.8 ]
  %12 = ptrtoint ptr %pkt_size_counter2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkt_size_counter2, align 4
  %14 = ptrtoint ptr %large_pkt_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %large_pkt_bytes_cnt, align 4
  %shl17 = shl i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shl17)
  %cmp18 = icmp ugt i32 %13, %shl17
  %large_pkt_range_start = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 19, i32 1
  %cond23.in = select i1 %cmp18, ptr %rx_coalesce_setting, ptr %large_pkt_range_start
  %16 = ptrtoint ptr %cond23.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond23 = load i32, ptr %cond23.in, align 4
  %range_end = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 19, i32 2
  %17 = ptrtoint ptr %range_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %range_end, align 4
  %sub = sub i32 %18, %cond23
  %range_percent = getelementptr [11 x %struct.enic_intr_mod_table], ptr @mod_table, i32 0, i32 %index3.0.lcssa, i32 1
  %19 = ptrtoint ptr %range_percent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %range_percent, align 4
  %mul = mul i32 %sub, %20
  %div25 = udiv i32 %mul, 100
  %tobe_rx_coal_timeval = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %1, i32 9
  %21 = ptrtoint ptr %tobe_rx_coal_timeval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tobe_rx_coal_timeval, align 4
  %add26 = add i32 %22, %cond23
  %add27 = add i32 %add26, %div25
  %shr = lshr i32 %add27, 1
  store i32 %shr, ptr %tobe_rx_coal_timeval, align 4
  %23 = ptrtoint ptr %large_pkt_bytes_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %large_pkt_bytes_cnt, align 4
  %24 = ptrtoint ptr %pkt_size_counter2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pkt_size_counter2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vnic_dev_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_free_wq_buf(ptr nocapture noundef readonly %wq, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call ptr @vnic_dev_priv(ptr noundef %1) #12
  %pdev1 = getelementptr inbounds %struct.enic, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dma_addr3 = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr3, align 4
  %len4 = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #12
  %os_buf = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %os_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %os_buf, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %entry.if.end8_crit_edge, label %if.then6

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_intr_coalescing_timer_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_notify_check(ptr noundef %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev.i, align 128
  %call.i = tail call i32 @vnic_dev_msg_lvl(ptr noundef %1) #12
  %msg_enable1.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 11
  %2 = ptrtoint ptr %msg_enable1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp.not.i = icmp eq i32 %call.i, %3
  br i1 %cmp.not.i, label %entry.enic_msglvl_check.exit_crit_edge, label %if.then.i

entry.enic_msglvl_check.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_msglvl_check.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enic, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.85, i32 noundef %3, i32 noundef %call.i) #15
  %6 = ptrtoint ptr %msg_enable1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %msg_enable1.i, align 8
  br label %enic_msglvl_check.exit

enic_msglvl_check.exit:                           ; preds = %if.then.i, %entry.enic_msglvl_check.exit_crit_edge
  %7 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev.i, align 128
  %call.i4 = tail call i32 @vnic_dev_mtu(ptr noundef %8) #12
  %9 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enic, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %enic_msglvl_check.exit.enic_mtu_check.exit_crit_edge, label %land.lhs.true.i

enic_msglvl_check.exit.enic_mtu_check.exit_crit_edge: ; preds = %enic_msglvl_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_mtu_check.exit

land.lhs.true.i:                                  ; preds = %enic_msglvl_check.exit
  %port_mtu.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 18
  %11 = ptrtoint ptr %port_mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_mtu.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i4, i32 %12)
  %cmp.not.i5 = icmp eq i32 %call.i4, %12
  br i1 %cmp.not.i5, label %land.lhs.true.i.enic_mtu_check.exit_crit_edge, label %if.then.i6

land.lhs.true.i.enic_mtu_check.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_mtu_check.exit

if.then.i6:                                       ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %port_mtu.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i4, ptr %port_mtu.i, align 32
  %pdev.i.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %14 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device.i.i, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %17, label %if.else.i [
    i16 68, label %if.then.i6.if.then7.i_crit_edge
    i16 113, label %if.then.i6.if.then7.i_crit_edge12
  ]

if.then.i6.if.then7.i_crit_edge12:                ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then.i6.if.then7.i_crit_edge:                  ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i6.if.then7.i_crit_edge, %if.then.i6.if.then7.i_crit_edge12
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i4, i32 9000) #12
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 68) #12
  %mtu15.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %21 = ptrtoint ptr %mtu15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp16.not.i = icmp eq i32 %20, %22
  br i1 %cmp16.not.i, label %if.then7.i.enic_mtu_check.exit_crit_edge, label %if.then17.i

if.then7.i.enic_mtu_check.exit_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_mtu_check.exit

if.then17.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %change_mtu_work.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %change_mtu_work.i) #12
  br label %enic_mtu_check.exit

if.else.i:                                        ; preds = %if.then.i6
  %mtu19.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %24 = ptrtoint ptr %mtu19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i4, i32 %25)
  %cmp20.i = icmp ult i32 %call.i4, %25
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i.enic_mtu_check.exit_crit_edge

if.else.i.enic_mtu_check.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_mtu_check.exit

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.86, i32 noundef %25, i32 noundef %call.i4) #15
  br label %enic_mtu_check.exit

enic_mtu_check.exit:                              ; preds = %if.then21.i, %if.else.i.enic_mtu_check.exit_crit_edge, %if.then17.i, %if.then7.i.enic_mtu_check.exit_crit_edge, %land.lhs.true.i.enic_mtu_check.exit_crit_edge, %enic_msglvl_check.exit.enic_mtu_check.exit_crit_edge
  %26 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev.i, align 128
  %call.i8 = tail call i32 @vnic_dev_link_status(ptr noundef %27) #12
  %28 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enic, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i.i, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  %brmerge.i = select i1 %tobool.not.i9, i1 true, i1 %tobool.not.i.i
  br i1 %brmerge.i, label %if.else.i11, label %if.then.i10

if.then.i10:                                      ; preds = %enic_mtu_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.87) #15
  %33 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enic, align 128
  tail call void @netif_carrier_on(ptr noundef %34) #12
  br label %enic_link_check.exit

if.else.i11:                                      ; preds = %enic_mtu_check.exit
  %35 = select i1 %tobool.not.i9, i1 %tobool.not.i.i, i1 false
  br i1 %35, label %if.then8.i, label %if.else.i11.enic_link_check.exit_crit_edge

if.else.i11.enic_link_check.exit_crit_edge:       ; preds = %if.else.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_link_check.exit

if.then8.i:                                       ; preds = %if.else.i11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.88) #15
  %36 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enic, align 128
  tail call void @netif_carrier_off(ptr noundef %37) #12
  br label %enic_link_check.exit

enic_link_check.exit:                             ; preds = %if.then8.i, %if.else.i11.enic_link_check.exit_crit_edge, %if.then.i10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_msg_lvl(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_mtu(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_link_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_port_speed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %intr_count = getelementptr i8, ptr %netdev, i32 13144
  %0 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp172.not = icmp eq i32 %1, 0
  br i1 %cmp172.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0173 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %i.0173
  %ctrl.i = getelementptr inbounds %struct.vnic_intr, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 16777216) #12, !srcloc !236
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  %mask.i154 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %5, i32 0, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mask.i154) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %inc = add nuw i32 %i.0173, 1
  %7 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %vdev.i = getelementptr i8, ptr %netdev, i32 2432
  %9 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev.i, align 128
  %call.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %10) #12
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call.i, label %for.end.enic_synchronize_irqs.exit_crit_edge [
    i32 1, label %for.end.sw.bb.i_crit_edge
    i32 2, label %for.end.sw.bb.i_crit_edge210
    i32 3, label %for.cond.preheader.i
  ]

for.end.sw.bb.i_crit_edge210:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

for.end.sw.bb.i_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

for.end.enic_synchronize_irqs.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_synchronize_irqs.exit

for.cond.preheader.i:                             ; preds = %for.end
  %12 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i = icmp eq i32 %13, 0
  br i1 %cmp7.not.i, label %for.cond.preheader.i.enic_synchronize_irqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.enic_synchronize_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_synchronize_irqs.exit

sw.bb.i:                                          ; preds = %for.end.sw.bb.i_crit_edge, %for.end.sw.bb.i_crit_edge210
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %17) #12
  br label %enic_synchronize_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.08.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 8
  tail call void @synchronize_irq(i32 noundef %19) #12
  %inc.i = add nuw i32 %i.08.i, 1
  %20 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_count, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.enic_synchronize_irqs.exit_crit_edge

for.body.i.enic_synchronize_irqs.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_synchronize_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

enic_synchronize_irqs.exit:                       ; preds = %for.body.i.enic_synchronize_irqs.exit_crit_edge, %sw.bb.i, %for.cond.preheader.i.enic_synchronize_irqs.exit_crit_edge, %for.end.enic_synchronize_irqs.exit_crit_edge
  %notify_timer = getelementptr i8, ptr %netdev, i32 2436
  %call4 = tail call i32 @del_timer_sync(ptr noundef %notify_timer) #12
  tail call void @enic_rfs_flw_tbl_free(ptr noundef %add.ptr.i) #12
  %call5 = tail call i32 @enic_dev_disable(ptr noundef %add.ptr.i) #12
  %rq_count = getelementptr i8, ptr %netdev, i32 9248
  %22 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7174.not = icmp eq i32 %23, 0
  br i1 %cmp7174.not, label %enic_synchronize_irqs.exit.for.end12_crit_edge, label %enic_synchronize_irqs.exit.for.body8_crit_edge

enic_synchronize_irqs.exit.for.body8_crit_edge:   ; preds = %enic_synchronize_irqs.exit
  br label %for.body8

enic_synchronize_irqs.exit.for.end12_crit_edge:   ; preds = %enic_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %enic_synchronize_irqs.exit.for.body8_crit_edge
  %i.1175 = phi i32 [ %inc11, %for.body8.for.body8_crit_edge ], [ 0, %enic_synchronize_irqs.exit.for.body8_crit_edge ]
  %arrayidx9 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %i.1175
  tail call void @napi_disable(ptr noundef %arrayidx9) #12
  %inc11 = add nuw i32 %i.1175, 1
  %24 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rq_count, align 32
  %cmp7 = icmp ult i32 %inc11, %25
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end12_crit_edge

for.body8.for.end12_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.end12:                                        ; preds = %for.body8.for.end12_crit_edge, %enic_synchronize_irqs.exit.for.end12_crit_edge
  tail call void @netif_carrier_off(ptr noundef %netdev) #12
  %26 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev.i, align 128
  %call13 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 3
  br i1 %cmp14, label %for.cond15.preheader, label %for.end12.if.end_crit_edge

for.end12.if.end_crit_edge:                       ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond15.preheader:                             ; preds = %for.end12
  %wq_count = getelementptr i8, ptr %netdev, i32 6624
  %28 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16177.not = icmp eq i32 %29, 0
  br i1 %cmp16177.not, label %for.cond15.preheader.if.end_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.if.end_crit_edge:            ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.2178 = phi i32 [ %inc22, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %30 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_count, align 32
  %add.i = add i32 %31, %i.2178
  %arrayidx20 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %add.i
  tail call void @napi_disable(ptr noundef %arrayidx20) #12
  %inc22 = add nuw i32 %i.2178, 1
  %32 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wq_count, align 32
  %cmp16 = icmp ult i32 %inc22, %33
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.if.end_crit_edge

for.body17.if.end_crit_edge:                      ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

if.end:                                           ; preds = %for.body17.if.end_crit_edge, %for.cond15.preheader.if.end_crit_edge, %for.end12.if.end_crit_edge
  tail call fastcc void @local_bh_disable() #12
  %34 = tail call i32 @llvm.read_register.i32(metadata !218) #12
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %38 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp13.not.i = icmp eq i32 %39, 0
  br i1 %cmp13.not.i, label %if.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end.netif_tx_disable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i157

for.body.i157:                                    ; preds = %for.body.i157.for.body.i157_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i155, %for.body.i157.for.body.i157_crit_edge ]
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %41, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %41, i32 %i.014.i, i32 11
  %42 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %37, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %41, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %43 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i155 = add nuw i32 %i.014.i, 1
  %44 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i156 = icmp ult i32 %inc.i155, %45
  br i1 %cmp.i156, label %for.body.i157.for.body.i157_crit_edge, label %for.body.i157.netif_tx_disable.exit_crit_edge

for.body.i157.netif_tx_disable.exit_crit_edge:    ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i157.for.body.i157_crit_edge:            ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i157

netif_tx_disable.exit:                            ; preds = %for.body.i157.netif_tx_disable.exit_crit_edge, %if.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  %pdev.i158 = getelementptr i8, ptr %netdev, i32 2308
  %46 = ptrtoint ptr %pdev.i158 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i158, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %device.i, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %49, label %if.then27 [
    i16 68, label %netif_tx_disable.exit.if.end29_crit_edge
    i16 113, label %netif_tx_disable.exit.if.end29_crit_edge211
  ]

netif_tx_disable.exit.if.end29_crit_edge211:      ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

netif_tx_disable.exit.if.end29_crit_edge:         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 @enic_dev_del_station_addr(ptr noundef %add.ptr.i) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %netif_tx_disable.exit.if.end29_crit_edge, %netif_tx_disable.exit.if.end29_crit_edge211
  %wq_count31 = getelementptr i8, ptr %netdev, i32 6624
  %51 = ptrtoint ptr %wq_count31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wq_count31, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp32179.not = icmp eq i32 %52, 0
  br i1 %cmp32179.not, label %if.end29.for.cond42.preheader_crit_edge, label %if.end29.for.body33_crit_edge

if.end29.for.body33_crit_edge:                    ; preds = %if.end29
  br label %for.body33

if.end29.for.cond42.preheader_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond42.preheader

for.cond30:                                       ; preds = %for.body33
  %inc40 = add nuw i32 %i.3180, 1
  %53 = ptrtoint ptr %wq_count31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wq_count31, align 32
  %cmp32 = icmp ult i32 %inc40, %54
  br i1 %cmp32, label %for.cond30.for.body33_crit_edge, label %for.cond30.for.cond42.preheader_crit_edge

for.cond30.for.cond42.preheader_crit_edge:        ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond42.preheader

for.cond30.for.body33_crit_edge:                  ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.cond42.preheader:                             ; preds = %for.cond30.for.cond42.preheader_crit_edge, %if.end29.for.cond42.preheader_crit_edge
  %55 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp44182.not = icmp eq i32 %56, 0
  br i1 %cmp44182.not, label %for.cond42.preheader.for.end53_crit_edge, label %for.cond42.preheader.for.body45_crit_edge

for.cond42.preheader.for.body45_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body45

for.cond42.preheader.for.end53_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end53

for.body33:                                       ; preds = %for.cond30.for.body33_crit_edge, %if.end29.for.body33_crit_edge
  %i.3180 = phi i32 [ %inc40, %for.cond30.for.body33_crit_edge ], [ 0, %if.end29.for.body33_crit_edge ]
  %arrayidx34 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 27, i32 %i.3180
  %call35 = tail call i32 @vnic_wq_disable(ptr noundef %arrayidx34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond30, label %for.body33.cleanup_crit_edge

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond42:                                       ; preds = %for.body45
  %inc52 = add nuw i32 %i.4183, 1
  %57 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rq_count, align 32
  %cmp44 = icmp ult i32 %inc52, %58
  br i1 %cmp44, label %for.cond42.for.body45_crit_edge, label %for.cond42.for.end53_crit_edge

for.cond42.for.end53_crit_edge:                   ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end53

for.cond42.for.body45_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body45

for.body45:                                       ; preds = %for.cond42.for.body45_crit_edge, %for.cond42.preheader.for.body45_crit_edge
  %i.4183 = phi i32 [ %inc52, %for.cond42.for.body45_crit_edge ], [ 0, %for.cond42.preheader.for.body45_crit_edge ]
  %arrayidx46 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 33, i32 %i.4183
  %call47 = tail call i32 @vnic_rq_disable(ptr noundef %arrayidx46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.cond42, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end53:                                        ; preds = %for.cond42.for.end53_crit_edge, %for.cond42.preheader.for.end53_crit_edge
  %call54 = tail call i32 @enic_dev_notify_unset(ptr noundef %add.ptr.i) #12
  %59 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp4.not.i = icmp eq i32 %60, 0
  br i1 %cmp4.not.i, label %for.end53.enic_unset_affinity_hint.exit_crit_edge, label %for.end53.for.body.i168_crit_edge

for.end53.for.body.i168_crit_edge:                ; preds = %for.end53
  br label %for.body.i168

for.end53.enic_unset_affinity_hint.exit_crit_edge: ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_unset_affinity_hint.exit

for.body.i168:                                    ; preds = %for.body.i168.for.body.i168_crit_edge, %for.end53.for.body.i168_crit_edge
  %i.05.i = phi i32 [ %inc.i166, %for.body.i168.for.body.i168_crit_edge ], [ 0, %for.end53.for.body.i168_crit_edge ]
  %arrayidx.i165 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.05.i
  %61 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i165, align 8
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %62, ptr noundef null, i1 noundef zeroext false) #12
  %inc.i166 = add nuw i32 %i.05.i, 1
  %63 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %intr_count, align 8
  %cmp.i167 = icmp ult i32 %inc.i166, %64
  br i1 %cmp.i167, label %for.body.i168.for.body.i168_crit_edge, label %for.body.i168.enic_unset_affinity_hint.exit_crit_edge

for.body.i168.enic_unset_affinity_hint.exit_crit_edge: ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_unset_affinity_hint.exit

for.body.i168.for.body.i168_crit_edge:            ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i168

enic_unset_affinity_hint.exit:                    ; preds = %for.body.i168.enic_unset_affinity_hint.exit_crit_edge, %for.end53.enic_unset_affinity_hint.exit_crit_edge
  tail call fastcc void @enic_free_intr(ptr noundef %add.ptr.i)
  %65 = ptrtoint ptr %wq_count31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wq_count31, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp57184.not = icmp eq i32 %66, 0
  br i1 %cmp57184.not, label %enic_unset_affinity_hint.exit.for.cond64.preheader_crit_edge, label %enic_unset_affinity_hint.exit.for.body58_crit_edge

enic_unset_affinity_hint.exit.for.body58_crit_edge: ; preds = %enic_unset_affinity_hint.exit
  br label %for.body58

enic_unset_affinity_hint.exit.for.cond64.preheader_crit_edge: ; preds = %enic_unset_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.body58.for.cond64.preheader_crit_edge, %enic_unset_affinity_hint.exit.for.cond64.preheader_crit_edge
  %67 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp66186.not = icmp eq i32 %68, 0
  br i1 %cmp66186.not, label %for.cond64.preheader.for.cond73.preheader_crit_edge, label %for.cond64.preheader.for.body67_crit_edge

for.cond64.preheader.for.body67_crit_edge:        ; preds = %for.cond64.preheader
  br label %for.body67

for.cond64.preheader.for.cond73.preheader_crit_edge: ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond73.preheader

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %enic_unset_affinity_hint.exit.for.body58_crit_edge
  %i.5185 = phi i32 [ %inc62, %for.body58.for.body58_crit_edge ], [ 0, %enic_unset_affinity_hint.exit.for.body58_crit_edge ]
  %arrayidx60 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 27, i32 %i.5185
  tail call void @vnic_wq_clean(ptr noundef %arrayidx60, ptr noundef nonnull @enic_free_wq_buf) #12
  %inc62 = add nuw i32 %i.5185, 1
  %69 = ptrtoint ptr %wq_count31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wq_count31, align 32
  %cmp57 = icmp ult i32 %inc62, %70
  br i1 %cmp57, label %for.body58.for.body58_crit_edge, label %for.body58.for.cond64.preheader_crit_edge

for.body58.for.cond64.preheader_crit_edge:        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond64.preheader

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body58

for.cond73.preheader:                             ; preds = %for.body67.for.cond73.preheader_crit_edge, %for.cond64.preheader.for.cond73.preheader_crit_edge
  %cq_count = getelementptr i8, ptr %netdev, i32 14592
  %71 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cq_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp74188.not = icmp eq i32 %72, 0
  br i1 %cmp74188.not, label %for.cond73.preheader.for.cond80.preheader_crit_edge, label %for.cond73.preheader.for.body75_crit_edge

for.cond73.preheader.for.body75_crit_edge:        ; preds = %for.cond73.preheader
  br label %for.body75

for.cond73.preheader.for.cond80.preheader_crit_edge: ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond80.preheader

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond64.preheader.for.body67_crit_edge
  %i.6187 = phi i32 [ %inc71, %for.body67.for.body67_crit_edge ], [ 0, %for.cond64.preheader.for.body67_crit_edge ]
  %arrayidx69 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 33, i32 %i.6187
  tail call void @vnic_rq_clean(ptr noundef %arrayidx69, ptr noundef nonnull @enic_free_rq_buf) #12
  %inc71 = add nuw i32 %i.6187, 1
  %73 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rq_count, align 32
  %cmp66 = icmp ult i32 %inc71, %74
  br i1 %cmp66, label %for.body67.for.body67_crit_edge, label %for.body67.for.cond73.preheader_crit_edge

for.body67.for.cond73.preheader_crit_edge:        ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond73.preheader

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body67

for.cond80.preheader:                             ; preds = %for.body75.for.cond80.preheader_crit_edge, %for.cond73.preheader.for.cond80.preheader_crit_edge
  %75 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp82190.not = icmp eq i32 %76, 0
  br i1 %cmp82190.not, label %for.cond80.preheader.cleanup_crit_edge, label %for.cond80.preheader.for.body83_crit_edge

for.cond80.preheader.for.body83_crit_edge:        ; preds = %for.cond80.preheader
  br label %for.body83

for.cond80.preheader.cleanup_crit_edge:           ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond73.preheader.for.body75_crit_edge
  %i.7189 = phi i32 [ %inc78, %for.body75.for.body75_crit_edge ], [ 0, %for.cond73.preheader.for.body75_crit_edge ]
  %arrayidx76 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %i.7189
  tail call void @vnic_cq_clean(ptr noundef %arrayidx76) #12
  %inc78 = add nuw i32 %i.7189, 1
  %77 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cq_count, align 128
  %cmp74 = icmp ult i32 %inc78, %78
  br i1 %cmp74, label %for.body75.for.body75_crit_edge, label %for.body75.for.cond80.preheader_crit_edge

for.body75.for.cond80.preheader_crit_edge:        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond80.preheader

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %for.cond80.preheader.for.body83_crit_edge
  %i.8191 = phi i32 [ %inc87, %for.body83.for.body83_crit_edge ], [ 0, %for.cond80.preheader.for.body83_crit_edge ]
  %arrayidx85 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %i.8191
  tail call void @vnic_intr_clean(ptr noundef %arrayidx85) #12
  %inc87 = add nuw i32 %i.8191, 1
  %79 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %intr_count, align 8
  %cmp82 = icmp ult i32 %inc87, %80
  br i1 %cmp82, label %for.body83.for.body83_crit_edge, label %for.body83.cleanup_crit_edge

for.body83.cleanup_crit_edge:                     ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body83

cleanup:                                          ; preds = %for.body83.cleanup_crit_edge, %for.cond80.preheader.cleanup_crit_edge, %for.body45.cleanup_crit_edge, %for.body33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond80.preheader.cleanup_crit_edge ], [ 0, %for.body83.cleanup_crit_edge ], [ %call47, %for.body45.cleanup_crit_edge ], [ %call35, %for.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %vdev.i.i = getelementptr i8, ptr %netdev, i32 2432
  %2 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i.i, align 128
  %call.i.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.enic_set_rx_cpu_rmap.exit.i_crit_edge

entry.enic_set_rx_cpu_rmap.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_cpu_rmap.exit.i

if.then.i.i:                                      ; preds = %entry
  %rq_count.i.i = getelementptr i8, ptr %netdev, i32 9248
  %4 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_count.i.i, align 32
  %call.i.i.i = tail call ptr @alloc_cpu_rmap(i32 noundef %5, i32 noundef 3264) #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %rx_cpu_rmap.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 100
  %8 = ptrtoint ptr %rx_cpu_rmap.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %rx_cpu_rmap.i.i, align 4
  %9 = load ptr, ptr %add.ptr.i, align 128
  %rx_cpu_rmap3.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 100
  %10 = ptrtoint ptr %rx_cpu_rmap3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_cpu_rmap3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge, label %for.cond.preheader.i.i, !prof !241

if.then.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_cpu_rmap.exit.i

for.cond.preheader.i.i:                           ; preds = %if.then.i.i
  %12 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_count.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp933.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp933.not.i.i, label %for.cond.preheader.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_cpu_rmap.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.034.i.i, 1
  %14 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_count.i.i, align 32
  %cmp9.i.i = icmp ult i32 %inc.i.i, %15
  br i1 %cmp9.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge

for.cond.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_rx_cpu_rmap.exit.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %rx_cpu_rmap11.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 100
  %18 = ptrtoint ptr %rx_cpu_rmap11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_cpu_rmap11.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.034.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 8
  %call12.i.i = tail call i32 @irq_cpu_rmap_add(ptr noundef %19, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %for.cond.i.i, label %if.then20.i.i, !prof !232

if.then20.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %rx_cpu_rmap.i.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 100
  %24 = ptrtoint ptr %rx_cpu_rmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_cpu_rmap.i.i.i, align 4
  tail call void @free_irq_cpu_rmap(ptr noundef %25) #12
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %rx_cpu_rmap2.i.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 100
  %28 = ptrtoint ptr %rx_cpu_rmap2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rx_cpu_rmap2.i.i.i, align 4
  br label %enic_set_rx_cpu_rmap.exit.i

enic_set_rx_cpu_rmap.exit.i:                      ; preds = %if.then20.i.i, %for.cond.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge, %for.cond.preheader.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge, %if.then.i.i.enic_set_rx_cpu_rmap.exit.i_crit_edge, %entry.enic_set_rx_cpu_rmap.exit.i_crit_edge
  %29 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdev.i.i, align 128
  %call.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %30) #12
  %31 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call.i, label %enic_set_rx_cpu_rmap.exit.i.if.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %for.cond.preheader.i
  ]

enic_set_rx_cpu_rmap.exit.i.if.end_crit_edge:     ; preds = %enic_set_rx_cpu_rmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader.i:                             ; preds = %enic_set_rx_cpu_rmap.exit.i
  %rq_count.i = getelementptr i8, ptr %netdev, i32 9248
  %32 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_count.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp183.not.i = icmp eq i32 %33, 0
  br i1 %cmp183.not.i, label %for.cond.preheader.i.for.cond20.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond20.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader.i

sw.bb.i:                                          ; preds = %enic_set_rx_cpu_rmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq.i, align 4
  %call.i173.i = tail call i32 @request_threaded_irq(i32 noundef %37, ptr noundef nonnull @enic_isr_legacy, ptr noundef null, i32 noundef 128, ptr noundef %1, ptr noundef %1) #12
  br label %enic_request_intr.exit

sw.bb3.i:                                         ; preds = %enic_set_rx_cpu_rmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev4.i = getelementptr i8, ptr %netdev, i32 2308
  %38 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev4.i, align 4
  %irq5.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq5.i, align 4
  %call.i174.i = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @enic_isr_msi, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %add.ptr.i) #12
  br label %enic_request_intr.exit

for.cond20.preheader.i:                           ; preds = %for.body.i.for.cond20.preheader.i_crit_edge, %for.cond.preheader.i.for.cond20.preheader.i_crit_edge
  %wq_count.i = getelementptr i8, ptr %netdev, i32 6624
  %42 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wq_count.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp21185.not.i = icmp eq i32 %43, 0
  br i1 %cmp21185.not.i, label %for.cond20.preheader.i.for.end42.i_crit_edge, label %for.cond20.preheader.i.for.body22.i_crit_edge

for.cond20.preheader.i.for.body22.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body22.i

for.cond20.preheader.i.for.end42.i_crit_edge:     ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0184.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %interrupt_offset.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %i.0184.i, i32 6
  %44 = ptrtoint ptr %interrupt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %interrupt_offset.i.i, align 4
  %devname.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %45, i32 1
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devname.i, i32 noundef 24, ptr noundef nonnull @.str.93, ptr noundef %1, i32 noundef %i.0184.i) #12
  %isr.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %45, i32 2
  %46 = ptrtoint ptr %isr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @enic_isr_msix, ptr %isr.i, align 4
  %arrayidx17.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %i.0184.i
  %devid.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %45, i32 3
  %47 = ptrtoint ptr %devid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx17.i, ptr %devid.i, align 8
  %inc.i = add nuw i32 %i.0184.i, 1
  %48 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rq_count.i, align 32
  %cmp.i = icmp ult i32 %inc.i, %49
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond20.preheader.i_crit_edge

for.body.i.for.cond20.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.cond20.preheader.i.for.body22.i_crit_edge
  %i.1186.i = phi i32 [ %inc41.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.cond20.preheader.i.for.body22.i_crit_edge ]
  %50 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rq_count.i, align 32
  %add.i.i = add i32 %51, %i.1186.i
  %interrupt_offset.i176.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %add.i.i, i32 6
  %52 = ptrtoint ptr %interrupt_offset.i176.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %interrupt_offset.i176.i, align 4
  %devname27.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %53, i32 1
  %call31.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devname27.i, i32 noundef 24, ptr noundef nonnull @.str.94, ptr noundef %1, i32 noundef %i.1186.i) #12
  %isr34.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %53, i32 2
  %54 = ptrtoint ptr %isr34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @enic_isr_msix, ptr %isr34.i, align 4
  %arrayidx36.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %add.i.i
  %devid39.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %53, i32 3
  %55 = ptrtoint ptr %devid39.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx36.i, ptr %devid39.i, align 8
  %inc41.i = add nuw i32 %i.1186.i, 1
  %56 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wq_count.i, align 32
  %cmp21.i = icmp ult i32 %inc41.i, %57
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.for.end42.i_crit_edge

for.body22.i.for.end42.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42.i

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i

for.end42.i:                                      ; preds = %for.body22.i.for.end42.i_crit_edge, %for.cond20.preheader.i.for.end42.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond20.preheader.i.for.end42.i_crit_edge ], [ %57, %for.body22.i.for.end42.i_crit_edge ]
  %58 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rq_count.i, align 32
  %add.i178.i = add i32 %59, %.lcssa.i
  %devname46.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add.i178.i, i32 1
  %call50.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devname46.i, i32 noundef 24, ptr noundef nonnull @.str.95, ptr noundef %1) #12
  %isr53.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add.i178.i, i32 2
  %60 = ptrtoint ptr %isr53.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @enic_isr_msix_err, ptr %isr53.i, align 4
  %devid56.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add.i178.i, i32 3
  %61 = ptrtoint ptr %devid56.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %devid56.i, align 8
  %62 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rq_count.i, align 32
  %64 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wq_count.i, align 32
  %add.i181.i = add i32 %63, 1
  %add1.i.i = add i32 %add.i181.i, %65
  %devname60.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add1.i.i, i32 1
  %call64.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devname60.i, i32 noundef 24, ptr noundef nonnull @.str.96, ptr noundef %1) #12
  %isr67.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add1.i.i, i32 2
  %66 = ptrtoint ptr %isr67.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @enic_isr_msix_notify, ptr %isr67.i, align 4
  %devid70.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %add1.i.i, i32 3
  %67 = ptrtoint ptr %devid70.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %devid70.i, align 8
  %arrayidx75.i = getelementptr i8, ptr %netdev, i32 2760
  %68 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx75.i, align 8
  %arrayidx75.1.i = getelementptr i8, ptr %netdev, i32 2800
  %69 = ptrtoint ptr %arrayidx75.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx75.1.i, align 8
  %arrayidx75.2.i = getelementptr i8, ptr %netdev, i32 2840
  %70 = ptrtoint ptr %arrayidx75.2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx75.2.i, align 8
  %arrayidx75.3.i = getelementptr i8, ptr %netdev, i32 2880
  %71 = ptrtoint ptr %arrayidx75.3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx75.3.i, align 8
  %arrayidx75.4.i = getelementptr i8, ptr %netdev, i32 2920
  %72 = ptrtoint ptr %arrayidx75.4.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx75.4.i, align 8
  %arrayidx75.5.i = getelementptr i8, ptr %netdev, i32 2960
  %73 = ptrtoint ptr %arrayidx75.5.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx75.5.i, align 8
  %arrayidx75.6.i = getelementptr i8, ptr %netdev, i32 3000
  %74 = ptrtoint ptr %arrayidx75.6.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arrayidx75.6.i, align 8
  %arrayidx75.7.i = getelementptr i8, ptr %netdev, i32 3040
  %75 = ptrtoint ptr %arrayidx75.7.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx75.7.i, align 8
  %arrayidx75.8.i = getelementptr i8, ptr %netdev, i32 3080
  %76 = ptrtoint ptr %arrayidx75.8.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx75.8.i, align 8
  %arrayidx75.9.i = getelementptr i8, ptr %netdev, i32 3120
  %77 = ptrtoint ptr %arrayidx75.9.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx75.9.i, align 8
  %arrayidx75.10.i = getelementptr i8, ptr %netdev, i32 3160
  %78 = ptrtoint ptr %arrayidx75.10.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx75.10.i, align 8
  %arrayidx75.11.i = getelementptr i8, ptr %netdev, i32 3200
  %79 = ptrtoint ptr %arrayidx75.11.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx75.11.i, align 8
  %arrayidx75.12.i = getelementptr i8, ptr %netdev, i32 3240
  %80 = ptrtoint ptr %arrayidx75.12.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx75.12.i, align 8
  %arrayidx75.13.i = getelementptr i8, ptr %netdev, i32 3280
  %81 = ptrtoint ptr %arrayidx75.13.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx75.13.i, align 8
  %arrayidx75.14.i = getelementptr i8, ptr %netdev, i32 3320
  %82 = ptrtoint ptr %arrayidx75.14.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx75.14.i, align 8
  %arrayidx75.15.i = getelementptr i8, ptr %netdev, i32 3360
  %83 = ptrtoint ptr %arrayidx75.15.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx75.15.i, align 8
  %arrayidx75.16.i = getelementptr i8, ptr %netdev, i32 3400
  %84 = ptrtoint ptr %arrayidx75.16.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx75.16.i, align 8
  %arrayidx75.17.i = getelementptr i8, ptr %netdev, i32 3440
  %85 = ptrtoint ptr %arrayidx75.17.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx75.17.i, align 8
  %intr_count.i = getelementptr i8, ptr %netdev, i32 13144
  %86 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %intr_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp80190.not.i = icmp eq i32 %87, 0
  br i1 %cmp80190.not.i, label %for.end42.i.if.end_crit_edge, label %for.end42.i.for.body81.i_crit_edge

for.end42.i.for.body81.i_crit_edge:               ; preds = %for.end42.i
  br label %for.body81.i

for.end42.i.if.end_crit_edge:                     ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body81.i:                                     ; preds = %if.end.i.for.body81.i_crit_edge, %for.end42.i.for.body81.i_crit_edge
  %i.3191.i = phi i32 [ %inc98.i, %if.end.i.for.body81.i_crit_edge ], [ 0, %for.end42.i.for.body81.i_crit_edge ]
  %arrayidx82.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.3191.i
  %88 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx82.i, align 8
  %isr85.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.3191.i, i32 2
  %90 = ptrtoint ptr %isr85.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %isr85.i, align 4
  %devname88.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.3191.i, i32 1
  %devid92.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.3191.i, i32 3
  %92 = ptrtoint ptr %devid92.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %devid92.i, align 8
  %call.i182.i = tail call i32 @request_threaded_irq(i32 noundef %89, ptr noundef %91, ptr noundef null, i32 noundef 0, ptr noundef %devname88.i, ptr noundef %93) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.i)
  %tobool.not.i = icmp eq i32 %call.i182.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %enic_request_intr.exit.thread209

enic_request_intr.exit.thread209:                 ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @enic_free_intr(ptr noundef %add.ptr.i) #12
  br label %if.then

if.end.i:                                         ; preds = %for.body81.i
  %arrayidx84.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.3191.i
  %94 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %arrayidx84.i, align 8
  %inc98.i = add nuw i32 %i.3191.i, 1
  %95 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %intr_count.i, align 8
  %cmp80.i = icmp ult i32 %inc98.i, %96
  br i1 %cmp80.i, label %if.end.i.for.body81.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.for.body81.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body81.i

enic_request_intr.exit:                           ; preds = %sw.bb3.i, %sw.bb.i
  %err.1.i = phi i32 [ %call.i174.i, %sw.bb3.i ], [ %call.i173.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool.not, label %enic_request_intr.exit.if.end_crit_edge, label %enic_request_intr.exit.if.then_crit_edge

enic_request_intr.exit.if.then_crit_edge:         ; preds = %enic_request_intr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

enic_request_intr.exit.if.end_crit_edge:          ; preds = %enic_request_intr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %enic_request_intr.exit.if.then_crit_edge, %enic_request_intr.exit.thread209
  %err.1.i212 = phi i32 [ %call.i182.i, %enic_request_intr.exit.thread209 ], [ %err.1.i, %enic_request_intr.exit.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.90) #15
  br label %cleanup

if.end:                                           ; preds = %enic_request_intr.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %for.end42.i.if.end_crit_edge, %enic_set_rx_cpu_rmap.exit.i.if.end_crit_edge
  %intr_count.i135 = getelementptr i8, ptr %netdev, i32 13144
  %97 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intr_count.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp47.not.i = icmp eq i32 %98, 0
  br i1 %cmp47.not.i, label %if.end.for.cond16.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.for.cond16.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %rq_count.i.i.i = getelementptr i8, ptr %netdev, i32 9248
  %wq_count.i.i.i = getelementptr i8, ptr %netdev, i32 6624
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.inc.i.for.body.i138_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i143, %for.inc.i.for.body.i138_crit_edge ]
  %99 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vdev.i.i, align 128
  %call.i.i137 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %100) #12
  %101 = zext i32 %call.i.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call.i.i137, label %for.body.i138.lor.lhs.false.i_crit_edge [
    i32 1, label %enic_is_err_intr.exit.i
    i32 3, label %sw.bb2.i.i
  ]

for.body.i138.lor.lhs.false.i_crit_edge:          ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

sw.bb2.i.i:                                       ; preds = %for.body.i138
  %102 = ptrtoint ptr %rq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rq_count.i.i.i, align 32
  %104 = ptrtoint ptr %wq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wq_count.i.i.i, align 32
  %add.i.i.i = add i32 %105, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %i.048.i)
  %cmp4.i.i = icmp eq i32 %add.i.i.i, %i.048.i
  br i1 %cmp4.i.i, label %sw.bb2.i.i.for.inc.i_crit_edge, label %sw.bb2.i.i.lor.lhs.false.i_crit_edge

sw.bb2.i.i.lor.lhs.false.i_crit_edge:             ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

sw.bb2.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

enic_is_err_intr.exit.i:                          ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.048.i)
  %cmp.i.i139 = icmp eq i32 %i.048.i, 1
  br i1 %cmp.i.i139, label %enic_is_err_intr.exit.i.for.inc.i_crit_edge, label %enic_is_err_intr.exit.i.lor.lhs.false.i_crit_edge

enic_is_err_intr.exit.i.lor.lhs.false.i_crit_edge: ; preds = %enic_is_err_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

enic_is_err_intr.exit.i.for.inc.i_crit_edge:      ; preds = %enic_is_err_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %enic_is_err_intr.exit.i.lor.lhs.false.i_crit_edge, %sw.bb2.i.i.lor.lhs.false.i_crit_edge, %for.body.i138.lor.lhs.false.i_crit_edge
  %106 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vdev.i.i, align 128
  %call.i35.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %107) #12
  %108 = zext i32 %call.i35.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call.i35.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge [
    i32 1, label %enic_is_notify_intr.exit.i
    i32 3, label %sw.bb2.i42.i
  ]

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false3.i

sw.bb2.i42.i:                                     ; preds = %lor.lhs.false.i
  %109 = ptrtoint ptr %rq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rq_count.i.i.i, align 32
  %111 = ptrtoint ptr %wq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %wq_count.i.i.i, align 32
  %add.i.i40.i = add i32 %110, 1
  %add1.i.i.i = add i32 %add.i.i40.i, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i.i, i32 %i.048.i)
  %cmp4.i41.i = icmp eq i32 %add1.i.i.i, %i.048.i
  br i1 %cmp4.i41.i, label %sw.bb2.i42.i.for.inc.i_crit_edge, label %sw.bb2.i42.i.lor.lhs.false3.i_crit_edge

sw.bb2.i42.i.lor.lhs.false3.i_crit_edge:          ; preds = %sw.bb2.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false3.i

sw.bb2.i42.i.for.inc.i_crit_edge:                 ; preds = %sw.bb2.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

enic_is_notify_intr.exit.i:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.048.i)
  %cmp.i36.i = icmp eq i32 %i.048.i, 2
  br i1 %cmp.i36.i, label %enic_is_notify_intr.exit.i.for.inc.i_crit_edge, label %enic_is_notify_intr.exit.i.lor.lhs.false3.i_crit_edge

enic_is_notify_intr.exit.i.lor.lhs.false3.i_crit_edge: ; preds = %enic_is_notify_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false3.i

enic_is_notify_intr.exit.i.for.inc.i_crit_edge:   ; preds = %enic_is_notify_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false3.i:                                 ; preds = %enic_is_notify_intr.exit.i.lor.lhs.false3.i_crit_edge, %sw.bb2.i42.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %affinity_mask.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.048.i, i32 4
  %113 = ptrtoint ptr %affinity_mask.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %affinity_mask.i, align 4
  %cmp.i44.not.i = icmp eq ptr %114, null
  br i1 %cmp.i44.not.i, label %lor.lhs.false3.i.if.end.i141_crit_edge, label %cpumask_empty.exit.i

lor.lhs.false3.i.if.end.i141_crit_edge:           ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i141

cpumask_empty.exit.i:                             ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %115 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i140 = tail call i32 @_find_first_bit_be(ptr noundef nonnull %114, i32 noundef %115) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i140, i32 %115)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i140, %115
  br i1 %cmp4.i.i.i, label %cpumask_empty.exit.i.if.end.i141_crit_edge, label %cpumask_empty.exit.i.for.inc.i_crit_edge

cpumask_empty.exit.i.for.inc.i_crit_edge:         ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cpumask_empty.exit.i.if.end.i141_crit_edge:       ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i141

if.end.i141:                                      ; preds = %cpumask_empty.exit.i.if.end.i141_crit_edge, %lor.lhs.false3.i.if.end.i141_crit_edge
  %call12.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %affinity_mask.i, i32 noundef 3264) #12
  br i1 %call12.i, label %if.then13.i, label %if.end.i141.for.inc.i_crit_edge

if.end.i141.for.inc.i_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end.i141
  %call14.i142 = tail call i32 @cpumask_local_spread(i32 noundef %i.048.i, i32 noundef -1) #12
  %116 = ptrtoint ptr %affinity_mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %affinity_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %118 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %call14.i142)
  %cmp.not.i.i.i.i = icmp ugt i32 %118, %call14.i142
  br i1 %cmp.not.i.i.i.i, label %if.then13.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then13.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then13.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !232

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then13.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %call14.i142, ptr noundef %117) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cpumask_set_cpu.exit.i, %if.end.i141.for.inc.i_crit_edge, %cpumask_empty.exit.i.for.inc.i_crit_edge, %enic_is_notify_intr.exit.i.for.inc.i_crit_edge, %sw.bb2.i42.i.for.inc.i_crit_edge, %enic_is_err_intr.exit.i.for.inc.i_crit_edge, %sw.bb2.i.i.for.inc.i_crit_edge
  %inc.i143 = add nuw i32 %i.048.i, 1
  %119 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %intr_count.i135, align 8
  %cmp.i144 = icmp ult i32 %inc.i143, %120
  br i1 %cmp.i144, label %for.inc.i.for.body.i138_crit_edge, label %enic_init_affinity_hint.exit

for.inc.i.for.body.i138_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i138

enic_init_affinity_hint.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp93.not.i = icmp eq i32 %120, 0
  br i1 %cmp93.not.i, label %enic_init_affinity_hint.exit.for.cond16.preheader.i_crit_edge, label %enic_init_affinity_hint.exit.for.body.i152_crit_edge

enic_init_affinity_hint.exit.for.body.i152_crit_edge: ; preds = %enic_init_affinity_hint.exit
  br label %for.body.i152

enic_init_affinity_hint.exit.for.cond16.preheader.i_crit_edge: ; preds = %enic_init_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.inc.i175.for.cond16.preheader.i_crit_edge, %enic_init_affinity_hint.exit.for.cond16.preheader.i_crit_edge, %if.end.for.cond16.preheader.i_crit_edge
  %wq_count.i150 = getelementptr i8, ptr %netdev, i32 6624
  %121 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wq_count.i150, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp1797.not.i = icmp eq i32 %122, 0
  br i1 %cmp1797.not.i, label %for.cond16.preheader.i.enic_set_affinity_hint.exit_crit_edge, label %for.body18.lr.ph.i

for.cond16.preheader.i.enic_set_affinity_hint.exit_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_affinity_hint.exit

for.body18.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %rq_count.i.i77.i = getelementptr i8, ptr %netdev, i32 9248
  br label %for.body18.i

for.body.i152:                                    ; preds = %for.inc.i175.for.body.i152_crit_edge, %enic_init_affinity_hint.exit.for.body.i152_crit_edge
  %i.094.i = phi i32 [ %inc.i173, %for.inc.i175.for.body.i152_crit_edge ], [ 0, %enic_init_affinity_hint.exit.for.body.i152_crit_edge ]
  %123 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vdev.i.i, align 128
  %call.i.i151 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %124) #12
  %125 = zext i32 %call.i.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call.i.i151, label %for.body.i152.lor.lhs.false.i158_crit_edge [
    i32 1, label %enic_is_err_intr.exit.i157
    i32 3, label %sw.bb2.i.i155
  ]

for.body.i152.lor.lhs.false.i158_crit_edge:       ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i158

sw.bb2.i.i155:                                    ; preds = %for.body.i152
  %126 = ptrtoint ptr %rq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rq_count.i.i.i, align 32
  %128 = ptrtoint ptr %wq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %wq_count.i.i.i, align 32
  %add.i.i.i153 = add i32 %129, %127
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i153, i32 %i.094.i)
  %cmp4.i.i154 = icmp eq i32 %add.i.i.i153, %i.094.i
  br i1 %cmp4.i.i154, label %sw.bb2.i.i155.for.inc.i175_crit_edge, label %sw.bb2.i.i155.lor.lhs.false.i158_crit_edge

sw.bb2.i.i155.lor.lhs.false.i158_crit_edge:       ; preds = %sw.bb2.i.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i158

sw.bb2.i.i155.for.inc.i175_crit_edge:             ; preds = %sw.bb2.i.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

enic_is_err_intr.exit.i157:                       ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.094.i)
  %cmp.i.i156 = icmp eq i32 %i.094.i, 1
  br i1 %cmp.i.i156, label %enic_is_err_intr.exit.i157.for.inc.i175_crit_edge, label %enic_is_err_intr.exit.i157.lor.lhs.false.i158_crit_edge

enic_is_err_intr.exit.i157.lor.lhs.false.i158_crit_edge: ; preds = %enic_is_err_intr.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i158

enic_is_err_intr.exit.i157.for.inc.i175_crit_edge: ; preds = %enic_is_err_intr.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

lor.lhs.false.i158:                               ; preds = %enic_is_err_intr.exit.i157.lor.lhs.false.i158_crit_edge, %sw.bb2.i.i155.lor.lhs.false.i158_crit_edge, %for.body.i152.lor.lhs.false.i158_crit_edge
  %130 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vdev.i.i, align 128
  %call.i66.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %131) #12
  %132 = zext i32 %call.i66.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call.i66.i, label %lor.lhs.false.i158.lor.lhs.false2.i_crit_edge [
    i32 1, label %enic_is_notify_intr.exit.i160
    i32 3, label %sw.bb2.i73.i
  ]

lor.lhs.false.i158.lor.lhs.false2.i_crit_edge:    ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false2.i

sw.bb2.i73.i:                                     ; preds = %lor.lhs.false.i158
  %133 = ptrtoint ptr %rq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rq_count.i.i.i, align 32
  %135 = ptrtoint ptr %wq_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %wq_count.i.i.i, align 32
  %add.i.i71.i = add i32 %134, 1
  %add1.i.i.i159 = add i32 %add.i.i71.i, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i.i159, i32 %i.094.i)
  %cmp4.i72.i = icmp eq i32 %add1.i.i.i159, %i.094.i
  br i1 %cmp4.i72.i, label %sw.bb2.i73.i.for.inc.i175_crit_edge, label %sw.bb2.i73.i.lor.lhs.false2.i_crit_edge

sw.bb2.i73.i.lor.lhs.false2.i_crit_edge:          ; preds = %sw.bb2.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false2.i

sw.bb2.i73.i.for.inc.i175_crit_edge:              ; preds = %sw.bb2.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

enic_is_notify_intr.exit.i160:                    ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.094.i)
  %cmp.i67.i = icmp eq i32 %i.094.i, 2
  br i1 %cmp.i67.i, label %enic_is_notify_intr.exit.i160.for.inc.i175_crit_edge, label %enic_is_notify_intr.exit.i160.lor.lhs.false2.i_crit_edge

enic_is_notify_intr.exit.i160.lor.lhs.false2.i_crit_edge: ; preds = %enic_is_notify_intr.exit.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false2.i

enic_is_notify_intr.exit.i160.for.inc.i175_crit_edge: ; preds = %enic_is_notify_intr.exit.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

lor.lhs.false2.i:                                 ; preds = %enic_is_notify_intr.exit.i160.lor.lhs.false2.i_crit_edge, %sw.bb2.i73.i.lor.lhs.false2.i_crit_edge, %lor.lhs.false.i158.lor.lhs.false2.i_crit_edge
  %affinity_mask.i161 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %i.094.i, i32 4
  %137 = ptrtoint ptr %affinity_mask.i161 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %affinity_mask.i161, align 4
  %cmp.i75.not.i = icmp eq ptr %138, null
  br i1 %cmp.i75.not.i, label %lor.lhs.false2.i.for.inc.i175_crit_edge, label %cpumask_empty.exit.i170

lor.lhs.false2.i.for.inc.i175_crit_edge:          ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

cpumask_empty.exit.i170:                          ; preds = %lor.lhs.false2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %139 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i168 = tail call i32 @_find_first_bit_be(ptr noundef nonnull %138, i32 noundef %139) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i168, i32 %139)
  %cmp4.i.i.i169 = icmp eq i32 %call.i.i.i168, %139
  br i1 %cmp4.i.i.i169, label %cpumask_empty.exit.i170.for.inc.i175_crit_edge, label %if.end.i172

cpumask_empty.exit.i170.for.inc.i175_crit_edge:   ; preds = %cpumask_empty.exit.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

if.end.i172:                                      ; preds = %cpumask_empty.exit.i170
  %arrayidx9.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.094.i
  %140 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx9.i, align 8
  %142 = ptrtoint ptr %affinity_mask.i161 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %affinity_mask.i161, align 4
  %call.i76.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %141, ptr noundef %143, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool.not.i171 = icmp eq i32 %call.i76.i, 0
  br i1 %tobool.not.i171, label %if.end.i172.for.inc.i175_crit_edge, label %if.then14.i

if.end.i172.for.inc.i175_crit_edge:               ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i175

if.then14.i:                                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %145, ptr noundef nonnull @.str.100, i32 noundef %call.i76.i) #15
  br label %for.inc.i175

for.inc.i175:                                     ; preds = %if.then14.i, %if.end.i172.for.inc.i175_crit_edge, %cpumask_empty.exit.i170.for.inc.i175_crit_edge, %lor.lhs.false2.i.for.inc.i175_crit_edge, %enic_is_notify_intr.exit.i160.for.inc.i175_crit_edge, %sw.bb2.i73.i.for.inc.i175_crit_edge, %enic_is_err_intr.exit.i157.for.inc.i175_crit_edge, %sw.bb2.i.i155.for.inc.i175_crit_edge
  %inc.i173 = add nuw i32 %i.094.i, 1
  %146 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %intr_count.i135, align 8
  %cmp.i174 = icmp ult i32 %inc.i173, %147
  br i1 %cmp.i174, label %for.inc.i175.for.body.i152_crit_edge, label %for.inc.i175.for.cond16.preheader.i_crit_edge

for.inc.i175.for.cond16.preheader.i_crit_edge:    ; preds = %for.inc.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader.i

for.inc.i175.for.body.i152_crit_edge:             ; preds = %for.inc.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i152

for.body18.i:                                     ; preds = %if.end34.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %i.198.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc36.i, %if.end34.i.for.body18.i_crit_edge ]
  %148 = ptrtoint ptr %rq_count.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rq_count.i.i77.i, align 32
  %add.i.i78.i = add i32 %149, %i.198.i
  %interrupt_offset.i.i176 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %add.i.i78.i, i32 6
  %150 = ptrtoint ptr %interrupt_offset.i.i176 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %interrupt_offset.i.i176, align 4
  %affinity_mask22.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 10, i32 %151, i32 4
  %152 = ptrtoint ptr %affinity_mask22.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %affinity_mask22.i, align 4
  %cmp.i79.not.i = icmp eq ptr %153, null
  br i1 %cmp.i79.not.i, label %for.body18.i.if.end34.i_crit_edge, label %cpumask_empty.exit90.i

for.body18.i.if.end34.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

cpumask_empty.exit90.i:                           ; preds = %for.body18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %154 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i86.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %153, i32 noundef %154) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i86.i, i32 %154)
  %cmp4.i.i87.i = icmp eq i32 %call.i.i86.i, %154
  br i1 %cmp4.i.i87.i, label %cpumask_empty.exit90.i.if.end34.i_crit_edge, label %if.then28.i

cpumask_empty.exit90.i.if.end34.i_crit_edge:      ; preds = %cpumask_empty.exit90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then28.i:                                      ; preds = %cpumask_empty.exit90.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 128
  %157 = ptrtoint ptr %affinity_mask22.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %affinity_mask22.i, align 4
  %conv.i = trunc i32 %i.198.i to i16
  %call33.i = tail call i32 @netif_set_xps_queue(ptr noundef %156, ptr noundef %158, i16 noundef zeroext %conv.i) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %cpumask_empty.exit90.i.if.end34.i_crit_edge, %for.body18.i.if.end34.i_crit_edge
  %inc36.i = add nuw i32 %i.198.i, 1
  %159 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %wq_count.i150, align 32
  %cmp17.i = icmp ult i32 %inc36.i, %160
  br i1 %cmp17.i, label %if.end34.i.for.body18.i_crit_edge, label %if.end34.i.enic_set_affinity_hint.exit_crit_edge

if.end34.i.enic_set_affinity_hint.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_set_affinity_hint.exit

if.end34.i.for.body18.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

enic_set_affinity_hint.exit:                      ; preds = %if.end34.i.enic_set_affinity_hint.exit_crit_edge, %for.cond16.preheader.i.enic_set_affinity_hint.exit_crit_edge
  %devcmd_lock.i = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #12
  %161 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %vdev.i.i, align 128
  %call.i178 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %162) #12
  %163 = zext i32 %call.i178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call.i178, label %sw.default.i [
    i32 1, label %sw.bb.i179
    i32 3, label %sw.bb4.i
  ]

sw.bb.i179:                                       ; preds = %enic_set_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #14
  %164 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vdev.i.i, align 128
  %call3.i = tail call i32 @vnic_dev_notify_set(ptr noundef %165, i16 noundef zeroext 2) #12
  br label %enic_dev_notify_set.exit

sw.bb4.i:                                         ; preds = %enic_set_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %vdev.i.i, align 128
  %rq_count.i.i180 = getelementptr i8, ptr %netdev, i32 9248
  %168 = ptrtoint ptr %rq_count.i.i180 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rq_count.i.i180, align 32
  %170 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %wq_count.i150, align 32
  %add.i.i181 = add i32 %169, 1
  %add1.i.i182 = add i32 %add.i.i181, %171
  %conv7.i = trunc i32 %add1.i.i182 to i16
  %call8.i = tail call i32 @vnic_dev_notify_set(ptr noundef %167, i16 noundef zeroext %conv7.i) #12
  br label %enic_dev_notify_set.exit

sw.default.i:                                     ; preds = %enic_set_affinity_hint.exit
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %vdev.i.i, align 128
  %call10.i = tail call i32 @vnic_dev_notify_set(ptr noundef %173, i16 noundef zeroext -1) #12
  br label %enic_dev_notify_set.exit

enic_dev_notify_set.exit:                         ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i179
  %err.0.i = phi i32 [ %call10.i, %sw.default.i ], [ %call8.i, %sw.bb4.i ], [ %call3.i, %sw.bb.i179 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool3.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.then4

for.cond.preheader:                               ; preds = %enic_dev_notify_set.exit
  %rq_count = getelementptr i8, ptr %netdev, i32 9248
  %174 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp217.not = icmp eq i32 %175, 0
  br i1 %cmp217.not, label %for.cond.preheader.for.cond15.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15.preheader

if.then4:                                         ; preds = %enic_dev_notify_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.91) #15
  br label %err_out_free_intr

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0218, 1
  %176 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rq_count, align 32
  %cmp = icmp ult i32 %inc, %177
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond15.preheader_crit_edge

for.cond.for.cond15.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond15.preheader:                             ; preds = %for.cond.for.cond15.preheader_crit_edge, %for.cond.preheader.for.cond15.preheader_crit_edge
  %178 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %wq_count.i150, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp16219.not = icmp eq i32 %179, 0
  br i1 %cmp16219.not, label %for.cond15.preheader.for.end21_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end21_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0218 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 33, i32 %i.0218
  tail call void @vnic_rq_enable(ptr noundef %arrayidx) #12
  %180 = tail call fastcc i32 @vnic_rq_fill(ptr noundef %arrayidx)
  %desc_count.i = getelementptr inbounds %struct.vnic_rq, ptr %arrayidx, i32 0, i32 3, i32 8
  %181 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %desc_count.i, align 4
  %desc_avail.i = getelementptr inbounds %struct.vnic_rq, ptr %arrayidx, i32 0, i32 3, i32 9
  %183 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %desc_avail.i, align 4
  %.neg = add i32 %184, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %.neg)
  %cmp12 = icmp eq i32 %182, %.neg
  br i1 %cmp12, label %if.then13, label %for.cond

if.then13:                                        ; preds = %for.body
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.92) #15
  %185 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp61227.not = icmp eq i32 %186, 0
  br i1 %cmp61227.not, label %if.then13.for.end73_crit_edge, label %if.then13.for.body62_crit_edge

if.then13.for.body62_crit_edge:                   ; preds = %if.then13
  br label %for.body62

if.then13.for.end73_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.1220 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 27, i32 %i.1220
  tail call void @vnic_wq_enable(ptr noundef %arrayidx18) #12
  %inc20 = add nuw i32 %i.1220, 1
  %187 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %wq_count.i150, align 32
  %cmp16 = icmp ult i32 %inc20, %188
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end21_crit_edge

for.body17.for.end21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.end21:                                        ; preds = %for.body17.for.end21_crit_edge, %for.cond15.preheader.for.end21_crit_edge
  %pdev.i183 = getelementptr i8, ptr %netdev, i32 2308
  %189 = ptrtoint ptr %pdev.i183 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pdev.i183, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 8
  %191 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %device.i, align 2
  %193 = zext i16 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %192, label %if.then26 [
    i16 68, label %for.end21.if.end28_crit_edge
    i16 113, label %for.end21.if.end28_crit_edge239
  ]

for.end21.if.end28_crit_edge239:                  ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.end21.if.end28_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 @enic_dev_add_station_addr(ptr noundef %add.ptr.i) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end21.if.end28_crit_edge, %for.end21.if.end28_crit_edge239
  tail call void @enic_set_rx_mode(ptr noundef %netdev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %194 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp4.not.i = icmp eq i32 %195, 0
  br i1 %cmp4.not.i, label %if.end28.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i189

if.end28.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i189:                              ; preds = %if.end28
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i193

for.body.i193:                                    ; preds = %for.body.i193.for.body.i193_crit_edge, %for.body.lr.ph.i189
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i189 ], [ %inc.i191, %for.body.i193.for.body.i193_crit_edge ]
  %196 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i190 = getelementptr %struct.netdev_queue, ptr %197, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i190) #12
  %inc.i191 = add nuw i32 %i.05.i, 1
  %198 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i192 = icmp ult i32 %inc.i191, %199
  br i1 %cmp.i192, label %for.body.i193.for.body.i193_crit_edge, label %for.body.i193.netif_tx_wake_all_queues.exit_crit_edge

for.body.i193.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_wake_all_queues.exit

for.body.i193.for.body.i193_crit_edge:            ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i193

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i193.netif_tx_wake_all_queues.exit_crit_edge, %if.end28.netif_tx_wake_all_queues.exit_crit_edge
  %200 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp31221.not = icmp eq i32 %201, 0
  br i1 %cmp31221.not, label %netif_tx_wake_all_queues.exit.for.end36_crit_edge, label %netif_tx_wake_all_queues.exit.for.body32_crit_edge

netif_tx_wake_all_queues.exit.for.body32_crit_edge: ; preds = %netif_tx_wake_all_queues.exit
  br label %for.body32

netif_tx_wake_all_queues.exit.for.end36_crit_edge: ; preds = %netif_tx_wake_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %netif_tx_wake_all_queues.exit.for.body32_crit_edge
  %i.2222 = phi i32 [ %inc35, %for.body32.for.body32_crit_edge ], [ 0, %netif_tx_wake_all_queues.exit.for.body32_crit_edge ]
  %arrayidx33 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %i.2222
  tail call void @napi_enable(ptr noundef %arrayidx33) #12
  %inc35 = add nuw i32 %i.2222, 1
  %202 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rq_count, align 32
  %cmp31 = icmp ult i32 %inc35, %203
  br i1 %cmp31, label %for.body32.for.body32_crit_edge, label %for.body32.for.end36_crit_edge

for.body32.for.end36_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

for.end36:                                        ; preds = %for.body32.for.end36_crit_edge, %netif_tx_wake_all_queues.exit.for.end36_crit_edge
  %204 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %vdev.i.i, align 128
  %call37 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %205) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 3
  br i1 %cmp38, label %for.cond40.preheader, label %for.end36.if.end50_crit_edge

for.end36.if.end50_crit_edge:                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.cond40.preheader:                             ; preds = %for.end36
  %206 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %wq_count.i150, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp42223.not = icmp eq i32 %207, 0
  br i1 %cmp42223.not, label %for.cond40.preheader.if.end50_crit_edge, label %for.cond40.preheader.for.body43_crit_edge

for.cond40.preheader.for.body43_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body43

for.cond40.preheader.if.end50_crit_edge:          ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.cond40.preheader.for.body43_crit_edge
  %i.3224 = phi i32 [ %inc48, %for.body43.for.body43_crit_edge ], [ 0, %for.cond40.preheader.for.body43_crit_edge ]
  %208 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rq_count, align 32
  %add.i = add i32 %209, %i.3224
  %arrayidx46 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %add.i
  tail call void @napi_enable(ptr noundef %arrayidx46) #12
  %inc48 = add nuw i32 %i.3224, 1
  %210 = ptrtoint ptr %wq_count.i150 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %wq_count.i150, align 32
  %cmp42 = icmp ult i32 %inc48, %211
  br i1 %cmp42, label %for.body43.for.body43_crit_edge, label %for.body43.if.end50_crit_edge

for.body43.if.end50_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body43

if.end50:                                         ; preds = %for.body43.if.end50_crit_edge, %for.cond40.preheader.if.end50_crit_edge, %for.end36.if.end50_crit_edge
  %call51 = tail call i32 @enic_dev_enable(ptr noundef %add.ptr.i) #12
  %212 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %intr_count.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp53225.not = icmp eq i32 %213, 0
  br i1 %cmp53225.not, label %if.end50.for.end58_crit_edge, label %if.end50.for.body54_crit_edge

if.end50.for.body54_crit_edge:                    ; preds = %if.end50
  br label %for.body54

if.end50.for.end58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end58

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %if.end50.for.body54_crit_edge
  %i.4226 = phi i32 [ %inc57, %for.body54.for.body54_crit_edge ], [ 0, %if.end50.for.body54_crit_edge ]
  %arrayidx55 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %i.4226
  %ctrl.i = getelementptr inbounds %struct.vnic_intr, ptr %arrayidx55, i32 0, i32 2
  %214 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctrl.i, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %215, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #12, !srcloc !236
  %inc57 = add nuw i32 %i.4226, 1
  %216 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %intr_count.i135, align 8
  %cmp53 = icmp ult i32 %inc57, %217
  br i1 %cmp53, label %for.body54.for.body54_crit_edge, label %for.body54.for.end58_crit_edge

for.body54.for.end58_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end58

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54

for.end58:                                        ; preds = %for.body54.for.end58_crit_edge, %if.end50.for.end58_crit_edge
  %218 = ptrtoint ptr %vdev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %vdev.i.i, align 128
  %call.i196 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %219) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i196)
  %cond.i = icmp eq i32 %call.i196, 2
  br i1 %cond.i, label %sw.bb.i197, label %for.end58.enic_notify_timer_start.exit_crit_edge

for.end58.enic_notify_timer_start.exit_crit_edge: ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_notify_timer_start.exit

sw.bb.i197:                                       ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #14
  %notify_timer.i = getelementptr i8, ptr %netdev, i32 2436
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %220 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call i32 @mod_timer(ptr noundef %notify_timer.i, i32 noundef %220) #12
  br label %enic_notify_timer_start.exit

enic_notify_timer_start.exit:                     ; preds = %sw.bb.i197, %for.end58.enic_notify_timer_start.exit_crit_edge
  %rfs_may_expire.i = getelementptr i8, ptr %netdev, i32 18748
  tail call void @init_timer_key(ptr noundef %rfs_may_expire.i, ptr noundef nonnull @enic_flow_may_expire, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef nonnull @enic_rfs_timer_start.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %221 = load volatile i32, ptr @jiffies, align 128
  %add.i198 = add i32 %221, 25
  %call.i199 = tail call i32 @mod_timer(ptr noundef %rfs_may_expire.i, i32 noundef %add.i198) #12
  br label %cleanup

for.body62:                                       ; preds = %for.inc71.for.body62_crit_edge, %if.then13.for.body62_crit_edge
  %i.5228 = phi i32 [ %inc72, %for.inc71.for.body62_crit_edge ], [ 0, %if.then13.for.body62_crit_edge ]
  %arrayidx64 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 33, i32 %i.5228
  %call65 = tail call i32 @vnic_rq_disable(ptr noundef %arrayidx64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %for.body62.for.inc71_crit_edge

for.body62.for.inc71_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc71

if.then67:                                        ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vnic_rq_clean(ptr noundef %arrayidx64, ptr noundef nonnull @enic_free_rq_buf) #12
  br label %for.inc71

for.inc71:                                        ; preds = %if.then67, %for.body62.for.inc71_crit_edge
  %inc72 = add nuw i32 %i.5228, 1
  %222 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rq_count, align 32
  %cmp61 = icmp ult i32 %inc72, %223
  br i1 %cmp61, label %for.inc71.for.body62_crit_edge, label %for.inc71.for.end73_crit_edge

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.inc71.for.body62_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %if.then13.for.end73_crit_edge
  %call74 = tail call i32 @enic_dev_notify_unset(ptr noundef %add.ptr.i) #12
  br label %err_out_free_intr

err_out_free_intr:                                ; preds = %for.end73, %if.then4
  %err.0 = phi i32 [ %err.0.i, %if.then4 ], [ -12, %for.end73 ]
  %224 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %intr_count.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp4.not.i201 = icmp eq i32 %225, 0
  br i1 %cmp4.not.i201, label %err_out_free_intr.enic_unset_affinity_hint.exit_crit_edge, label %err_out_free_intr.for.body.i206_crit_edge

err_out_free_intr.for.body.i206_crit_edge:        ; preds = %err_out_free_intr
  br label %for.body.i206

err_out_free_intr.enic_unset_affinity_hint.exit_crit_edge: ; preds = %err_out_free_intr
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_unset_affinity_hint.exit

for.body.i206:                                    ; preds = %for.body.i206.for.body.i206_crit_edge, %err_out_free_intr.for.body.i206_crit_edge
  %i.05.i202 = phi i32 [ %inc.i204, %for.body.i206.for.body.i206_crit_edge ], [ 0, %err_out_free_intr.for.body.i206_crit_edge ]
  %arrayidx.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 9, i32 %i.05.i202
  %226 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx.i, align 8
  %call.i.i203 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %227, ptr noundef null, i1 noundef zeroext false) #12
  %inc.i204 = add nuw i32 %i.05.i202, 1
  %228 = ptrtoint ptr %intr_count.i135 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %intr_count.i135, align 8
  %cmp.i205 = icmp ult i32 %inc.i204, %229
  br i1 %cmp.i205, label %for.body.i206.for.body.i206_crit_edge, label %for.body.i206.enic_unset_affinity_hint.exit_crit_edge

for.body.i206.enic_unset_affinity_hint.exit_crit_edge: ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_unset_affinity_hint.exit

for.body.i206.for.body.i206_crit_edge:            ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i206

enic_unset_affinity_hint.exit:                    ; preds = %for.body.i206.enic_unset_affinity_hint.exit_crit_edge, %err_out_free_intr.enic_unset_affinity_hint.exit_crit_edge
  tail call fastcc void @enic_free_intr(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %enic_unset_affinity_hint.exit, %enic_notify_timer_start.exit, %if.then
  %retval.0 = phi i32 [ %err.1.i212, %if.then ], [ %err.0, %enic_unset_affinity_hint.exit ], [ 0, %enic_notify_timer_start.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_rfs_flw_tbl_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_del_station_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_wq_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_rq_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_notify_unset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enic_free_intr(ptr noundef %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  %rx_cpu_rmap.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_cpu_rmap.i, align 4
  tail call void @free_irq_cpu_rmap(ptr noundef %3) #12
  %4 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enic, align 128
  %rx_cpu_rmap2.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 100
  %6 = ptrtoint ptr %rx_cpu_rmap2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_cpu_rmap2.i, align 4
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %7 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %8) #12
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %entry.for.body_crit_edge
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 %i.024
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr %struct.enic, ptr %enic, i32 0, i32 9, i32 %i.024
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 8
  %devid = getelementptr %struct.enic, ptr %enic, i32 0, i32 10, i32 %i.024, i32 3
  %14 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devid, align 8
  %call11 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %15) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %enic.sink = phi ptr [ %enic, %sw.bb3 ], [ %1, %entry.sw.epilog.sink.split_crit_edge ]
  %pdev4 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %16 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev4, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq5, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %enic.sink) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_clean(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_rq_clean(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_free_rq_buf(ptr nocapture noundef readonly %rq, ptr nocapture noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call ptr @vnic_dev_priv(ptr noundef %1) #12
  %os_buf = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %os_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %os_buf, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.enic, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.vnic_rq_buf, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #12
  %10 = ptrtoint ptr %os_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %os_buf, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #12
  %12 = ptrtoint ptr %os_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %os_buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_cq_clean(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_intr_clean(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_irq_cpu_rmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_soft_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_soft_reset_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_rq_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_add_station_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_set_rx_mode(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = lshr i32 %1, 12
  %and.lobit = and i32 %and, 1
  %and2 = lshr i32 %1, 1
  %and2.lobit = and i32 %and2, 1
  %and6 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp sgt i32 %3, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %and9 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.end14, label %lor.end.lor.end14.thread_crit_edge

lor.end.lor.end14.thread_crit_edge:               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end14.thread

lor.end14:                                        ; preds = %lor.end
  %count12 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp13 = icmp sgt i32 %6, 32
  br i1 %cmp13, label %lor.end14.lor.end14.thread_crit_edge, label %lor.end14._crit_edge

lor.end14._crit_edge:                             ; preds = %lor.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %7

lor.end14.lor.end14.thread_crit_edge:             ; preds = %lor.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end14.thread

lor.end14.thread:                                 ; preds = %lor.end14.lor.end14.thread_crit_edge, %lor.end.lor.end14.thread_crit_edge
  br label %7

7:                                                ; preds = %lor.end14.thread, %lor.end14._crit_edge
  %8 = phi i1 [ true, %lor.end14.thread ], [ false, %lor.end14._crit_edge ]
  %9 = phi i32 [ 512, %lor.end14.thread ], [ 0, %lor.end14._crit_edge ]
  %cond21 = select i1 %4, i32 256, i32 0
  %or = or i32 %cond21, %1
  %or22 = or i32 %or, %9
  %flags23 = getelementptr i8, ptr %netdev, i32 3536
  %10 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags23, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or22)
  %cmp24.not = icmp eq i32 %11, %or22
  br i1 %cmp24.not, label %.if.end_crit_edge, label %if.then

.if.end_crit_edge:                                ; preds = %7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %7
  call void @__sanitizer_cov_trace_pc() #14
  %lor.ext15 = zext i1 %8 to i32
  %12 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or22, ptr %flags23, align 16
  %call26 = tail call i32 @enic_dev_packet_filter(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %and.lobit, i32 noundef %and2.lobit, i32 noundef %lor.ext, i32 noundef %lor.ext15) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %.if.end_crit_edge
  br i1 %4, label %if.end.if.end34_crit_edge, label %if.then28

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then28:                                        ; preds = %if.end
  %uc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %uc.i, ptr noundef %netdev, ptr noundef nonnull @enic_uc_sync, ptr noundef nonnull @enic_uc_unsync) #12
  br i1 %8, label %if.then28.if.end34_crit_edge, label %if.then31

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %call.i51 = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %netdev, ptr noundef nonnull @enic_mc_sync, ptr noundef nonnull @enic_mc_unsync) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then28.if.end34_crit_edge, %if.end.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_isr_legacy(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %ctrl.i = getelementptr i8, ptr %data, i32 12936
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 16777216) #12, !srcloc !236
  %legacy_pba = getelementptr i8, ptr %data, i32 13148
  %2 = ptrtoint ptr %legacy_pba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %legacy_pba, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !244
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl.i, align 4
  %mask.i52 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %7, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i52, i32 0) #12, !srcloc !236
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @enic_notify_check(ptr noundef %add.ptr.i)
  %ctrl.i.i = getelementptr i8, ptr %data, i32 12960
  %8 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl.i.i, align 4
  %int_credits.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %9, i32 0, i32 10
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_credits.i.i) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %11 = and i32 %10, -65536
  %12 = or i32 %11, 768
  %13 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i.i, align 4
  %int_credit_return4.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %14, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i.i, i32 %12) #12, !srcloc !236
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %and13 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl.i.i53 = getelementptr i8, ptr %data, i32 12948
  %15 = ptrtoint ptr %ctrl.i.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl.i.i53, align 4
  %int_credits.i.i54 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %16, i32 0, i32 10
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_credits.i.i54) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %18 = and i32 %17, -65536
  %19 = or i32 %18, 768
  %20 = ptrtoint ptr %ctrl.i.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl.i.i53, align 4
  %int_credit_return4.i.i55 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %21, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i.i55, i32 %19) #12, !srcloc !236
  %call18 = tail call fastcc zeroext i1 @enic_log_q_error(ptr noundef %add.ptr.i)
  %reset = getelementptr i8, ptr %data, i32 2484
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %reset) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %and22 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  %napi = getelementptr i8, ptr %data, i32 9272
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #12
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl.i, align 4
  %mask.i57 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %24, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i57, i32 0) #12, !srcloc !236
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i, %if.then24.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then24.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_isr_msi(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 38
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule_irqoff.exit_crit_edge

entry.napi_schedule_irqoff.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_schedule_irqoff.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #12
  br label %napi_schedule_irqoff.exit

napi_schedule_irqoff.exit:                        ; preds = %if.then.i, %entry.napi_schedule_irqoff.exit_crit_edge
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_isr_msix(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %data) #12
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule_irqoff.exit_crit_edge

entry.napi_schedule_irqoff.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_schedule_irqoff.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %data) #12
  br label %napi_schedule_irqoff.exit

napi_schedule_irqoff.exit:                        ; preds = %if.then.i, %entry.napi_schedule_irqoff.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_isr_msix_err(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_count.i = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 34
  %0 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_count.i, align 32
  %wq_count.i = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 29
  %2 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wq_count.i, align 32
  %add.i = add i32 %3, %1
  %ctrl.i.i = getelementptr %struct.enic, ptr %data, i32 0, i32 40, i32 %add.i, i32 2
  %4 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i.i, align 4
  %int_credits.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %5, i32 0, i32 10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_credits.i.i) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %7 = and i32 %6, -65536
  %8 = or i32 %7, 768
  %9 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl.i.i, align 4
  %int_credit_return4.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %10, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i.i, i32 %8) #12, !srcloc !236
  %call2 = tail call fastcc zeroext i1 @enic_log_q_error(ptr noundef %data)
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reset = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %reset) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_isr_msix_notify(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_count.i = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 34
  %0 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_count.i, align 32
  %wq_count.i = getelementptr inbounds %struct.enic, ptr %data, i32 0, i32 29
  %2 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wq_count.i, align 32
  %add.i = add i32 %1, 1
  %add1.i = add i32 %add.i, %3
  tail call fastcc void @enic_notify_check(ptr noundef %data)
  %ctrl.i.i = getelementptr %struct.enic, ptr %data, i32 0, i32 40, i32 %add1.i, i32 2
  %4 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i.i, align 4
  %int_credits.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %5, i32 0, i32 10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_credits.i.i) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %7 = and i32 %6, -65536
  %8 = or i32 %7, 768
  %9 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl.i.i, align 4
  %int_credit_return4.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %10, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i.i, i32 %8) #12, !srcloc !236
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_cpu_rmap_add(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cpu_rmap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @enic_log_q_error(ptr noundef %enic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43.not = icmp eq i32 %1, 0
  br i1 %cmp43.not, label %entry.for.cond3.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %err.0.off0.lcssa = phi i1 [ false, %entry.for.cond3.preheader_crit_edge ], [ %tobool1, %for.inc.for.cond3.preheader_crit_edge ]
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %2 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp447.not = icmp eq i32 %3, 0
  br i1 %cmp447.not, label %for.cond3.preheader.for.end20_crit_edge, label %for.cond3.preheader.for.body6_crit_edge

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.cond3.preheader.for.end20_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %err.0.off046 = phi i1 [ %tobool1, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 27, i32 %i.044
  %call = tail call i32 @vnic_wq_error_status(ptr noundef %arrayidx) #12
  %conv = zext i1 %err.0.off046 to i32
  %or = or i32 %call, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool1 = icmp ne i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enic, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.97, i32 noundef %i.044, i32 noundef %call) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.044, 1
  %6 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wq_count, align 32
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond3.preheader_crit_edge

for.inc.for.cond3.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body6:                                        ; preds = %for.inc18.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %err.1.off050 = phi i1 [ %tobool12, %for.inc18.for.body6_crit_edge ], [ %err.0.off0.lcssa, %for.cond3.preheader.for.body6_crit_edge ]
  %i.148 = phi i32 [ %inc19, %for.inc18.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %arrayidx7 = getelementptr %struct.enic, ptr %enic, i32 0, i32 33, i32 %i.148
  %call8 = tail call i32 @vnic_rq_error_status(ptr noundef %arrayidx7) #12
  %conv10 = zext i1 %err.1.off050 to i32
  %or11 = or i32 %call8, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or11)
  %tobool12 = icmp ne i32 %or11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool14.not = icmp eq i32 %call8, 0
  br i1 %tobool14.not, label %for.body6.for.inc18_crit_edge, label %if.then15

for.body6.for.inc18_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18

if.then15:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enic, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.98, i32 noundef %i.148, i32 noundef %call8) #15
  br label %for.inc18

for.inc18:                                        ; preds = %if.then15, %for.body6.for.inc18_crit_edge
  %inc19 = add nuw i32 %i.148, 1
  %10 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_count, align 32
  %cmp4 = icmp ult i32 %inc19, %11
  br i1 %cmp4, label %for.inc18.for.body6_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20

for.inc18.for.body6_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %for.cond3.preheader.for.end20_crit_edge
  %err.1.off0.lcssa = phi i1 [ %err.0.off0.lcssa, %for.cond3.preheader.for.end20_crit_edge ], [ %tobool12, %for.inc18.for.end20_crit_edge ]
  ret i1 %err.1.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_wq_error_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_rq_error_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_notify_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_packet_filter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_uc_sync(ptr noundef %netdev, ptr noundef %uc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %uc_count = getelementptr i8, ptr %netdev, i32 3548
  %0 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp eq i32 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.101, i32 noundef 32, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call i32 @enic_dev_add_addr(ptr noundef %add.ptr.i, ptr noundef %uc_addr) #12
  %4 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uc_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %uc_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_uc_unsync(ptr noundef %netdev, ptr noundef %uc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @enic_dev_del_addr(ptr noundef %add.ptr.i, ptr noundef %uc_addr) #12
  %uc_count = getelementptr i8, ptr %netdev, i32 3548
  %0 = ptrtoint ptr %uc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uc_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %uc_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_mc_sync(ptr noundef %netdev, ptr noundef %mc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_count = getelementptr i8, ptr %netdev, i32 3544
  %0 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp eq i32 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.102, i32 noundef 32, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call i32 @enic_dev_add_addr(ptr noundef %add.ptr.i, ptr noundef %mc_addr) #12
  %4 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mc_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %mc_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_mc_unsync(ptr noundef %netdev, ptr noundef %mc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @enic_dev_del_addr(ptr noundef %add.ptr.i, ptr noundef %mc_addr) #12
  %mc_count = getelementptr i8, ptr %netdev, i32 3544
  %0 = ptrtoint ptr %mc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mc_count, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %mc_count, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_add_addr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_del_addr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_flow_may_expire(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_hang_notify(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_hang_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_hang_reset_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_hard_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %3 to i32
  %wq_count = getelementptr i8, ptr %netdev, i32 6624
  %4 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wq_count, align 32
  %rem = urem i32 %conv, %5
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 27, i32 %rem
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp6 = icmp eq i16 %11, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp10 = icmp ugt i8 %13, 15
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %land.lhs.true12.if.end15_crit_edge, label %cond.true.i

land.lhs.true12.if.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

cond.true.i:                                      ; preds = %land.lhs.true12
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %15) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then14, label %cond.true.i.if.end15_crit_edge

cond.true.i.if.end15_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

if.end15:                                         ; preds = %cond.true.i.if.end15_crit_edge, %land.lhs.true12.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %arrayidx16 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 28, i32 %rem
  tail call void @_raw_spin_lock(ptr noundef %arrayidx16) #12
  %desc_avail.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_avail.i, align 4
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %nr_frags19 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nr_frags19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_frags19, align 2
  %conv20 = zext i8 %21 to i32
  %add21 = add nuw nsw i32 %conv20, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add21)
  %cmp22 = icmp ult i32 %17, %add21
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %rem, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.107) #15
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx16) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %gso_size.i, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %if.end27
  %loop_enable.i = getelementptr i8, ptr %netdev, i32 6628
  %25 = ptrtoint ptr %loop_enable.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %loop_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool2.not.i = icmp eq i16 %26, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.then3.i

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %loop_tag.i = getelementptr i8, ptr %netdev, i32 6630
  br label %if.end5.sink.split.i

if.end5.sink.split.i:                             ; preds = %if.then3.i, %if.then.i
  %loop_tag.sink.i = phi ptr [ %loop_tag.i, %if.then3.i ], [ %vlan_tci.i, %if.then.i ]
  %vlan_tag_insert.0.ph.i = phi i16 [ 0, %if.then3.i ], [ -32768, %if.then.i ]
  %loopback.0.ph.i = phi i32 [ 1, %if.then3.i ], [ 0, %if.then.i ]
  %27 = ptrtoint ptr %loop_tag.sink.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %loop_tag.sink.i, align 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.sink.split.i, %if.else.i.if.end5.i_crit_edge
  %vlan_tag.0.shrunk.i = phi i16 [ 0, %if.else.i.if.end5.i_crit_edge ], [ %28, %if.end5.sink.split.i ]
  %vlan_tag_insert.0.i = phi i16 [ 0, %if.else.i.if.end5.i_crit_edge ], [ %vlan_tag_insert.0.ph.i, %if.end5.sink.split.i ]
  %loopback.0.i = phi i32 [ 0, %if.else.i.if.end5.i_crit_edge ], [ %loopback.0.ph.i, %if.end5.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool6.not.i = icmp eq i16 %23, 0
  br i1 %tobool6.not.i, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 0
  %encapsulation.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %encapsulation.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %encapsulation.i.i, align 8
  %34 = and i16 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i.i75 = icmp eq i16 %34, 0
  %head.i.i128.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i128.i.i, align 8
  br i1 %tobool.not.i.i75, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %37 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %38 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %42 = lshr i16 %bf.load.i.i.i, 10
  %43 = and i16 %42, 60
  %mul.i.i.i = zext i16 %43 to i32
  %add.i.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %inner_mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %44 = ptrtoint ptr %inner_mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %inner_mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %45 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i.i
  %h_proto.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %h_proto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %h_proto.i.i.i, align 1
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %47, label %land.end.i.i.i [
    i16 2048, label %sw.bb.i.i.i
    i16 -31011, label %sw.bb9.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inner_network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %49 = ptrtoint ptr %inner_network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inner_network_header.i.i.i.i.i, align 4
  %conv.i.i.i125.i.i = zext i16 %50 to i32
  %add.ptr.i.i.i126.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i125.i.i
  %check.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i126.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %check.i.i.i, align 2
  %52 = ptrtoint ptr %head.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i128.i.i, align 8
  %54 = load i16, ptr %inner_network_header.i.i.i.i.i, align 4
  %conv.i.i65.i.i.i = zext i16 %54 to i32
  %add.ptr.i.i66.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i65.i.i.i
  %saddr.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %saddr.i.i.i, align 4
  %daddr.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %daddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %daddr.i.i.i, align 4
  %59 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %58, i32 %56, i32 6) #17, !srcloc !246
  %60 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %59) #17, !srcloc !247
  %neg.i.i.i.i.i = xor i32 %60, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i.i71.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i.i.i = xor i16 %conv.i.i71.i.i.i, -1
  %61 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i73.i.i.i = zext i16 %62 to i32
  %add.ptr.i.i74.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i73.i.i.i
  %check8.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i74.i.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %check8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %neg.i.i.i, ptr %check8.i.i.i, align 4
  br label %if.end.i.i

sw.bb9.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inner_network_header.i.i76.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %64 = ptrtoint ptr %inner_network_header.i.i76.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %inner_network_header.i.i76.i.i.i, align 4
  %conv.i.i77.i.i.i = zext i16 %65 to i32
  %add.ptr.i.i78.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i77.i.i.i
  %saddr11.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i78.i.i.i, i32 0, i32 5
  %daddr13.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i78.i.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr11.i.i.i, ptr noundef %daddr13.i.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #12
  %66 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i) #17, !srcloc !247
  %neg.i.i83.i.i.i = xor i32 %66, -1
  %shr.i.i84.i.i.i = lshr i32 %neg.i.i83.i.i.i, 16
  %conv.i.i85.i.i.i = trunc i32 %shr.i.i84.i.i.i to i16
  %neg16.i.i.i = xor i16 %conv.i.i85.i.i.i, -1
  %67 = ptrtoint ptr %head.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i128.i.i, align 8
  %69 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i88.i.i.i = zext i16 %70 to i32
  %add.ptr.i.i89.i.i.i = getelementptr i8, ptr %68, i32 %conv.i.i88.i.i.i
  %check19.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i89.i.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %check19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %neg16.i.i.i, ptr %check19.i.i.i, align 4
  br label %if.end.i.i

land.end.i.i.i:                                   ; preds = %if.then.i.i
  %.b62.i.i.i = load i1, ptr @enic_preload_tcp_csum_encap.__already_done, align 1
  br i1 %.b62.i.i.i, label %land.end.i.i.i.if.end.i.i_crit_edge, label %if.then.i.i.i, !prof !232

land.end.i.i.i.if.end.i.i_crit_edge:              ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @enic_preload_tcp_csum_encap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 647, i32 noundef 9, ptr noundef nonnull @.str.108) #12
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then7.i
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %72 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i129.i.i = zext i16 %73 to i32
  %add.ptr.i.i130.i.i = getelementptr i8, ptr %36, i32 %conv.i.i129.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %74 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i130.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %doff.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i130.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i.i.i.i = load i16, ptr %doff.i.i.i.i, align 4
  %77 = lshr i16 %bf.load.i.i.i.i, 10
  %78 = and i16 %77, 60
  %mul.i.i.i.i = zext i16 %78 to i32
  %add6.i.i = add i32 %sub.ptr.sub.i.i.i, %mul.i.i.i.i
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %79 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %protocol.i.i.i, align 8
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %80, label %if.else.i.i.if.end.i.i_crit_edge [
    i16 2048, label %if.then.i141.i.i
    i16 -31011, label %if.then13.i.i.i
  ]

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i141.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %82 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i135.i.i = zext i16 %83 to i32
  %add.ptr.i.i.i136.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i135.i.i
  %check.i137.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i136.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %check.i137.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %check.i137.i.i, align 2
  %85 = ptrtoint ptr %head.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i128.i.i, align 8
  %87 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i23.i.i.i = zext i16 %87 to i32
  %add.ptr.i.i24.i.i.i = getelementptr i8, ptr %86, i32 %conv.i.i23.i.i.i
  %saddr.i138.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i24.i.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %saddr.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %saddr.i138.i.i, align 4
  %daddr.i139.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i24.i.i.i, i32 0, i32 9
  %90 = ptrtoint ptr %daddr.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %daddr.i139.i.i, align 4
  %92 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %91, i32 %89, i32 6) #17, !srcloc !246
  %93 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %92) #17, !srcloc !247
  %94 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i31.i.i.i = zext i16 %95 to i32
  %add.ptr.i.i32.i.i.i = getelementptr i8, ptr %86, i32 %conv.i.i31.i.i.i
  br label %if.end14.sink.split.i.i.i

if.then13.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %network_header.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %96 = ptrtoint ptr %network_header.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %network_header.i.i.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %97 to i32
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i.i.i.i
  %payload_len.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %payload_len.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %payload_len.i.i.i.i, align 4
  %saddr.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 5
  %daddr.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i.i.i, ptr noundef %daddr.i.i.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #12
  %99 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i.i.i) #17, !srcloc !247
  br label %if.end14.sink.split.i.i.i

if.end14.sink.split.i.i.i:                        ; preds = %if.then13.i.i.i, %if.then.i141.i.i
  %add.ptr.i.i9.i.sink.i.i.i = phi ptr [ %add.ptr.i.i130.i.i, %if.then13.i.i.i ], [ %add.ptr.i.i32.i.i.i, %if.then.i141.i.i ]
  %neg.i.sink.in.in.in.in.i.i.i = phi i32 [ %99, %if.then13.i.i.i ], [ %93, %if.then.i141.i.i ]
  %neg.i.sink.in.in.in.i.i.i = xor i32 %neg.i.sink.in.in.in.in.i.i.i, -1
  %neg.i.sink.in.in.i.i.i = lshr i32 %neg.i.sink.in.in.in.i.i.i, 16
  %neg.i.sink.in.i.i.i = trunc i32 %neg.i.sink.in.in.i.i.i to i16
  %neg.i.sink.i.i.i = xor i16 %neg.i.sink.in.i.i.i, -1
  %check.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i9.i.sink.i.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %check.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %neg.i.sink.i.i.i, ptr %check.i.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end14.sink.split.i.i.i, %if.else.i.i.if.end.i.i_crit_edge, %if.then.i.i.i, %land.end.i.i.i.if.end.i.i_crit_edge, %sw.bb9.i.i.i, %sw.bb.i.i.i
  %hdr_len.0.i.i = phi i32 [ %add.i.i, %sw.bb.i.i.i ], [ %add.i.i, %sw.bb9.i.i.i ], [ %add.i.i, %land.end.i.i.i.if.end.i.i_crit_edge ], [ %add.i.i, %if.then.i.i.i ], [ %add6.i.i, %if.else.i.i.if.end.i.i_crit_edge ], [ %add6.i.i, %if.end14.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool7.not189.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool7.not189.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %data10.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %to_use.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %conv3.i.i.i.i = trunc i32 %hdr_len.0.i.i to i16
  %conv9.i.i.i.i = trunc i32 %loopback.0.i to i8
  %101 = shl i16 %23, 2
  %102 = shl nuw nsw i8 %conv9.i.i.i.i, 1
  %shl8.i.i.i.i.i = zext i8 %102 to i16
  %or.i.i.i.i.i = or i16 %101, %shl8.i.i.i.i.i
  %103 = tail call i16 @llvm.bswap.i16(i16 %or.i.i.i.i.i) #12
  %104 = and i16 %conv3.i.i.i.i, 1023
  %105 = tail call i16 @llvm.bswap.i16(i16 %vlan_tag.0.shrunk.i) #12
  %or15.i.i.i.i.i = or i16 %vlan_tag_insert.0.i, %104
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end17.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %frag_len_left.0191.i.i = phi i32 [ %sub.i.i.i, %while.body.lr.ph.i.i ], [ %sub21.i.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %offset.0190.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add22.i.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %106 = tail call i32 @llvm.umin.i32(i32 %frag_len_left.0191.i.i, i32 16384) #12
  %107 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %data10.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 %offset.0190.i.i
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i) #12
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i142.i.i, !prof !232

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i.i

if.then.i142.i.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #12
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44, i32 3
  %111 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i142.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i142.i.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i142.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %114, %if.end.i.i.i.i ], [ %112, %if.then.i142.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i, i32 noundef %106) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %115 = load ptr, ptr @mem_map, align 4
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.i143.i.i = add i32 %116, 1073741824
  %shr.i.i.i = lshr i32 %sub.i143.i.i, 12
  %add.ptr.i144.i.i = getelementptr %struct.page, ptr %115, i32 %shr.i.i.i
  %and.i.i.i = and i32 %116, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i144.i.i, i32 noundef %and.i.i.i, i32 noundef %106, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %117 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef %retval.0.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.not.i.i.i, label %do.body.i.i.i, label %if.end17.i.i, !prof !241

do.body.i.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %call3.i.i.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.if.then33.i_crit_edge, label %do.body.i.i.i.if.then33.i.sink.split_crit_edge

do.body.i.i.i.if.then33.i.sink.split_crit_edge:   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i.i.i.if.then33.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end17.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %frag_len_left.0191.i.i)
  %cmp19.i.i = icmp ult i32 %frag_len_left.0191.i.i, 16385
  %spec.select.i.i = select i1 %cmp.i.i, i1 %cmp19.i.i, i1 false
  %119 = ptrtoint ptr %to_use.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %to_use.i.i.i.i.i, align 4
  %desc.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %desc.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %desc.i.i.i.i.i, align 8
  %conv.i.i146.i.i = zext i32 %retval.0.i.i.i to i64
  %conv1.i.i.i.i = trunc i32 %106 to i16
  %conv5.i.i.i.i = zext i1 %spec.select.i.i to i8
  %123 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i146.i.i) #12
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %122, align 8
  %125 = and i16 %conv1.i.i.i.i, 16383
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #12
  %length3.i.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %length3.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %length3.i.i.i.i.i, align 8
  %mss_loopback.i.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %122, i32 0, i32 2
  %128 = ptrtoint ptr %mss_loopback.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %103, ptr %mss_loopback.i.i.i.i.i, align 2
  %shl18.i.i.i.i.i = select i1 %spec.select.i.i, i16 4096, i16 0
  %shl22.i.i.i.i.i = select i1 %spec.select.i.i, i16 8192, i16 0
  %or23.i.i.i.i.i = or i16 %or15.i.i.i.i.i, %shl18.i.i.i.i.i
  %or19.i.i.i.i.i = or i16 %or23.i.i.i.i.i, %shl22.i.i.i.i.i
  %or31.i.i.i.i.i = or i16 %or19.i.i.i.i.i, 3072
  %129 = tail call i16 @llvm.bswap.i16(i16 %or31.i.i.i.i.i) #12
  %header_length_flags.i.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %122, i32 0, i32 3
  %130 = ptrtoint ptr %header_length_flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %header_length_flags.i.i.i.i.i, align 4
  %vlan_tag33.i.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %122, i32 0, i32 4
  %131 = ptrtoint ptr %vlan_tag33.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %105, ptr %vlan_tag33.i.i.i.i.i, align 2
  %132 = ptrtoint ptr %to_use.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %to_use.i.i.i.i.i, align 4
  %sop1.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %sop1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %sop1.i.i.i.i.i, align 4
  %cq_entry2.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 8
  %135 = ptrtoint ptr %cq_entry2.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv5.i.i.i.i, ptr %cq_entry2.i.i.i.i.i, align 8
  %compressed_send3.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 10
  %136 = ptrtoint ptr %compressed_send3.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %compressed_send3.i.i.i.i.i, align 2
  %desc_skip_cnt4.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 9
  %137 = ptrtoint ptr %desc_skip_cnt4.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %desc_skip_cnt4.i.i.i.i.i, align 1
  %spec.select.i.i.i.i.i = select i1 %spec.select.i.i, ptr %skb, ptr null
  %os_buf5.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 2
  %138 = ptrtoint ptr %os_buf5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %spec.select.i.i.i.i.i, ptr %os_buf5.i.i.i.i.i, align 8
  %dma_addr6.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 1
  %139 = ptrtoint ptr %dma_addr6.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %retval.0.i.i.i, ptr %dma_addr6.i.i.i.i.i, align 4
  %len7.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 3
  %140 = ptrtoint ptr %len7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %106, ptr %len7.i.i.i.i.i, align 4
  %wr_id.i.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %133, i32 0, i32 7
  %141 = ptrtoint ptr %wr_id.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 0, ptr %wr_id.i.i.i.i.i, align 8
  %142 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %133, align 8
  store ptr %143, ptr %to_use.i.i.i.i.i, align 4
  %144 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i.i.i = add i32 %145, -1
  store i32 %sub.i.i.i.i.i, ptr %desc_avail.i, align 4
  %sub21.i.i = sub i32 %frag_len_left.0191.i.i, %106
  %add22.i.i = add i32 %106, %offset.0190.i.i
  %tobool7.not.i.i = icmp eq i32 %sub21.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end17.i.i.while.end.i.i_crit_edge, label %if.end17.i.i.while.body.i.i_crit_edge

if.end17.i.i.while.body.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end17.i.i.while.end.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end17.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge
  br i1 %cmp.i.i, label %while.end.i.i.if.end31thread-pre-split_crit_edge, label %if.end25.i.i

while.end.i.i.if.end31thread-pre-split_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31thread-pre-split

if.end25.i.i:                                     ; preds = %while.end.i.i
  %146 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i, align 4
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 12
  %pdev41.i.i = getelementptr i8, ptr %netdev, i32 2308
  %to_use.i.i.i161.i.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %conv9.i.i166.i.i = trunc i32 %loopback.0.i to i8
  %148 = shl nuw nsw i8 %conv9.i.i166.i.i, 1
  %shl8.i.i.i168.i.i = zext i8 %148 to i16
  %149 = shl nuw nsw i16 %shl8.i.i.i168.i.i, 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end25.i.i
  %frag.0197.i.i = phi ptr [ %frags.i.i, %if.end25.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %len_left.0196.i.i = phi i32 [ %32, %if.end25.i.i ], [ %sub29.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0197.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bv_len.i.i.i, align 4
  %sub29.i.i = sub i32 %len_left.0196.i.i, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool32.not192.i.i = icmp eq i32 %151, 0
  br i1 %tobool32.not192.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %while.body33.lr.ph.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

while.body33.lr.ph.i.i:                           ; preds = %for.body.i.i
  %bv_offset.i.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0197.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29.i.i)
  %cmp54.i.i = icmp eq i32 %sub29.i.i, 0
  br label %while.body33.i.i

while.body33.i.i:                                 ; preds = %if.end53.i.i.while.body33.i.i_crit_edge, %while.body33.lr.ph.i.i
  %frag_len_left.1194.i.i = phi i32 [ %151, %while.body33.lr.ph.i.i ], [ %sub61.i.i, %if.end53.i.i.while.body33.i.i_crit_edge ]
  %offset.1193.i.i = phi i32 [ 0, %while.body33.lr.ph.i.i ], [ %add62.i.i, %if.end53.i.i.while.body33.i.i_crit_edge ]
  %152 = tail call i32 @llvm.umin.i32(i32 %frag_len_left.1194.i.i, i32 16384) #12
  %153 = ptrtoint ptr %pdev41.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev41.i.i, align 4
  %dev42.i.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  %155 = ptrtoint ptr %frag.0197.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %frag.0197.i.i, align 4
  %157 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %add.i.i.i = add i32 %158, %offset.1193.i.i
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev42.i.i, ptr noundef %156, i32 noundef %add.i.i.i, i32 noundef %152, i32 noundef 1, i32 noundef 0) #12
  %159 = ptrtoint ptr %pdev41.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev41.i.i, align 4
  %dev.i149.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i149.i.i, i32 noundef %call2.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.not.i150.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.not.i150.i.i, label %do.body.i153.i.i, label %if.end53.i.i, !prof !241

do.body.i153.i.i:                                 ; preds = %while.body33.i.i
  %call3.i151.i.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i151.i.i)
  %tobool4.not.i152.i.i = icmp eq i32 %call3.i151.i.i, 0
  br i1 %tobool4.not.i152.i.i, label %do.body.i153.i.i.if.then33.i_crit_edge, label %do.body.i153.i.i.if.then33.i.sink.split_crit_edge

do.body.i153.i.i.if.then33.i.sink.split_crit_edge: ; preds = %do.body.i153.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i153.i.i.if.then33.i_crit_edge:           ; preds = %do.body.i153.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end53.i.i:                                     ; preds = %while.body33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %frag_len_left.1194.i.i)
  %cmp57.i.i = icmp ult i32 %frag_len_left.1194.i.i, 16385
  %spec.select124.i.i = select i1 %cmp54.i.i, i1 %cmp57.i.i, i1 false
  %161 = ptrtoint ptr %to_use.i.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %to_use.i.i.i161.i.i, align 4
  %desc.i.i.i162.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %desc.i.i.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %desc.i.i.i162.i.i, align 8
  %conv.i.i163.i.i = zext i32 %call2.i.i.i to i64
  %conv1.i.i164.i.i = trunc i32 %152 to i16
  %conv5.i.i165.i.i = zext i1 %spec.select124.i.i to i8
  %165 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i163.i.i) #12
  %166 = ptrtoint ptr %164 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %164, align 8
  %167 = and i16 %conv1.i.i164.i.i, 16383
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #12
  %length3.i.i.i167.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %164, i32 0, i32 1
  %169 = ptrtoint ptr %length3.i.i.i167.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %length3.i.i.i167.i.i, align 8
  %mss_loopback.i.i.i169.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %164, i32 0, i32 2
  %170 = ptrtoint ptr %mss_loopback.i.i.i169.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %149, ptr %mss_loopback.i.i.i169.i.i, align 2
  %or23.i.i.i170.i.i = select i1 %spec.select124.i.i, i16 48, i16 0
  %header_length_flags.i.i.i171.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %164, i32 0, i32 3
  %171 = ptrtoint ptr %header_length_flags.i.i.i171.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %or23.i.i.i170.i.i, ptr %header_length_flags.i.i.i171.i.i, align 4
  %vlan_tag33.i.i.i172.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %164, i32 0, i32 4
  %172 = ptrtoint ptr %vlan_tag33.i.i.i172.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %vlan_tag33.i.i.i172.i.i, align 2
  %173 = ptrtoint ptr %to_use.i.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %to_use.i.i.i161.i.i, align 4
  %sop1.i.i.i173.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %sop1.i.i.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %sop1.i.i.i173.i.i, align 4
  %cq_entry2.i.i.i174.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 8
  %176 = ptrtoint ptr %cq_entry2.i.i.i174.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv5.i.i165.i.i, ptr %cq_entry2.i.i.i174.i.i, align 8
  %compressed_send3.i.i.i175.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 10
  %177 = ptrtoint ptr %compressed_send3.i.i.i175.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %compressed_send3.i.i.i175.i.i, align 2
  %desc_skip_cnt4.i.i.i176.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 9
  %178 = ptrtoint ptr %desc_skip_cnt4.i.i.i176.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %desc_skip_cnt4.i.i.i176.i.i, align 1
  %spec.select.i.i.i178.i.i = select i1 %spec.select124.i.i, ptr %skb, ptr null
  %os_buf5.i.i.i179.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 2
  %179 = ptrtoint ptr %os_buf5.i.i.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %spec.select.i.i.i178.i.i, ptr %os_buf5.i.i.i179.i.i, align 8
  %dma_addr6.i.i.i180.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 1
  %180 = ptrtoint ptr %dma_addr6.i.i.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call2.i.i.i, ptr %dma_addr6.i.i.i180.i.i, align 4
  %len7.i.i.i181.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 3
  %181 = ptrtoint ptr %len7.i.i.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %152, ptr %len7.i.i.i181.i.i, align 4
  %wr_id.i.i.i182.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %174, i32 0, i32 7
  %182 = ptrtoint ptr %wr_id.i.i.i182.i.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 0, ptr %wr_id.i.i.i182.i.i, align 8
  %183 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %174, align 8
  store ptr %184, ptr %to_use.i.i.i161.i.i, align 4
  %185 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i184.i.i = add i32 %186, -1
  store i32 %sub.i.i.i184.i.i, ptr %desc_avail.i, align 4
  %sub61.i.i = sub i32 %frag_len_left.1194.i.i, %152
  %add62.i.i = add i32 %152, %offset.1193.i.i
  %tobool32.not.i.i = icmp eq i32 %sub61.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end53.i.i.for.inc.i.i_crit_edge, label %if.end53.i.i.while.body33.i.i_crit_edge

if.end53.i.i.while.body33.i.i_crit_edge:          ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body33.i.i

if.end53.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end53.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bio_vec, ptr %frag.0197.i.i, i32 1
  %tobool27.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool27.not.i.i, label %for.inc.i.i.if.end31thread-pre-split_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end31thread-pre-split_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31thread-pre-split

if.else9.i:                                       ; preds = %if.end5.i
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %187 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %bf.load10.i = load i16, ptr %encapsulation.i, align 8
  %188 = and i16 %bf.load10.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool13.not.i = icmp eq i16 %188, 0
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else9.i
  %189 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len, align 4
  %data_len.i.i79.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %191 = ptrtoint ptr %data_len.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %data_len.i.i79.i, align 8
  %sub.i.i80.i = sub i32 %190, %192
  %pdev.i81.i = getelementptr i8, ptr %netdev, i32 2308
  %193 = ptrtoint ptr %pdev.i81.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev.i81.i, align 4
  %dev.i82.i = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %data.i83.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %195 = ptrtoint ptr %data.i83.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data.i83.i, align 4
  %call.i.i84.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %196) #12
  br i1 %call.i.i84.i, label %land.rhs.i.i86.i, label %if.end39.i.i98.i

land.rhs.i.i86.i:                                 ; preds = %if.then14.i
  %.b1.i.i85.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i85.i, label %land.rhs.i.i86.i.dma_map_single_attrs.exit.i102.i_crit_edge, label %if.then.i.i90.i, !prof !232

land.rhs.i.i86.i.dma_map_single_attrs.exit.i102.i_crit_edge: ; preds = %land.rhs.i.i86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i102.i

if.then.i.i90.i:                                  ; preds = %land.rhs.i.i86.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i87.i = tail call ptr @dev_driver_string(ptr noundef %dev.i82.i) #12
  %init_name.i.i.i88.i = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44, i32 3
  %197 = ptrtoint ptr %init_name.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %init_name.i.i.i88.i, align 8
  %tobool.not.i.i.i89.i = icmp eq ptr %198, null
  br i1 %tobool.not.i.i.i89.i, label %if.end.i.i.i91.i, label %if.then.i.i90.i.dev_name.exit.i.i93.i_crit_edge

if.then.i.i90.i.dev_name.exit.i.i93.i_crit_edge:  ; preds = %if.then.i.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i93.i

if.end.i.i.i91.i:                                 ; preds = %if.then.i.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  %199 = ptrtoint ptr %dev.i82.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i82.i, align 4
  br label %dev_name.exit.i.i93.i

dev_name.exit.i.i93.i:                            ; preds = %if.end.i.i.i91.i, %if.then.i.i90.i.dev_name.exit.i.i93.i_crit_edge
  %retval.0.i.i.i92.i = phi ptr [ %200, %if.end.i.i.i91.i ], [ %198, %if.then.i.i90.i.dev_name.exit.i.i93.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i87.i, ptr noundef %retval.0.i.i.i92.i) #12
  br label %dma_map_single_attrs.exit.i102.i

if.end39.i.i98.i:                                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev.i82.i, ptr noundef %196, i32 noundef %sub.i.i80.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %201 = load ptr, ptr @mem_map, align 4
  %202 = ptrtoint ptr %196 to i32
  %sub.i28.i.i = add i32 %202, 1073741824
  %shr.i.i94.i = lshr i32 %sub.i28.i.i, 12
  %add.ptr.i.i95.i = getelementptr %struct.page, ptr %201, i32 %shr.i.i94.i
  %and.i.i96.i = and i32 %202, 4095
  %call41.i.i97.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i82.i, ptr noundef %add.ptr.i.i95.i, i32 noundef %and.i.i96.i, i32 noundef %sub.i.i80.i, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i102.i

dma_map_single_attrs.exit.i102.i:                 ; preds = %if.end39.i.i98.i, %dev_name.exit.i.i93.i, %land.rhs.i.i86.i.dma_map_single_attrs.exit.i102.i_crit_edge
  %retval.0.i.i99.i = phi i32 [ %call41.i.i97.i, %if.end39.i.i98.i ], [ -1, %dev_name.exit.i.i93.i ], [ -1, %land.rhs.i.i86.i.dma_map_single_attrs.exit.i102.i_crit_edge ]
  %203 = ptrtoint ptr %pdev.i81.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i81.i, align 4
  %dev.i.i100.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i100.i, i32 noundef %retval.0.i.i99.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i99.i)
  %cmp.i.not.i.i101.i = icmp eq i32 %retval.0.i.i99.i, -1
  br i1 %cmp.i.not.i.i101.i, label %do.body.i.i105.i, label %if.end.i109.i, !prof !241

do.body.i.i105.i:                                 ; preds = %dma_map_single_attrs.exit.i102.i
  %call3.i.i103.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i103.i)
  %tobool4.not.i.i104.i = icmp eq i32 %call3.i.i103.i, 0
  br i1 %tobool4.not.i.i104.i, label %do.body.i.i105.i.if.then33.i_crit_edge, label %do.body.i.i105.i.if.then33.i.sink.split_crit_edge

do.body.i.i105.i.if.then33.i.sink.split_crit_edge: ; preds = %do.body.i.i105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i.i105.i.if.then33.i_crit_edge:           ; preds = %do.body.i.i105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end.i109.i:                                    ; preds = %dma_map_single_attrs.exit.i102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp.i107.i = icmp eq i32 %192, 0
  %to_use.i.i.i.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %205 = ptrtoint ptr %to_use.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %to_use.i.i.i.i, align 4
  %desc.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %206, i32 0, i32 6
  %207 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %desc.i.i.i.i, align 8
  %conv.i.i108.i = zext i32 %retval.0.i.i99.i to i64
  %conv1.i.i.i = trunc i32 %sub.i.i80.i to i16
  %conv5.i.i.i = zext i1 %cmp.i107.i to i8
  %conv9.i.i.i = trunc i32 %loopback.0.i to i8
  %209 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i108.i) #12
  %210 = ptrtoint ptr %208 to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %209, ptr %208, align 8
  %211 = and i16 %conv1.i.i.i, 16383
  %212 = tail call i16 @llvm.bswap.i16(i16 %211) #12
  %length3.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %208, i32 0, i32 1
  %213 = ptrtoint ptr %length3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %length3.i.i.i.i, align 8
  %214 = shl nuw nsw i8 %conv9.i.i.i, 1
  %215 = or i8 %214, 28
  %or.i.i.i.i = zext i8 %215 to i16
  %216 = shl nuw nsw i16 %or.i.i.i.i, 8
  %mss_loopback.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %208, i32 0, i32 2
  %217 = ptrtoint ptr %mss_loopback.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %mss_loopback.i.i.i.i, align 2
  %or23.i.i.i.i = select i1 %cmp.i107.i, i16 12288, i16 0
  %or31.i.i.i.i = or i16 %or23.i.i.i.i, %vlan_tag_insert.0.i
  %218 = lshr exact i16 %or31.i.i.i.i, 8
  %header_length_flags.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %208, i32 0, i32 3
  %219 = ptrtoint ptr %header_length_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %header_length_flags.i.i.i.i, align 4
  %220 = tail call i16 @llvm.bswap.i16(i16 %vlan_tag.0.shrunk.i) #12
  %vlan_tag33.i.i.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %208, i32 0, i32 4
  %221 = ptrtoint ptr %vlan_tag33.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %vlan_tag33.i.i.i.i, align 2
  %222 = ptrtoint ptr %to_use.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %to_use.i.i.i.i, align 4
  %sop1.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %sop1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %sop1.i.i.i.i, align 4
  %cq_entry2.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 8
  %225 = ptrtoint ptr %cq_entry2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv5.i.i.i, ptr %cq_entry2.i.i.i.i, align 8
  %compressed_send3.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 10
  %226 = ptrtoint ptr %compressed_send3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %compressed_send3.i.i.i.i, align 2
  %desc_skip_cnt4.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 9
  %227 = ptrtoint ptr %desc_skip_cnt4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %desc_skip_cnt4.i.i.i.i, align 1
  %spec.select.i.i.i.i = select i1 %cmp.i107.i, ptr %skb, ptr null
  %os_buf5.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 2
  %228 = ptrtoint ptr %os_buf5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %spec.select.i.i.i.i, ptr %os_buf5.i.i.i.i, align 8
  %dma_addr6.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 1
  %229 = ptrtoint ptr %dma_addr6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %retval.0.i.i99.i, ptr %dma_addr6.i.i.i.i, align 4
  %len7.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 3
  %230 = ptrtoint ptr %len7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %sub.i.i80.i, ptr %len7.i.i.i.i, align 4
  %wr_id.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %223, i32 0, i32 7
  %231 = ptrtoint ptr %wr_id.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 0, ptr %wr_id.i.i.i.i, align 8
  %232 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %223, align 8
  store ptr %233, ptr %to_use.i.i.i.i, align 4
  %234 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i.i = add i32 %235, -1
  store i32 %sub.i.i.i.i, ptr %desc_avail.i, align 4
  br i1 %cmp.i107.i, label %if.end.i109.i.if.end31_crit_edge, label %if.end.i109.i.for.body.lr.ph.i_crit_edge

if.end.i109.i.for.body.lr.ph.i_crit_edge:         ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i

if.end.i109.i.if.end31_crit_edge:                 ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else16.i:                                      ; preds = %if.else9.i
  %236 = and i16 %bf.load10.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %236)
  %cmp.i = icmp eq i16 %236, 1536
  %237 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len, align 4
  %data_len.i.i112.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %239 = ptrtoint ptr %data_len.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %data_len.i.i112.i, align 8
  %sub.i.i113.i = sub i32 %238, %240
  br i1 %cmp.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else16.i
  %241 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %241, align 8
  %conv.i.i114.i = zext i16 %243 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %244 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %246 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %247 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i114.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i34.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %csum_offset2.i.i = getelementptr inbounds %struct.anon.127, ptr %241, i32 0, i32 1
  %248 = ptrtoint ptr %csum_offset2.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %csum_offset2.i.i, align 2
  %pdev.i115.i = getelementptr i8, ptr %netdev, i32 2308
  %250 = ptrtoint ptr %pdev.i115.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pdev.i115.i, align 4
  %dev.i116.i = getelementptr inbounds %struct.pci_dev, ptr %251, i32 0, i32 44
  %call.i.i117.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %245) #12
  br i1 %call.i.i117.i, label %land.rhs.i.i119.i, label %if.end39.i.i131.i

land.rhs.i.i119.i:                                ; preds = %if.then23.i
  %.b1.i.i118.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i118.i, label %land.rhs.i.i119.i.dma_map_single_attrs.exit.i135.i_crit_edge, label %if.then.i.i123.i, !prof !232

land.rhs.i.i119.i.dma_map_single_attrs.exit.i135.i_crit_edge: ; preds = %land.rhs.i.i119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i135.i

if.then.i.i123.i:                                 ; preds = %land.rhs.i.i119.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i120.i = tail call ptr @dev_driver_string(ptr noundef %dev.i116.i) #12
  %init_name.i.i.i121.i = getelementptr inbounds %struct.pci_dev, ptr %251, i32 0, i32 44, i32 3
  %252 = ptrtoint ptr %init_name.i.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %init_name.i.i.i121.i, align 8
  %tobool.not.i.i.i122.i = icmp eq ptr %253, null
  br i1 %tobool.not.i.i.i122.i, label %if.end.i.i.i124.i, label %if.then.i.i123.i.dev_name.exit.i.i126.i_crit_edge

if.then.i.i123.i.dev_name.exit.i.i126.i_crit_edge: ; preds = %if.then.i.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i126.i

if.end.i.i.i124.i:                                ; preds = %if.then.i.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  %254 = ptrtoint ptr %dev.i116.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev.i116.i, align 4
  br label %dev_name.exit.i.i126.i

dev_name.exit.i.i126.i:                           ; preds = %if.end.i.i.i124.i, %if.then.i.i123.i.dev_name.exit.i.i126.i_crit_edge
  %retval.0.i.i.i125.i = phi ptr [ %255, %if.end.i.i.i124.i ], [ %253, %if.then.i.i123.i.dev_name.exit.i.i126.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i120.i, ptr noundef %retval.0.i.i.i125.i) #12
  br label %dma_map_single_attrs.exit.i135.i

if.end39.i.i131.i:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev.i116.i, ptr noundef %245, i32 noundef %sub.i.i113.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %256 = load ptr, ptr @mem_map, align 4
  %sub.i35.i.i = add i32 %sub.ptr.lhs.cast.i.i.i.i, 1073741824
  %shr.i.i127.i = lshr i32 %sub.i35.i.i, 12
  %add.ptr.i.i128.i = getelementptr %struct.page, ptr %256, i32 %shr.i.i127.i
  %and.i.i129.i = and i32 %sub.ptr.lhs.cast.i.i.i.i, 4095
  %call41.i.i130.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i116.i, ptr noundef %add.ptr.i.i128.i, i32 noundef %and.i.i129.i, i32 noundef %sub.i.i113.i, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i135.i

dma_map_single_attrs.exit.i135.i:                 ; preds = %if.end39.i.i131.i, %dev_name.exit.i.i126.i, %land.rhs.i.i119.i.dma_map_single_attrs.exit.i135.i_crit_edge
  %retval.0.i.i132.i = phi i32 [ %call41.i.i130.i, %if.end39.i.i131.i ], [ -1, %dev_name.exit.i.i126.i ], [ -1, %land.rhs.i.i119.i.dma_map_single_attrs.exit.i135.i_crit_edge ]
  %257 = ptrtoint ptr %pdev.i115.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pdev.i115.i, align 4
  %dev.i.i133.i = getelementptr inbounds %struct.pci_dev, ptr %258, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i133.i, i32 noundef %retval.0.i.i132.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i132.i)
  %cmp.i.not.i.i134.i = icmp eq i32 %retval.0.i.i132.i, -1
  br i1 %cmp.i.not.i.i134.i, label %do.body.i.i138.i, label %if.end.i175.i, !prof !241

do.body.i.i138.i:                                 ; preds = %dma_map_single_attrs.exit.i135.i
  %call3.i.i136.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i136.i)
  %tobool4.not.i.i137.i = icmp eq i32 %call3.i.i136.i, 0
  br i1 %tobool4.not.i.i137.i, label %do.body.i.i138.i.if.then33.i_crit_edge, label %do.body.i.i138.i.if.then33.i.sink.split_crit_edge

do.body.i.i138.i.if.then33.i.sink.split_crit_edge: ; preds = %do.body.i.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i.i138.i.if.then33.i_crit_edge:           ; preds = %do.body.i.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end.i175.i:                                    ; preds = %dma_map_single_attrs.exit.i135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i144.i = icmp eq i32 %240, 0
  %to_use.i.i.i.i145.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %259 = ptrtoint ptr %to_use.i.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %to_use.i.i.i.i145.i, align 4
  %desc.i.i.i.i146.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %260, i32 0, i32 6
  %261 = ptrtoint ptr %desc.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %desc.i.i.i.i146.i, align 8
  %conv.i.i.i147.i = zext i32 %retval.0.i.i132.i to i64
  %conv1.i.i.i148.i = trunc i32 %sub.i.i113.i to i16
  %263 = trunc i32 %sub.i34.i.i to i16
  %conv2.i.i.i.i = add i16 %249, %263
  %conv5.i.i.i149.i = zext i1 %cmp.i144.i to i8
  %conv9.i.i.i150.i = trunc i32 %loopback.0.i to i8
  %264 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i147.i) #12
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %264, ptr %262, align 8
  %266 = and i16 %conv1.i.i.i148.i, 16383
  %267 = tail call i16 @llvm.bswap.i16(i16 %266) #12
  %length3.i.i.i.i151.i = getelementptr inbounds %struct.wq_enet_desc, ptr %262, i32 0, i32 1
  %268 = ptrtoint ptr %length3.i.i.i.i151.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %length3.i.i.i.i151.i, align 8
  %269 = shl i16 %conv2.i.i.i.i, 2
  %270 = shl nuw nsw i8 %conv9.i.i.i150.i, 1
  %shl8.i.i.i.i152.i = zext i8 %270 to i16
  %or.i.i.i.i153.i = or i16 %269, %shl8.i.i.i.i152.i
  %271 = tail call i16 @llvm.bswap.i16(i16 %or.i.i.i.i153.i) #12
  %mss_loopback.i.i.i.i154.i = getelementptr inbounds %struct.wq_enet_desc, ptr %262, i32 0, i32 2
  %272 = ptrtoint ptr %mss_loopback.i.i.i.i154.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %mss_loopback.i.i.i.i154.i, align 2
  %273 = and i16 %263, 1023
  %shl18.i.i.i.i155.i = select i1 %cmp.i144.i, i16 4096, i16 0
  %shl22.i.i.i.i156.i = select i1 %cmp.i144.i, i16 8192, i16 0
  %or23.i.i.i.i158.i = or i16 %vlan_tag_insert.0.i, %shl18.i.i.i.i155.i
  %or19.i.i.i.i159.i = or i16 %or23.i.i.i.i158.i, %shl22.i.i.i.i156.i
  %or15.i.i.i.i160.i = or i16 %or19.i.i.i.i159.i, %273
  %or31.i.i.i.i161.i = or i16 %or15.i.i.i.i160.i, 2048
  %274 = tail call i16 @llvm.bswap.i16(i16 %or31.i.i.i.i161.i) #12
  %header_length_flags.i.i.i.i162.i = getelementptr inbounds %struct.wq_enet_desc, ptr %262, i32 0, i32 3
  %275 = ptrtoint ptr %header_length_flags.i.i.i.i162.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %header_length_flags.i.i.i.i162.i, align 4
  %276 = tail call i16 @llvm.bswap.i16(i16 %vlan_tag.0.shrunk.i) #12
  %vlan_tag33.i.i.i.i163.i = getelementptr inbounds %struct.wq_enet_desc, ptr %262, i32 0, i32 4
  %277 = ptrtoint ptr %vlan_tag33.i.i.i.i163.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %276, ptr %vlan_tag33.i.i.i.i163.i, align 2
  %278 = ptrtoint ptr %to_use.i.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %to_use.i.i.i.i145.i, align 4
  %sop1.i.i.i.i164.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 5
  %280 = ptrtoint ptr %sop1.i.i.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 1, ptr %sop1.i.i.i.i164.i, align 4
  %cq_entry2.i.i.i.i165.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 8
  %281 = ptrtoint ptr %cq_entry2.i.i.i.i165.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv5.i.i.i149.i, ptr %cq_entry2.i.i.i.i165.i, align 8
  %compressed_send3.i.i.i.i166.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 10
  %282 = ptrtoint ptr %compressed_send3.i.i.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %compressed_send3.i.i.i.i166.i, align 2
  %desc_skip_cnt4.i.i.i.i167.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 9
  %283 = ptrtoint ptr %desc_skip_cnt4.i.i.i.i167.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %desc_skip_cnt4.i.i.i.i167.i, align 1
  %spec.select.i.i.i.i168.i = select i1 %cmp.i144.i, ptr %skb, ptr null
  %os_buf5.i.i.i.i169.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 2
  %284 = ptrtoint ptr %os_buf5.i.i.i.i169.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %spec.select.i.i.i.i168.i, ptr %os_buf5.i.i.i.i169.i, align 8
  %dma_addr6.i.i.i.i170.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 1
  %285 = ptrtoint ptr %dma_addr6.i.i.i.i170.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %retval.0.i.i132.i, ptr %dma_addr6.i.i.i.i170.i, align 4
  %len7.i.i.i.i171.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 3
  %286 = ptrtoint ptr %len7.i.i.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %sub.i.i113.i, ptr %len7.i.i.i.i171.i, align 4
  %wr_id.i.i.i.i172.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %279, i32 0, i32 7
  %287 = ptrtoint ptr %wr_id.i.i.i.i172.i to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 0, ptr %wr_id.i.i.i.i172.i, align 8
  %288 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %279, align 8
  store ptr %289, ptr %to_use.i.i.i.i145.i, align 4
  %290 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i.i174.i = add i32 %291, -1
  store i32 %sub.i.i.i.i174.i, ptr %desc_avail.i, align 4
  br i1 %cmp.i144.i, label %if.end.i175.i.if.end31_crit_edge, label %if.end.i175.i.for.body.lr.ph.i_crit_edge

if.end.i175.i.for.body.lr.ph.i_crit_edge:         ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i

if.end.i175.i.if.end31_crit_edge:                 ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else25.i:                                      ; preds = %if.else16.i
  %pdev.i180.i = getelementptr i8, ptr %netdev, i32 2308
  %292 = ptrtoint ptr %pdev.i180.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %pdev.i180.i, align 4
  %dev.i181.i = getelementptr inbounds %struct.pci_dev, ptr %293, i32 0, i32 44
  %data.i182.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %294 = ptrtoint ptr %data.i182.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %data.i182.i, align 4
  %call.i.i183.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %295) #12
  br i1 %call.i.i183.i, label %land.rhs.i.i185.i, label %if.end39.i.i197.i

land.rhs.i.i185.i:                                ; preds = %if.else25.i
  %.b1.i.i184.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i184.i, label %land.rhs.i.i185.i.dma_map_single_attrs.exit.i201.i_crit_edge, label %if.then.i.i189.i, !prof !232

land.rhs.i.i185.i.dma_map_single_attrs.exit.i201.i_crit_edge: ; preds = %land.rhs.i.i185.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i201.i

if.then.i.i189.i:                                 ; preds = %land.rhs.i.i185.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i186.i = tail call ptr @dev_driver_string(ptr noundef %dev.i181.i) #12
  %init_name.i.i.i187.i = getelementptr inbounds %struct.pci_dev, ptr %293, i32 0, i32 44, i32 3
  %296 = ptrtoint ptr %init_name.i.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %init_name.i.i.i187.i, align 8
  %tobool.not.i.i.i188.i = icmp eq ptr %297, null
  br i1 %tobool.not.i.i.i188.i, label %if.end.i.i.i190.i, label %if.then.i.i189.i.dev_name.exit.i.i192.i_crit_edge

if.then.i.i189.i.dev_name.exit.i.i192.i_crit_edge: ; preds = %if.then.i.i189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i192.i

if.end.i.i.i190.i:                                ; preds = %if.then.i.i189.i
  call void @__sanitizer_cov_trace_pc() #14
  %298 = ptrtoint ptr %dev.i181.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev.i181.i, align 4
  br label %dev_name.exit.i.i192.i

dev_name.exit.i.i192.i:                           ; preds = %if.end.i.i.i190.i, %if.then.i.i189.i.dev_name.exit.i.i192.i_crit_edge
  %retval.0.i.i.i191.i = phi ptr [ %299, %if.end.i.i.i190.i ], [ %297, %if.then.i.i189.i.dev_name.exit.i.i192.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i186.i, ptr noundef %retval.0.i.i.i191.i) #12
  br label %dma_map_single_attrs.exit.i201.i

if.end39.i.i197.i:                                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev.i181.i, ptr noundef %295, i32 noundef %sub.i.i113.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %300 = load ptr, ptr @mem_map, align 4
  %301 = ptrtoint ptr %295 to i32
  %sub.i26.i.i = add i32 %301, 1073741824
  %shr.i.i193.i = lshr i32 %sub.i26.i.i, 12
  %add.ptr.i.i194.i = getelementptr %struct.page, ptr %300, i32 %shr.i.i193.i
  %and.i.i195.i = and i32 %301, 4095
  %call41.i.i196.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i181.i, ptr noundef %add.ptr.i.i194.i, i32 noundef %and.i.i195.i, i32 noundef %sub.i.i113.i, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i201.i

dma_map_single_attrs.exit.i201.i:                 ; preds = %if.end39.i.i197.i, %dev_name.exit.i.i192.i, %land.rhs.i.i185.i.dma_map_single_attrs.exit.i201.i_crit_edge
  %retval.0.i.i198.i = phi i32 [ %call41.i.i196.i, %if.end39.i.i197.i ], [ -1, %dev_name.exit.i.i192.i ], [ -1, %land.rhs.i.i185.i.dma_map_single_attrs.exit.i201.i_crit_edge ]
  %302 = ptrtoint ptr %pdev.i180.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pdev.i180.i, align 4
  %dev.i.i199.i = getelementptr inbounds %struct.pci_dev, ptr %303, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i199.i, i32 noundef %retval.0.i.i198.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i198.i)
  %cmp.i.not.i.i200.i = icmp eq i32 %retval.0.i.i198.i, -1
  br i1 %cmp.i.not.i.i200.i, label %do.body.i.i204.i, label %if.end.i236.i, !prof !241

do.body.i.i204.i:                                 ; preds = %dma_map_single_attrs.exit.i201.i
  %call3.i.i202.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i202.i)
  %tobool4.not.i.i203.i = icmp eq i32 %call3.i.i202.i, 0
  br i1 %tobool4.not.i.i203.i, label %do.body.i.i204.i.if.then33.i_crit_edge, label %do.body.i.i204.i.if.then33.i.sink.split_crit_edge

do.body.i.i204.i.if.then33.i.sink.split_crit_edge: ; preds = %do.body.i.i204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i.i204.i.if.then33.i_crit_edge:           ; preds = %do.body.i.i204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end.i236.i:                                    ; preds = %dma_map_single_attrs.exit.i201.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i210.i = icmp eq i32 %240, 0
  %to_use.i.i.i.i211.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %304 = ptrtoint ptr %to_use.i.i.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %to_use.i.i.i.i211.i, align 4
  %desc.i.i.i.i212.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %305, i32 0, i32 6
  %306 = ptrtoint ptr %desc.i.i.i.i212.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %desc.i.i.i.i212.i, align 8
  %conv.i.i.i213.i = zext i32 %retval.0.i.i198.i to i64
  %conv1.i.i.i214.i = trunc i32 %sub.i.i113.i to i16
  %conv5.i.i.i215.i = zext i1 %cmp.i210.i to i8
  %conv9.i.i.i216.i = trunc i32 %loopback.0.i to i8
  %308 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i213.i) #12
  %309 = ptrtoint ptr %307 to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %308, ptr %307, align 8
  %310 = and i16 %conv1.i.i.i214.i, 16383
  %311 = tail call i16 @llvm.bswap.i16(i16 %310) #12
  %length3.i.i.i.i217.i = getelementptr inbounds %struct.wq_enet_desc, ptr %307, i32 0, i32 1
  %312 = ptrtoint ptr %length3.i.i.i.i217.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %311, ptr %length3.i.i.i.i217.i, align 8
  %313 = shl nuw nsw i8 %conv9.i.i.i216.i, 1
  %shl8.i.i.i.i218.i = zext i8 %313 to i16
  %314 = shl nuw nsw i16 %shl8.i.i.i.i218.i, 8
  %mss_loopback.i.i.i.i219.i = getelementptr inbounds %struct.wq_enet_desc, ptr %307, i32 0, i32 2
  %315 = ptrtoint ptr %mss_loopback.i.i.i.i219.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %314, ptr %mss_loopback.i.i.i.i219.i, align 2
  %or23.i.i.i.i220.i = select i1 %cmp.i210.i, i16 12288, i16 0
  %or31.i.i.i.i222.i = or i16 %or23.i.i.i.i220.i, %vlan_tag_insert.0.i
  %316 = lshr exact i16 %or31.i.i.i.i222.i, 8
  %header_length_flags.i.i.i.i223.i = getelementptr inbounds %struct.wq_enet_desc, ptr %307, i32 0, i32 3
  %317 = ptrtoint ptr %header_length_flags.i.i.i.i223.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %316, ptr %header_length_flags.i.i.i.i223.i, align 4
  %318 = tail call i16 @llvm.bswap.i16(i16 %vlan_tag.0.shrunk.i) #12
  %vlan_tag33.i.i.i.i224.i = getelementptr inbounds %struct.wq_enet_desc, ptr %307, i32 0, i32 4
  %319 = ptrtoint ptr %vlan_tag33.i.i.i.i224.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %vlan_tag33.i.i.i.i224.i, align 2
  %320 = ptrtoint ptr %to_use.i.i.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %to_use.i.i.i.i211.i, align 4
  %sop1.i.i.i.i225.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 5
  %322 = ptrtoint ptr %sop1.i.i.i.i225.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 1, ptr %sop1.i.i.i.i225.i, align 4
  %cq_entry2.i.i.i.i226.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 8
  %323 = ptrtoint ptr %cq_entry2.i.i.i.i226.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %conv5.i.i.i215.i, ptr %cq_entry2.i.i.i.i226.i, align 8
  %compressed_send3.i.i.i.i227.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 10
  %324 = ptrtoint ptr %compressed_send3.i.i.i.i227.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 0, ptr %compressed_send3.i.i.i.i227.i, align 2
  %desc_skip_cnt4.i.i.i.i228.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 9
  %325 = ptrtoint ptr %desc_skip_cnt4.i.i.i.i228.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %desc_skip_cnt4.i.i.i.i228.i, align 1
  %spec.select.i.i.i.i229.i = select i1 %cmp.i210.i, ptr %skb, ptr null
  %os_buf5.i.i.i.i230.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 2
  %326 = ptrtoint ptr %os_buf5.i.i.i.i230.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %spec.select.i.i.i.i229.i, ptr %os_buf5.i.i.i.i230.i, align 8
  %dma_addr6.i.i.i.i231.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 1
  %327 = ptrtoint ptr %dma_addr6.i.i.i.i231.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %retval.0.i.i198.i, ptr %dma_addr6.i.i.i.i231.i, align 4
  %len7.i.i.i.i232.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 3
  %328 = ptrtoint ptr %len7.i.i.i.i232.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %sub.i.i113.i, ptr %len7.i.i.i.i232.i, align 4
  %wr_id.i.i.i.i233.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %321, i32 0, i32 7
  %329 = ptrtoint ptr %wr_id.i.i.i.i233.i to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 0, ptr %wr_id.i.i.i.i233.i, align 8
  %330 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %321, align 8
  store ptr %331, ptr %to_use.i.i.i.i211.i, align 4
  %332 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i.i235.i = add i32 %333, -1
  store i32 %sub.i.i.i.i235.i, ptr %desc_avail.i, align 4
  br i1 %cmp.i210.i, label %if.end.i236.i.if.end31_crit_edge, label %if.end.i236.i.for.body.lr.ph.i_crit_edge

if.end.i236.i.for.body.lr.ph.i_crit_edge:         ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i

if.end.i236.i.if.end31_crit_edge:                 ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

for.body.lr.ph.i:                                 ; preds = %if.end.i236.i.for.body.lr.ph.i_crit_edge, %if.end.i175.i.for.body.lr.ph.i_crit_edge, %if.end.i109.i.for.body.lr.ph.i_crit_edge
  %.pre-phi = phi i8 [ %214, %if.end.i109.i.for.body.lr.ph.i_crit_edge ], [ %270, %if.end.i175.i.for.body.lr.ph.i_crit_edge ], [ %313, %if.end.i236.i.for.body.lr.ph.i_crit_edge ]
  %.sink.i = phi i32 [ %192, %if.end.i109.i.for.body.lr.ph.i_crit_edge ], [ %240, %if.end.i175.i.for.body.lr.ph.i_crit_edge ], [ %240, %if.end.i236.i.for.body.lr.ph.i_crit_edge ]
  %334 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %end.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %335, i32 0, i32 12
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %to_use.i.i.i.i87 = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %336 = and i8 %.pre-phi, 2
  %shl8.i.i.i.i = zext i8 %336 to i16
  %337 = shl nuw nsw i16 %shl8.i.i.i.i, 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %frag.025.i = phi ptr [ %frags.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %len_left.addr.024.i = phi i32 [ %.sink.i, %for.body.lr.ph.i ], [ %sub.i, %if.end.i.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.025.i, i32 0, i32 1
  %338 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %bv_len.i.i, align 4
  %340 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %341, i32 0, i32 44
  %342 = ptrtoint ptr %frag.025.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %frag.025.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.025.i, i32 0, i32 2
  %344 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %343, i32 noundef %345, i32 noundef %339, i32 noundef 1, i32 noundef 0) #12
  %346 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pdev.i, align 4
  %dev.i.i90 = getelementptr inbounds %struct.pci_dev, ptr %347, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i90, i32 noundef %call2.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i.i, label %do.body.i.i, label %if.end.i, !prof !241

do.body.i.i:                                      ; preds = %for.body.i
  %call3.i.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.then33.i_crit_edge, label %do.body.i.i.if.then33.i.sink.split_crit_edge

do.body.i.i.if.then33.i.sink.split_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.sink.split

do.body.i.i.if.then33.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %len_left.addr.024.i, %339
  %348 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i91 = icmp eq i32 %sub.i, 0
  %350 = ptrtoint ptr %to_use.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %to_use.i.i.i.i87, align 4
  %desc.i.i.i.i92 = getelementptr inbounds %struct.vnic_wq_buf, ptr %351, i32 0, i32 6
  %352 = ptrtoint ptr %desc.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %desc.i.i.i.i92, align 8
  %conv.i.i.i93 = zext i32 %call2.i.i to i64
  %conv1.i.i.i94 = trunc i32 %349 to i16
  %conv5.i.i.i95 = zext i1 %cmp.i91 to i8
  %354 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i93) #12
  %355 = ptrtoint ptr %353 to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 %354, ptr %353, align 8
  %356 = and i16 %conv1.i.i.i94, 16383
  %357 = tail call i16 @llvm.bswap.i16(i16 %356) #12
  %length3.i.i.i.i96 = getelementptr inbounds %struct.wq_enet_desc, ptr %353, i32 0, i32 1
  %358 = ptrtoint ptr %length3.i.i.i.i96 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %357, ptr %length3.i.i.i.i96, align 8
  %mss_loopback.i.i.i.i97 = getelementptr inbounds %struct.wq_enet_desc, ptr %353, i32 0, i32 2
  %359 = ptrtoint ptr %mss_loopback.i.i.i.i97 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %337, ptr %mss_loopback.i.i.i.i97, align 2
  %or23.i.i.i.i98 = select i1 %cmp.i91, i16 48, i16 0
  %header_length_flags.i.i.i.i99 = getelementptr inbounds %struct.wq_enet_desc, ptr %353, i32 0, i32 3
  %360 = ptrtoint ptr %header_length_flags.i.i.i.i99 to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %or23.i.i.i.i98, ptr %header_length_flags.i.i.i.i99, align 4
  %vlan_tag33.i.i.i.i100 = getelementptr inbounds %struct.wq_enet_desc, ptr %353, i32 0, i32 4
  %361 = ptrtoint ptr %vlan_tag33.i.i.i.i100 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 0, ptr %vlan_tag33.i.i.i.i100, align 2
  %362 = ptrtoint ptr %to_use.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %to_use.i.i.i.i87, align 4
  %sop1.i.i.i.i101 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 5
  %364 = ptrtoint ptr %sop1.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %sop1.i.i.i.i101, align 4
  %cq_entry2.i.i.i.i102 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 8
  %365 = ptrtoint ptr %cq_entry2.i.i.i.i102 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %conv5.i.i.i95, ptr %cq_entry2.i.i.i.i102, align 8
  %compressed_send3.i.i.i.i103 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 10
  %366 = ptrtoint ptr %compressed_send3.i.i.i.i103 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %compressed_send3.i.i.i.i103, align 2
  %desc_skip_cnt4.i.i.i.i104 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 9
  %367 = ptrtoint ptr %desc_skip_cnt4.i.i.i.i104 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 1, ptr %desc_skip_cnt4.i.i.i.i104, align 1
  %spec.select.i.i.i.i105 = select i1 %cmp.i91, ptr %skb, ptr null
  %os_buf5.i.i.i.i106 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 2
  %368 = ptrtoint ptr %os_buf5.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %spec.select.i.i.i.i105, ptr %os_buf5.i.i.i.i106, align 8
  %dma_addr6.i.i.i.i107 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 1
  %369 = ptrtoint ptr %dma_addr6.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %call2.i.i, ptr %dma_addr6.i.i.i.i107, align 4
  %len7.i.i.i.i108 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 3
  %370 = ptrtoint ptr %len7.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %349, ptr %len7.i.i.i.i108, align 4
  %wr_id.i.i.i.i109 = getelementptr inbounds %struct.vnic_wq_buf, ptr %363, i32 0, i32 7
  %371 = ptrtoint ptr %wr_id.i.i.i.i109 to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 0, ptr %wr_id.i.i.i.i109, align 8
  %372 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %363, align 8
  store ptr %373, ptr %to_use.i.i.i.i87, align 4
  %374 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %desc_avail.i, align 4
  %sub.i.i.i.i110 = add i32 %375, -1
  store i32 %sub.i.i.i.i110, ptr %desc_avail.i, align 4
  %incdec.ptr.i = getelementptr %struct.bio_vec, ptr %frag.025.i, i32 1
  br i1 %cmp.i91, label %if.end.i.if.end31_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then33.i.sink.split:                           ; preds = %do.body.i.i.if.then33.i.sink.split_crit_edge, %do.body.i.i204.i.if.then33.i.sink.split_crit_edge, %do.body.i.i138.i.if.then33.i.sink.split_crit_edge, %do.body.i.i105.i.if.then33.i.sink.split_crit_edge, %do.body.i153.i.i.if.then33.i.sink.split_crit_edge, %do.body.i.i.i.if.then33.i.sink.split_crit_edge
  %376 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %add.ptr.i, align 128
  %call7.i.i205.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %377) #15
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.then33.i.sink.split, %do.body.i.i.if.then33.i_crit_edge, %do.body.i.i204.i.if.then33.i_crit_edge, %do.body.i.i138.i.if.then33.i_crit_edge, %do.body.i.i105.i.if.then33.i_crit_edge, %do.body.i153.i.i.if.then33.i_crit_edge, %do.body.i.i.i.if.then33.i_crit_edge
  %gen_stats.i.i = getelementptr i8, ptr %netdev, i32 18840
  %378 = ptrtoint ptr %gen_stats.i.i to i32
  call void @__asan_load8_noabort(i32 %378)
  %379 = load i64, ptr %gen_stats.i.i, align 8
  %inc.i.i = add i64 %379, 1
  store i64 %inc.i.i, ptr %gen_stats.i.i, align 8
  %to_use.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %380 = ptrtoint ptr %to_use.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %to_use.i, align 4
  %buf.0.in248.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %381, i32 0, i32 11
  %382 = ptrtoint ptr %buf.0.in248.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %buf.0249.i = load ptr, ptr %buf.0.in248.i, align 4
  %os_buf250.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0249.i, i32 0, i32 2
  %383 = ptrtoint ptr %os_buf250.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %os_buf250.i, align 8
  %tobool34.not251.i = icmp eq ptr %384, null
  br i1 %tobool34.not251.i, label %land.rhs.lr.ph.i, label %if.then33.i.enic_queue_wq_skb.exit_crit_edge

if.then33.i.enic_queue_wq_skb.exit_crit_edge:     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_queue_wq_skb.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then33.i
  %to_clean.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 6
  %vdev.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %enic_free_wq_buf.exit.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %buf.0252.i = phi ptr [ %buf.0249.i, %land.rhs.lr.ph.i ], [ %buf.0.i, %enic_free_wq_buf.exit.land.rhs.i_crit_edge ]
  %385 = ptrtoint ptr %buf.0252.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %buf.0252.i, align 8
  %387 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %to_clean.i, align 4
  %cmp35.not.i = icmp eq ptr %386, %388
  br i1 %cmp35.not.i, label %land.rhs.i.enic_queue_wq_skb.exit_crit_edge, label %while.body.i

land.rhs.i.enic_queue_wq_skb.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_queue_wq_skb.exit

while.body.i:                                     ; preds = %land.rhs.i
  %389 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call ptr @vnic_dev_priv(ptr noundef %390) #12
  %pdev1.i = getelementptr inbounds %struct.enic, ptr %call.i, i32 0, i32 1
  %391 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %pdev1.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %392, i32 0, i32 44
  %dma_addr3.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0252.i, i32 0, i32 1
  %393 = ptrtoint ptr %dma_addr3.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %dma_addr3.i, align 4
  %len4.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0252.i, i32 0, i32 3
  %395 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %len4.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %394, i32 noundef %396, i32 noundef 1, i32 noundef 0) #12
  %os_buf.i85 = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0252.i, i32 0, i32 2
  %397 = ptrtoint ptr %os_buf.i85 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %os_buf.i85, align 8
  %tobool5.not.i = icmp eq ptr %398, null
  br i1 %tobool5.not.i, label %while.body.i.enic_free_wq_buf.exit_crit_edge, label %if.then6.i

while.body.i.enic_free_wq_buf.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_free_wq_buf.exit

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %398, i32 noundef 1) #12
  br label %enic_free_wq_buf.exit

enic_free_wq_buf.exit:                            ; preds = %if.then6.i, %while.body.i.enic_free_wq_buf.exit_crit_edge
  %399 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %desc_avail.i, align 4
  %inc.i = add i32 %400, 1
  store i32 %inc.i, ptr %desc_avail.i, align 4
  %buf.0.in.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0252.i, i32 0, i32 11
  %401 = ptrtoint ptr %buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %buf.0.i = load ptr, ptr %buf.0.in.i, align 4
  %os_buf.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i, i32 0, i32 2
  %402 = ptrtoint ptr %os_buf.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %os_buf.i, align 8
  %tobool34.not.i = icmp eq ptr %403, null
  br i1 %tobool34.not.i, label %enic_free_wq_buf.exit.land.rhs.i_crit_edge, label %enic_free_wq_buf.exit.enic_queue_wq_skb.exit_crit_edge

enic_free_wq_buf.exit.enic_queue_wq_skb.exit_crit_edge: ; preds = %enic_free_wq_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_queue_wq_skb.exit

enic_free_wq_buf.exit.land.rhs.i_crit_edge:       ; preds = %enic_free_wq_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

enic_queue_wq_skb.exit:                           ; preds = %enic_free_wq_buf.exit.enic_queue_wq_skb.exit_crit_edge, %land.rhs.i.enic_queue_wq_skb.exit_crit_edge, %if.then33.i.enic_queue_wq_skb.exit_crit_edge
  %buf.0.lcssa.i = phi ptr [ %buf.0249.i, %if.then33.i.enic_queue_wq_skb.exit_crit_edge ], [ %buf.0252.i, %land.rhs.i.enic_queue_wq_skb.exit_crit_edge ], [ %buf.0.i, %enic_free_wq_buf.exit.enic_queue_wq_skb.exit_crit_edge ]
  %404 = ptrtoint ptr %buf.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %buf.0.lcssa.i, align 8
  %406 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %405, ptr %to_use.i, align 4
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %error

if.end31thread-pre-split:                         ; preds = %for.inc.i.i.if.end31thread-pre-split_crit_edge, %while.end.i.i.if.end31thread-pre-split_crit_edge
  %407 = ptrtoint ptr %desc_avail.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %.pr = load i32, ptr %desc_avail.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31thread-pre-split, %if.end.i.if.end31_crit_edge, %if.end.i236.i.if.end31_crit_edge, %if.end.i175.i.if.end31_crit_edge, %if.end.i109.i.if.end31_crit_edge
  %408 = phi i32 [ %.pr, %if.end31thread-pre-split ], [ %sub.i.i.i.i235.i, %if.end.i236.i.if.end31_crit_edge ], [ %sub.i.i.i.i174.i, %if.end.i175.i.if.end31_crit_edge ], [ %sub.i.i.i.i, %if.end.i109.i.if.end31_crit_edge ], [ %sub.i.i.i.i110, %if.end.i.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %408)
  %cmp33 = icmp ult i32 %408, 22
  br i1 %cmp33, label %if.then35, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %state.i72 = getelementptr %struct.netdev_queue, ptr %7, i32 %rem, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i72) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31.if.end36_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %409 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %410, i32 0, i32 3
  %411 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %tx_flags.i, align 1
  %413 = and i8 %412, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %tobool.not.i79 = icmp eq i8 %413, 0
  br i1 %tobool.not.i79, label %if.end36.skb_tx_timestamp.exit_crit_edge, label %if.then.i80

if.end36.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i80:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i80, %if.end36.skb_tx_timestamp.exit_crit_edge
  %414 = tail call i32 @llvm.read_register.i32(metadata !218) #12
  %and.i.i = and i32 %414, -16384
  %415 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %415, i32 0, i32 3
  %416 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %cpu.i, align 4
  %arrayidx.i81 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %417
  %418 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx.i81, align 4
  %add.i = add i32 %419, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %420 = inttoptr i32 %add.i to ptr
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %420, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %422)
  %tobool.i.not = icmp eq i8 %422, 0
  br i1 %tobool.i.not, label %skb_tx_timestamp.exit.if.then40_crit_edge, label %lor.lhs.false

skb_tx_timestamp.exit.if.then40_crit_edge:        ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

lor.lhs.false:                                    ; preds = %skb_tx_timestamp.exit
  %state.i82 = getelementptr %struct.netdev_queue, ptr %7, i32 %rem, i32 13
  %423 = ptrtoint ptr %state.i82 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %state.i82, align 4
  %and.i = and i32 %424, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i83.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i83.not, label %lor.lhs.false.error_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %skb_tx_timestamp.exit.if.then40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %to_use.i84 = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 5
  %425 = ptrtoint ptr %to_use.i84 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %to_use.i84, align 4
  %index.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %426, i32 0, i32 4
  %427 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %index.i, align 8
  %ctrl.i = getelementptr inbounds %struct.vnic_wq, ptr %arrayidx, i32 0, i32 2
  %429 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ctrl.i, align 4
  %posted_index.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %430, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %431 = tail call i32 @llvm.bswap.i32(i32 %428) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index.i, i32 %431) #12, !srcloc !236
  br label %error

error:                                            ; preds = %if.then40, %lor.lhs.false.error_crit_edge, %enic_queue_wq_skb.exit
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx16) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then24, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 16, %if.then24 ], [ 0, %error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @enic_features_check(ptr noundef %skb, ptr nocapture noundef readonly %dev, i64 noundef %features) #2 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %2 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inner_mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %encapsulation, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %9 to i32
  %10 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %7, label %if.end.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end.i.if.then.i.i.i_crit_edge76
  ]

if.end.i.if.then.i.i.i_crit_edge76:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end.i.vlan_get_protocol.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge76
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp.i.i.i = icmp ult i16 %9, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !241

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %vxlan_features_check.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %11 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %12 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !228
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %11, align 2, !annotation !228
  %14 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %18 = add i32 %vlan_depth.1.i.i.i, %17
  %sub.i1.i.i.i.i = sub i32 %15, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !232

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %20, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !241
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %21 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !241
  br i1 %21, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !241

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  br label %vxlan_features_check.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %23, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge77
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge77: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge77
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.end.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %7, %if.end.i.vlan_get_protocol.exit.i_crit_edge ], [ %23, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %25 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.134)
  switch i16 %retval.2.i.i.i, label %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

sw.bb.i:                                          ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i47.i = zext i16 %29 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i47.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i, align 8
  %network_header.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i49.i, align 4
  %conv.i.i50.i = zext i16 %33 to i32
  %add.ptr.i.i51.i = getelementptr i8, ptr %31, i32 %conv.i.i50.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i51.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %l4_hdr.0.in.i = phi ptr [ %nexthdr.i, %sw.bb2.i ], [ %protocol.i, %sw.bb.i ]
  %34 = ptrtoint ptr %l4_hdr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %l4_hdr.0.i = load i8, ptr %l4_hdr.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_hdr.0.i)
  %cmp.i = icmp eq i8 %l4_hdr.0.i, 17
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.vxlan_features_check.exit_crit_edge

sw.epilog.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %35 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load6.i = load i32, ptr %inner_protocol_type.i, align 2
  %36 = and i32 %bf.load6.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp11.not.i = icmp eq i32 %36, 0
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then32.i_crit_edge

land.lhs.true.i.if.then32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %39)
  %cmp14.not.i = icmp eq i16 %39, 25944
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then32.i_crit_edge

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %42 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %inner_mac_header.i, align 2
  %conv.i.i = zext i16 %43 to i32
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %44 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %transport_header.i.i, align 2
  %conv.i53.i = zext i16 %45 to i32
  %add.ptr.i54.i = getelementptr i8, ptr %41, i32 %conv.i53.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i54.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp19.not.i = icmp eq i32 %sub.ptr.sub.i, 16
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false16.i.if.then32.i_crit_edge

lor.lhs.false16.i.if.then32.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false16.i
  %46 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load22.i = load i16, ptr %encapsulation, align 8
  %47 = and i16 %bf.load22.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp27.not.i = icmp eq i16 %47, 0
  br i1 %cmp27.not.i, label %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, label %land.lhs.true29.i

lor.lhs.false21.i.vxlan_features_check.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

land.lhs.true29.i:                                ; preds = %lor.lhs.false21.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %49)
  %cmp.i.i = icmp eq i16 %49, -30458
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true29.i
  %and.i.i = and i64 %features, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i.i.if.then32.i_crit_edge, label %if.then.i.i.vxlan_features_check.exit_crit_edge

if.then.i.i.vxlan_features_check.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

if.then.i.i.if.then32.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.end.i.i:                                       ; preds = %land.lhs.true29.i
  %and3.i.i = and i64 %features, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i)
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.vxlan_features_check.exit_crit_edge

if.end.i.i.vxlan_features_check.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %49, label %if.end6.i.i.if.then32.i_crit_edge [
    i16 2048, label %can_checksum_protocol.exit.i
    i16 -31011, label %sw.bb12.i.i
  ]

if.end6.i.i.if.then32.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

sw.bb12.i.i:                                      ; preds = %if.end6.i.i
  %and13.i.i = and i64 %features, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i.i)
  %tobool14.i.not.i = icmp eq i64 %and13.i.i, 0
  br i1 %tobool14.i.not.i, label %sw.bb12.i.i.if.then32.i_crit_edge, label %sw.bb12.i.i.vxlan_features_check.exit_crit_edge

sw.bb12.i.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

sw.bb12.i.i.if.then32.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

can_checksum_protocol.exit.i:                     ; preds = %if.end6.i.i
  %and8.i.i = and i64 %features, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %tobool9.i.not.i = icmp eq i64 %and8.i.i, 0
  br i1 %tobool9.i.not.i, label %can_checksum_protocol.exit.i.if.then32.i_crit_edge, label %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge

can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

can_checksum_protocol.exit.i.if.then32.i_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.then32.i:                                      ; preds = %can_checksum_protocol.exit.i.if.then32.i_crit_edge, %sw.bb12.i.i.if.then32.i_crit_edge, %if.end6.i.i.if.then32.i_crit_edge, %if.then.i.i.if.then32.i_crit_edge, %lor.lhs.false16.i.if.then32.i_crit_edge, %lor.lhs.false.i.if.then32.i_crit_edge, %land.lhs.true.i.if.then32.i_crit_edge
  %and.i = and i64 %features, -34359672859
  br label %vxlan_features_check.exit

vxlan_features_check.exit:                        ; preds = %if.then32.i, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge, %if.end.i.i.vxlan_features_check.exit_crit_edge, %if.then.i.i.vxlan_features_check.exit_crit_edge, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, %sw.epilog.i.vxlan_features_check.exit_crit_edge, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0.i = phi i64 [ %and.i, %if.then32.i ], [ %features, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %features, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %features, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge ], [ %features, %sw.epilog.i.vxlan_features_check.exit_crit_edge ], [ %features, %if.then.i.i.vxlan_features_check.exit_crit_edge ], [ %features, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge ], [ %features, %do.end.i.i.i ], [ %features, %cleanup.thread.i.i.i ], [ %features, %if.end.i.i.vxlan_features_check.exit_crit_edge ]
  %51 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %protocol.i.i, align 8
  %53 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i52 = zext i16 %54 to i32
  %55 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.136)
  switch i16 %52, label %vxlan_features_check.exit.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %vxlan_features_check.exit.if.then.i.i53_crit_edge
    i16 -32512, label %vxlan_features_check.exit.if.then.i.i53_crit_edge78
  ]

vxlan_features_check.exit.if.then.i.i53_crit_edge78: ; preds = %vxlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i53

vxlan_features_check.exit.if.then.i.i53_crit_edge: ; preds = %vxlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i53

vxlan_features_check.exit.vlan_get_protocol.exit_crit_edge: ; preds = %vxlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit

if.then.i.i53:                                    ; preds = %vxlan_features_check.exit.if.then.i.i53_crit_edge, %vxlan_features_check.exit.if.then.i.i53_crit_edge78
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i.i, label %if.then.i.i53.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i53.if.end26.i.i_crit_edge:             ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %54)
  %cmp.i.i54 = icmp ult i16 %54, 4
  br i1 %cmp.i.i54, label %do.end.i.i, label %if.end25.i.i, !prof !241

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %out

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add nsw i32 %conv.i.i52, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i53.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i53.if.end26.i.i_crit_edge ]
  %56 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  %57 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !228
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %56, align 2, !annotation !228
  %59 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i.i, align 4
  %61 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i.i.i, align 8
  %63 = add i32 %vlan_depth.1.i.i, %62
  %sub.i1.i.i.i = sub i32 %60, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !232

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %65, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !241
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %66 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !241
  br i1 %66, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !241

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  br label %out

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.137)
  switch i16 %68, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge79
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge79: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge79
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %vxlan_features_check.exit.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %52, %vxlan_features_check.exit.vlan_get_protocol.exit_crit_edge ], [ %68, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %70 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.out_crit_edge [
    i16 -31011, label %sw.bb
    i16 2048, label %sw.bb9
  ]

vlan_get_protocol.exit.out_crit_edge:             ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %vlan_get_protocol.exit
  %flags = getelementptr i8, ptr %dev, i32 9255
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags, align 1
  %73 = and i8 %72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool5.not = icmp eq i8 %73, 0
  br i1 %tobool5.not, label %sw.bb.out_crit_edge, label %if.end7

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %76 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i56 = zext i16 %77 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %75, i32 %conv.i.i56
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i57, i32 0, i32 3
  br label %sw.epilog

sw.bb9:                                           ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i, align 8
  %network_header.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %80 = ptrtoint ptr %network_header.i.i59 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %network_header.i.i59, align 4
  %conv.i.i60 = zext i16 %81 to i32
  %add.ptr.i.i61 = getelementptr i8, ptr %79, i32 %conv.i.i60
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i61, i32 0, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.end7
  %proto.0.in = phi ptr [ %protocol, %sw.bb9 ], [ %nexthdr, %if.end7 ]
  %82 = ptrtoint ptr %proto.0.in to i32
  call void @__asan_load1_noabort(i32 %82)
  %proto.0 = load i8, ptr %proto.0.in, align 1
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 2
  %83 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %h_proto, align 1
  %85 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.139)
  switch i16 %84, label %sw.epilog.out_crit_edge [
    i16 -31011, label %sw.bb12
    i16 2048, label %sw.epilog.sw.epilog21_crit_edge
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog21

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb12:                                          ; preds = %sw.epilog
  %flags14 = getelementptr i8, ptr %dev, i32 9255
  %86 = ptrtoint ptr %flags14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags14, align 1
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool17.not = icmp eq i8 %88, 0
  br i1 %tobool17.not, label %sw.bb12.out_crit_edge, label %sw.bb12.sw.epilog21_crit_edge

sw.bb12.sw.epilog21_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog21

sw.bb12.out_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog21:                                      ; preds = %sw.bb12.sw.epilog21_crit_edge, %sw.epilog.sw.epilog21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %proto.0)
  %cmp = icmp eq i8 %proto.0, 17
  br i1 %cmp, label %if.then24, label %sw.epilog21.if.end26_crit_edge

sw.epilog21.if.end26_crit_edge:                   ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %head.i, align 8
  %transport_header.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %91 = ptrtoint ptr %transport_header.i.i63 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %transport_header.i.i63, align 2
  %conv.i.i64 = zext i16 %92 to i32
  %add.ptr.i.i65 = getelementptr i8, ptr %90, i32 %conv.i.i64
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i65, i32 0, i32 1
  %93 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %dest, align 2
  %phi.cast = zext i16 %94 to i32
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %sw.epilog21.if.end26_crit_edge
  %port.0 = phi i32 [ %phi.cast, %if.then24 ], [ 0, %sw.epilog21.if.end26_crit_edge ]
  %vxlan28 = getelementptr i8, ptr %dev, i32 9252
  %95 = ptrtoint ptr %vxlan28 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vxlan28, align 4
  %conv29 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %port.0, i32 %conv29)
  %cmp30.not = icmp eq i32 %port.0, %conv29
  br i1 %cmp30.not, label %if.end26.cleanup_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out:                                              ; preds = %if.end26.out_crit_edge, %sw.bb12.out_crit_edge, %sw.epilog.out_crit_edge, %sw.bb.out_crit_edge, %vlan_get_protocol.exit.out_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %and34 = and i64 %retval.0.i, -34359672859
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %and34, %out ], [ %features, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end26.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_mac_address_dynamic(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @enic_dev_del_station_addr(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.140)
  switch i16 %7, label %if.else.i [
    i16 68, label %if.end5.if.then.i_crit_edge
    i16 113, label %if.end5.if.then.i_crit_edge36
  ]

if.end5.if.then.i_crit_edge36:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end5.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge36
  %9 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sa_data, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.i.land.lhs.true.i_crit_edge

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then.i
  %add.ptr.i.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %or.i.i.i = or i32 %10, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end9_crit_edge

is_valid_ether_addr.exit.i.if.end9_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, %if.then.i.land.lhs.true.i_crit_edge
  %add.ptr.i20.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i20.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i21.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i21.i, label %land.lhs.true.i.if.end9_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.else.i:                                        ; preds = %if.end5
  %16 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sa_data, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i22.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i22.i, label %is_valid_ether_addr.exit28.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit28.i:                     ; preds = %if.else.i
  %add.ptr.i.i23.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i23.i, align 2
  %conv.i.i24.i = zext i16 %20 to i32
  %or.i.i25.i = or i32 %17, %conv.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i25.i)
  %cmp.i.i26.not.i = icmp eq i32 %or.i.i25.i, 0
  br i1 %cmp.i.i26.not.i, label %is_valid_ether_addr.exit28.i.cleanup_crit_edge, label %is_valid_ether_addr.exit28.i.if.end9_crit_edge

is_valid_ether_addr.exit28.i.if.end9_crit_edge:   ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

is_valid_ether_addr.exit28.i.cleanup_crit_edge:   ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %is_valid_ether_addr.exit28.i.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge, %is_valid_ether_addr.exit.i.if.end9_crit_edge
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %state.i31 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i31, align 4
  %and1.i.i32 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32)
  %tobool.i33.not = icmp eq i32 %and1.i.i32, 0
  br i1 %tobool.i33.not, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @enic_dev_add_station_addr(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then12.cleanup_crit_edge, %is_valid_ether_addr.exit28.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ -99, %land.lhs.true.i.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit28.i.cleanup_crit_edge ], [ -99, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %3, label %if.end [
    i16 68, label %entry.cleanup_crit_edge
    i16 113, label %entry.cleanup_crit_edge21
  ]

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %port_mtu = getelementptr i8, ptr %netdev, i32 3552
  %7 = ptrtoint ptr %port_mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_mtu, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.111, i32 noundef %6, i32 noundef %8) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  %call1.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end7.if.end31.i_crit_edge

if.end7.if.end31.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end7
  %.b63.i = load i1, ptr @_enic_change_mtu.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i, !prof !232

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @_enic_change_mtu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2025, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.3, i32 noundef 2025) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end31.i_crit_edge, %if.end7.if.end31.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end52.critedge.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end31.i
  %call41.i = tail call i32 @enic_stop(ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then47.critedge.i, label %if.then40.i.cleanup_crit_edge

if.then40.i.cleanup_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47.critedge.i:                             ; preds = %if.then40.i
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_mtu, ptr %mtu, align 4
  %call48.i = tail call i32 @enic_open(ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then47.critedge.i.if.end52.i_crit_edge, label %if.then47.critedge.i.cleanup_crit_edge

if.then47.critedge.i.cleanup_crit_edge:           ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47.critedge.i.if.end52.i_crit_edge:        ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end52.critedge.i:                              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end52.critedge.i, %if.then47.critedge.i.if.end52.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end52.i, %if.then47.critedge.i.cleanup_crit_edge, %if.then40.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge21
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end52.i ], [ %call41.i, %if.then40.i.cleanup_crit_edge ], [ %call48.i, %if.then47.critedge.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_hang_reset = getelementptr i8, ptr %netdev, i32 2528
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_hang_reset) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_get_stats(ptr noundef %netdev, ptr nocapture noundef writeonly %net_stats) #2 align 64 {
entry:
  %stats = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats) #12
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %stats, align 4, !annotation !228
  %call1 = call i32 @enic_dev_stats_dump(ptr noundef %add.ptr.i, ptr noundef nonnull %stats) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call1)
  %cmp = icmp eq i32 %call1, -12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 1
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tx_packets, align 8
  %tx_bytes_ok = getelementptr inbounds %struct.vnic_tx_stats, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %tx_bytes_ok to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_bytes_ok, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 3
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tx_bytes, align 8
  %tx_errors = getelementptr inbounds %struct.vnic_tx_stats, ptr %2, i32 0, i32 9
  %9 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_errors, align 8
  %tx_errors4 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 5
  %11 = ptrtoint ptr %tx_errors4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_errors4, align 8
  %tx_drops = getelementptr inbounds %struct.vnic_tx_stats, ptr %2, i32 0, i32 8
  %12 = ptrtoint ptr %tx_drops to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_drops, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 7
  %14 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %tx_dropped, align 8
  %rx = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %rx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx, align 8
  %17 = ptrtoint ptr %net_stats to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %net_stats, align 8
  %rx_bytes_ok = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %rx_bytes_ok to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_bytes_ok, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 2
  %20 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_bytes, align 8
  %rx_errors = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 11
  %21 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_errors, align 8
  %rx_errors8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 4
  %23 = ptrtoint ptr %rx_errors8 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rx_errors8, align 8
  %rx_multicast_frames_ok = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %rx_multicast_frames_ok to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_multicast_frames_ok, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 8
  %26 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %multicast, align 8
  %rq_truncated_pkts = getelementptr i8, ptr %netdev, i32 9256
  %27 = ptrtoint ptr %rq_truncated_pkts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rq_truncated_pkts, align 8
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 11
  %29 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rx_over_errors, align 8
  %rq_bad_fcs = getelementptr i8, ptr %netdev, i32 9264
  %30 = ptrtoint ptr %rq_bad_fcs to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rq_bad_fcs, align 16
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 12
  %32 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %rx_crc_errors, align 8
  %rx_no_bufs = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %rx_no_bufs to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_no_bufs, align 8
  %rx_drop = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_drop, align 8
  %add = add i64 %36, %34
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 6
  %37 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add, ptr %rx_dropped, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_vlan_rx_add_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_vlan_rx_kill_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_poll_controller(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %vdev1 = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 128
  %call2 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %1) #12
  %2 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call2, label %entry.sw.epilog_crit_edge [
    i32 3, label %for.cond.preheader
    i32 2, label %sw.bb20
    i32 1, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %rq_count = getelementptr i8, ptr %netdev, i32 9248
  %3 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp53.not = icmp eq i32 %4, 0
  br i1 %cmp53.not, label %for.cond.preheader.for.cond6.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %enic_isr_msix.exit.for.cond6.preheader_crit_edge, %for.cond.preheader.for.cond6.preheader_crit_edge
  %wq_count = getelementptr i8, ptr %netdev, i32 6624
  %5 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp755.not = icmp eq i32 %6, 0
  br i1 %cmp755.not, label %for.cond6.preheader.sw.epilog_crit_edge, label %for.cond6.preheader.for.body8_crit_edge

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.cond6.preheader.sw.epilog_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body:                                         ; preds = %enic_isr_msix.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %enic_isr_msix.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %i.054
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx4) #12
  br i1 %call.i.i, label %if.then.i.i, label %for.body.enic_isr_msix.exit_crit_edge

for.body.enic_isr_msix.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_isr_msix.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %arrayidx4) #12
  br label %enic_isr_msix.exit

enic_isr_msix.exit:                               ; preds = %if.then.i.i, %for.body.enic_isr_msix.exit_crit_edge
  %inc = add nuw i32 %i.054, 1
  %7 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_count, align 32
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %enic_isr_msix.exit.for.body_crit_edge, label %enic_isr_msix.exit.for.cond6.preheader_crit_edge

enic_isr_msix.exit.for.cond6.preheader_crit_edge: ; preds = %enic_isr_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader

enic_isr_msix.exit.for.body_crit_edge:            ; preds = %enic_isr_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body8:                                        ; preds = %enic_isr_msix.exit50.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %i.156 = phi i32 [ %inc18, %enic_isr_msix.exit50.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  %9 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_count, align 32
  %add.i.i = add i32 %10, %i.156
  %arrayidx15 = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 38, i32 %add.i.i
  %call.i.i48 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx15) #12
  br i1 %call.i.i48, label %if.then.i.i49, label %for.body8.enic_isr_msix.exit50_crit_edge

for.body8.enic_isr_msix.exit50_crit_edge:         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_isr_msix.exit50

if.then.i.i49:                                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %arrayidx15) #12
  br label %enic_isr_msix.exit50

enic_isr_msix.exit50:                             ; preds = %if.then.i.i49, %for.body8.enic_isr_msix.exit50_crit_edge
  %inc18 = add nuw i32 %i.156, 1
  %11 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wq_count, align 32
  %cmp7 = icmp ult i32 %inc18, %12
  br i1 %cmp7, label %enic_isr_msix.exit50.for.body8_crit_edge, label %enic_isr_msix.exit50.sw.epilog_crit_edge

enic_isr_msix.exit50.sw.epilog_crit_edge:         ; preds = %enic_isr_msix.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

enic_isr_msix.exit50.for.body8_crit_edge:         ; preds = %enic_isr_msix.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

sw.bb20:                                          ; preds = %entry
  %napi.i = getelementptr i8, ptr %netdev, i32 9272
  %call.i.i51 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #12
  br i1 %call.i.i51, label %if.then.i.i52, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i.i52:                                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule_irqoff(ptr noundef %napi.i) #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev23 = getelementptr i8, ptr %netdev, i32 2308
  %13 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev23, align 4
  %irq24 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq24, align 4
  %call25 = tail call i32 @enic_isr_legacy(i32 noundef %16, ptr noundef %netdev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %if.then.i.i52, %sw.bb20.sw.epilog_crit_edge, %enic_isr_msix.exit50.sw.epilog_crit_edge, %for.cond6.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_vf_mac(ptr noundef %netdev, i32 noundef %vf, ptr noundef %mac) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !228
  %call1 = call i32 @enic_is_valid_pp_vf(ptr noundef %add.ptr.i, i32 noundef %vf, ptr noundef nonnull %err) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp = icmp eq i32 %vf, -1
  %pp2 = getelementptr i8, ptr %netdev, i32 3632
  %1 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp2, align 16
  %spec.select.idx = select i1 %cmp, i32 0, i32 %vf
  %spec.select = getelementptr %struct.enic_port_profile, ptr %2, i32 %spec.select.idx
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pp.0 = phi ptr [ null, %entry.do.end_crit_edge ], [ %spec.select, %if.then ]
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end6.lor.lhs.false_crit_edge

if.end6.lor.lhs.false_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

is_valid_ether_addr.exit:                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.lor.lhs.false_crit_edge, label %is_valid_ether_addr.exit.if.then9_crit_edge

is_valid_ether_addr.exit.if.then9_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

is_valid_ether_addr.exit.lor.lhs.false_crit_edge: ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %is_valid_ether_addr.exit.lor.lhs.false_crit_edge, %if.end6.lor.lhs.false_crit_edge
  %add.ptr.i49 = getelementptr i8, ptr %mac, i32 4
  %10 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i49, align 2
  %conv.i = zext i16 %11 to i32
  %or.i = or i32 %6, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %is_valid_ether_addr.exit.if.then9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp10 = icmp eq i32 %vf, -1
  br i1 %cmp10, label %if.then11, label %do.body13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %vf_mac = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %vf_mac, ptr %mac, i32 6)
  br label %cleanup

do.body13:                                        ; preds = %if.then9
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp.i50 = icmp sgt i32 %vf, -1
  br i1 %cmp.i50, label %enic_is_valid_vf.exit, label %do.body13.if.else20_crit_edge

do.body13.if.else20_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

enic_is_valid_vf.exit:                            ; preds = %do.body13
  %num_vfs.i = getelementptr i8, ptr %netdev, i32 3580
  %13 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vfs.i, align 4
  %conv.i51 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i51, i32 %vf)
  %cmp1.i.not = icmp ugt i32 %conv.i51, %vf
  br i1 %cmp1.i.not, label %if.then16, label %enic_is_valid_vf.exit.if.else20_crit_edge

enic_is_valid_vf.exit.if.else20_crit_edge:        ; preds = %enic_is_valid_vf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

if.then16:                                        ; preds = %enic_is_valid_vf.exit
  call void @__sanitizer_cov_trace_pc() #14
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev, align 128
  %conv = trunc i32 %vf to i16
  call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %16, i16 noundef zeroext %conv) #12
  %17 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdev, align 128
  %call18 = call i32 @vnic_dev_set_mac_addr(ptr noundef %18, ptr noundef %mac) #12
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call18, ptr %err, align 4
  %20 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %21) #12
  br label %if.end23

if.else20:                                        ; preds = %enic_is_valid_vf.exit.if.else20_crit_edge, %do.body13.if.else20_crit_edge
  %vdev21 = getelementptr i8, ptr %netdev, i32 2432
  %22 = ptrtoint ptr %vdev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev21, align 128
  %call22 = call i32 @vnic_dev_set_mac_addr(ptr noundef %23, ptr noundef %mac) #12
  %24 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call22, ptr %err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then16
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  %25 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %err, align 4
  %call27 = call i32 @enic_dev_status_to_errno(i32 noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then11, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %call27, %if.end23 ], [ %4, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_vf_port(ptr noundef %netdev, i32 noundef %vf, ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %prev_pp = alloca %struct.enic_port_profile, align 4
  %err = alloca i32, align 4
  %restore_pp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %prev_pp) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %restore_pp) #12
  %1 = ptrtoint ptr %restore_pp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %restore_pp, align 4
  %call1 = call i32 @enic_is_valid_pp_vf(ptr noundef %add.ptr.i, i32 noundef %vf, ptr noundef nonnull %err) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp = icmp eq i32 %vf, -1
  %pp2 = getelementptr i8, ptr %netdev, i32 3632
  %2 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp2, align 16
  %spec.select.idx = select i1 %cmp, i32 0, i32 %vf
  %spec.select = getelementptr %struct.enic_port_profile, ptr %3, i32 %spec.select.idx
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pp.0 = phi ptr [ null, %entry.do.end_crit_edge ], [ %spec.select, %if.then ]
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %arrayidx = getelementptr ptr, ptr %port, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = call ptr @memcpy(ptr %prev_pp, ptr %pp.0, i32 92)
  %9 = getelementptr inbounds i8, ptr %pp.0, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 88)
  %11 = ptrtoint ptr %pp.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %pp.0, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i, align 1
  %request = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 1
  %16 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %request, align 4
  %arrayidx12 = getelementptr ptr, ptr %port, i32 2
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end9.if.end19_crit_edge, label %if.then14

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %pp.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %pp.0, align 4
  %name = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12, align 4
  %add.ptr.i163 = getelementptr i8, ptr %21, i32 4
  %22 = call ptr @memcpy(ptr %name, ptr %add.ptr.i163, i32 40)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end9.if.end19_crit_edge
  %arrayidx20 = getelementptr ptr, ptr %port, i32 4
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %if.end19.if.end28_crit_edge, label %if.then22

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pp.0, align 4
  %or24 = or i32 %26, 8
  store i32 %or24, ptr %pp.0, align 4
  %instance_uuid = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i164 = getelementptr i8, ptr %28, i32 4
  %29 = call ptr @memcpy(ptr %instance_uuid, ptr %add.ptr.i164, i32 16)
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end19.if.end28_crit_edge
  %arrayidx29 = getelementptr ptr, ptr %port, i32 5
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %if.then31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pp.0, align 4
  %or33 = or i32 %33, 16
  store i32 %or33, ptr %pp.0, align 4
  %host_uuid = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i165 = getelementptr i8, ptr %35, i32 4
  %36 = call ptr @memcpy(ptr %host_uuid, ptr %add.ptr.i165, i32 16)
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end28.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp38 = icmp eq i32 %vf, -1
  br i1 %cmp38, label %if.then39, label %do.body51

if.then39:                                        ; preds = %if.end37
  %vf_mac = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 5
  %37 = ptrtoint ptr %vf_mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vf_mac, align 4
  %add.ptr.i166 = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 5, i32 4
  %39 = ptrtoint ptr %add.ptr.i166 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i166, align 2
  %conv.i = zext i16 %40 to i32
  %or.i = or i32 %38, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then39.if.end46_crit_edge, label %if.then42

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %mac_addr, ptr %vf_mac, i32 6)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then39.if.end46_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr, align 64
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add.ptr.i167 = getelementptr i8, ptr %43, i32 4
  %46 = ptrtoint ptr %add.ptr.i167 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i167, align 2
  %conv.i168 = zext i16 %47 to i32
  %or.i169 = or i32 %45, %conv.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i169)
  %cmp.i170 = icmp eq i32 %or.i169, 0
  br i1 %cmp.i170, label %if.then48, label %if.end46.if.end73_crit_edge

if.end46.if.end73_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %48 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %addr.i, align 1
  %51 = and i8 %50, -4
  %52 = or i8 %51, 2
  store i8 %52, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 55
  %53 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  br label %if.end73

do.body51:                                        ; preds = %if.end37
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp.i171 = icmp sgt i32 %vf, -1
  br i1 %cmp.i171, label %enic_is_valid_vf.exit, label %do.body51.if.else60_crit_edge

do.body51.if.else60_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else60

enic_is_valid_vf.exit:                            ; preds = %do.body51
  %num_vfs.i = getelementptr i8, ptr %netdev, i32 3580
  %54 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num_vfs.i, align 4
  %conv.i172 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i172, i32 %vf)
  %cmp1.i.not = icmp ugt i32 %conv.i172, %vf
  br i1 %cmp1.i.not, label %if.then54, label %enic_is_valid_vf.exit.if.else60_crit_edge

enic_is_valid_vf.exit.if.else60_crit_edge:        ; preds = %enic_is_valid_vf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else60

if.then54:                                        ; preds = %enic_is_valid_vf.exit
  call void @__sanitizer_cov_trace_pc() #14
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %56 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vdev, align 128
  %conv = trunc i32 %vf to i16
  call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %57, i16 noundef zeroext %conv) #12
  %58 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdev, align 128
  %mac_addr56 = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 6
  %call58 = call i32 @vnic_dev_get_mac_addr(ptr noundef %59, ptr noundef %mac_addr56) #12
  %60 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call58, ptr %err, align 4
  %61 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdev, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %62) #12
  br label %if.end65

if.else60:                                        ; preds = %enic_is_valid_vf.exit.if.else60_crit_edge, %do.body51.if.else60_crit_edge
  %vdev61 = getelementptr i8, ptr %netdev, i32 2432
  %63 = ptrtoint ptr %vdev61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdev61, align 128
  %mac_addr62 = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 6
  %call64 = call i32 @vnic_dev_get_mac_addr(ptr noundef %64, ptr noundef %mac_addr62) #12
  %65 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call64, ptr %err, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.then54
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  %66 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool69.not = icmp eq i32 %67, 0
  br i1 %tobool69.not, label %if.end65.if.end73_crit_edge, label %if.then70

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.112, i32 noundef %vf) #15
  %68 = call ptr @memcpy(ptr %pp.0, ptr %prev_pp, i32 92)
  %69 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %err, align 4
  %call71 = call i32 @enic_dev_status_to_errno(i32 noundef %70) #12
  br label %cleanup

if.end73:                                         ; preds = %if.end65.if.end73_crit_edge, %if.then48, %if.end46.if.end73_crit_edge
  %call74 = call i32 @enic_process_set_pp_request(ptr noundef %add.ptr.i, i32 noundef %vf, ptr noundef nonnull %prev_pp, ptr noundef nonnull %restore_pp) #12
  %71 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call74, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.else85, label %if.then76

if.then76:                                        ; preds = %if.end73
  %72 = ptrtoint ptr %restore_pp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %restore_pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool77.not = icmp eq i32 %73, 0
  br i1 %tobool77.not, label %if.else79, label %if.then78

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %74 = call ptr @memcpy(ptr %pp.0, ptr %prev_pp, i32 92)
  br label %if.end100

if.else79:                                        ; preds = %if.then76
  %75 = call ptr @memset(ptr %pp.0, i32 0, i32 92)
  br i1 %cmp38, label %if.else79.if.then103.sink.split_crit_edge, label %if.else79.if.end106_crit_edge

if.else79.if.end106_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.else79.if.then103.sink.split_crit_edge:        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.sink.split

if.else85:                                        ; preds = %if.end73
  %76 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pp.0, align 4
  %or87 = or i32 %77, 1
  store i32 %or87, ptr %pp.0, align 4
  %78 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %79)
  %cmp90 = icmp eq i8 %79, 3
  br i1 %cmp90, label %if.then92, label %if.else85.if.end100_crit_edge

if.else85.if.end100_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then92:                                        ; preds = %if.else85
  %mac_addr93 = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 6
  %80 = call ptr @memset(ptr %mac_addr93, i32 0, i32 6)
  br i1 %cmp38, label %if.then92.if.then103.sink.split_crit_edge, label %if.then92.if.end106_crit_edge

if.then92.if.end106_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then92.if.then103.sink.split_crit_edge:        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.sink.split

if.end100:                                        ; preds = %if.else85.if.end100_crit_edge, %if.then78
  br i1 %cmp38, label %if.end100.if.then103_crit_edge, label %if.end100.if.end106_crit_edge

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.end100.if.then103_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.then103.sink.split:                            ; preds = %if.then92.if.then103.sink.split_crit_edge, %if.else79.if.then103.sink.split_crit_edge
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull @enic_set_vf_port.zero_addr, i32 noundef 6) #12
  br label %if.then103

if.then103:                                       ; preds = %if.then103.sink.split, %if.end100.if.then103_crit_edge
  %vf_mac104 = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 5
  %81 = call ptr @memset(ptr %vf_mac104, i32 0, i32 6)
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end100.if.end106_crit_edge, %if.then92.if.end106_crit_edge, %if.else79.if.end106_crit_edge
  %82 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.then70, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %83, %if.end106 ], [ %call71, %if.then70 ], [ %5, %do.end.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %restore_pp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %prev_pp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_get_vf_port(ptr noundef %netdev, i32 noundef %vf, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i65 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %response = alloca i16, align 2
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #12
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %response, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !228
  %call1 = call i32 @enic_is_valid_pp_vf(ptr noundef %add.ptr.i, i32 noundef %vf, ptr noundef nonnull %err) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cmp = icmp eq i32 %vf, -1
  %pp2 = getelementptr i8, ptr %netdev, i32 3632
  %2 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp2, align 16
  %spec.select.idx = select i1 %cmp, i32 0, i32 %vf
  %spec.select = getelementptr %struct.enic_port_profile, ptr %3, i32 %spec.select.idx
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pp.0 = phi ptr [ null, %entry.do.end_crit_edge ], [ %spec.select, %if.then ]
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %6 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pp.0, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %request = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 1
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %request, align 4
  %conv = zext i8 %9 to i32
  %call10 = call i32 @enic_process_get_pp_request(ptr noundef %add.ptr.i, i32 noundef %vf, i32 noundef %conv, ptr noundef nonnull %response) #12
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call10, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %request, align 4
  %conv15 = zext i8 %12 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv15, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end13.nla_put_failure_crit_edge

if.end13.nla_put_failure_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end13
  %14 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %response, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i65) #12
  %16 = ptrtoint ptr %tmp.i65 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i65, align 2
  %call.i66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i65) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool19.not = icmp eq i32 %call.i66, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pp.0, align 4
  %and22 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false20.lor.lhs.false26_crit_edge, label %land.lhs.true

lor.lhs.false20.lor.lhs.false26_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false26

land.lhs.true:                                    ; preds = %lor.lhs.false20
  %name = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 2
  %call24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 40, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.lor.lhs.false26_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true.lor.lhs.false26_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true.lor.lhs.false26_crit_edge, %lor.lhs.false20.lor.lhs.false26_crit_edge
  %19 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pp.0, align 4
  %and28 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false26.lor.lhs.false34_crit_edge, label %land.lhs.true30

lor.lhs.false26.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false34

land.lhs.true30:                                  ; preds = %lor.lhs.false26
  %instance_uuid = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 3
  %call32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %instance_uuid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true30.lor.lhs.false34_crit_edge, label %land.lhs.true30.nla_put_failure_crit_edge

land.lhs.true30.nla_put_failure_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true30.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true30.lor.lhs.false34_crit_edge, %lor.lhs.false26.lor.lhs.false34_crit_edge
  %21 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pp.0, align 4
  %and36 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false34.cleanup_crit_edge, label %land.lhs.true38

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true38:                                  ; preds = %lor.lhs.false34
  %host_uuid = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0, i32 0, i32 4
  %call40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 16, ptr noundef %host_uuid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.nla_put_failure_crit_edge

land.lhs.true38.nla_put_failure_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true38.nla_put_failure_crit_edge, %land.lhs.true30.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end13.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true38.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ %5, %do.end.cleanup_crit_edge ], [ -61, %if.end6.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %land.lhs.true38.cleanup_crit_edge ], [ 0, %lor.lhs.false34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_rx_flow_steer(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_stats_dump(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_is_valid_pp_vf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_by_index_start(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_set_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_status_to_errno(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_process_set_pp_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_process_get_pp_request(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_mac_address(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @enic_dev_del_station_addr(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %3, label %if.else.i [
    i16 68, label %if.end.if.then.i_crit_edge
    i16 113, label %if.end.if.then.i_crit_edge17
  ]

if.end.if.then.i_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge17
  %5 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sa_data, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.i.land.lhs.true.i_crit_edge

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then.i
  %add.ptr.i.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %or.i.i.i = or i32 %6, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end5_crit_edge

is_valid_ether_addr.exit.i.if.end5_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %is_valid_ether_addr.exit.i.land.lhs.true.i_crit_edge, %if.then.i.land.lhs.true.i_crit_edge
  %add.ptr.i20.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i20.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i21.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i21.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.else.i:                                        ; preds = %if.end
  %12 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sa_data, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i22.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i22.i, label %is_valid_ether_addr.exit28.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit28.i:                     ; preds = %if.else.i
  %add.ptr.i.i23.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i23.i, align 2
  %conv.i.i24.i = zext i16 %16 to i32
  %or.i.i25.i = or i32 %13, %conv.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i25.i)
  %cmp.i.i26.not.i = icmp eq i32 %or.i.i25.i, 0
  br i1 %cmp.i.i26.not.i, label %is_valid_ether_addr.exit28.i.cleanup_crit_edge, label %is_valid_ether_addr.exit28.i.if.end5_crit_edge

is_valid_ether_addr.exit28.i.if.end5_crit_edge:   ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

is_valid_ether_addr.exit28.i.cleanup_crit_edge:   ; preds = %is_valid_ether_addr.exit28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %is_valid_ether_addr.exit28.i.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %is_valid_ether_addr.exit.i.if.end5_crit_edge
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %call6 = tail call i32 @enic_dev_add_station_addr(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %is_valid_ether_addr.exit28.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ -99, %land.lhs.true.i.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit28.i.cleanup_crit_edge ], [ -99, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_udp_tunnel_set_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 2
  %call2 = tail call i32 @vnic_dev_overlay_offload_cfg(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 128
  %patch_level = getelementptr i8, ptr %netdev, i32 9254
  %6 = ptrtoint ptr %patch_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %patch_level, align 2
  %call4 = tail call i32 @vnic_dev_overlay_offload_ctrl(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vxlan = getelementptr i8, ptr %netdev, i32 9252
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 2
  %10 = ptrtoint ptr %vxlan to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vxlan, align 4
  br label %error

error:                                            ; preds = %if.end7, %if.end.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ %call2, %entry.error_crit_edge ], [ %call4, %if.end.error_crit_edge ], [ 0, %if.end7 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_udp_tunnel_unset_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readnone %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #12
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call2 = tail call i32 @vnic_dev_overlay_offload_ctrl(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vxlan = getelementptr i8, ptr %netdev, i32 9252
  %2 = ptrtoint ptr %vxlan to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %vxlan, align 4
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_overlay_offload_cfg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_overlay_offload_ctrl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !181, !183, !185, !187, !188, !190, !192, !194, !195, !197, !199, !201, !202, !204, !206, !208, !210, !212, !214, !216}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__UNIQUE_ID_description585, !1, !"__UNIQUE_ID_description585", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 80, i32 1}
!2 = !{ptr @__UNIQUE_ID_author586, !3, !"__UNIQUE_ID_author586", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_file587, !5, !"__UNIQUE_ID_file587", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 82, i32 1}
!6 = !{ptr @__UNIQUE_ID_license588, !5, !"__UNIQUE_ID_license588", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_enic__603_3035_enic_driver_init6, !8, !"__initcall__kmod_enic__603_3035_enic_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 3035, i32 1}
!9 = !{ptr @__exitcall_enic_driver_exit, !8, !"__exitcall_enic_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @enic_driver, !12, !"enic_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 3028, i32 26}
!13 = !{ptr @enic_id_table, !14, !"enic_id_table", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 73, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2704, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @enic_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @enic_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2710, i32 3}
!25 = !{ptr @enic_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @enic_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2725, i32 4}
!29 = !{ptr @enic_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @enic_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2741, i32 4}
!33 = !{ptr @enic_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @enic_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2754, i32 3}
!37 = !{ptr @enic_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @enic_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2773, i32 5}
!41 = !{ptr @enic_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @enic_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2796, i32 3}
!45 = !{ptr @enic_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @enic_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @enic_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2803, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @enic_probe.__key.25, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2804, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2812, i32 3}
!55 = !{ptr @enic_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @enic_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2835, i32 4}
!59 = !{ptr @enic_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @enic_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2842, i32 3}
!63 = !{ptr @enic_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @enic_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @enic_probe.__key.36, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2852, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @enic_probe.__key.38, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2856, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @enic_probe.__key.40, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2857, i32 2}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @enic_probe.__key.42, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2858, i32 2}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @enic_probe.__key.44, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2861, i32 3}
!79 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2870, i32 3}
!82 = !{ptr @enic_probe._entry.46, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @enic_probe._entry_ptr.48, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2893, i32 3}
!86 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @enic_probe._entry.49, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @enic_probe._entry_ptr.52, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2967, i32 3}
!91 = !{ptr @enic_probe._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @enic_probe._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2146, i32 3}
!95 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @enic_dev_open._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @enic_dev_open._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2584, i32 3}
!100 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @enic_dev_init._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @enic_dev_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2594, i32 3}
!106 = !{ptr @enic_dev_init._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @enic_dev_init._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2613, i32 3}
!110 = !{ptr @enic_dev_init._entry.64, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @enic_dev_init._entry_ptr.66, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2623, i32 3}
!114 = !{ptr @enic_dev_init._entry.67, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @enic_dev_init._entry_ptr.69, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.71, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2631, i32 3}
!118 = !{ptr @enic_dev_init._entry.70, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @enic_dev_init._entry_ptr.72, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2565, i32 3}
!122 = !{ptr @.str.74, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @enic_kdump_kernel_config._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @enic_kdump_kernel_config._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2289, i32 5}
!127 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @enic_set_rss_nic_cfg._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @enic_set_rss_nic_cfg._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2294, i32 4}
!132 = !{ptr @enic_set_rss_nic_cfg._entry.77, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @enic_set_rss_nic_cfg._entry_ptr.79, !131, !"_entry_ptr", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!136 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/cisco/enic/enic.h", i32 308, i32 3}
!140 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.84, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @enic_dma_map_check._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @enic_dma_map_check._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @mod_table, !145, !"mod_table", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 91, i32 35}
!146 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 396, i32 29}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 417, i32 6}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 430, i32 29}
!152 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 433, i32 29}
!154 = !{ptr @mod_range, !155, !"mod_range", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 108, i32 35}
!156 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2159, i32 28}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1897, i32 22}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1906, i32 4}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1916, i32 23}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1751, i32 5}
!166 = !{ptr @.str.94, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1762, i32 5}
!168 = !{ptr @.str.95, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1770, i32 4}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1777, i32 4}
!172 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 376, i32 29}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 384, i32 29}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!178 = !{ptr @.str.99, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 156, i32 30}
!181 = !{ptr @.str.101, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 942, i32 23}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 913, i32 23}
!185 = !{ptr @enic_rfs_timer_start.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/cisco/enic/enic_clsf.h", i32 23, i32 2}
!187 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2172, i32 28}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2068, i32 22}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2025, i32 2}
!194 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @enic_netdev_dynamic_ops, !196, !"enic_netdev_dynamic_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2495, i32 36}
!197 = !{ptr @.str.107, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 856, i32 22}
!199 = distinct !{null, !200, !"__already_done", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 647, i32 3}
!201 = !{ptr @.str.108, !200, !"<string literal>", i1 false, i1 false}
!202 = distinct !{null, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!204 = !{ptr @.str.110, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!206 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2052, i32 8}
!208 = !{ptr @enic_set_vf_port.zero_addr, !209, !"zero_addr", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1101, i32 18}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 1150, i32 23}
!212 = !{ptr @enic_netdev_ops, !213, !"enic_netdev_ops", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 2519, i32 36}
!214 = !{ptr @enic_udp_tunnels_v4, !215, !"enic_udp_tunnels_v4", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 234, i32 4}
!216 = !{ptr @enic_udp_tunnels, !217, !"enic_udp_tunnels", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/cisco/enic/enic_main.c", i32 228, i32 41}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"auto-init"}
!229 = !{ptr @vnic_dev_hang_reset, ptr @vnic_dev_open, ptr @vnic_dev_soft_reset}
!230 = !{ptr @vnic_dev_hang_reset_done, ptr @vnic_dev_open_done, ptr @vnic_dev_soft_reset_done}
!231 = !{i32 0, i32 33}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2158610516}
!234 = !{ptr @enic_rq_service, ptr @enic_wq_service}
!235 = !{i64 2152233250}
!236 = !{i64 4691128}
!237 = distinct !{!237, !238}
!238 = !{!"llvm.loop.peeled.count", i32 3}
!239 = !{i64 913534}
!240 = !{i64 2158716544}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{i64 776126, i64 776153, i64 776175, i64 776203}
!243 = !{i64 776534, i64 776561, i64 776594, i64 776615, i64 776642, i64 776668}
!244 = !{i64 4691546}
!245 = !{i64 2152231895}
!246 = !{i64 7812355, i64 7812396, i64 7812441}
!247 = !{i64 7811253}
!248 = !{i64 2158709212}
