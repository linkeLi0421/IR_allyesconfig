; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.154, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.154 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.153, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }
%struct.iavf_arq_event_info = type { %struct.iavf_aq_desc, i16, i16, ptr }
%struct.iavf_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.160 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i32, i32, i32, i32 }
%struct.virtchnl_vf_resource = type { i16, i16, i16, i16, i32, i32, i32, [1 x %struct.virtchnl_vsi_resource] }
%struct.virtchnl_vsi_resource = type { i16, i16, i32, i16, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.virtchnl_vsi_queue_config_info = type { i16, i16, i32, [1 x %struct.virtchnl_queue_pair_info] }
%struct.virtchnl_queue_pair_info = type { %struct.virtchnl_txq_info, %struct.virtchnl_rxq_info }
%struct.virtchnl_txq_info = type { i16, i16, i16, i16, i64, i64 }
%struct.virtchnl_rxq_info = type { i16, i16, i32, i16, i16, i32, i32, i32, i64, i32, i32 }
%struct.iavf_ring = type { ptr, ptr, ptr, ptr, %union.anon.150, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.iavf_queue_stats, %struct.u64_stats_sync, %union.anon.152, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, [64 x i8] }
%union.anon.150 = type { ptr }
%struct.iavf_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.152 = type { %struct.iavf_tx_queue_stats }
%struct.iavf_tx_queue_stats = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.virtchnl_queue_select = type { i16, i16, i32, i32 }
%struct.virtchnl_irq_map_info = type { i16, [1 x %struct.virtchnl_vector_map] }
%struct.virtchnl_vector_map = type { i16, i16, i16, i16, i16, i16 }
%struct.iavf_q_vector = type { ptr, ptr, %struct.napi_struct, %struct.iavf_ring_container, %struct.iavf_ring_container, i32, i8, i8, i16, i16, [31 x i8], i8, %struct.cpumask, %struct.irq_affinity_notify }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.iavf_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.iavf_mac_filter = type { %struct.list_head, [6 x i8], %struct.anon.163 }
%struct.anon.163 = type { i8 }
%struct.virtchnl_ether_addr_list = type { i16, i16, [1 x %struct.virtchnl_ether_addr] }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.iavf_vlan_filter = type { %struct.list_head, %struct.iavf_vlan, i8, i8 }
%struct.iavf_vlan = type { i16, i16 }
%struct.virtchnl_vlan_filter_list = type { i16, i16, [1 x i16] }
%struct.virtchnl_vlan_filter_list_v2 = type { i16, i16, [4 x i8], [1 x %struct.virtchnl_vlan_filter] }
%struct.virtchnl_vlan_filter = type { %struct.virtchnl_vlan, %struct.virtchnl_vlan, [16 x i8] }
%struct.virtchnl_vlan = type { i16, i16, i16, [2 x i8] }
%struct.virtchnl_promisc_info = type { i16, i16 }
%struct.virtchnl_rss_hena = type { i64 }
%struct.virtchnl_rss_key = type { i16, i16, [1 x i8] }
%struct.virtchnl_rss_lut = type { i16, i16, [1 x i8] }
%struct.virtchnl_vlan_setting = type { i32, i32, i16, [6 x i8] }
%struct.virtchnl_tc_info = type { i32, i32, [1 x %struct.virtchnl_channel_info] }
%struct.virtchnl_fdir_del = type { i16, i16, i32, i32 }
%struct.virtchnl_pf_event = type { i32, %union.anon.169, i32 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i32, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.virtchnl_fdir_add = type { i16, i16, i32, %struct.virtchnl_fdir_rule, i32 }
%struct.virtchnl_fdir_rule = type { %struct.virtchnl_proto_hdrs, %struct.virtchnl_filter_action_set }
%struct.virtchnl_proto_hdrs = type { i8, [3 x i8], i32, [32 x %struct.virtchnl_proto_hdr] }
%struct.virtchnl_proto_hdr = type { i32, i32, [64 x i8] }
%struct.virtchnl_filter_action_set = type { i32, [8 x %struct.virtchnl_filter_action] }
%struct.virtchnl_filter_action = type { i32, %union.anon.166 }
%union.anon.166 = type { %struct.anon.168, [24 x i8] }
%struct.anon.168 = type { i8, i32 }

@iavf_verify_api_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid reply type %d from PF\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_verify_api_ver\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/intel/iavf/iavf_virtchnl.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_verify_api_ver._entry_ptr = internal global ptr @iavf_verify_api_ver._entry, section ".printk_index", align 4
@iavf_configure_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 308, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot configure queues, command %d pending\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_configure_queues\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iavf_configure_queues._entry_ptr = internal global ptr @iavf_configure_queues._entry, section ".printk_index", align 4
@iavf_enable_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 363, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot enable queues, command %d pending\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iavf_enable_queues\00", [45 x i8] zeroinitializer }, align 32
@iavf_enable_queues._entry_ptr = internal global ptr @iavf_enable_queues._entry, section ".printk_index", align 4
@iavf_disable_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 388, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot disable queues, command %d pending\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_disable_queues\00", [44 x i8] zeroinitializer }, align 32
@iavf_disable_queues._entry_ptr = internal global ptr @iavf_disable_queues._entry, section ".printk_index", align 4
@iavf_map_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 418, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot map queues to vectors, command %d pending\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iavf_map_queues\00", [16 x i8] zeroinitializer }, align 32
@iavf_map_queues._entry_ptr = internal global ptr @iavf_map_queues._entry, section ".printk_index", align 4
@iavf_add_ether_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 473, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot add filters, command %d pending\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_add_ether_addrs\00", [43 x i8] zeroinitializer }, align 32
@iavf_add_ether_addrs._entry_ptr = internal global ptr @iavf_add_ether_addrs._entry, section ".printk_index", align 4
@iavf_add_ether_addrs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 492, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Too many add MAC changes in one request\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@iavf_add_ether_addrs._entry_ptr.19 = internal global ptr @iavf_add_ether_addrs._entry.16, section ".printk_index", align 4
@iavf_del_ether_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 543, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot remove filters, command %d pending\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_del_ether_addrs\00", [43 x i8] zeroinitializer }, align 32
@iavf_del_ether_addrs._entry_ptr = internal global ptr @iavf_del_ether_addrs._entry, section ".printk_index", align 4
@iavf_del_ether_addrs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 562, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Too many delete MAC changes in one request\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_del_ether_addrs._entry_ptr.24 = internal global ptr @iavf_del_ether_addrs._entry.22, section ".printk_index", align 4
@iavf_add_vlans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 652, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot add VLANs, command %d pending\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iavf_add_vlans\00", [17 x i8] zeroinitializer }, align 32
@iavf_add_vlans._entry_ptr = internal global ptr @iavf_add_vlans._entry, section ".printk_index", align 4
@iavf_add_vlans._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 675, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Too many add VLAN changes in one request\0A\00", [54 x i8] zeroinitializer }, align 32
@iavf_add_vlans._entry_ptr.29 = internal global ptr @iavf_add_vlans._entry.27, section ".printk_index", align 4
@iavf_add_vlans._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 713, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@iavf_add_vlans._entry_ptr.31 = internal global ptr @iavf_add_vlans._entry.30, section ".printk_index", align 4
@iavf_del_vlans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 778, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot remove VLANs, command %d pending\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iavf_del_vlans\00", [17 x i8] zeroinitializer }, align 32
@iavf_del_vlans._entry_ptr = internal global ptr @iavf_del_vlans._entry, section ".printk_index", align 4
@iavf_del_vlans._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 811, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Too many delete VLAN changes in one request\0A\00", [51 x i8] zeroinitializer }, align 32
@iavf_del_vlans._entry_ptr.36 = internal global ptr @iavf_del_vlans._entry.34, section ".printk_index", align 4
@iavf_del_vlans._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.33, ptr @.str.2, i32 851, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@iavf_del_vlans._entry_ptr.38 = internal global ptr @iavf_del_vlans._entry.37, section ".printk_index", align 4
@iavf_set_promiscuous._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 918, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot set promiscuous mode, command %d pending\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_set_promiscuous\00", [43 x i8] zeroinitializer }, align 32
@iavf_set_promiscuous._entry_ptr = internal global ptr @iavf_set_promiscuous._entry, section ".printk_index", align 4
@iavf_set_promiscuous._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 927, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Entering promiscuous mode\0A\00", [37 x i8] zeroinitializer }, align 32
@iavf_set_promiscuous._entry_ptr.43 = internal global ptr @iavf_set_promiscuous._entry.41, section ".printk_index", align 4
@iavf_set_promiscuous._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s is entering multicast promiscuous mode\0A\00", [53 x i8] zeroinitializer }, align 32
@iavf_set_promiscuous._entry_ptr.46 = internal global ptr @iavf_set_promiscuous._entry.44, section ".printk_index", align 4
@iavf_set_promiscuous._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 941, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leaving promiscuous mode\0A\00", [38 x i8] zeroinitializer }, align 32
@iavf_set_promiscuous._entry_ptr.49 = internal global ptr @iavf_set_promiscuous._entry.47, section ".printk_index", align 4
@iavf_set_promiscuous._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s is leaving multicast promiscuous mode\0A\00", [54 x i8] zeroinitializer }, align 32
@iavf_set_promiscuous._entry_ptr.52 = internal global ptr @iavf_set_promiscuous._entry.50, section ".printk_index", align 4
@iavf_get_hena._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 995, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot get RSS hash capabilities, command %d pending\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iavf_get_hena\00", [18 x i8] zeroinitializer }, align 32
@iavf_get_hena._entry_ptr = internal global ptr @iavf_get_hena._entry, section ".printk_index", align 4
@iavf_set_hena._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1016, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot set RSS hash enable, command %d pending\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iavf_set_hena\00", [18 x i8] zeroinitializer }, align 32
@iavf_set_hena._entry_ptr = internal global ptr @iavf_set_hena._entry, section ".printk_index", align 4
@iavf_set_rss_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1040, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot set RSS key, command %d pending\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iavf_set_rss_key\00", [47 x i8] zeroinitializer }, align 32
@iavf_set_rss_key._entry_ptr = internal global ptr @iavf_set_rss_key._entry, section ".printk_index", align 4
@iavf_set_rss_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1072, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot set RSS LUT, command %d pending\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iavf_set_rss_lut\00", [47 x i8] zeroinitializer }, align 32
@iavf_set_rss_lut._entry_ptr = internal global ptr @iavf_set_rss_lut._entry, section ".printk_index", align 4
@iavf_enable_vlan_stripping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1100, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot enable stripping, command %d pending\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iavf_enable_vlan_stripping\00", [37 x i8] zeroinitializer }, align 32
@iavf_enable_vlan_stripping._entry_ptr = internal global ptr @iavf_enable_vlan_stripping._entry, section ".printk_index", align 4
@iavf_disable_vlan_stripping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1119, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot disable stripping, command %d pending\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iavf_disable_vlan_stripping\00", [36 x i8] zeroinitializer }, align 32
@iavf_disable_vlan_stripping._entry_ptr = internal global ptr @iavf_disable_vlan_stripping._entry, section ".printk_index", align 4
@iavf_enable_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1453, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot configure mqprio, command %d pending\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_enable_channels\00", [43 x i8] zeroinitializer }, align 32
@iavf_enable_channels._entry_ptr = internal global ptr @iavf_enable_channels._entry, section ".printk_index", align 4
@iavf_disable_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.67, ptr @.str.2, i32 1489, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_disable_channels\00", [42 x i8] zeroinitializer }, align 32
@iavf_disable_channels._entry_ptr = internal global ptr @iavf_disable_channels._entry, section ".printk_index", align 4
@iavf_add_cloud_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1550, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot add cloud filter, command %d pending\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_add_cloud_filter\00", [42 x i8] zeroinitializer }, align 32
@iavf_add_cloud_filter._entry_ptr = internal global ptr @iavf_add_cloud_filter._entry, section ".printk_index", align 4
@iavf_del_cloud_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1598, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot remove cloud filter, command %d pending\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_del_cloud_filter\00", [42 x i8] zeroinitializer }, align 32
@iavf_del_cloud_filter._entry_ptr = internal global ptr @iavf_del_cloud_filter._entry, section ".printk_index", align 4
@iavf_add_fdir_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1647, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot add Flow Director filter, command %d pending\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_add_fdir_filter\00", [43 x i8] zeroinitializer }, align 32
@iavf_add_fdir_filter._entry_ptr = internal global ptr @iavf_add_fdir_filter._entry, section ".printk_index", align 4
@iavf_del_fdir_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1697, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot remove Flow Director filter, command %d pending\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_del_fdir_filter\00", [43 x i8] zeroinitializer }, align 32
@iavf_del_fdir_filter._entry_ptr = internal global ptr @iavf_del_fdir_filter._entry, section ".printk_index", align 4
@iavf_add_adv_rss_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1742, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot add RSS configuration, command %d pending\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_add_adv_rss_cfg\00", [43 x i8] zeroinitializer }, align 32
@iavf_add_adv_rss_cfg._entry_ptr = internal global ptr @iavf_add_adv_rss_cfg._entry, section ".printk_index", align 4
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input set change for\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"is pending\00", [21 x i8] zeroinitializer }, align 32
@iavf_del_adv_rss_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1793, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot remove RSS configuration, command %d pending\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_del_adv_rss_cfg\00", [43 x i8] zeroinitializer }, align 32
@iavf_del_adv_rss_cfg._entry_ptr = internal global ptr @iavf_del_adv_rss_cfg._entry, section ".printk_index", align 4
@iavf_virtchnl_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Reset indication received from the PF\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iavf_virtchnl_completion\00", [39 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr = internal global ptr @iavf_virtchnl_completion._entry, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1918, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Scheduling reset task\0A\00", [41 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.86 = internal global ptr @iavf_virtchnl_completion._entry.84, section ".printk_index", align 4
@iavf_wq = external dso_local local_unnamed_addr global ptr, align 4
@iavf_virtchnl_completion._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 1924, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown event %d from PF\0A\00", [38 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.89 = internal global ptr @iavf_virtchnl_completion._entry.87, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 1933, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add VLAN filter, error %s\0A\00", [59 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.92 = internal global ptr @iavf_virtchnl_completion._entry.90, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 1937, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to add MAC filter, error %s\0A\00", [60 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.95 = internal global ptr @iavf_virtchnl_completion._entry.93, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.2, i32 1944, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to delete VLAN filter, error %s\0A\00", [56 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.98 = internal global ptr @iavf_virtchnl_completion._entry.96, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.83, ptr @.str.2, i32 1948, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to delete MAC filter, error %s\0A\00", [57 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.101 = internal global ptr @iavf_virtchnl_completion._entry.99, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.2, i32 1952, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to configure queue channels, error %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.104 = internal global ptr @iavf_virtchnl_completion._entry.102, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.2, i32 1960, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable queue channels, error %s\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.107 = internal global ptr @iavf_virtchnl_completion._entry.105, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.83, ptr @.str.2, i32 1975, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add cloud filter, error %s\0A\00", [58 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.110 = internal global ptr @iavf_virtchnl_completion._entry.108, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.83, ptr @.str.2, i32 1994, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to del cloud filter, error %s\0A\00", [58 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.113 = internal global ptr @iavf_virtchnl_completion._entry.111, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.83, ptr @.str.2, i32 2011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to add Flow Director filter, error %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.116 = internal global ptr @iavf_virtchnl_completion._entry.114, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.83, ptr @.str.2, i32 2015, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.119 = internal global ptr @iavf_virtchnl_completion._entry.117, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.83, ptr @.str.2, i32 2034, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to del Flow Director filter, error %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.122 = internal global ptr @iavf_virtchnl_completion._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to change the input set for\00", [61 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.83, ptr @.str.2, i32 2069, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to delete RSS configuration, error %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.126 = internal global ptr @iavf_virtchnl_completion._entry.124, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.83, ptr @.str.2, i32 2076, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Changing VLAN Stripping is not allowed when Port VLAN is configured\0A\00", [59 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.129 = internal global ptr @iavf_virtchnl_completion._entry.127, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.83, ptr @.str.2, i32 2083, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.131 = internal global ptr @iavf_virtchnl_completion._entry.130, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.83, ptr @.str.2, i32 2092, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PF returned error %d (%s) to our request %d\0A\00", [51 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.134 = internal global ptr @iavf_virtchnl_completion._entry.132, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.83, ptr @.str.2, i32 2220, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid message %d from PF\0A\00", [36 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.137 = internal global ptr @iavf_virtchnl_completion._entry.135, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.83, ptr @.str.2, i32 2231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Requested %d queues, PF can support %d\0A\00", [56 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.140 = internal global ptr @iavf_virtchnl_completion._entry.138, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.83, ptr @.str.2, i32 2271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Flow Director filter with location %u is added\0A\00", [48 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.143 = internal global ptr @iavf_virtchnl_completion._entry.141, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.83, ptr @.str.2, i32 2276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to add Flow Director filter with status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.146 = internal global ptr @iavf_virtchnl_completion._entry.144, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.83, ptr @.str.2, i32 2297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Flow Director filter with location %u is deleted\0A\00", [46 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.149 = internal global ptr @iavf_virtchnl_completion._entry.147, section ".printk_index", align 4
@iavf_virtchnl_completion._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.83, ptr @.str.2, i32 2304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to delete Flow Director filter with status: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.152 = internal global ptr @iavf_virtchnl_completion._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"successful\00", [21 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.83, ptr @.str.2, i32 2358, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Expected response %d from PF, received %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iavf_virtchnl_completion._entry_ptr.156 = internal global ptr @iavf_virtchnl_completion._entry.154, section ".printk_index", align 4
@iavf_send_pf_msg.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.157, ptr @.str.158, ptr @.str.2, ptr @.str.159, i8 0, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iavf\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iavf_send_pf_msg\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to send opcode %d to PF, err %s, aq_err %s\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iavf_validate_num_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Received %d queues, but can only have a max of %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iavf_validate_num_queues\00", [39 x i8] zeroinitializer }, align 32
@iavf_validate_num_queues._entry_ptr = internal global ptr @iavf_validate_num_queues._entry, section ".printk_index", align 4
@iavf_validate_num_queues._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fixing by reducing queues to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iavf_validate_num_queues._entry_ptr.164 = internal global ptr @iavf_validate_num_queues._entry.162, section ".printk_index", align 4
@iavf_send_vlan_offload_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1257, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot send %d, command %d pending\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iavf_send_vlan_offload_v2\00", [38 x i8] zeroinitializer }, align 32
@iavf_send_vlan_offload_v2._entry_ptr = internal global ptr @iavf_send_vlan_offload_v2._entry, section ".printk_index", align 4
@iavf_clear_offload_v2_aq_required._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1237, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Unsupported opcode %d specified for clearing aq_required bits for VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload request\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iavf_clear_offload_v2_aq_required\00", [62 x i8] zeroinitializer }, align 32
@iavf_clear_offload_v2_aq_required._entry_ptr = internal global ptr @iavf_clear_offload_v2_aq_required._entry, section ".printk_index", align 4
@iavf_set_vc_offload_ethertype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 1172, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Invalid opcode %d for setting virtchnl ethertype to enable/disable VLAN offloads\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iavf_set_vc_offload_ethertype\00", [34 x i8] zeroinitializer }, align 32
@iavf_set_vc_offload_ethertype._entry_ptr = internal global ptr @iavf_set_vc_offload_ethertype._entry, section ".printk_index", align 4
@iavf_set_vc_offload_ethertype.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.157, ptr @.str.170, ptr @.str.2, ptr @.str.171, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"opcode %d unsupported for VLAN TPID 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.5 Gbps\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %s\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Gbps\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unknown Mbps\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mbps\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NIC Link is Up Speed is %s Full Duplex\0A\00", [56 x i8] zeroinitializer }, align 32
@iavf_print_cloud_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 1519, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"dst_mac: %pM src_mac: %pM vlan_id: %hu dst_ip: %pI4 src_ip %pI4 dst_port %hu src_port %hu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iavf_print_cloud_filter\00", [40 x i8] zeroinitializer }, align 32
@iavf_print_cloud_filter._entry_ptr = internal global ptr @iavf_print_cloud_filter._entry, section ".printk_index", align 4
@iavf_print_cloud_filter._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 1529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"dst_mac: %pM src_mac: %pM vlan_id: %hu dst_ip: %pI6 src_ip %pI6 dst_port %hu src_port %hu\0A\00", [37 x i8] zeroinitializer }, align 32
@iavf_print_cloud_filter._entry_ptr.184 = internal global ptr @iavf_print_cloud_filter._entry.182, section ".printk_index", align 4
@iavf_change_state.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.157, ptr @.str.185, ptr @.str.186, ptr @.str.187, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iavf_change_state\00", [46 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/intel/iavf/iavf.h\00", [57 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"state transition from:%s to:%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__IAVF_STARTUP\00", [17 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__IAVF_REMOVE\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__IAVF_INIT_VERSION_CHECK\00", [38 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__IAVF_INIT_GET_RESOURCES\00", [38 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__IAVF_INIT_SW\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__IAVF_INIT_FAILED\00", [45 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__IAVF_RESETTING\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__IAVF_COMM_FAILED\00", [45 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__IAVF_DOWN\00", [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__IAVF_DOWN_PENDING\00", [44 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__IAVF_TESTING\00", [17 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__IAVF_RUNNING\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__IAVF_UNKNOWN_STATE\00", [43 x i8] zeroinitializer }, align 32
@switch.table.iavf_change_state = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.200, ptr @.str.200, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [40 x i8] zeroinitializer }, align 32
@switch.table.iavf_change_state.201 = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.200, ptr @.str.200, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 54, i64 55, i64 56, i64 57]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.207 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.208 = internal global [16 x i64] [i64 14, i64 32, i64 10, i64 11, i64 12, i64 13, i64 27, i64 28, i64 30, i64 31, i64 32, i64 33, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.211 = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 3, i64 7, i64 8, i64 9, i64 10, i64 15, i64 20, i64 21, i64 25, i64 27, i64 28, i64 29, i64 32, i64 33, i64 45, i64 46, i64 47, i64 48, i64 51]
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 100, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 307, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 362, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 387, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 417, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 472, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 492, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 542, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 562, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 651, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 675, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 713, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 777, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 811, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 851, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 917, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 927, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 933, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 941, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 947, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 994, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1015, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1039, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1071, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1099, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1118, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1452, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1488, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1549, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1597, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1646, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1696, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1741, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1758, i32 13 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1759, i32 13 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1792, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1915, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1918, i32 5 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1923, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1932, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1936, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1943, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1947, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1951, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1959, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1973, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1992, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2009, i32 6 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2014, i32 7 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2032, i32 6 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2050, i32 15 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2067, i32 6 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2076, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2083, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2090, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2219, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2228, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2270, i32 6 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2275, i32 6 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2296, i32 6 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2303, i32 6 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2320, i32 14 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 2357, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 32, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 185, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 188, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1256, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1236, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1171, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1184, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1340, i32 23 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1386, i32 43 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1389, i32 43 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1390, i32 30 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1392, i32 48 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1395, i32 22 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1398, i32 22 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1512, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.744 = private constant [51 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1522, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 474, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 439, i32 10 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 441, i32 10 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 443, i32 10 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 445, i32 10 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 447, i32 10 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 449, i32 10 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 451, i32 10 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 453, i32 10 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 455, i32 10 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 457, i32 10 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 459, i32 10 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 461, i32 10 }
@___asan_gen_.791 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/intel/iavf/iavf.h\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 463, i32 10 }
@___asan_gen_.794 = private unnamed_addr constant [31 x i8] c"switch.table.iavf_change_state\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [35 x i8] c"switch.table.iavf_change_state.201\00", align 1
@llvm.compiler.used = appending global [262 x ptr] [ptr @iavf_add_adv_rss_cfg._entry, ptr @iavf_add_adv_rss_cfg._entry_ptr, ptr @iavf_add_cloud_filter._entry, ptr @iavf_add_cloud_filter._entry_ptr, ptr @iavf_add_ether_addrs._entry, ptr @iavf_add_ether_addrs._entry.16, ptr @iavf_add_ether_addrs._entry_ptr, ptr @iavf_add_ether_addrs._entry_ptr.19, ptr @iavf_add_fdir_filter._entry, ptr @iavf_add_fdir_filter._entry_ptr, ptr @iavf_add_vlans._entry, ptr @iavf_add_vlans._entry.27, ptr @iavf_add_vlans._entry.30, ptr @iavf_add_vlans._entry_ptr, ptr @iavf_add_vlans._entry_ptr.29, ptr @iavf_add_vlans._entry_ptr.31, ptr @iavf_clear_offload_v2_aq_required._entry, ptr @iavf_clear_offload_v2_aq_required._entry_ptr, ptr @iavf_configure_queues._entry, ptr @iavf_configure_queues._entry_ptr, ptr @iavf_del_adv_rss_cfg._entry, ptr @iavf_del_adv_rss_cfg._entry_ptr, ptr @iavf_del_cloud_filter._entry, ptr @iavf_del_cloud_filter._entry_ptr, ptr @iavf_del_ether_addrs._entry, ptr @iavf_del_ether_addrs._entry.22, ptr @iavf_del_ether_addrs._entry_ptr, ptr @iavf_del_ether_addrs._entry_ptr.24, ptr @iavf_del_fdir_filter._entry, ptr @iavf_del_fdir_filter._entry_ptr, ptr @iavf_del_vlans._entry, ptr @iavf_del_vlans._entry.34, ptr @iavf_del_vlans._entry.37, ptr @iavf_del_vlans._entry_ptr, ptr @iavf_del_vlans._entry_ptr.36, ptr @iavf_del_vlans._entry_ptr.38, ptr @iavf_disable_channels._entry, ptr @iavf_disable_channels._entry_ptr, ptr @iavf_disable_queues._entry, ptr @iavf_disable_queues._entry_ptr, ptr @iavf_disable_vlan_stripping._entry, ptr @iavf_disable_vlan_stripping._entry_ptr, ptr @iavf_enable_channels._entry, ptr @iavf_enable_channels._entry_ptr, ptr @iavf_enable_queues._entry, ptr @iavf_enable_queues._entry_ptr, ptr @iavf_enable_vlan_stripping._entry, ptr @iavf_enable_vlan_stripping._entry_ptr, ptr @iavf_get_hena._entry, ptr @iavf_get_hena._entry_ptr, ptr @iavf_map_queues._entry, ptr @iavf_map_queues._entry_ptr, ptr @iavf_print_cloud_filter._entry, ptr @iavf_print_cloud_filter._entry.182, ptr @iavf_print_cloud_filter._entry_ptr, ptr @iavf_print_cloud_filter._entry_ptr.184, ptr @iavf_send_vlan_offload_v2._entry, ptr @iavf_send_vlan_offload_v2._entry_ptr, ptr @iavf_set_hena._entry, ptr @iavf_set_hena._entry_ptr, ptr @iavf_set_promiscuous._entry, ptr @iavf_set_promiscuous._entry.41, ptr @iavf_set_promiscuous._entry.44, ptr @iavf_set_promiscuous._entry.47, ptr @iavf_set_promiscuous._entry.50, ptr @iavf_set_promiscuous._entry_ptr, ptr @iavf_set_promiscuous._entry_ptr.43, ptr @iavf_set_promiscuous._entry_ptr.46, ptr @iavf_set_promiscuous._entry_ptr.49, ptr @iavf_set_promiscuous._entry_ptr.52, ptr @iavf_set_rss_key._entry, ptr @iavf_set_rss_key._entry_ptr, ptr @iavf_set_rss_lut._entry, ptr @iavf_set_rss_lut._entry_ptr, ptr @iavf_set_vc_offload_ethertype._entry, ptr @iavf_set_vc_offload_ethertype._entry_ptr, ptr @iavf_validate_num_queues._entry, ptr @iavf_validate_num_queues._entry.162, ptr @iavf_validate_num_queues._entry_ptr, ptr @iavf_validate_num_queues._entry_ptr.164, ptr @iavf_verify_api_ver._entry, ptr @iavf_verify_api_ver._entry_ptr, ptr @iavf_virtchnl_completion._entry, ptr @iavf_virtchnl_completion._entry.102, ptr @iavf_virtchnl_completion._entry.105, ptr @iavf_virtchnl_completion._entry.108, ptr @iavf_virtchnl_completion._entry.111, ptr @iavf_virtchnl_completion._entry.114, ptr @iavf_virtchnl_completion._entry.117, ptr @iavf_virtchnl_completion._entry.120, ptr @iavf_virtchnl_completion._entry.124, ptr @iavf_virtchnl_completion._entry.127, ptr @iavf_virtchnl_completion._entry.130, ptr @iavf_virtchnl_completion._entry.132, ptr @iavf_virtchnl_completion._entry.135, ptr @iavf_virtchnl_completion._entry.138, ptr @iavf_virtchnl_completion._entry.141, ptr @iavf_virtchnl_completion._entry.144, ptr @iavf_virtchnl_completion._entry.147, ptr @iavf_virtchnl_completion._entry.150, ptr @iavf_virtchnl_completion._entry.154, ptr @iavf_virtchnl_completion._entry.84, ptr @iavf_virtchnl_completion._entry.87, ptr @iavf_virtchnl_completion._entry.90, ptr @iavf_virtchnl_completion._entry.93, ptr @iavf_virtchnl_completion._entry.96, ptr @iavf_virtchnl_completion._entry.99, ptr @iavf_virtchnl_completion._entry_ptr, ptr @iavf_virtchnl_completion._entry_ptr.101, ptr @iavf_virtchnl_completion._entry_ptr.104, ptr @iavf_virtchnl_completion._entry_ptr.107, ptr @iavf_virtchnl_completion._entry_ptr.110, ptr @iavf_virtchnl_completion._entry_ptr.113, ptr @iavf_virtchnl_completion._entry_ptr.116, ptr @iavf_virtchnl_completion._entry_ptr.119, ptr @iavf_virtchnl_completion._entry_ptr.122, ptr @iavf_virtchnl_completion._entry_ptr.126, ptr @iavf_virtchnl_completion._entry_ptr.129, ptr @iavf_virtchnl_completion._entry_ptr.131, ptr @iavf_virtchnl_completion._entry_ptr.134, ptr @iavf_virtchnl_completion._entry_ptr.137, ptr @iavf_virtchnl_completion._entry_ptr.140, ptr @iavf_virtchnl_completion._entry_ptr.143, ptr @iavf_virtchnl_completion._entry_ptr.146, ptr @iavf_virtchnl_completion._entry_ptr.149, ptr @iavf_virtchnl_completion._entry_ptr.152, ptr @iavf_virtchnl_completion._entry_ptr.156, ptr @iavf_virtchnl_completion._entry_ptr.86, ptr @iavf_virtchnl_completion._entry_ptr.89, ptr @iavf_virtchnl_completion._entry_ptr.92, ptr @iavf_virtchnl_completion._entry_ptr.95, ptr @iavf_virtchnl_completion._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @switch.table.iavf_change_state, ptr @switch.table.iavf_change_state.201], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_verify_api_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_configure_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_enable_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_disable_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_map_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_ether_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_ether_addrs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_ether_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_ether_addrs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_vlans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_vlans._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_vlans._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_vlans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_vlans._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_vlans._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_promiscuous._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_promiscuous._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_promiscuous._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_promiscuous._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_promiscuous._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_get_hena._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_hena._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_rss_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_rss_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_enable_vlan_stripping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_disable_vlan_stripping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_enable_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_disable_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_cloud_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_cloud_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_fdir_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_fdir_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_adv_rss_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_del_adv_rss_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_virtchnl_completion._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_validate_num_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_validate_num_queues._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_send_vlan_offload_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_clear_offload_v2_aq_required._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_vc_offload_ethertype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_cloud_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_cloud_filter._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_change_state to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_change_state.201 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_send_api_ver(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vvi = alloca %struct.virtchnl_version_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vvi) #9
  %0 = getelementptr inbounds %struct.virtchnl_version_info, ptr %vvi, i32 0, i32 1
  %1 = ptrtoint ptr %vvi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %vvi, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %0, align 4
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iavf_send_pf_msg.exit_crit_edge

entry.iavf_send_pf_msg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %vvi, i16 noundef zeroext 8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_api_ver, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %7 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %8) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 1, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %entry.iavf_send_pf_msg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.iavf_send_pf_msg.exit_crit_edge ], [ %call.i, %if.then8.i ], [ 0, %if.end.i.iavf_send_pf_msg.exit_crit_edge ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vvi) #9
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_verify_api_ver(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.iavf_arq_event_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #9
  %0 = call ptr @memset(ptr %event, i32 255, i32 36)
  %buf_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 2
  %1 = ptrtoint ptr %buf_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 4096, ptr %buf_len, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #12
  %msg_buf = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 3
  %3 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %msg_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %while.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.preheader:                             ; preds = %entry
  %cookie_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %while.cond.preheader
  %call4 = call i32 @iavf_clean_arq_element(ptr noundef %hw1, ptr noundef nonnull %event, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %while.cond.out_alloc_crit_edge

while.cond.out_alloc_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

if.end7:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie_high, align 4
  %cmp = icmp eq i32 %5, 16777216
  br i1 %cmp, label %while.end, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %if.end7
  %cookie_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 5
  %6 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie_low, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end18, label %while.end.out_alloc_crit_edge

while.end.out_alloc_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

if.end18:                                         ; preds = %while.end
  %9 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg_buf, align 4
  %pf_version = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 41
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %10, align 4
  %13 = ptrtoint ptr %pf_version to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %pf_version, align 4
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20 = icmp ugt i32 %14, 1
  br i1 %cmp20, label %if.end18.if.then27_crit_edge, label %lor.lhs.false

if.end18.if.then27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp23 = icmp eq i32 %14, 1
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false.out_alloc_crit_edge

lor.lhs.false.out_alloc_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %minor = getelementptr inbounds %struct.virtchnl_version_info, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp25 = icmp ugt i32 %16, 1
  br i1 %cmp25, label %land.lhs.true.if.then27_crit_edge, label %land.lhs.true.out_alloc_crit_edge

land.lhs.true.out_alloc_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %land.lhs.true.if.then27_crit_edge, %if.end18.if.then27_crit_edge
  br label %out_alloc

out_alloc:                                        ; preds = %if.then27, %land.lhs.true.out_alloc_crit_edge, %lor.lhs.false.out_alloc_crit_edge, %while.end.out_alloc_crit_edge, %while.cond.out_alloc_crit_edge
  %err.0 = phi i32 [ %8, %while.end.out_alloc_crit_edge ], [ -5, %if.then27 ], [ 0, %land.lhs.true.out_alloc_crit_edge ], [ 0, %lor.lhs.false.out_alloc_crit_edge ], [ %call4, %while.cond.out_alloc_crit_edge ]
  %17 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg_buf, align 4
  call void @kfree(ptr noundef %18) #9
  br label %out

out:                                              ; preds = %out_alloc, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_alloc ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_clean_arq_element(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_send_vf_config_msg(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %caps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps) #9
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 448626937, ptr %caps, align 4
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %aq_required, align 8
  %and = and i64 %3, -1025
  store i64 %and, ptr %aq_required, align 8
  %pf_version = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 41
  %4 = ptrtoint ptr %pf_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pf_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %minor = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 41, i32 1
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %caps, i16 noundef zeroext 4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_vf_config_msg, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %12 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %13) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 3, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %hw1.i9 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i10 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %14 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i10, align 4
  %and.i11 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i15:                                       ; preds = %if.else
  %call.i13 = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i9, i32 noundef 3, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool2.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.cleanup_crit_edge, label %do.body.i16

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i16:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_vf_config_msg, %if.then8.i22)) #9
          to label %cleanup [label %if.then8.i22], !srcloc !367

if.then8.i22:                                     ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i17 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %16 = ptrtoint ptr %pdev.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i17, align 4
  %dev.i18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call9.i19 = tail call ptr @iavf_stat_str(ptr noundef %hw1.i9, i32 noundef %call.i13) #9
  %asq_last_status.i20 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %18 = ptrtoint ptr %asq_last_status.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status.i20, align 4
  %call10.i21 = tail call ptr @iavf_aq_str(ptr noundef %hw1.i9, i32 noundef %19) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i18, ptr noundef nonnull @.str.159, i32 noundef 3, ptr noundef %call9.i19, ptr noundef %call10.i21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i22, %do.body.i16, %if.end.i15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.then8.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i, %do.body.i ], [ 0, %if.else.cleanup_crit_edge ], [ %call.i13, %if.then8.i22 ], [ 0, %if.end.i15.cleanup_crit_edge ], [ %call.i13, %do.body.i16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_send_vf_offload_vlan_v2_msg(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %aq_required, align 8
  %and = and i64 %1, -1073741825
  store i64 %and, ptr %aq_required, align 8
  %vf_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %2 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_cap_flags, align 4
  %and1 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %6 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 51, ptr %current_op, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 51, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_vf_offload_vlan_v2_msg, %if.then8.i)) #9
          to label %return [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %11 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %12) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 51, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %return

return:                                           ; preds = %if.then8.i, %do.body.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call.i, %if.then8.i ], [ 0, %if.end.i.return_crit_edge ], [ %call.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_get_vf_config(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.iavf_arq_event_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #9
  %0 = call ptr @memset(ptr %event, i32 255, i32 36)
  %buf_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 2
  %1 = ptrtoint ptr %buf_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 84, ptr %buf_len, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 84) #12
  %msg_buf = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 3
  %3 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %msg_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %while.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.preheader:                             ; preds = %entry
  %cookie_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %while.cond.preheader
  %call4 = call i32 @iavf_clean_arq_element(ptr noundef %hw1, ptr noundef nonnull %event, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %while.cond.out_alloc_crit_edge

while.cond.out_alloc_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

if.end7:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie_high, align 4
  %cmp = icmp eq i32 %5, 50331648
  br i1 %cmp, label %while.end, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %if.end7
  %cookie_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 5
  %6 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie_low, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %vf_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %9 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_res, align 4
  %11 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg_buf, align 4
  %msg_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 1
  %13 = ptrtoint ptr %msg_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msg_len, align 4
  %15 = call i16 @llvm.umin.i16(i16 %14, i16 84)
  %cond = zext i16 %15 to i32
  %16 = call ptr @memcpy(ptr %10, ptr %12, i32 %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool19.not = icmp eq i32 %7, 0
  br i1 %tobool19.not, label %if.then20, label %while.end.if.end21_crit_edge

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %while.end
  %17 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vf_res, align 4
  %num_queue_pairs.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_queue_pairs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %20)
  %cmp.i = icmp ugt i16 %20, 16
  br i1 %cmp.i, label %if.then.i, label %if.then20.if.end21_crit_edge

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then.i:                                        ; preds = %if.then20
  %conv.i = zext i16 %20 to i32
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.160, i32 noundef %conv.i, i32 noundef 16) #13
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.163, i32 noundef 16) #13
  %25 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vf_res, align 4
  %num_queue_pairs11.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %num_queue_pairs11.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 16, ptr %num_queue_pairs11.i, align 2
  %28 = load ptr, ptr %vf_res, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp1428.not.i = icmp eq i16 %30, 0
  br i1 %cmp1428.not.i, label %if.then.i.if.end21_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.if.end21_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %31 = phi ptr [ %34, %for.body.i.for.body.i_crit_edge ], [ %28, %if.then.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %num_queue_pairs18.i = getelementptr %struct.virtchnl_vf_resource, ptr %31, i32 0, i32 7, i32 %i.029.i, i32 1
  %32 = ptrtoint ptr %num_queue_pairs18.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 16, ptr %num_queue_pairs18.i, align 2
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %33 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vf_res, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  %conv13.i = zext i16 %36 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end21_crit_edge

for.body.i.if.end21_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end21:                                         ; preds = %for.body.i.if.end21_crit_edge, %if.then.i.if.end21_crit_edge, %if.then20.if.end21_crit_edge, %while.end.if.end21_crit_edge
  %37 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vf_res, align 4
  call void @iavf_vf_parse_hw_config(ptr noundef %hw1, ptr noundef %38) #9
  br label %out_alloc

out_alloc:                                        ; preds = %if.end21, %while.cond.out_alloc_crit_edge
  %err.0 = phi i32 [ %8, %if.end21 ], [ %call4, %while.cond.out_alloc_crit_edge ]
  %39 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msg_buf, align 4
  call void @kfree(ptr noundef %40) #9
  br label %out

out:                                              ; preds = %out_alloc, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_alloc ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_vf_parse_hw_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_get_vf_vlan_v2_caps(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.iavf_arq_event_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #9
  %0 = call ptr @memset(ptr %event, i32 255, i32 36)
  %buf_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 2
  %1 = ptrtoint ptr %buf_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 40, ptr %buf_len, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #12
  %msg_buf = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 3
  %3 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %msg_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %while.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.preheader:                             ; preds = %entry
  %cookie_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %while.cond.preheader
  %call4 = call i32 @iavf_clean_arq_element(ptr noundef %hw1, ptr noundef nonnull %event, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %while.cond.out_alloc_crit_edge

while.cond.out_alloc_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

if.end7:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie_high, align 4
  %cmp = icmp eq i32 %5, 855638016
  br i1 %cmp, label %while.end, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %if.end7
  %cookie_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %event, i32 0, i32 5
  %6 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie_low, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end14, label %while.end.out_alloc_crit_edge

while.end.out_alloc_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_alloc

if.end14:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_v2_caps = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42
  %9 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg_buf, align 4
  %msg_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %event, i32 0, i32 1
  %11 = ptrtoint ptr %msg_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_len, align 4
  %13 = call i16 @llvm.umin.i16(i16 %12, i16 40)
  %cond = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %vlan_v2_caps, ptr %10, i32 %cond)
  br label %out_alloc

out_alloc:                                        ; preds = %if.end14, %while.end.out_alloc_crit_edge, %while.cond.out_alloc_crit_edge
  %err.0 = phi i32 [ %8, %while.end.out_alloc_crit_edge ], [ 0, %if.end14 ], [ %call4, %while.cond.out_alloc_crit_edge ]
  %15 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg_buf, align 4
  call void @kfree(ptr noundef %16) #9
  br label %out

out:                                              ; preds = %out_alloc, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_alloc ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_configure_queues(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_active_queues = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_active_queues, align 4
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %2 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %current_op, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 64) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 72) #9
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %15)
  %cmp7 = icmp ult i32 %15, 1501
  %spec.select = select i1 %cmp7, i32 1534, i32 9728
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end5.if.end9_crit_edge
  %max_frame.0 = phi i32 [ 9728, %if.end5.if.end9_crit_edge ], [ %spec.select, %land.lhs.true ]
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %16 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi_res, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %call9.i.i, align 128
  %conv = trunc i32 %1 to i16
  %num_queue_pairs = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %num_queue_pairs, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1195 = icmp sgt i32 %1, 0
  br i1 %cmp1195, label %for.body.lr.ph, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %qpair = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, ptr %call9.i.i, i32 0, i32 3
  %tx_rings = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 13
  %rx_rings = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 16
  %22 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_rings, align 4
  %24 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_rings, align 8
  %26 = load ptr, ptr %rx_rings, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %vqpi.096 = phi ptr [ %qpair, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call9.i.i, align 128
  %29 = ptrtoint ptr %vqpi.096 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vqpi.096, align 8
  %conv15 = trunc i32 %i.097 to i16
  %queue_id = getelementptr inbounds %struct.virtchnl_txq_info, ptr %vqpi.096, i32 0, i32 1
  %30 = ptrtoint ptr %queue_id to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv15, ptr %queue_id, align 2
  %count = getelementptr %struct.iavf_ring, ptr %23, i32 %i.097, i32 10
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %count, align 2
  %ring_len = getelementptr inbounds %struct.virtchnl_txq_info, ptr %vqpi.096, i32 0, i32 2
  %33 = ptrtoint ptr %ring_len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ring_len, align 4
  %dma = getelementptr %struct.iavf_ring, ptr %23, i32 %i.097, i32 25
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma, align 4
  %conv20 = zext i32 %35 to i64
  %dma_ring_addr = getelementptr inbounds %struct.virtchnl_txq_info, ptr %vqpi.096, i32 0, i32 4
  %36 = ptrtoint ptr %dma_ring_addr to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv20, ptr %dma_ring_addr, align 8
  %37 = load i16, ptr %call9.i.i, align 128
  %rxq = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1
  %38 = ptrtoint ptr %rxq to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %rxq, align 8
  %queue_id26 = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %queue_id26 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv15, ptr %queue_id26, align 2
  %count28 = getelementptr %struct.iavf_ring, ptr %25, i32 %i.097, i32 10
  %40 = ptrtoint ptr %count28 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %count28, align 2
  %conv29 = zext i16 %41 to i32
  %ring_len31 = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %ring_len31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv29, ptr %ring_len31, align 4
  %dma34 = getelementptr %struct.iavf_ring, ptr %25, i32 %i.097, i32 25
  %43 = ptrtoint ptr %dma34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma34, align 4
  %conv35 = zext i32 %44 to i64
  %dma_ring_addr37 = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1, i32 8
  %45 = ptrtoint ptr %dma_ring_addr37 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv35, ptr %dma_ring_addr37, align 8
  %max_pkt_size = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %max_frame.0, ptr %max_pkt_size, align 8
  %rx_buf_len = getelementptr %struct.iavf_ring, ptr %26, i32 %i.097, i32 12
  %47 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_buf_len, align 2
  %conv41 = zext i16 %48 to i32
  %add = add nuw nsw i32 %conv41, 127
  %and42 = and i32 %add, 130944
  %databuffer_size = getelementptr inbounds %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %databuffer_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and42, ptr %databuffer_size, align 4
  %incdec.ptr = getelementptr %struct.virtchnl_queue_pair_info, ptr %vqpi.096, i32 1
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %50 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %aq_required, align 8
  %and44 = and i64 %51, -65
  store i64 %and44, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.iavf_send_pf_msg.exit_crit_edge

for.end.iavf_send_pf_msg.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %for.end
  %conv45 = trunc i32 %retval.0.i to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv45, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_configure_queues, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %54 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %56 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %57) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 6, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %for.end.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_enable_queues(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vqs = alloca %struct.virtchnl_queue_select, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vqs) #9
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vqs, align 4
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.virtchnl_queue_select, ptr %vqs, i32 0, i32 3
  %6 = getelementptr inbounds %struct.virtchnl_queue_select, ptr %vqs, i32 0, i32 2
  %7 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %current_op, align 8
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %8 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi_res, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %12 = ptrtoint ptr %vqs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vqs, align 4
  %num_active_queues = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 11
  %13 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_active_queues, align 4
  %notmask = shl nsw i32 -1, %14
  %sub = xor i32 %notmask, -1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %6, align 4
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and = and i64 %18, -2
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %vqs, i16 noundef zeroext 12, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_enable_queues, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %23 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %24) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 8, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vqs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_disable_queues(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vqs = alloca %struct.virtchnl_queue_select, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vqs) #9
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vqs, align 4
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.virtchnl_queue_select, ptr %vqs, i32 0, i32 3
  %6 = getelementptr inbounds %struct.virtchnl_queue_select, ptr %vqs, i32 0, i32 2
  %7 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %current_op, align 8
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %8 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi_res, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %12 = ptrtoint ptr %vqs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vqs, align 4
  %num_active_queues = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 11
  %13 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_active_queues, align 4
  %notmask = shl nsw i32 -1, %14
  %sub = xor i32 %notmask, -1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %6, align 4
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and = and i64 %18, -3
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %vqs, i16 noundef zeroext 12, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_disable_queues, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %23 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %24) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 9, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vqs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_map_queues(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %current_op, align 8
  %num_msix_vectors = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 19
  %5 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_msix_vectors, align 4
  %sub = add i32 %6, -1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 14) #9
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_msix_vectors, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp866 = icmp sgt i32 %sub, 0
  br i1 %cmp866, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %q_vectors10 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %q_vectors10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_vectors10, align 8
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %15 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vsi_res, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %v_idx.067 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx12 = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx12, align 2
  %add = add nuw nsw i32 %v_idx.067, 1
  %conv14 = trunc i32 %add to i16
  %vector_id = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067, i32 1
  %20 = ptrtoint ptr %vector_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv14, ptr %vector_id, align 4
  %ring_mask = getelementptr %struct.iavf_q_vector, ptr %14, i32 %v_idx.067, i32 5
  %21 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_mask, align 8
  %conv15 = trunc i32 %22 to i16
  %txq_map = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067, i32 3
  %23 = ptrtoint ptr %txq_map to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv15, ptr %txq_map, align 4
  %24 = load i32, ptr %ring_mask, align 8
  %conv17 = trunc i32 %24 to i16
  %rxq_map = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067, i32 2
  %25 = ptrtoint ptr %rxq_map to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv17, ptr %rxq_map, align 2
  %rxitr_idx = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067, i32 4
  %26 = ptrtoint ptr %rxitr_idx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %rxitr_idx, align 2
  %txitr_idx = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.067, i32 5
  %27 = ptrtoint ptr %txitr_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %txitr_idx, align 4
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %v_idx.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %arrayidx19 = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.0.lcssa
  %vsi_res20 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %28 = ptrtoint ptr %vsi_res20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vsi_res20, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx19, align 2
  %vector_id23 = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.0.lcssa, i32 1
  %33 = ptrtoint ptr %vector_id23 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %vector_id23, align 4
  %txq_map24 = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.0.lcssa, i32 3
  %34 = ptrtoint ptr %txq_map24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %txq_map24, align 4
  %rxq_map25 = getelementptr %struct.virtchnl_irq_map_info, ptr %call9.i.i, i32 0, i32 1, i32 %v_idx.0.lcssa, i32 2
  %35 = ptrtoint ptr %rxq_map25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %rxq_map25, align 2
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %36 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %aq_required, align 8
  %and = and i64 %37, -129
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.iavf_send_pf_msg.exit_crit_edge

for.end.iavf_send_pf_msg.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %for.end
  %conv26 = trunc i32 %retval.0.i to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv26, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_map_queues, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %42 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %43) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 7, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %for.end.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_add_ether_addrs(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %mac_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 6
  %4 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %f.0118 = load ptr, ptr %mac_filter_list, align 4
  %cmp3.not119 = icmp eq ptr %f.0118, %mac_filter_list
  br i1 %cmp3.not119, label %if.end.if.then12_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %f.0121 = phi ptr [ %f.0, %for.body.for.body_crit_edge ], [ %f.0118, %if.end.for.body_crit_edge ]
  %count.0120 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %5 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.0121, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 2
  %7 = lshr i8 %bf.load, 5
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %spec.select = add i32 %count.0120, %8
  %9 = ptrtoint ptr %f.0121 to i32
  call void @__asan_load4_noabort(i32 %9)
  %f.0 = load ptr, ptr %f.0121, align 4
  %cmp3.not = icmp eq ptr %f.0, %mac_filter_list
  br i1 %cmp3.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool11.not = icmp eq i32 %spec.select, 0
  br i1 %tobool11.not, label %for.end.if.then12_crit_edge, label %if.end14

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %10 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %aq_required, align 8
  %and = and i64 %11, -5
  store i64 %and, ptr %aq_required, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %12 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %current_op, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 8) #9
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select.i)
  %cmp16117 = icmp ugt i32 %spec.select.i, 4096
  %cmp16 = select i1 %14, i1 true, i1 %cmp16117
  br i1 %cmp16, label %do.end20, label %if.end14.if.end8.i.i_crit_edge

if.end14.if.end8.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %pdev21 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %16 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.17) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end20, %if.end14.if.end8.i.i_crit_edge
  %len.0 = phi i32 [ 4092, %do.end20 ], [ %spec.select.i, %if.end14.if.end8.i.i_crit_edge ]
  %count.2 = phi i32 [ 510, %do.end20 ], [ %spec.select, %if.end14.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 2848) #14
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %18 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsi_res, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %call9.i.i, align 128
  %conv = trunc i32 %count.2 to i16
  %num_elements = getelementptr inbounds %struct.virtchnl_ether_addr_list, ptr %call9.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %num_elements to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %num_elements, align 2
  %24 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %f.1122 = load ptr, ptr %mac_filter_list, align 4
  %cmp39.not123 = icmp eq ptr %f.1122, %mac_filter_list
  br i1 %cmp39.not123, label %if.end29.for.end64_crit_edge, label %if.end29.for.body42_crit_edge

if.end29.for.body42_crit_edge:                    ; preds = %if.end29
  br label %for.body42

if.end29.for.end64_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64

for.body42:                                       ; preds = %for.inc58.for.body42_crit_edge, %if.end29.for.body42_crit_edge
  %f.1125 = phi ptr [ %f.1, %for.inc58.for.body42_crit_edge ], [ %f.1122, %if.end29.for.body42_crit_edge ]
  %i.0124 = phi i32 [ %i.1, %for.inc58.for.body42_crit_edge ], [ 0, %if.end29.for.body42_crit_edge ]
  %25 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.1125, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load43 = load i8, ptr %25, align 2
  %27 = and i8 %bf.load43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool46.not = icmp eq i8 %27, 0
  br i1 %tobool46.not, label %for.body42.for.inc58_crit_edge, label %if.then47

for.body42.for.inc58_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

if.then47:                                        ; preds = %for.body42
  %arrayidx = getelementptr %struct.virtchnl_ether_addr_list, ptr %call9.i.i, i32 0, i32 2, i32 %i.0124
  %macaddr = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.1125, i32 0, i32 1
  %28 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %macaddr, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr %struct.iavf_mac_filter, ptr %f.1125, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %33 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i, align 8
  %inc50 = add i32 %i.0124, 1
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load51 = load i8, ptr %25, align 2
  %bf.clear52 = and i8 %bf.load51, -33
  store i8 %bf.clear52, ptr %25, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc50, i32 %count.2)
  %cmp53 = icmp eq i32 %inc50, %count.2
  br i1 %cmp53, label %if.then47.for.end64_crit_edge, label %if.then47.for.inc58_crit_edge

if.then47.for.inc58_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

if.then47.for.end64_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64

for.inc58:                                        ; preds = %if.then47.for.inc58_crit_edge, %for.body42.for.inc58_crit_edge
  %i.1 = phi i32 [ %inc50, %if.then47.for.inc58_crit_edge ], [ %i.0124, %for.body42.for.inc58_crit_edge ]
  %35 = ptrtoint ptr %f.1125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %f.1 = load ptr, ptr %f.1125, align 4
  %cmp39.not = icmp eq ptr %f.1, %mac_filter_list
  br i1 %cmp39.not, label %for.inc58.for.end64_crit_edge, label %for.inc58.for.body42_crit_edge

for.inc58.for.body42_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.inc58.for.end64_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64

for.end64:                                        ; preds = %for.inc58.for.end64_crit_edge, %if.then47.for.end64_crit_edge, %if.end29.for.end64_crit_edge
  br i1 %cmp16, label %for.end64.if.end69_crit_edge, label %if.then66

for.end64.if.end69_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then66:                                        ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required67 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %36 = ptrtoint ptr %aq_required67 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %aq_required67, align 8
  %and68 = and i64 %37, -5
  store i64 %and68, ptr %aq_required67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %for.end64.if.end69_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end69.iavf_send_pf_msg.exit_crit_edge

if.end69.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end69
  %conv71 = trunc i32 %len.0 to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv71, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_ether_addrs, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %42 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %43) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 10, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end69.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.then27, %if.then12, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_del_ether_addrs(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %mac_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 6
  %4 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %f.0126 = load ptr, ptr %mac_filter_list, align 4
  %cmp3.not127 = icmp eq ptr %f.0126, %mac_filter_list
  br i1 %cmp3.not127, label %if.end.if.then12_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %f.0129 = phi ptr [ %f.0, %for.body.for.body_crit_edge ], [ %f.0126, %if.end.for.body_crit_edge ]
  %count.0128 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %5 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.0129, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 2
  %7 = lshr i8 %bf.load, 6
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %spec.select = add i32 %count.0128, %8
  %9 = ptrtoint ptr %f.0129 to i32
  call void @__asan_load4_noabort(i32 %9)
  %f.0 = load ptr, ptr %f.0129, align 4
  %cmp3.not = icmp eq ptr %f.0, %mac_filter_list
  br i1 %cmp3.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool11.not = icmp eq i32 %spec.select, 0
  br i1 %tobool11.not, label %for.end.if.then12_crit_edge, label %if.end14

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %10 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %aq_required, align 8
  %and = and i64 %11, -17
  store i64 %and, ptr %aq_required, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %12 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %current_op, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 8) #9
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select.i)
  %cmp16125 = icmp ugt i32 %spec.select.i, 4096
  %cmp16 = select i1 %14, i1 true, i1 %cmp16125
  br i1 %cmp16, label %do.end20, label %if.end14.if.end8.i.i_crit_edge

if.end14.if.end8.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %pdev21 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %16 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.23) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end20, %if.end14.if.end8.i.i_crit_edge
  %len.0 = phi i32 [ 4092, %do.end20 ], [ %spec.select.i, %if.end14.if.end8.i.i_crit_edge ]
  %count.2 = phi i32 [ 510, %do.end20 ], [ %spec.select, %if.end14.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 2848) #14
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %18 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsi_res, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %call9.i.i, align 128
  %conv = trunc i32 %count.2 to i16
  %num_elements = getelementptr inbounds %struct.virtchnl_ether_addr_list, ptr %call9.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %num_elements to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %num_elements, align 2
  %24 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_filter_list, align 4
  %cmp44.not131 = icmp eq ptr %25, %mac_filter_list
  br i1 %cmp44.not131, label %if.end29.for.end68_crit_edge, label %if.end29.for.body47_crit_edge

if.end29.for.body47_crit_edge:                    ; preds = %if.end29
  br label %for.body47

if.end29.for.end68_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.body47:                                       ; preds = %for.inc62.for.body47_crit_edge, %if.end29.for.body47_crit_edge
  %f.1133 = phi ptr [ %ftmp.0135, %for.inc62.for.body47_crit_edge ], [ %25, %if.end29.for.body47_crit_edge ]
  %i.0132 = phi i32 [ %i.1, %for.inc62.for.body47_crit_edge ], [ 0, %if.end29.for.body47_crit_edge ]
  %26 = ptrtoint ptr %f.1133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ftmp.0135 = load ptr, ptr %f.1133, align 4
  %27 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.1133, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load48 = load i8, ptr %27, align 2
  %29 = and i8 %bf.load48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  br i1 %tobool51.not, label %for.body47.for.inc62_crit_edge, label %if.then52

for.body47.for.inc62_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

if.then52:                                        ; preds = %for.body47
  %arrayidx = getelementptr %struct.virtchnl_ether_addr_list, ptr %call9.i.i, i32 0, i32 2, i32 %i.0132
  %macaddr = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.1133, i32 0, i32 1
  %30 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %macaddr, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr %struct.iavf_mac_filter, ptr %f.1133, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i, align 8
  %inc55 = add i32 %i.0132, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.1133) #9
  br i1 %call.i.i, label %if.end.i.i122, label %if.then52.list_del.exit_crit_edge

if.then52.list_del.exit_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i122:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %f.1133, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %f.1133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f.1133, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i122, %if.then52.list_del.exit_crit_edge
  %42 = ptrtoint ptr %f.1133 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %f.1133, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f.1133, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %f.1133) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc55, i32 %count.2)
  %cmp57 = icmp eq i32 %inc55, %count.2
  br i1 %cmp57, label %list_del.exit.for.end68_crit_edge, label %list_del.exit.for.inc62_crit_edge

list_del.exit.for.inc62_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

list_del.exit.for.end68_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.inc62:                                        ; preds = %list_del.exit.for.inc62_crit_edge, %for.body47.for.inc62_crit_edge
  %i.1 = phi i32 [ %inc55, %list_del.exit.for.inc62_crit_edge ], [ %i.0132, %for.body47.for.inc62_crit_edge ]
  %cmp44.not = icmp eq ptr %ftmp.0135, %mac_filter_list
  br i1 %cmp44.not, label %for.inc62.for.end68_crit_edge, label %for.inc62.for.body47_crit_edge

for.inc62.for.body47_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.inc62.for.end68_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.end68:                                        ; preds = %for.inc62.for.end68_crit_edge, %list_del.exit.for.end68_crit_edge, %if.end29.for.end68_crit_edge
  br i1 %cmp16, label %for.end68.if.end73_crit_edge, label %if.then70

for.end68.if.end73_crit_edge:                     ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required71 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %44 = ptrtoint ptr %aq_required71 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %aq_required71, align 8
  %and72 = and i64 %45, -17
  store i64 %and72, ptr %aq_required71, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %for.end68.if.end73_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end73.iavf_send_pf_msg.exit_crit_edge

if.end73.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end73
  %conv75 = trunc i32 %len.0 to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv75, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_ether_addrs, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %50 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %51) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 11, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end73.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.then27, %if.then12, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_add_vlans(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %1) #13
  br label %cleanup175

if.end:                                           ; preds = %entry
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %vlan_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %f.0312 = load ptr, ptr %vlan_filter_list, align 4
  %cmp3.not313 = icmp eq ptr %f.0312, %vlan_filter_list
  br i1 %cmp3.not313, label %if.end.if.then24_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %f.0315 = phi ptr [ %f.0, %for.body.for.body_crit_edge ], [ %f.0312, %if.end.for.body_crit_edge ]
  %count.0314 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.0315, i32 0, i32 3
  %5 = ptrtoint ptr %add to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add, align 1, !range !368
  %7 = zext i8 %6 to i32
  %spec.select = add i32 %count.0314, %7
  %8 = ptrtoint ptr %f.0315 to i32
  call void @__asan_load4_noabort(i32 %8)
  %f.0 = load ptr, ptr %f.0315, align 4
  %cmp3.not = icmp eq ptr %f.0, %vlan_filter_list
  br i1 %cmp3.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool11.not = icmp eq i32 %spec.select, 0
  br i1 %tobool11.not, label %for.end.if.then24_crit_edge, label %lor.lhs.false

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false:                                    ; preds = %for.end
  %vf_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %9 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_cap_flags, align 4
  %and = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.then32

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %and16 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false13.if.then24_crit_edge, label %land.lhs.true

lor.lhs.false13.if.then24_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %vlan_v2_caps = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42
  %13 = ptrtoint ptr %vlan_v2_caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vlan_v2_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %inner = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %inner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %lor.lhs.false19.if.then24_crit_edge, label %lor.lhs.false19.if.else_crit_edge

lor.lhs.false19.if.else_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false19.if.then24_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false19.if.then24_crit_edge, %lor.lhs.false13.if.then24_crit_edge, %for.end.if.then24_crit_edge, %if.end.if.then24_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and25 = and i64 %18, -9
  store i64 %and25, ptr %aq_required, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup175

if.then32:                                        ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %current_op, align 8
  %mul = shl i32 %spec.select, 1
  %add34 = add i32 %mul, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add34)
  %cmp35 = icmp sgt i32 %add34, 4096
  br i1 %cmp35, label %do.end39, label %if.then32.if.end8.i.i_crit_edge

if.then32.if.end8.i.i_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %pdev40 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %20 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev41, ptr noundef nonnull @.str.28) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end39, %if.then32.if.end8.i.i_crit_edge
  %count.2 = phi i32 [ 2045, %do.end39 ], [ %spec.select, %if.then32.if.end8.i.i_crit_edge ]
  %len.0 = phi i32 [ 4096, %do.end39 ], [ %add34, %if.then32.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 2848) #14
  %tobool45.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup175

if.end48:                                         ; preds = %if.end8.i.i
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %22 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vsi_res, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %26 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %call9.i.i, align 128
  %conv = trunc i32 %count.2 to i16
  %num_elements = getelementptr inbounds %struct.virtchnl_vlan_filter_list, ptr %call9.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %num_elements to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %num_elements, align 2
  %28 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %f.1316 = load ptr, ptr %vlan_filter_list, align 4
  %cmp58.not317 = icmp eq ptr %f.1316, %vlan_filter_list
  br i1 %cmp58.not317, label %if.end48.for.end78_crit_edge, label %if.end48.for.body61_crit_edge

if.end48.for.body61_crit_edge:                    ; preds = %if.end48
  br label %for.body61

if.end48.for.end78_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body61:                                       ; preds = %for.inc72.for.body61_crit_edge, %if.end48.for.body61_crit_edge
  %f.1319 = phi ptr [ %f.1, %for.inc72.for.body61_crit_edge ], [ %f.1316, %if.end48.for.body61_crit_edge ]
  %i.0318 = phi i32 [ %i.1, %for.inc72.for.body61_crit_edge ], [ 0, %if.end48.for.body61_crit_edge ]
  %add62 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.1319, i32 0, i32 3
  %29 = ptrtoint ptr %add62 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add62, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool63.not = icmp eq i8 %30, 0
  br i1 %tobool63.not, label %for.body61.for.inc72_crit_edge, label %if.then64

for.body61.for.inc72_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc72

if.then64:                                        ; preds = %for.body61
  %vlan = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.1319, i32 0, i32 1
  %31 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan, align 4
  %arrayidx = getelementptr %struct.virtchnl_vlan_filter_list, ptr %call9.i.i, i32 0, i32 2, i32 %i.0318
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx, align 2
  %inc65 = add i32 %i.0318, 1
  %34 = ptrtoint ptr %add62 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add62, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc65, i32 %count.2)
  %cmp67 = icmp eq i32 %inc65, %count.2
  br i1 %cmp67, label %if.then64.for.end78_crit_edge, label %if.then64.for.inc72_crit_edge

if.then64.for.inc72_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc72

if.then64.for.end78_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.inc72:                                        ; preds = %if.then64.for.inc72_crit_edge, %for.body61.for.inc72_crit_edge
  %i.1 = phi i32 [ %inc65, %if.then64.for.inc72_crit_edge ], [ %i.0318, %for.body61.for.inc72_crit_edge ]
  %35 = ptrtoint ptr %f.1319 to i32
  call void @__asan_load4_noabort(i32 %35)
  %f.1 = load ptr, ptr %f.1319, align 4
  %cmp58.not = icmp eq ptr %f.1, %vlan_filter_list
  br i1 %cmp58.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body61_crit_edge

for.inc72.for.body61_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %if.then64.for.end78_crit_edge, %if.end48.for.end78_crit_edge
  br i1 %cmp35, label %for.end78.if.end83_crit_edge, label %if.then80

for.end78.if.end83_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then80:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required81 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %36 = ptrtoint ptr %aq_required81 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %aq_required81, align 8
  %and82 = and i64 %37, -9
  store i64 %and82, ptr %aq_required81, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %for.end78.if.end83_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end83.iavf_send_pf_msg.exit_crit_edge

if.end83.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end83
  %conv85 = trunc i32 %len.0 to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv85, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_vlans, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %42 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %43) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 12, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end83.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup175

if.else:                                          ; preds = %lor.lhs.false19.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %44 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 52, ptr %current_op, align 8
  %sub = shl i32 %spec.select, 5
  %add89 = or i32 %sub, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add89)
  %cmp90 = icmp sgt i32 %add89, 4096
  br i1 %cmp90, label %do.end95, label %if.else.if.end8.i.i287_crit_edge

if.else.if.end8.i.i287_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i287

do.end95:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pdev96 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %45 = ptrtoint ptr %pdev96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev96, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev97, ptr noundef nonnull @.str.28) #13
  br label %if.end8.i.i287

if.end8.i.i287:                                   ; preds = %do.end95, %if.else.if.end8.i.i287_crit_edge
  %count.3 = phi i32 [ 126, %do.end95 ], [ %spec.select, %if.else.if.end8.i.i287_crit_edge ]
  %len.1 = phi i32 [ 4040, %do.end95 ], [ %add89, %if.else.if.end8.i.i287_crit_edge ]
  %call9.i.i286 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.1, i32 noundef 2848) #14
  %tobool103.not = icmp eq ptr %call9.i.i286, null
  br i1 %tobool103.not, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end8.i.i287
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup175

if.end106:                                        ; preds = %if.end8.i.i287
  %vsi_res107 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %47 = ptrtoint ptr %vsi_res107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vsi_res107, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 4
  %51 = ptrtoint ptr %call9.i.i286 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %call9.i.i286, align 128
  %conv109 = trunc i32 %count.3 to i16
  %num_elements110 = getelementptr inbounds %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i286, i32 0, i32 1
  %52 = ptrtoint ptr %num_elements110 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv109, ptr %num_elements110, align 2
  %53 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %f.2320 = load ptr, ptr %vlan_filter_list, align 4
  %cmp119.not321 = icmp eq ptr %f.2320, %vlan_filter_list
  br i1 %cmp119.not321, label %if.end106.for.end162_crit_edge, label %if.end106.for.body122_crit_edge

if.end106.for.body122_crit_edge:                  ; preds = %if.end106
  br label %for.body122

if.end106.for.end162_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end162

for.body122:                                      ; preds = %for.inc156.for.body122_crit_edge, %if.end106.for.body122_crit_edge
  %f.2323 = phi ptr [ %f.2, %for.inc156.for.body122_crit_edge ], [ %f.2320, %if.end106.for.body122_crit_edge ]
  %i.2322 = phi i32 [ %i.3, %for.inc156.for.body122_crit_edge ], [ 0, %if.end106.for.body122_crit_edge ]
  %add123 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2323, i32 0, i32 3
  %54 = ptrtoint ptr %add123 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add123, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool124.not = icmp eq i8 %55, 0
  br i1 %tobool124.not, label %for.body122.for.inc156_crit_edge, label %if.then125

for.body122.for.inc156_crit_edge:                 ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc156

if.then125:                                       ; preds = %for.body122
  %56 = ptrtoint ptr %vlan_v2_caps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vlan_v2_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool132.not = icmp eq i32 %57, 0
  %outer135 = getelementptr %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i286, i32 0, i32 3, i32 %i.2322, i32 1
  %arrayidx138 = getelementptr %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i286, i32 0, i32 3, i32 %i.2322
  %vlan130.0 = select i1 %tobool132.not, ptr %arrayidx138, ptr %outer135
  %vlan141 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2323, i32 0, i32 1
  %58 = ptrtoint ptr %vlan141 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vlan141, align 4
  %60 = ptrtoint ptr %vlan130.0 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vlan130.0, align 8
  %tpid = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2323, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %tpid to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tpid, align 2
  %tpid144 = getelementptr inbounds %struct.virtchnl_vlan, ptr %vlan130.0, i32 0, i32 2
  %63 = ptrtoint ptr %tpid144 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %tpid144, align 4
  %inc145 = add i32 %i.2322, 1
  %64 = ptrtoint ptr %add123 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %add123, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc145, i32 %count.3)
  %cmp147 = icmp eq i32 %inc145, %count.3
  br i1 %cmp147, label %if.then125.for.end162_crit_edge, label %if.then125.for.inc156_crit_edge

if.then125.for.inc156_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc156

if.then125.for.end162_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end162

for.inc156:                                       ; preds = %if.then125.for.inc156_crit_edge, %for.body122.for.inc156_crit_edge
  %i.3 = phi i32 [ %inc145, %if.then125.for.inc156_crit_edge ], [ %i.2322, %for.body122.for.inc156_crit_edge ]
  %65 = ptrtoint ptr %f.2323 to i32
  call void @__asan_load4_noabort(i32 %65)
  %f.2 = load ptr, ptr %f.2323, align 4
  %cmp119.not = icmp eq ptr %f.2, %vlan_filter_list
  br i1 %cmp119.not, label %for.inc156.for.end162_crit_edge, label %for.inc156.for.body122_crit_edge

for.inc156.for.body122_crit_edge:                 ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body122

for.inc156.for.end162_crit_edge:                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end162

for.end162:                                       ; preds = %for.inc156.for.end162_crit_edge, %if.then125.for.end162_crit_edge, %if.end106.for.end162_crit_edge
  br i1 %cmp90, label %for.end162.if.end167_crit_edge, label %if.then164

for.end162.if.end167_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then164:                                       ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required165 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %66 = ptrtoint ptr %aq_required165 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %aq_required165, align 8
  %and166 = and i64 %67, -9
  store i64 %and166, ptr %aq_required165, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %for.end162.if.end167_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i290 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i291 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %68 = ptrtoint ptr %flags.i291 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i291, align 4
  %and.i292 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i292)
  %tobool.not.i293 = icmp eq i32 %and.i292, 0
  br i1 %tobool.not.i293, label %if.end.i296, label %if.end167.iavf_send_pf_msg.exit305_crit_edge

if.end167.iavf_send_pf_msg.exit305_crit_edge:     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit305

if.end.i296:                                      ; preds = %if.end167
  %conv169 = trunc i32 %len.1 to i16
  %call.i294 = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i290, i32 noundef 52, i32 noundef 0, ptr noundef nonnull %call9.i.i286, i16 noundef zeroext %conv169, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool2.not.i295 = icmp eq i32 %call.i294, 0
  br i1 %tobool2.not.i295, label %if.end.i296.iavf_send_pf_msg.exit305_crit_edge, label %do.body.i297

if.end.i296.iavf_send_pf_msg.exit305_crit_edge:   ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit305

do.body.i297:                                     ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_vlans, %if.then8.i303)) #9
          to label %iavf_send_pf_msg.exit305 [label %if.then8.i303], !srcloc !367

if.then8.i303:                                    ; preds = %do.body.i297
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i298 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %70 = ptrtoint ptr %pdev.i298 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i298, align 4
  %dev.i299 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %call9.i300 = tail call ptr @iavf_stat_str(ptr noundef %hw1.i290, i32 noundef %call.i294) #9
  %asq_last_status.i301 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %72 = ptrtoint ptr %asq_last_status.i301 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %asq_last_status.i301, align 4
  %call10.i302 = tail call ptr @iavf_aq_str(ptr noundef %hw1.i290, i32 noundef %73) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i299, ptr noundef nonnull @.str.159, i32 noundef 52, ptr noundef %call9.i300, ptr noundef %call10.i302) #9
  br label %iavf_send_pf_msg.exit305

iavf_send_pf_msg.exit305:                         ; preds = %if.then8.i303, %do.body.i297, %if.end.i296.iavf_send_pf_msg.exit305_crit_edge, %if.end167.iavf_send_pf_msg.exit305_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i286) #9
  br label %cleanup175

cleanup175:                                       ; preds = %iavf_send_pf_msg.exit305, %if.then104, %iavf_send_pf_msg.exit, %if.then46, %if.then24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_del_vlans(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %1) #13
  br label %cleanup217

if.end:                                           ; preds = %entry
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %vlan_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan_filter_list, align 4
  %cmp8.not383 = icmp eq ptr %5, %vlan_filter_list
  br i1 %cmp8.not383, label %if.end.if.then56_crit_edge, label %for.body.lr.ph

if.end.if.then56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

for.body.lr.ph:                                   ; preds = %if.end
  %vf_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %vlan_v2_caps = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42
  %inner = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.0386 = phi ptr [ %5, %for.body.lr.ph ], [ %ftmp.0388, %for.inc.for.body_crit_edge ]
  %count.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %f.0386 to i32
  call void @__asan_load4_noabort(i32 %6)
  %ftmp.0388 = load ptr, ptr %f.0386, align 4
  %remove = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.0386, i32 0, i32 2
  %7 = ptrtoint ptr %remove to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remove, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_cap_flags, align 4
  %and = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false:                                    ; preds = %land.lhs.true
  %and12 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.then21_crit_edge, label %land.lhs.true14

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %vlan_v2_caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vlan_v2_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %land.lhs.true14.if.else_crit_edge

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false16:                                  ; preds = %land.lhs.true14
  %15 = ptrtoint ptr %inner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp eq i32 %16, 0
  br i1 %tobool20.not, label %lor.lhs.false16.if.then21_crit_edge, label %lor.lhs.false16.if.else_crit_edge

lor.lhs.false16.if.else_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false16.if.then21_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false16.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.0386) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %f.0386, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %f.0386 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f.0386, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then21.list_del.exit_crit_edge
  %23 = ptrtoint ptr %f.0386 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %f.0386, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f.0386, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %f.0386) #9
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false16.if.else_crit_edge, %land.lhs.true14.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %spec.select = add i32 %count.0384, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.else, %list_del.exit
  %count.1 = phi i32 [ %count.0384, %list_del.exit ], [ %spec.select, %if.else ]
  %cmp8.not = icmp eq ptr %ftmp.0388, %vlan_filter_list
  br i1 %cmp8.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool33.not = icmp eq i32 %count.1, 0
  br i1 %tobool33.not, label %for.end.if.then56_crit_edge, label %lor.lhs.false34

for.end.if.then56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

lor.lhs.false34:                                  ; preds = %for.end
  %vf_res35 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %25 = ptrtoint ptr %vf_res35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vf_res35, align 4
  %vf_cap_flags36 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %vf_cap_flags36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vf_cap_flags36, align 4
  %and37 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.then64

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %and42 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %lor.lhs.false39.if.then56_crit_edge, label %land.lhs.true44

lor.lhs.false39.if.then56_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

land.lhs.true44:                                  ; preds = %lor.lhs.false39
  %vlan_v2_caps45 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42
  %29 = ptrtoint ptr %vlan_v2_caps45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vlan_v2_caps45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %land.lhs.true44.if.else123_crit_edge

land.lhs.true44.if.else123_crit_edge:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else123

lor.lhs.false50:                                  ; preds = %land.lhs.true44
  %inner54 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %inner54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inner54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %lor.lhs.false50.if.then56_crit_edge, label %lor.lhs.false50.if.else123_crit_edge

lor.lhs.false50.if.else123_crit_edge:             ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else123

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false50.if.then56_crit_edge, %lor.lhs.false39.if.then56_crit_edge, %for.end.if.then56_crit_edge, %if.end.if.then56_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %33 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %aq_required, align 8
  %and57 = and i64 %34, -33
  store i64 %and57, ptr %aq_required, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup217

if.then64:                                        ; preds = %lor.lhs.false34
  %35 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 13, ptr %current_op, align 8
  %mul = shl i32 %count.1, 1
  %add = add i32 %mul, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp66 = icmp sgt i32 %add, 4096
  br i1 %cmp66, label %do.end70, label %if.then64.if.end8.i.i_crit_edge

if.then64.if.end8.i.i_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %pdev71 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %36 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev71, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev72, ptr noundef nonnull @.str.35) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end70, %if.then64.if.end8.i.i_crit_edge
  %count.2 = phi i32 [ 2045, %do.end70 ], [ %count.1, %if.then64.if.end8.i.i_crit_edge ]
  %len.0 = phi i32 [ 4096, %do.end70 ], [ %add, %if.then64.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 2848) #14
  %tobool76.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool76.not, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup217

if.end79:                                         ; preds = %if.end8.i.i
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %38 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vsi_res, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 4
  %42 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %call9.i.i, align 128
  %conv = trunc i32 %count.2 to i16
  %num_elements = getelementptr inbounds %struct.virtchnl_vlan_filter_list, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %num_elements to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %num_elements, align 2
  %44 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vlan_filter_list, align 4
  %cmp94.not390 = icmp eq ptr %45, %vlan_filter_list
  br i1 %cmp94.not390, label %if.end79.for.end114_crit_edge, label %if.end79.for.body97_crit_edge

if.end79.for.body97_crit_edge:                    ; preds = %if.end79
  br label %for.body97

if.end79.for.end114_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.body97:                                       ; preds = %for.inc108.for.body97_crit_edge, %if.end79.for.body97_crit_edge
  %f.1392 = phi ptr [ %ftmp.1394, %for.inc108.for.body97_crit_edge ], [ %45, %if.end79.for.body97_crit_edge ]
  %i.0391 = phi i32 [ %i.1, %for.inc108.for.body97_crit_edge ], [ 0, %if.end79.for.body97_crit_edge ]
  %46 = ptrtoint ptr %f.1392 to i32
  call void @__asan_load4_noabort(i32 %46)
  %ftmp.1394 = load ptr, ptr %f.1392, align 4
  %remove98 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.1392, i32 0, i32 2
  %47 = ptrtoint ptr %remove98 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %remove98, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool99.not = icmp eq i8 %48, 0
  br i1 %tobool99.not, label %for.body97.for.inc108_crit_edge, label %if.then100

for.body97.for.inc108_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

if.then100:                                       ; preds = %for.body97
  %vlan = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.1392, i32 0, i32 1
  %49 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan, align 4
  %arrayidx = getelementptr %struct.virtchnl_vlan_filter_list, ptr %call9.i.i, i32 0, i32 2, i32 %i.0391
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx, align 2
  %inc101 = add i32 %i.0391, 1
  %call.i.i320 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.1392) #9
  br i1 %call.i.i320, label %if.end.i.i323, label %if.then100.list_del.exit325_crit_edge

if.then100.list_del.exit325_crit_edge:            ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit325

if.end.i.i323:                                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i321 = getelementptr inbounds %struct.list_head, ptr %f.1392, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i321 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i321, align 4
  %54 = ptrtoint ptr %f.1392 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f.1392, align 4
  %prev1.i.i.i322 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i322 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i322, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit325

list_del.exit325:                                 ; preds = %if.end.i.i323, %if.then100.list_del.exit325_crit_edge
  %58 = ptrtoint ptr %f.1392 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %f.1392, align 4
  %prev.i324 = getelementptr inbounds %struct.list_head, ptr %f.1392, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i324, align 4
  tail call void @kfree(ptr noundef %f.1392) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc101, i32 %count.2)
  %cmp103 = icmp eq i32 %inc101, %count.2
  br i1 %cmp103, label %list_del.exit325.for.end114_crit_edge, label %list_del.exit325.for.inc108_crit_edge

list_del.exit325.for.inc108_crit_edge:            ; preds = %list_del.exit325
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

list_del.exit325.for.end114_crit_edge:            ; preds = %list_del.exit325
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc108:                                       ; preds = %list_del.exit325.for.inc108_crit_edge, %for.body97.for.inc108_crit_edge
  %i.1 = phi i32 [ %inc101, %list_del.exit325.for.inc108_crit_edge ], [ %i.0391, %for.body97.for.inc108_crit_edge ]
  %cmp94.not = icmp eq ptr %ftmp.1394, %vlan_filter_list
  br i1 %cmp94.not, label %for.inc108.for.end114_crit_edge, label %for.inc108.for.body97_crit_edge

for.inc108.for.body97_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body97

for.inc108.for.end114_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.end114:                                       ; preds = %for.inc108.for.end114_crit_edge, %list_del.exit325.for.end114_crit_edge, %if.end79.for.end114_crit_edge
  br i1 %cmp66, label %for.end114.if.end119_crit_edge, label %if.then116

for.end114.if.end119_crit_edge:                   ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then116:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required117 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %60 = ptrtoint ptr %aq_required117 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %aq_required117, align 8
  %and118 = and i64 %61, -33
  store i64 %and118, ptr %aq_required117, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %for.end114.if.end119_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end119.iavf_send_pf_msg.exit_crit_edge

if.end119.iavf_send_pf_msg.exit_crit_edge:        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end119
  %conv121 = trunc i32 %len.0 to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv121, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_vlans, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %64 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %66 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %67) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 13, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end119.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup217

if.else123:                                       ; preds = %lor.lhs.false50.if.else123_crit_edge, %land.lhs.true44.if.else123_crit_edge
  %68 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 53, ptr %current_op, align 8
  %sub = shl i32 %count.1, 5
  %add126 = or i32 %sub, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add126)
  %cmp127 = icmp sgt i32 %add126, 4096
  br i1 %cmp127, label %do.end132, label %if.else123.if.end8.i.i351_crit_edge

if.else123.if.end8.i.i351_crit_edge:              ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i351

do.end132:                                        ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #11
  %pdev133 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %69 = ptrtoint ptr %pdev133 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev133, align 4
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev134, ptr noundef nonnull @.str.28) #13
  br label %if.end8.i.i351

if.end8.i.i351:                                   ; preds = %do.end132, %if.else123.if.end8.i.i351_crit_edge
  %count.3 = phi i32 [ 126, %do.end132 ], [ %count.1, %if.else123.if.end8.i.i351_crit_edge ]
  %len.1 = phi i32 [ 4040, %do.end132 ], [ %add126, %if.else123.if.end8.i.i351_crit_edge ]
  %call9.i.i350 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.1, i32 noundef 2848) #14
  %tobool140.not = icmp eq ptr %call9.i.i350, null
  br i1 %tobool140.not, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end8.i.i351
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  br label %cleanup217

if.end143:                                        ; preds = %if.end8.i.i351
  %vsi_res144 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %71 = ptrtoint ptr %vsi_res144 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vsi_res144, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 4
  %75 = ptrtoint ptr %call9.i.i350 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %call9.i.i350, align 128
  %conv146 = trunc i32 %count.3 to i16
  %num_elements147 = getelementptr inbounds %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i350, i32 0, i32 1
  %76 = ptrtoint ptr %num_elements147 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv146, ptr %num_elements147, align 2
  %77 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vlan_filter_list, align 4
  %cmp161.not396 = icmp eq ptr %78, %vlan_filter_list
  br i1 %cmp161.not396, label %if.end143.for.end204_crit_edge, label %if.end143.for.body164_crit_edge

if.end143.for.body164_crit_edge:                  ; preds = %if.end143
  br label %for.body164

if.end143.for.end204_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end204

for.body164:                                      ; preds = %for.inc198.for.body164_crit_edge, %if.end143.for.body164_crit_edge
  %f.2398 = phi ptr [ %ftmp.2400, %for.inc198.for.body164_crit_edge ], [ %78, %if.end143.for.body164_crit_edge ]
  %i.2397 = phi i32 [ %i.3, %for.inc198.for.body164_crit_edge ], [ 0, %if.end143.for.body164_crit_edge ]
  %79 = ptrtoint ptr %f.2398 to i32
  call void @__asan_load4_noabort(i32 %79)
  %ftmp.2400 = load ptr, ptr %f.2398, align 4
  %remove165 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2398, i32 0, i32 2
  %80 = ptrtoint ptr %remove165 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %remove165, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool166.not = icmp eq i8 %81, 0
  br i1 %tobool166.not, label %for.body164.for.inc198_crit_edge, label %if.then167

for.body164.for.inc198_crit_edge:                 ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc198

if.then167:                                       ; preds = %for.body164
  %82 = ptrtoint ptr %vlan_v2_caps45 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vlan_v2_caps45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool174.not = icmp eq i32 %83, 0
  %outer177 = getelementptr %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i350, i32 0, i32 3, i32 %i.2397, i32 1
  %arrayidx180 = getelementptr %struct.virtchnl_vlan_filter_list_v2, ptr %call9.i.i350, i32 0, i32 3, i32 %i.2397
  %vlan172.0 = select i1 %tobool174.not, ptr %arrayidx180, ptr %outer177
  %vlan183 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2398, i32 0, i32 1
  %84 = ptrtoint ptr %vlan183 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vlan183, align 4
  %86 = ptrtoint ptr %vlan172.0 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %vlan172.0, align 8
  %tpid = getelementptr inbounds %struct.iavf_vlan_filter, ptr %f.2398, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %tpid to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %tpid, align 2
  %tpid186 = getelementptr inbounds %struct.virtchnl_vlan, ptr %vlan172.0, i32 0, i32 2
  %89 = ptrtoint ptr %tpid186 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %tpid186, align 4
  %call.i.i354 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.2398) #9
  br i1 %call.i.i354, label %if.end.i.i357, label %if.then167.list_del.exit359_crit_edge

if.then167.list_del.exit359_crit_edge:            ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit359

if.end.i.i357:                                    ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i355 = getelementptr inbounds %struct.list_head, ptr %f.2398, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i355 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i355, align 4
  %92 = ptrtoint ptr %f.2398 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %f.2398, align 4
  %prev1.i.i.i356 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i356, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del.exit359

list_del.exit359:                                 ; preds = %if.end.i.i357, %if.then167.list_del.exit359_crit_edge
  %96 = ptrtoint ptr %f.2398 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 256 to ptr), ptr %f.2398, align 4
  %prev.i358 = getelementptr inbounds %struct.list_head, ptr %f.2398, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i358 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i358, align 4
  tail call void @kfree(ptr noundef %f.2398) #9
  %inc188 = add i32 %i.2397, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc188, i32 %count.3)
  %cmp189 = icmp eq i32 %inc188, %count.3
  br i1 %cmp189, label %list_del.exit359.for.end204_crit_edge, label %list_del.exit359.for.inc198_crit_edge

list_del.exit359.for.inc198_crit_edge:            ; preds = %list_del.exit359
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc198

list_del.exit359.for.end204_crit_edge:            ; preds = %list_del.exit359
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end204

for.inc198:                                       ; preds = %list_del.exit359.for.inc198_crit_edge, %for.body164.for.inc198_crit_edge
  %i.3 = phi i32 [ %inc188, %list_del.exit359.for.inc198_crit_edge ], [ %i.2397, %for.body164.for.inc198_crit_edge ]
  %cmp161.not = icmp eq ptr %ftmp.2400, %vlan_filter_list
  br i1 %cmp161.not, label %for.inc198.for.end204_crit_edge, label %for.inc198.for.body164_crit_edge

for.inc198.for.body164_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body164

for.inc198.for.end204_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end204

for.end204:                                       ; preds = %for.inc198.for.end204_crit_edge, %list_del.exit359.for.end204_crit_edge, %if.end143.for.end204_crit_edge
  br i1 %cmp127, label %for.end204.if.end209_crit_edge, label %if.then206

for.end204.if.end209_crit_edge:                   ; preds = %for.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then206:                                       ; preds = %for.end204
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required207 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %98 = ptrtoint ptr %aq_required207 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %aq_required207, align 8
  %and208 = and i64 %99, -33
  store i64 %and208, ptr %aq_required207, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.then206, %for.end204.if.end209_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %hw1.i360 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i361 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %100 = ptrtoint ptr %flags.i361 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i361, align 4
  %and.i362 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i362)
  %tobool.not.i363 = icmp eq i32 %and.i362, 0
  br i1 %tobool.not.i363, label %if.end.i366, label %if.end209.iavf_send_pf_msg.exit375_crit_edge

if.end209.iavf_send_pf_msg.exit375_crit_edge:     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit375

if.end.i366:                                      ; preds = %if.end209
  %conv211 = trunc i32 %len.1 to i16
  %call.i364 = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i360, i32 noundef 53, i32 noundef 0, ptr noundef nonnull %call9.i.i350, i16 noundef zeroext %conv211, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool2.not.i365 = icmp eq i32 %call.i364, 0
  br i1 %tobool2.not.i365, label %if.end.i366.iavf_send_pf_msg.exit375_crit_edge, label %do.body.i367

if.end.i366.iavf_send_pf_msg.exit375_crit_edge:   ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit375

do.body.i367:                                     ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_vlans, %if.then8.i373)) #9
          to label %iavf_send_pf_msg.exit375 [label %if.then8.i373], !srcloc !367

if.then8.i373:                                    ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i368 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %102 = ptrtoint ptr %pdev.i368 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i368, align 4
  %dev.i369 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %call9.i370 = tail call ptr @iavf_stat_str(ptr noundef %hw1.i360, i32 noundef %call.i364) #9
  %asq_last_status.i371 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %104 = ptrtoint ptr %asq_last_status.i371 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %asq_last_status.i371, align 4
  %call10.i372 = tail call ptr @iavf_aq_str(ptr noundef %hw1.i360, i32 noundef %105) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i369, ptr noundef nonnull @.str.159, i32 noundef 53, ptr noundef %call9.i370, ptr noundef %call10.i372) #9
  br label %iavf_send_pf_msg.exit375

iavf_send_pf_msg.exit375:                         ; preds = %if.then8.i373, %do.body.i367, %if.end.i366.iavf_send_pf_msg.exit375_crit_edge, %if.end209.iavf_send_pf_msg.exit375_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i350) #9
  br label %cleanup217

cleanup217:                                       ; preds = %iavf_send_pf_msg.exit375, %if.then141, %iavf_send_pf_msg.exit, %if.then77, %if.then56, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_set_promiscuous(ptr noundef %adapter, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %vpi = alloca %struct.virtchnl_promisc_info, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpi) #9
  %0 = getelementptr inbounds %struct.virtchnl_promisc_info, ptr %vpi, i32 0, i32 1
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp2 = icmp eq i32 %and, 3
  br i1 %cmp2, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags4 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %5 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags4, align 4
  %or = or i32 %6, 8192
  store i32 %or, ptr %flags4, align 4
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %7 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %aq_required, align 8
  %and5 = and i64 %8, -32769
  store i64 %and5, ptr %aq_required, align 8
  %pdev9 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %9 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev9, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.42) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  %and12 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end23, label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %flags14 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags14, align 4
  %or15 = or i32 %12, 16384
  store i32 %or15, ptr %flags14, align 4
  br label %if.end57.sink.split

if.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool24.not = icmp eq i32 %flags, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end57_crit_edge

if.end23.if.end57_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then25:                                        ; preds = %if.end23
  %flags26 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %13 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags26, align 4
  %and27 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.if.end39_crit_edge, label %if.then29

if.then25.if.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %and31 = and i32 %14, -8193
  %15 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and31, ptr %flags26, align 4
  %aq_required32 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %16 = ptrtoint ptr %aq_required32 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %aq_required32, align 8
  %and33 = and i64 %17, -65537
  store i64 %and33, ptr %aq_required32, align 8
  %pdev37 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %18 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.48) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.then25.if.end39_crit_edge
  %20 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags26, align 4
  %and41 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end57_crit_edge, label %if.then43

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %and45 = and i32 %21, -16385
  %22 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and45, ptr %flags26, align 4
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then43, %if.end23.thread
  %.sink88 = phi i64 [ -131073, %if.end23.thread ], [ -262145, %if.then43 ]
  %.str.45.sink = phi ptr [ @.str.45, %if.end23.thread ], [ @.str.51, %if.then43 ]
  %aq_required46 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %23 = ptrtoint ptr %aq_required46 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %aq_required46, align 8
  %and17 = and i64 %24, %.sink88
  store i64 %and17, ptr %aq_required46, align 8
  %pdev21 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %25 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull %.str.45.sink, ptr noundef %28) #13
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.end39.if.end57_crit_edge, %if.end23.if.end57_crit_edge
  %29 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 14, ptr %current_op, align 8
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %30 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vsi_res, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 4
  %34 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vpi, align 2
  %conv = trunc i32 %flags to i16
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %0, align 2
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end57
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 14, i32 noundef 0, ptr noundef nonnull %vpi, i16 noundef zeroext 4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_promiscuous, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %40 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %41) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 14, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpi) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_request_stats(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vqs = alloca %struct.virtchnl_queue_select, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vqs) #9
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = call ptr @memset(ptr %vqs, i32 255, i32 12)
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %3 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %aq_required, align 8
  %and = and i64 %4, -536870913
  store i64 %and, ptr %aq_required, align 8
  %5 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %current_op, align 8
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %6 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsi_res, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %10 = ptrtoint ptr %vqs to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vqs, align 4
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 15, i32 noundef 0, ptr noundef nonnull %vqs, i16 noundef zeroext 12, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_request_stats, %if.then8.i)) #9
          to label %if.then3 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %15 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %16) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 15, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %if.then3

if.then3:                                         ; preds = %if.then8.i, %do.body.i
  %17 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %current_op, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vqs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_get_hena(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 25, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %5 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %aq_required, align 8
  %and = and i64 %6, -2049
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 25, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_get_hena, %if.then8.i)) #9
          to label %return [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %11 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %12) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 25, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %return

return:                                           ; preds = %if.then8.i, %do.body.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_set_hena(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vrh = alloca %struct.virtchnl_rss_hena, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vrh) #9
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hena = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 47
  %4 = ptrtoint ptr %hena to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hena, align 8
  %6 = ptrtoint ptr %vrh to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %vrh, align 8
  %7 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 26, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %8 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %aq_required, align 8
  %and = and i64 %9, -4097
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 26, i32 noundef 0, ptr noundef nonnull %vrh, i16 noundef zeroext 8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_hena, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %14 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %15) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 26, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vrh) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_set_rss_key(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss_key_size = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 48
  %4 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rss_key_size, align 8
  %conv = zext i16 %5 to i32
  %sub = add nuw nsw i32 %conv, 5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 2
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %call9.i.i, align 128
  %9 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rss_key_size, align 8
  %key_len = getelementptr inbounds %struct.virtchnl_rss_key, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %key_len, align 2
  %key = getelementptr inbounds %struct.virtchnl_rss_key, ptr %call9.i.i, i32 0, i32 2
  %rss_key = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 50
  %12 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rss_key, align 4
  %conv6 = zext i16 %10 to i32
  %14 = call ptr @memcpy(ptr %key, ptr %13, i32 %conv6)
  %15 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 23, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %16 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %aq_required, align 8
  %and = and i64 %17, -8193
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.iavf_send_pf_msg.exit_crit_edge

if.end3.iavf_send_pf_msg.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end3
  %conv8 = trunc i32 %sub to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 23, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_rss_key, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %22 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %23) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 23, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end3.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_set_rss_lut(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss_lut_size = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 49
  %4 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rss_lut_size, align 2
  %conv = zext i16 %5 to i32
  %sub = add nuw nsw i32 %conv, 5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 2
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %call9.i.i, align 128
  %9 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rss_lut_size, align 2
  %lut_entries = getelementptr inbounds %struct.virtchnl_rss_lut, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %lut_entries to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %lut_entries, align 2
  %lut = getelementptr inbounds %struct.virtchnl_rss_lut, ptr %call9.i.i, i32 0, i32 2
  %rss_lut = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 51
  %12 = ptrtoint ptr %rss_lut to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rss_lut, align 8
  %conv6 = zext i16 %10 to i32
  %14 = call ptr @memcpy(ptr %lut, ptr %13, i32 %conv6)
  %15 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %16 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %aq_required, align 8
  %and = and i64 %17, -16385
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.iavf_send_pf_msg.exit_crit_edge

if.end3.iavf_send_pf_msg.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.end3
  %conv8 = trunc i32 %sub to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 24, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_rss_lut, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %22 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %23) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 24, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.end3.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_enable_vlan_stripping(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 27, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %5 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %aq_required, align 8
  %and = and i64 %6, -524289
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 27, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_enable_vlan_stripping, %if.then8.i)) #9
          to label %return [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %11 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %12) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 27, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %return

return:                                           ; preds = %if.then8.i, %do.body.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_disable_vlan_stripping(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 28, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %5 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %aq_required, align 8
  %and = and i64 %6, -1048577
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 28, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_disable_vlan_stripping, %if.then8.i)) #9
          to label %return [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %11 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %12) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 28, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %return

return:                                           ; preds = %if.then8.i, %do.body.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_enable_vlan_stripping_v2(ptr noundef %adapter, i16 noundef zeroext %tpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iavf_send_vlan_offload_v2(ptr noundef %adapter, i16 noundef zeroext %tpid, i32 noundef 54)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_send_vlan_offload_v2(ptr noundef %adapter, i16 noundef zeroext %tpid, i32 noundef %offload_op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef %offload_op, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %offload_op, ptr %current_op, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vsi_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 40
  %6 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsi_res, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %vport_id = getelementptr inbounds %struct.virtchnl_vlan_setting, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vport_id, align 8
  %11 = zext i32 %offload_op to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offload_op, label %iavf_clear_offload_v2_aq_required.exit [
    i32 54, label %sw.bb.i
    i32 55, label %sw.bb9.i
    i32 56, label %sw.bb25.i
    i32 57, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.end4
  %12 = zext i16 %tpid to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %tpid, label %sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge [
    i16 -32512, label %sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge
    i16 -30552, label %if.then5.i
  ]

sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread.sink.split

sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread

if.then5.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread.sink.split

sw.bb9.i:                                         ; preds = %if.end4
  %13 = zext i16 %tpid to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.203)
  switch i16 %tpid, label %sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge [
    i16 -32512, label %sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge
    i16 -30552, label %if.then20.i
  ]

sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread.sink.split

sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread

if.then20.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread.sink.split

sw.bb25.i:                                        ; preds = %if.end4
  %14 = zext i16 %tpid to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.204)
  switch i16 %tpid, label %sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge [
    i16 -32512, label %sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge
    i16 -30552, label %if.then36.i
  ]

sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48.sink.split

sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48

if.then36.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48.sink.split

sw.bb41.i:                                        ; preds = %if.end4
  %15 = zext i16 %tpid to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %tpid, label %sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge [
    i16 -32512, label %sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge
    i16 -30552, label %if.then52.i
  ]

sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge: ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48.sink.split

sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge: ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48

if.then52.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_clear_offload_v2_aq_required.exit.thread48.sink.split

iavf_clear_offload_v2_aq_required.exit.thread.sink.split: ; preds = %if.then20.i, %sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge, %if.then5.i, %sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge
  %.sink56 = phi i64 [ -8589934593, %if.then5.i ], [ -17179869185, %if.then20.i ], [ -2147483649, %sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge ], [ -4294967297, %sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread.sink.split_crit_edge ]
  %aq_required21.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %16 = ptrtoint ptr %aq_required21.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %aq_required21.i, align 8
  %and.i = and i64 %17, %.sink56
  store i64 %and.i, ptr %aq_required21.i, align 8
  br label %iavf_clear_offload_v2_aq_required.exit.thread

iavf_clear_offload_v2_aq_required.exit.thread:    ; preds = %iavf_clear_offload_v2_aq_required.exit.thread.sink.split, %sw.bb9.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge, %sw.bb.i.iavf_clear_offload_v2_aq_required.exit.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %tpid)
  %switch.selectcmp.i.i41 = icmp eq i16 %tpid, -30552
  %switch.select.i.i42 = select i1 %switch.selectcmp.i.i41, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %tpid)
  %switch.selectcmp2.i.i43 = icmp eq i16 %tpid, -32512
  %switch.select3.i.i44 = select i1 %switch.selectcmp2.i.i43, i32 1, i32 %switch.select.i.i42
  %offloads.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42, i32 1
  br label %sw.epilog.i

iavf_clear_offload_v2_aq_required.exit.thread48.sink.split: ; preds = %if.then52.i, %sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge, %if.then36.i, %sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge
  %.sink58 = phi i64 [ -137438953473, %if.then36.i ], [ -274877906945, %if.then52.i ], [ -34359738369, %sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge ], [ -68719476737, %sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48.sink.split_crit_edge ]
  %aq_required53.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %18 = ptrtoint ptr %aq_required53.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %aq_required53.i, align 8
  %and31.i = and i64 %19, %.sink58
  store i64 %and31.i, ptr %aq_required53.i, align 8
  br label %iavf_clear_offload_v2_aq_required.exit.thread48

iavf_clear_offload_v2_aq_required.exit.thread48:  ; preds = %iavf_clear_offload_v2_aq_required.exit.thread48.sink.split, %sw.bb41.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge, %sw.bb25.i.iavf_clear_offload_v2_aq_required.exit.thread48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %tpid)
  %switch.selectcmp.i.i49 = icmp eq i16 %tpid, -30552
  %switch.select.i.i50 = select i1 %switch.selectcmp.i.i49, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %tpid)
  %switch.selectcmp2.i.i51 = icmp eq i16 %tpid, -32512
  %switch.select3.i.i52 = select i1 %switch.selectcmp2.i.i51, i32 1, i32 %switch.select.i.i50
  %insertion_support.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42, i32 1, i32 1
  br label %sw.epilog.i

iavf_clear_offload_v2_aq_required.exit:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.167, i32 noundef %offload_op) #13
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 4
  %dev.i32 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str.169, i32 noundef %offload_op) #13
  br label %if.else

sw.epilog.i:                                      ; preds = %iavf_clear_offload_v2_aq_required.exit.thread48, %iavf_clear_offload_v2_aq_required.exit.thread
  %switch.select3.i.i45 = phi i32 [ %switch.select3.i.i52, %iavf_clear_offload_v2_aq_required.exit.thread48 ], [ %switch.select3.i.i44, %iavf_clear_offload_v2_aq_required.exit.thread ]
  %offload_support.0.i = phi ptr [ %insertion_support.i, %iavf_clear_offload_v2_aq_required.exit.thread48 ], [ %offloads.i, %iavf_clear_offload_v2_aq_required.exit.thread ]
  %24 = ptrtoint ptr %offload_support.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offload_support.0.i, align 4
  %and.i34 = and i32 %25, %switch.select3.i.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp eq i32 %and.i34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool7.not.i = icmp sgt i32 %25, -1
  %or.cond.i = or i1 %tobool7.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i35

if.then.i35:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.select3.i.i45, ptr %call7.i.i, align 8
  br label %if.then7

if.else.i:                                        ; preds = %sw.epilog.i
  %inner.i = getelementptr inbounds %struct.virtchnl_vlan_supported_caps, ptr %offload_support.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %inner.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inner.i, align 4
  %and10.i = and i32 %28, %switch.select3.i.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool15.not.i = icmp sgt i32 %28, -1
  %or.cond46.i = or i1 %tobool15.not.i, %tobool11.not.i
  br i1 %or.cond46.i, label %do.body19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %inner_ethertype_setting.i = getelementptr inbounds %struct.virtchnl_vlan_setting, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %inner_ethertype_setting.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.select3.i.i45, ptr %inner_ethertype_setting.i, align 4
  br label %if.then7

do.body19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_set_vc_offload_ethertype.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_vlan_offload_v2, %if.then24.i)) #9
          to label %if.else [label %if.then24.i], !srcloc !367

if.then24.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev25.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %30 = ptrtoint ptr %pdev25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev25.i, align 4
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %conv27.i = zext i16 %tpid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_set_vc_offload_ethertype.__UNIQUE_ID_ddebug531, ptr noundef %dev26.i, ptr noundef nonnull @.str.171, i32 noundef %offload_op, i32 noundef %conv27.i) #9
  br label %if.else

if.then7:                                         ; preds = %if.then16.i, %if.then.i35
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and.i36 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %if.end.i, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i:                                         ; preds = %if.then7
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef %offload_op, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %do.body.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_send_vlan_offload_v2, %if.then8.i)) #9
          to label %if.end10 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i38 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %34 = ptrtoint ptr %pdev.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i38, align 4
  %dev.i39 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %36 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %37) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i39, ptr noundef nonnull @.str.159, i32 noundef %offload_op, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %if.end10

if.else:                                          ; preds = %if.then24.i, %do.body19.i, %iavf_clear_offload_v2_aq_required.exit
  %38 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %current_op, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8.i, %do.body.i, %if.end.i.if.end10_crit_edge, %if.then7.if.end10_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_disable_vlan_stripping_v2(ptr noundef %adapter, i16 noundef zeroext %tpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iavf_send_vlan_offload_v2(ptr noundef %adapter, i16 noundef zeroext %tpid, i32 noundef 55)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_enable_vlan_insertion_v2(ptr noundef %adapter, i16 noundef zeroext %tpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iavf_send_vlan_offload_v2(ptr noundef %adapter, i16 noundef zeroext %tpid, i32 noundef 56)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_disable_vlan_insertion_v2(ptr noundef %adapter, i16 noundef zeroext %tpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iavf_send_vlan_offload_v2(ptr noundef %adapter, i16 noundef zeroext %tpid, i32 noundef 57)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_enable_channels(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_tc = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 53
  %4 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_tc, align 8
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 16) #9
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 24) #9
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_tc, align 8
  %conv6 = zext i8 %10 to i32
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp963.not = icmp eq i8 %10, 0
  br i1 %cmp963.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %ch_config = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.virtchnl_channel_info], ptr %ch_config, i32 0, i32 %i.064
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 8
  %arrayidx11 = getelementptr %struct.virtchnl_tc_info, ptr %call9.i.i, i32 0, i32 2, i32 %i.064
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx11, align 8
  %offset = getelementptr [4 x %struct.virtchnl_channel_info], ptr %ch_config, i32 0, i32 %i.064, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %offset, align 2
  %offset18 = getelementptr %struct.virtchnl_tc_info, ptr %call9.i.i, i32 0, i32 2, i32 %i.064, i32 1
  %17 = ptrtoint ptr %offset18 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %offset18, align 2
  %pad = getelementptr %struct.virtchnl_tc_info, ptr %call9.i.i, i32 0, i32 2, i32 %i.064, i32 2
  %18 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pad, align 4
  %max_tx_rate = getelementptr [4 x %struct.virtchnl_channel_info], ptr %ch_config, i32 0, i32 %i.064, i32 3
  %19 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %max_tx_rate, align 8
  %max_tx_rate26 = getelementptr %struct.virtchnl_tc_info, ptr %call9.i.i, i32 0, i32 2, i32 %i.064, i32 3
  %21 = ptrtoint ptr %max_tx_rate26 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %max_tx_rate26, align 16
  %inc = add nuw i32 %i.064, 1
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call9.i.i, align 128
  %cmp9 = icmp ult i32 %inc, %23
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %state = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 52, i32 1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state, align 8
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 65536
  store i32 %or, ptr %flags, align 4
  %27 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 30, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %28 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %aq_required, align 8
  %and = and i64 %29, -2097153
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %and.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.iavf_send_pf_msg.exit_crit_edge

for.end.iavf_send_pf_msg.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %for.end
  %conv29 = trunc i32 %retval.0.i to i16
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 30, i32 noundef 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv29, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_enable_channels, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %32 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %33) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 30, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %for.end.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_disable_channels(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 52, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 65536
  store i32 %or, ptr %flags, align 4
  %7 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %current_op, align 8
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %8 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %aq_required, align 8
  %and = and i64 %9, -4194305
  store i64 %and, ptr %aq_required, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 31, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_disable_channels, %if.then8.i)) #9
          to label %return [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %12 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %13) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 31, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %return

return:                                           ; preds = %if.then8.i, %do.body.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_add_cloud_filter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cloud_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %cloud_filter_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, %cloud_filter_list
  br i1 %cmp3.not, label %if.then12.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %add = getelementptr i8, ptr %.pn, i32 285
  %5 = ptrtoint ptr %add to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add, align 1, !range !368
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.end13

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then12.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %7 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %aq_required, align 8
  %and = and i64 %8, -8388609
  store i64 %and, ptr %aq_required, align 8
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %9 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %current_op, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 272) #12
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %for.cond23.preheader

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond23.preheader:                             ; preds = %if.end13
  %11 = ptrtoint ptr %cloud_filter_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn6869 = load ptr, ptr %cloud_filter_list, align 4
  %cmp26.not71 = icmp eq ptr %.pn6869, %cloud_filter_list
  br i1 %cmp26.not71, label %for.cond23.preheader.for.end42_crit_edge, label %for.body28.lr.ph

for.cond23.preheader.for.end42_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body28.lr.ph:                                 ; preds = %for.cond23.preheader
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  br label %for.body28

for.body28:                                       ; preds = %for.inc36.for.body28_crit_edge, %for.body28.lr.ph
  %.pn6872 = phi ptr [ %.pn6869, %for.body28.lr.ph ], [ %.pn68, %for.inc36.for.body28_crit_edge ]
  %add29 = getelementptr i8, ptr %.pn6872, i32 285
  %12 = ptrtoint ptr %add29 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add29, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  br i1 %tobool30.not, label %for.body28.for.inc36_crit_edge, label %if.then31

for.body28.for.inc36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36

if.then31:                                        ; preds = %for.body28
  %cf.173 = getelementptr i8, ptr %.pn6872, i32 -4
  %f32 = getelementptr i8, ptr %.pn6872, i32 8
  %14 = call ptr @memcpy(ptr %call7.i.i, ptr %f32, i32 272)
  %15 = ptrtoint ptr %add29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %add29, align 1
  %16 = ptrtoint ptr %cf.173 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cf.173, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.for.inc36_crit_edge

if.then31.for.inc36_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36

if.end.i:                                         ; preds = %if.then31
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 272, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc36_crit_edge, label %do.body.i

if.end.i.for.inc36_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_cloud_filter, %if.then8.i)) #9
          to label %for.inc36 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %21 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %22) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 32, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %for.inc36

for.inc36:                                        ; preds = %if.then8.i, %do.body.i, %if.end.i.for.inc36_crit_edge, %if.then31.for.inc36_crit_edge, %for.body28.for.inc36_crit_edge
  %23 = ptrtoint ptr %.pn6872 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn68 = load ptr, ptr %.pn6872, align 4
  %cmp26.not = icmp eq ptr %.pn68, %cloud_filter_list
  br i1 %cmp26.not, label %for.inc36.for.end42_crit_edge, label %for.inc36.for.body28_crit_edge

for.inc36.for.body28_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.inc36.for.end42_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.end42:                                        ; preds = %for.inc36.for.end42_crit_edge, %for.cond23.preheader.for.end42_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.end13.cleanup_crit_edge, %if.then12.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_del_cloud_filter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cloud_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %cloud_filter_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, %cloud_filter_list
  br i1 %cmp3.not, label %if.then12.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %del = getelementptr i8, ptr %.pn, i32 284
  %5 = ptrtoint ptr %del to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %del, align 4, !range !368
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.end13

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then12.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %7 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %aq_required, align 8
  %and = and i64 %8, -16777217
  store i64 %and, ptr %aq_required, align 8
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %9 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33, ptr %current_op, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 272) #12
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %cloud_filter_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cloud_filter_list, align 4
  %cmp31.not79 = icmp eq ptr %12, %cloud_filter_list
  br i1 %cmp31.not79, label %if.end17.for.end47_crit_edge, label %for.body33.lr.ph

if.end17.for.end47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.body33.lr.ph:                                 ; preds = %if.end17
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  br label %for.body33

for.body33:                                       ; preds = %for.inc41.for.body33_crit_edge, %for.body33.lr.ph
  %.pn75.in80 = phi ptr [ %12, %for.body33.lr.ph ], [ %.pn7582, %for.inc41.for.body33_crit_edge ]
  %13 = ptrtoint ptr %.pn75.in80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn7582 = load ptr, ptr %.pn75.in80, align 4
  %del34 = getelementptr i8, ptr %.pn75.in80, i32 284
  %14 = ptrtoint ptr %del34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %del34, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %for.body33.for.inc41_crit_edge, label %if.then36

for.body33.for.inc41_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41

if.then36:                                        ; preds = %for.body33
  %cf.181 = getelementptr i8, ptr %.pn75.in80, i32 -4
  %f37 = getelementptr i8, ptr %.pn75.in80, i32 8
  %16 = call ptr @memcpy(ptr %call7.i.i, ptr %f37, i32 272)
  %17 = ptrtoint ptr %del34 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %del34, align 4
  %18 = ptrtoint ptr %cf.181 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %cf.181, align 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then36.for.inc41_crit_edge

if.then36.for.inc41_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41

if.end.i:                                         ; preds = %if.then36
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 33, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 272, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc41_crit_edge, label %do.body.i

if.end.i.for.inc41_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_cloud_filter, %if.then8.i)) #9
          to label %for.inc41 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %23 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %24) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 33, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %for.inc41

for.inc41:                                        ; preds = %if.then8.i, %do.body.i, %if.end.i.for.inc41_crit_edge, %if.then36.for.inc41_crit_edge, %for.body33.for.inc41_crit_edge
  %cmp31.not = icmp eq ptr %.pn7582, %cloud_filter_list
  br i1 %cmp31.not, label %for.inc41.for.end47_crit_edge, label %for.inc41.for.body33_crit_edge

for.inc41.for.body33_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.inc41.for.end47_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.end47:                                        ; preds = %for.inc41.for.end47_crit_edge, %if.end17.for.end47_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %if.end13.cleanup_crit_edge, %if.then12.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_add_fdir_filter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2616) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fdir_fltr_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock) #9
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end3
  %.pn.in = phi ptr [ %fdir_list_head, %if.end3 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %fdir_list_head
  br i1 %cmp5.not, label %if.then17.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %fdir.0 = getelementptr i8, ptr %.pn, i32 -4
  %6 = ptrtoint ptr %fdir.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fdir.0, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then7:                                         ; preds = %for.body
  %fdir.0.le = getelementptr i8, ptr %.pn, i32 -4
  %8 = ptrtoint ptr %fdir.0.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %fdir.0.le, align 4
  %vc_add_msg = getelementptr i8, ptr %.pn, i32 156
  %9 = call ptr @memcpy(ptr %call7.i.i, ptr %vc_add_msg, i32 2616)
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock) #9
  %10 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 47, ptr %current_op, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.iavf_send_pf_msg.exit_crit_edge

if.then7.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %if.then7
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 47, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2616, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_fdir_filter, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %15 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %16) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 47, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %if.then7.iavf_send_pf_msg.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.then17.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock) #9
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and = and i64 %18, -33554433
  store i64 %and, ptr %aq_required, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17.critedge, %iavf_send_pf_msg.exit, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_del_fdir_filter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.virtchnl_fdir_del, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %f) #9
  %0 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %f, i32 0, i32 2
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %1 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdir_fltr_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock) #9
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %fdir_list_head, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, %fdir_list_head
  br i1 %cmp3.not, label %if.then16.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %fdir.0 = getelementptr i8, ptr %.pn, i32 -4
  %6 = ptrtoint ptr %fdir.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fdir.0, align 4
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then5:                                         ; preds = %for.body
  %fdir.0.le = getelementptr i8, ptr %.pn, i32 -4
  %8 = call ptr @memset(ptr %f, i32 0, i32 12)
  %vc_add_msg = getelementptr i8, ptr %.pn, i32 156
  %9 = ptrtoint ptr %vc_add_msg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_add_msg, align 4
  %11 = ptrtoint ptr %f to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %f, align 4
  %flow_id = getelementptr i8, ptr %.pn, i32 144
  %12 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flow_id, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %0, align 4
  %15 = ptrtoint ptr %fdir.0.le to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %fdir.0.le, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock) #9
  %16 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 48, ptr %current_op, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %call.i = call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 48, i32 noundef 0, ptr noundef nonnull %f, i16 noundef zeroext 12, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_fdir_filter, %if.then8.i)) #9
          to label %cleanup [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call9.i = call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %21 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %22) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 48, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %cleanup

if.then16.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock) #9
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %23 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %aq_required, align 8
  %and = and i64 %24, -67108865
  store i64 %and, ptr %aq_required, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16.critedge, %if.then8.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %f) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_add_adv_rss_cfg(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2444) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adv_rss_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock) #9
  %adv_rss_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end3
  %.pn.in = phi ptr [ %adv_rss_list_head, %if.end3 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %adv_rss_list_head
  br i1 %cmp5.not, label %if.else.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %rss.0 = getelementptr i8, ptr %.pn, i32 -4
  %6 = ptrtoint ptr %rss.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rss.0, align 8
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then7:                                         ; preds = %for.body
  %rss.0.le = getelementptr i8, ptr %.pn, i32 -4
  %8 = ptrtoint ptr %rss.0.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %rss.0.le, align 8
  %cfg_msg = getelementptr i8, ptr %.pn, i32 20
  %9 = call ptr @memcpy(ptr %call7.i.i, ptr %cfg_msg, i32 2444)
  tail call void @iavf_print_adv_rss_cfg(ptr noundef %adapter, ptr noundef %rss.0.le, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock) #9
  %10 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 45, ptr %current_op, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.end20_crit_edge

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i:                                         ; preds = %if.then7
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 45, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2444, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end20_crit_edge, label %do.body.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_add_adv_rss_cfg, %if.then8.i)) #9
          to label %if.end20 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %15 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %16) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 45, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %if.end20

if.else.critedge:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock) #9
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and = and i64 %18, -134217729
  store i64 %and, ptr %aq_required, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else.critedge, %if.then8.i, %do.body.i, %if.end.i.if.end20_crit_edge, %if.then7.if.end20_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_print_adv_rss_cfg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_del_adv_rss_cfg(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %0 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2444) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adv_rss_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock) #9
  %adv_rss_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end3
  %.pn.in = phi ptr [ %adv_rss_list_head, %if.end3 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %adv_rss_list_head
  br i1 %cmp5.not, label %if.else.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %rss.0 = getelementptr i8, ptr %.pn, i32 -4
  %6 = ptrtoint ptr %rss.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rss.0, align 8
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then7:                                         ; preds = %for.body
  %rss.0.le = getelementptr i8, ptr %.pn, i32 -4
  %8 = ptrtoint ptr %rss.0.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %rss.0.le, align 8
  %cfg_msg = getelementptr i8, ptr %.pn, i32 20
  %9 = call ptr @memcpy(ptr %call7.i.i, ptr %cfg_msg, i32 2444)
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock) #9
  %10 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 46, ptr %current_op, align 8
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.end20_crit_edge

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i:                                         ; preds = %if.then7
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 46, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2444, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end20_crit_edge, label %do.body.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_del_adv_rss_cfg, %if.then8.i)) #9
          to label %if.end20 [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %15 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %16) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 46, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %if.end20

if.else.critedge:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock) #9
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %17 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %aq_required, align 8
  %and = and i64 %18, -268435457
  store i64 %and, ptr %aq_required, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else.critedge, %if.then8.i, %do.body.i, %if.end.i.if.end20_crit_edge, %if.then7.if.end20_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_request_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %flags.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iavf_send_pf_msg.exit_crit_edge

entry.iavf_send_pf_msg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw1.i, i32 noundef 2, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.iavf_send_pf_msg.exit_crit_edge, label %do.body.i

if.end.i.iavf_send_pf_msg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_send_pf_msg.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_request_reset, %if.then8.i)) #9
          to label %iavf_send_pf_msg.exit [label %if.then8.i], !srcloc !367

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call9.i = tail call ptr @iavf_stat_str(ptr noundef %hw1.i, i32 noundef %call.i) #9
  %asq_last_status.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 10, i32 14
  %4 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asq_last_status.i, align 4
  %call10.i = tail call ptr @iavf_aq_str(ptr noundef %hw1.i, i32 noundef %5) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef 2, ptr noundef %call9.i, ptr noundef %call10.i) #9
  br label %iavf_send_pf_msg.exit

iavf_send_pf_msg.exit:                            ; preds = %if.then8.i, %do.body.i, %if.end.i.iavf_send_pf_msg.exit_crit_edge, %entry.iavf_send_pf_msg.exit_crit_edge
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %6 = ptrtoint ptr %current_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %current_op, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_virtchnl_completion(ptr noundef %adapter, i32 noundef %v_opcode, i32 noundef %v_retval, ptr noundef %msg, i16 noundef zeroext %msglen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %v_opcode)
  %cmp = icmp eq i32 %v_opcode, 17
  br i1 %cmp, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  %retval.0.in.in.i = getelementptr inbounds %struct.virtchnl_pf_event, ptr %msg, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %retval.0.in.i = load i8, ptr %retval.0.in.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i)
  %retval.0.i = icmp ne i8 %retval.0.in.i, 0
  %frombool = zext i1 %retval.0.i to i8
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %4, label %do.end39 [
    i32 1, label %sw.bb
    i32 2, label %do.end
  ]

sw.bb:                                            ; preds = %if.then
  %vf_res.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %6 = ptrtoint ptr %vf_res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_res.i, align 4
  %vf_cap_flags.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %vf_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vf_cap_flags.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %event_data1.i = getelementptr inbounds %struct.virtchnl_pf_event, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %event_data1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_data1.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %link_speed_mbps.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 37
  %12 = ptrtoint ptr %link_speed_mbps.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %link_speed_mbps.i, align 4
  br label %iavf_set_adapter_link_speed_from_vpe.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %link_speed3.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 36
  %13 = ptrtoint ptr %link_speed3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %link_speed3.i, align 8
  br label %iavf_set_adapter_link_speed_from_vpe.exit

iavf_set_adapter_link_speed_from_vpe.exit:        ; preds = %if.else.i, %if.then.i
  %link_up2 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 35
  %14 = ptrtoint ptr %link_up2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_up2, align 1, !range !368
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %frombool)
  %cmp5 = icmp eq i8 %15, %frombool
  br i1 %cmp5, label %iavf_set_adapter_link_speed_from_vpe.exit.cleanup782_crit_edge, label %if.end

iavf_set_adapter_link_speed_from_vpe.exit.cleanup782_crit_edge: ; preds = %iavf_set_adapter_link_speed_from_vpe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

if.end:                                           ; preds = %iavf_set_adapter_link_speed_from_vpe.exit
  br i1 %retval.0.i, label %if.then9, label %if.else.critedge

if.then9:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 30
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %cmp10.not = icmp eq i32 %17, 13
  br i1 %cmp10.not, label %if.end13, label %if.then9.cleanup782_crit_edge

if.then9.cleanup782_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

if.end13:                                         ; preds = %if.then9
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then22.critedge, label %if.end13.cleanup782_crit_edge

if.end13.cleanup782_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

if.then22.critedge:                               ; preds = %if.end13
  %20 = ptrtoint ptr %link_up2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %link_up2, align 1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.not.i = icmp eq i32 %22, 0
  br i1 %cmp4.not.i, label %if.then22.critedge.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.then22.critedge.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then22.critedge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %24, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %25 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %if.then22.critedge.netif_tx_start_all_queues.exit_crit_edge
  tail call void @netif_carrier_on(ptr noundef %1) #9
  br label %if.end23

if.else.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %link_up2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %link_up2, align 1
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #9
  tail call void @netif_carrier_off(ptr noundef %1) #9
  br label %if.end23

if.end23:                                         ; preds = %if.else.critedge, %netif_tx_start_all_queues.exit
  %28 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev1, align 8
  %30 = ptrtoint ptr %link_up2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link_up2, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i1110 = icmp eq i8 %31, 0
  br i1 %tobool.not.i1110, label %if.then.i1111, label %if.end.i

if.then.i1111:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.172) #13
  br label %cleanup782

if.end.i:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 13) #12
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup782_crit_edge, label %if.end4.i

if.end.i.cleanup782_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

if.end4.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %vf_res.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vf_res.i, align 4
  %vf_cap_flags.i1113 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %vf_cap_flags.i1113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vf_cap_flags.i1113, align 4
  %and.i1114 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1114)
  %tobool5.not.i = icmp eq i32 %and.i1114, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %print_link_msg.i

if.end8.i:                                        ; preds = %if.end4.i
  %link_speed.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 36
  %37 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_speed.i, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %38, label %if.end8.i.if.then24.i_crit_edge [
    i32 16, label %if.end8.i.if.else.i1116_crit_edge
    i32 64, label %sw.bb9.i
    i32 32, label %sw.bb10.i
    i32 8, label %sw.bb11.i
    i32 128, label %sw.bb12.i
    i32 1, label %if.end8.i.if.then18.i_crit_edge
    i32 4, label %if.end8.i.if.else26.i_crit_edge
    i32 2, label %sw.bb15.i
  ]

if.end8.i.if.else26.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26.i

if.end8.i.if.then18.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.end8.i.if.else.i1116_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

if.end8.i.if.then24.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

sw.bb9.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

sw.bb10.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

sw.bb11.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

sw.bb12.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

sw.bb15.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26.i

print_link_msg.i:                                 ; preds = %if.end4.i
  %link_speed_mbps7.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 37
  %40 = ptrtoint ptr %link_speed_mbps7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_speed_mbps7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %41)
  %cmp.i1115 = icmp sgt i32 %41, 1000
  br i1 %cmp.i1115, label %if.then16.i, label %if.else22.i

if.then16.i:                                      ; preds = %print_link_msg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %41)
  %cmp17.i = icmp eq i32 %41, 2500
  br i1 %cmp17.i, label %if.then16.i.if.then18.i_crit_edge, label %if.then16.i.if.else.i1116_crit_edge

if.then16.i.if.else.i1116_crit_edge:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i1116

if.then16.i.if.then18.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.then16.i.if.then18.i_crit_edge, %if.end8.i.if.then18.i_crit_edge
  %42 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.173, i32 9)
  br label %if.end29.i

if.else.i1116:                                    ; preds = %if.then16.i.if.else.i1116_crit_edge, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %if.end8.i.if.else.i1116_crit_edge
  %link_speed_mbps.04958.i = phi i32 [ %41, %if.then16.i.if.else.i1116_crit_edge ], [ 5000, %sw.bb12.i ], [ 10000, %sw.bb11.i ], [ 20000, %sw.bb10.i ], [ 25000, %sw.bb9.i ], [ 40000, %if.end8.i.if.else.i1116_crit_edge ]
  %div68.i = udiv i32 %link_speed_mbps.04958.i, 1000
  %call20.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 13, ptr noundef nonnull @.str.174, i32 noundef %div68.i, ptr noundef nonnull @.str.175) #9
  br label %if.end29.i

if.else22.i:                                      ; preds = %print_link_msg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp23.i = icmp eq i32 %41, -1
  br i1 %cmp23.i, label %if.else22.i.if.then24.i_crit_edge, label %if.else22.i.if.else26.i_crit_edge

if.else22.i.if.else26.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26.i

if.else22.i.if.then24.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.else22.i.if.then24.i_crit_edge, %if.end8.i.if.then24.i_crit_edge
  %43 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.177, i32 13)
  br label %if.end29.i

if.else26.i:                                      ; preds = %if.else22.i.if.else26.i_crit_edge, %sw.bb15.i, %if.end8.i.if.else26.i_crit_edge
  %link_speed_mbps.05564.i = phi i32 [ %41, %if.else22.i.if.else26.i_crit_edge ], [ 1000, %if.end8.i.if.else26.i_crit_edge ], [ 100, %sw.bb15.i ]
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 13, ptr noundef nonnull @.str.174, i32 noundef %link_speed_mbps.05564.i, ptr noundef nonnull @.str.178) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else26.i, %if.then24.i, %if.else.i1116, %if.then18.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.179, ptr noundef nonnull %call7.i.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup782

do.end:                                           ; preds = %if.then
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.82) #13
  %flags25 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %46 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags25, align 4
  %and26 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %do.end.cleanup782_crit_edge

do.end.cleanup782_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %47, 16
  %48 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or, ptr %flags25, align 4
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.85) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %51 = load ptr, ptr @iavf_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %adapter) #9
  br label %cleanup782

do.end39:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pdev40 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %52 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.88, i32 noundef %4) #13
  br label %cleanup782

if.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_retval)
  %tobool44.not = icmp eq i32 %v_retval, 0
  br i1 %tobool44.not, label %if.end43.if.end335_crit_edge, label %if.then45

if.end43.if.end335_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

if.then45:                                        ; preds = %if.end43
  %54 = zext i32 %v_opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %v_opcode, label %do.end329 [
    i32 12, label %do.end49
    i32 10, label %sw.bb336.thread
    i32 13, label %do.end65
    i32 11, label %do.end73
    i32 30, label %do.end81
    i32 31, label %do.end92
    i32 32, label %sw.bb101
    i32 33, label %sw.bb129
    i32 47, label %sw.bb164
    i32 48, label %sw.bb211
    i32 45, label %sw.bb247
    i32 46, label %sw.bb278
    i32 27, label %sw.bb757.thread
    i32 28, label %sw.bb761.thread
  ]

do.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev50 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %55 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %hw = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call52 = tail call ptr @iavf_stat_str(ptr noundef %hw, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.91, ptr noundef %call52) #13
  br label %sw.default765

sw.bb336.thread:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev57 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %57 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev57, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %hw59 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call60 = tail call ptr @iavf_stat_str(ptr noundef %hw59, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.94, ptr noundef %call60) #13
  tail call fastcc void @iavf_mac_add_reject(ptr noundef %adapter)
  %addr = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr, align 64
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 4
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1, i32 4
  %66 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %add.ptr1.i, align 2
  br label %if.end339

do.end65:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev66 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %67 = ptrtoint ptr %pdev66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev66, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %hw68 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call69 = tail call ptr @iavf_stat_str(ptr noundef %hw68, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.97, ptr noundef %call69) #13
  br label %sw.default765

do.end73:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev74 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %69 = ptrtoint ptr %pdev74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev74, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %hw76 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call77 = tail call ptr @iavf_stat_str(ptr noundef %hw76, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.100, ptr noundef %call77) #13
  br label %sw.default765

do.end81:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev82 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %71 = ptrtoint ptr %pdev82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev82, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %hw84 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call85 = tail call ptr @iavf_stat_str(ptr noundef %hw84, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.103, ptr noundef %call85) #13
  %flags86 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %73 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags86, align 4
  %and87 = and i32 %74, -65537
  store i32 %and87, ptr %flags86, align 4
  %state88 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 52, i32 1
  %75 = ptrtoint ptr %state88 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %state88, align 8
  tail call void @netdev_reset_tc(ptr noundef %1) #9
  tail call fastcc void @netif_tx_start_all_queues(ptr noundef %1)
  br label %sw.default765

do.end92:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev93 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %76 = ptrtoint ptr %pdev93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev93, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %hw95 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call96 = tail call ptr @iavf_stat_str(ptr noundef %hw95, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.106, ptr noundef %call96) #13
  %flags97 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %78 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags97, align 4
  %and98 = and i32 %79, -65537
  store i32 %and98, ptr %flags97, align 4
  %state100 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 52, i32 1
  %80 = ptrtoint ptr %state100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %state100, align 8
  tail call fastcc void @netif_tx_start_all_queues(ptr noundef %1)
  br label %sw.default765

sw.bb101:                                         ; preds = %if.then45
  %cloud_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  %81 = ptrtoint ptr %cloud_filter_list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cloud_filter_list, align 4
  %cmp108.not1233 = icmp eq ptr %82, %cloud_filter_list
  br i1 %cmp108.not1233, label %sw.bb101.sw.bb519_crit_edge, label %for.body.lr.ph

sw.bb101.sw.bb519_crit_edge:                      ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb519

for.body.lr.ph:                                   ; preds = %sw.bb101
  %pdev118 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %hw120 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %num_cloud_filters = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn1102.in1234 = phi ptr [ %82, %for.body.lr.ph ], [ %.pn11021238, %for.inc.for.body_crit_edge ]
  %cf.01237 = getelementptr i8, ptr %.pn1102.in1234, i32 -4
  %83 = ptrtoint ptr %.pn1102.in1234 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn11021238 = load ptr, ptr %.pn1102.in1234, align 4
  %84 = ptrtoint ptr %cf.01237 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cf.01237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp111 = icmp eq i32 %85, 1
  br i1 %cmp111, label %if.then113, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then113:                                       ; preds = %for.body
  %86 = ptrtoint ptr %cf.01237 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %cf.01237, align 4
  %87 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev118, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %call121 = tail call ptr @iavf_stat_str(ptr noundef %hw120, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev119, ptr noundef nonnull @.str.109, ptr noundef %call121) #13
  %f = getelementptr i8, ptr %.pn1102.in1234, i32 8
  %flow_type.i = getelementptr i8, ptr %.pn1102.in1234, i32 264
  %89 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flow_type.i, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %90, label %if.then113.iavf_print_cloud_filter.exit_crit_edge [
    i32 0, label %if.then113.sw.epilog.sink.split.i_crit_edge
    i32 1, label %do.end12.i
  ]

if.then113.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.then113.iavf_print_cloud_filter.exit_crit_edge: ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_print_cloud_filter.exit

do.end12.i:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end12.i, %if.then113.sw.epilog.sink.split.i_crit_edge
  %.str.183.sink.i = phi ptr [ @.str.183, %do.end12.i ], [ @.str.180, %if.then113.sw.epilog.sink.split.i_crit_edge ]
  %92 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev118, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %dst_mac16.i = getelementptr i8, ptr %.pn1102.in1234, i32 14
  %vlan_id20.i = getelementptr i8, ptr %.pn1102.in1234, i32 20
  %94 = ptrtoint ptr %vlan_id20.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vlan_id20.i, align 4
  %conv21.i = zext i16 %95 to i32
  %dst_ip23.i = getelementptr i8, ptr %.pn1102.in1234, i32 40
  %src_ip25.i = getelementptr i8, ptr %.pn1102.in1234, i32 24
  %dst_port27.i = getelementptr i8, ptr %.pn1102.in1234, i32 58
  %96 = ptrtoint ptr %dst_port27.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %dst_port27.i, align 2
  %conv28.i = zext i16 %97 to i32
  %src_port30.i = getelementptr i8, ptr %.pn1102.in1234, i32 56
  %98 = ptrtoint ptr %src_port30.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %src_port30.i, align 4
  %conv31.i = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull %.str.183.sink.i, ptr noundef %dst_mac16.i, ptr noundef %f, i32 noundef %conv21.i, ptr noundef %dst_ip23.i, ptr noundef %src_ip25.i, i32 noundef %conv28.i, i32 noundef %conv31.i) #13
  br label %iavf_print_cloud_filter.exit

iavf_print_cloud_filter.exit:                     ; preds = %sw.epilog.sink.split.i, %if.then113.iavf_print_cloud_filter.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1102.in1234) #9
  br i1 %call.i.i, label %if.end.i.i, label %iavf_print_cloud_filter.exit.list_del.exit_crit_edge

iavf_print_cloud_filter.exit.list_del.exit_crit_edge: ; preds = %iavf_print_cloud_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %iavf_print_cloud_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn1102.in1234, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %102 = ptrtoint ptr %.pn1102.in1234 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %.pn1102.in1234, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %iavf_print_cloud_filter.exit.list_del.exit_crit_edge
  %106 = ptrtoint ptr %.pn1102.in1234 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1102.in1234, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn1102.in1234, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cf.01237) #9
  %108 = ptrtoint ptr %num_cloud_filters to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num_cloud_filters, align 8
  %dec = add i16 %109, -1
  store i16 %dec, ptr %num_cloud_filters, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp108.not = icmp eq ptr %.pn11021238, %cloud_filter_list
  br i1 %cmp108.not, label %for.inc.if.end335_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end335_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

sw.bb129:                                         ; preds = %if.then45
  %cloud_filter_list132 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  %110 = ptrtoint ptr %cloud_filter_list132 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn11011226 = load ptr, ptr %cloud_filter_list132, align 4
  %cmp139.not1228 = icmp eq ptr %.pn11011226, %cloud_filter_list132
  br i1 %cmp139.not1228, label %sw.bb129.sw.bb546_crit_edge, label %for.body142.lr.ph

sw.bb129.sw.bb546_crit_edge:                      ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb546

for.body142.lr.ph:                                ; preds = %sw.bb129
  %pdev151 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %hw153 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  br label %for.body142

for.body142:                                      ; preds = %for.inc157.for.body142_crit_edge, %for.body142.lr.ph
  %.pn11011229 = phi ptr [ %.pn11011226, %for.body142.lr.ph ], [ %.pn1101, %for.inc157.for.body142_crit_edge ]
  %cf130.01230 = getelementptr i8, ptr %.pn11011229, i32 -4
  %111 = ptrtoint ptr %cf130.01230 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cf130.01230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp144 = icmp eq i32 %112, 2
  br i1 %cmp144, label %if.then146, label %for.body142.for.inc157_crit_edge

for.body142.for.inc157_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

if.then146:                                       ; preds = %for.body142
  %113 = ptrtoint ptr %cf130.01230 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %cf130.01230, align 4
  %114 = ptrtoint ptr %pdev151 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev151, align 4
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %call154 = tail call ptr @iavf_stat_str(ptr noundef %hw153, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev152, ptr noundef nonnull @.str.112, ptr noundef %call154) #13
  %f155 = getelementptr i8, ptr %.pn11011229, i32 8
  %flow_type.i1117 = getelementptr i8, ptr %.pn11011229, i32 264
  %116 = ptrtoint ptr %flow_type.i1117 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flow_type.i1117, align 4
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %117, label %if.then146.for.inc157_crit_edge [
    i32 0, label %if.then146.sw.epilog.sink.split.i1131_crit_edge
    i32 1, label %do.end12.i1118
  ]

if.then146.sw.epilog.sink.split.i1131_crit_edge:  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i1131

if.then146.for.inc157_crit_edge:                  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

do.end12.i1118:                                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i1131

sw.epilog.sink.split.i1131:                       ; preds = %do.end12.i1118, %if.then146.sw.epilog.sink.split.i1131_crit_edge
  %.str.183.sink.i1119 = phi ptr [ @.str.183, %do.end12.i1118 ], [ @.str.180, %if.then146.sw.epilog.sink.split.i1131_crit_edge ]
  %119 = ptrtoint ptr %pdev151 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev151, align 4
  %dev14.i1121 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %dst_mac16.i1122 = getelementptr i8, ptr %.pn11011229, i32 14
  %vlan_id20.i1123 = getelementptr i8, ptr %.pn11011229, i32 20
  %121 = ptrtoint ptr %vlan_id20.i1123 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vlan_id20.i1123, align 4
  %conv21.i1124 = zext i16 %122 to i32
  %dst_ip23.i1125 = getelementptr i8, ptr %.pn11011229, i32 40
  %src_ip25.i1126 = getelementptr i8, ptr %.pn11011229, i32 24
  %dst_port27.i1127 = getelementptr i8, ptr %.pn11011229, i32 58
  %123 = ptrtoint ptr %dst_port27.i1127 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %dst_port27.i1127, align 2
  %conv28.i1128 = zext i16 %124 to i32
  %src_port30.i1129 = getelementptr i8, ptr %.pn11011229, i32 56
  %125 = ptrtoint ptr %src_port30.i1129 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %src_port30.i1129, align 4
  %conv31.i1130 = zext i16 %126 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i1121, ptr noundef nonnull %.str.183.sink.i1119, ptr noundef %dst_mac16.i1122, ptr noundef %f155, i32 noundef %conv21.i1124, ptr noundef %dst_ip23.i1125, ptr noundef %src_ip25.i1126, i32 noundef %conv28.i1128, i32 noundef %conv31.i1130) #13
  br label %for.inc157

for.inc157:                                       ; preds = %sw.epilog.sink.split.i1131, %if.then146.for.inc157_crit_edge, %for.body142.for.inc157_crit_edge
  %127 = ptrtoint ptr %.pn11011229 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pn1101 = load ptr, ptr %.pn11011229, align 4
  %cmp139.not = icmp eq ptr %.pn1101, %cloud_filter_list132
  br i1 %cmp139.not, label %for.inc157.if.end335_crit_edge, label %for.inc157.for.body142_crit_edge

for.inc157.for.body142_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body142

for.inc157.if.end335_crit_edge:                   ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

sw.bb164:                                         ; preds = %if.then45
  %fdir_fltr_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock) #9
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %128 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fdir_list_head, align 4
  %cmp177.not1221 = icmp eq ptr %129, %fdir_list_head
  br i1 %cmp177.not1221, label %sw.bb164.for.end209_crit_edge, label %for.body180.lr.ph

sw.bb164.for.end209_crit_edge:                    ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end209

for.body180.lr.ph:                                ; preds = %sw.bb164
  %pdev188 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %hw190 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msglen)
  %tobool192.not = icmp eq i16 %msglen, 0
  %fdir_active_fltr = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 57
  br label %for.body180

for.body180:                                      ; preds = %for.inc203.for.body180_crit_edge, %for.body180.lr.ph
  %.pn1100.in1222 = phi ptr [ %129, %for.body180.lr.ph ], [ %.pn11001225, %for.inc203.for.body180_crit_edge ]
  %fdir.01224 = getelementptr i8, ptr %.pn1100.in1222, i32 -4
  %130 = ptrtoint ptr %.pn1100.in1222 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn11001225 = load ptr, ptr %.pn1100.in1222, align 4
  %131 = ptrtoint ptr %fdir.01224 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fdir.01224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp182 = icmp eq i32 %132, 1
  br i1 %cmp182, label %do.end187, label %for.body180.for.inc203_crit_edge

for.body180.for.inc203_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc203

do.end187:                                        ; preds = %for.body180
  %133 = ptrtoint ptr %pdev188 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev188, align 4
  %dev189 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %call191 = tail call ptr @iavf_stat_str(ptr noundef %hw190, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev189, ptr noundef nonnull @.str.115, ptr noundef %call191) #13
  tail call void @iavf_print_fdir_fltr(ptr noundef %adapter, ptr noundef %fdir.01224) #9
  br i1 %tobool192.not, label %do.end187.if.end199_crit_edge, label %do.end196

do.end187.if.end199_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

do.end196:                                        ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %pdev188 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev188, align 4
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev198, ptr noundef nonnull @.str.118, ptr noundef %msg) #13
  br label %if.end199

if.end199:                                        ; preds = %do.end196, %do.end187.if.end199_crit_edge
  %call.i.i1133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1100.in1222) #9
  br i1 %call.i.i1133, label %if.end.i.i1136, label %if.end199.list_del.exit1138_crit_edge

if.end199.list_del.exit1138_crit_edge:            ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1138

if.end.i.i1136:                                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1134 = getelementptr inbounds %struct.list_head, ptr %.pn1100.in1222, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i1134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i1134, align 4
  %139 = ptrtoint ptr %.pn1100.in1222 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %.pn1100.in1222, align 4
  %prev1.i.i.i1135 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i1135 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i1135, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del.exit1138

list_del.exit1138:                                ; preds = %if.end.i.i1136, %if.end199.list_del.exit1138_crit_edge
  %143 = ptrtoint ptr %.pn1100.in1222 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1100.in1222, align 4
  %prev.i1137 = getelementptr inbounds %struct.list_head, ptr %.pn1100.in1222, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i1137 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1137, align 4
  tail call void @kfree(ptr noundef %fdir.01224) #9
  %145 = ptrtoint ptr %fdir_active_fltr to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %fdir_active_fltr, align 2
  %dec201 = add i16 %146, -1
  store i16 %dec201, ptr %fdir_active_fltr, align 2
  br label %for.inc203

for.inc203:                                       ; preds = %list_del.exit1138, %for.body180.for.inc203_crit_edge
  %cmp177.not = icmp eq ptr %.pn11001225, %fdir_list_head
  br i1 %cmp177.not, label %for.inc203.for.end209_crit_edge, label %for.inc203.for.body180_crit_edge

for.inc203.for.body180_crit_edge:                 ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body180

for.inc203.for.end209_crit_edge:                  ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end209

for.end209:                                       ; preds = %for.inc203.for.end209_crit_edge, %sw.bb164.for.end209_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock) #9
  br label %if.end335

sw.bb211:                                         ; preds = %if.then45
  %fdir_fltr_lock213 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock213) #9
  %fdir_list_head215 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %147 = ptrtoint ptr %fdir_list_head215 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn10991214 = load ptr, ptr %fdir_list_head215, align 4
  %cmp222.not1216 = icmp eq ptr %.pn10991214, %fdir_list_head215
  br i1 %cmp222.not1216, label %sw.bb211.for.end245_crit_edge, label %for.body225.lr.ph

sw.bb211.for.end245_crit_edge:                    ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end245

for.body225.lr.ph:                                ; preds = %sw.bb211
  %pdev234 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %hw236 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  br label %for.body225

for.body225:                                      ; preds = %for.inc239.for.body225_crit_edge, %for.body225.lr.ph
  %.pn10991217 = phi ptr [ %.pn10991214, %for.body225.lr.ph ], [ %.pn1099, %for.inc239.for.body225_crit_edge ]
  %fdir212.01218 = getelementptr i8, ptr %.pn10991217, i32 -4
  %148 = ptrtoint ptr %fdir212.01218 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fdir212.01218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %149)
  %cmp227 = icmp eq i32 %149, 3
  br i1 %cmp227, label %if.then229, label %for.body225.for.inc239_crit_edge

for.body225.for.inc239_crit_edge:                 ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc239

if.then229:                                       ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %fdir212.01218 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 4, ptr %fdir212.01218, align 4
  %151 = ptrtoint ptr %pdev234 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev234, align 4
  %dev235 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %call237 = tail call ptr @iavf_stat_str(ptr noundef %hw236, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev235, ptr noundef nonnull @.str.121, ptr noundef %call237) #13
  tail call void @iavf_print_fdir_fltr(ptr noundef %adapter, ptr noundef %fdir212.01218) #9
  br label %for.inc239

for.inc239:                                       ; preds = %if.then229, %for.body225.for.inc239_crit_edge
  %153 = ptrtoint ptr %.pn10991217 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn1099 = load ptr, ptr %.pn10991217, align 4
  %cmp222.not = icmp eq ptr %.pn1099, %fdir_list_head215
  br i1 %cmp222.not, label %for.inc239.for.end245_crit_edge, label %for.inc239.for.body225_crit_edge

for.inc239.for.body225_crit_edge:                 ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body225

for.inc239.for.end245_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end245

for.end245:                                       ; preds = %for.inc239.for.end245_crit_edge, %sw.bb211.for.end245_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock213) #9
  br label %if.end335

sw.bb247:                                         ; preds = %if.then45
  %adv_rss_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock) #9
  %adv_rss_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  %154 = ptrtoint ptr %adv_rss_list_head to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adv_rss_list_head, align 8
  %cmp260.not1209 = icmp eq ptr %155, %adv_rss_list_head
  br i1 %cmp260.not1209, label %sw.bb247.for.end276_crit_edge, label %sw.bb247.for.body263_crit_edge

sw.bb247.for.body263_crit_edge:                   ; preds = %sw.bb247
  br label %for.body263

sw.bb247.for.end276_crit_edge:                    ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end276

for.body263:                                      ; preds = %for.inc270.for.body263_crit_edge, %sw.bb247.for.body263_crit_edge
  %.pn1098.in1210 = phi ptr [ %.pn10981213, %for.inc270.for.body263_crit_edge ], [ %155, %sw.bb247.for.body263_crit_edge ]
  %rss.01212 = getelementptr i8, ptr %.pn1098.in1210, i32 -4
  %156 = ptrtoint ptr %.pn1098.in1210 to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn10981213 = load ptr, ptr %.pn1098.in1210, align 4
  %157 = ptrtoint ptr %rss.01212 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rss.01212, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp265 = icmp eq i32 %158, 1
  br i1 %cmp265, label %if.then267, label %for.body263.for.inc270_crit_edge

for.body263.for.inc270_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc270

if.then267:                                       ; preds = %for.body263
  tail call void @iavf_print_adv_rss_cfg(ptr noundef %adapter, ptr noundef %rss.01212, ptr noundef nonnull @.str.123, ptr noundef null) #9
  %call.i.i1139 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1098.in1210) #9
  br i1 %call.i.i1139, label %if.end.i.i1142, label %if.then267.list_del.exit1144_crit_edge

if.then267.list_del.exit1144_crit_edge:           ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1144

if.end.i.i1142:                                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1140 = getelementptr inbounds %struct.list_head, ptr %.pn1098.in1210, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i.i1140 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %prev.i.i1140, align 4
  %161 = ptrtoint ptr %.pn1098.in1210 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %.pn1098.in1210, align 4
  %prev1.i.i.i1141 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %prev1.i.i.i1141 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %160, ptr %prev1.i.i.i1141, align 4
  %164 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %162, ptr %160, align 4
  br label %list_del.exit1144

list_del.exit1144:                                ; preds = %if.end.i.i1142, %if.then267.list_del.exit1144_crit_edge
  %165 = ptrtoint ptr %.pn1098.in1210 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1098.in1210, align 4
  %prev.i1143 = getelementptr inbounds %struct.list_head, ptr %.pn1098.in1210, i32 0, i32 1
  %166 = ptrtoint ptr %prev.i1143 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1143, align 4
  tail call void @kfree(ptr noundef %rss.01212) #9
  br label %for.inc270

for.inc270:                                       ; preds = %list_del.exit1144, %for.body263.for.inc270_crit_edge
  %cmp260.not = icmp eq ptr %.pn10981213, %adv_rss_list_head
  br i1 %cmp260.not, label %for.inc270.for.end276_crit_edge, label %for.inc270.for.body263_crit_edge

for.inc270.for.body263_crit_edge:                 ; preds = %for.inc270
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body263

for.inc270.for.end276_crit_edge:                  ; preds = %for.inc270
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end276

for.end276:                                       ; preds = %for.inc270.for.end276_crit_edge, %sw.bb247.for.end276_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock) #9
  br label %if.end335

sw.bb278:                                         ; preds = %if.then45
  %adv_rss_lock280 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock280) #9
  %adv_rss_list_head282 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  %167 = ptrtoint ptr %adv_rss_list_head282 to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pn10971202 = load ptr, ptr %adv_rss_list_head282, align 4
  %cmp289.not1204 = icmp eq ptr %.pn10971202, %adv_rss_list_head282
  br i1 %cmp289.not1204, label %sw.bb278.for.end312_crit_edge, label %for.body292.lr.ph

sw.bb278.for.end312_crit_edge:                    ; preds = %sw.bb278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end312

for.body292.lr.ph:                                ; preds = %sw.bb278
  %pdev301 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %hw303 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  br label %for.body292

for.body292:                                      ; preds = %for.inc306.for.body292_crit_edge, %for.body292.lr.ph
  %.pn10971205 = phi ptr [ %.pn10971202, %for.body292.lr.ph ], [ %.pn1097, %for.inc306.for.body292_crit_edge ]
  %rss279.01206 = getelementptr i8, ptr %.pn10971205, i32 -4
  %168 = ptrtoint ptr %rss279.01206 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rss279.01206, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %169)
  %cmp294 = icmp eq i32 %169, 3
  br i1 %cmp294, label %if.then296, label %for.body292.for.inc306_crit_edge

for.body292.for.inc306_crit_edge:                 ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc306

if.then296:                                       ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %rss279.01206 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 4, ptr %rss279.01206, align 8
  %171 = ptrtoint ptr %pdev301 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pdev301, align 4
  %dev302 = getelementptr inbounds %struct.pci_dev, ptr %172, i32 0, i32 44
  %call304 = tail call ptr @iavf_stat_str(ptr noundef %hw303, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev302, ptr noundef nonnull @.str.125, ptr noundef %call304) #13
  br label %for.inc306

for.inc306:                                       ; preds = %if.then296, %for.body292.for.inc306_crit_edge
  %173 = ptrtoint ptr %.pn10971205 to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pn1097 = load ptr, ptr %.pn10971205, align 4
  %cmp289.not = icmp eq ptr %.pn1097, %adv_rss_list_head282
  br i1 %cmp289.not, label %for.inc306.for.end312_crit_edge, label %for.inc306.for.body292_crit_edge

for.inc306.for.body292_crit_edge:                 ; preds = %for.inc306
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body292

for.inc306.for.end312_crit_edge:                  ; preds = %for.inc306
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end312

for.end312:                                       ; preds = %for.inc306.for.end312_crit_edge, %sw.bb278.for.end312_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock280) #9
  br label %if.end335

sw.bb757.thread:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev318 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %174 = ptrtoint ptr %pdev318 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev318, align 4
  %dev319 = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev319, ptr noundef nonnull @.str.128) #13
  %features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %176 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %features.i, align 16
  %and.i1145 = and i64 %177, -257
  store i64 %and.i1145, ptr %features.i, align 16
  br label %sw.epilog780

sw.bb761.thread:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev324 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %178 = ptrtoint ptr %pdev324 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdev324, align 4
  %dev325 = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev325, ptr noundef nonnull @.str.128) #13
  %features.i1146 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %180 = ptrtoint ptr %features.i1146 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %features.i1146, align 16
  %and.sink.i = or i64 %181, 256
  store i64 %and.sink.i, ptr %features.i1146, align 16
  br label %sw.epilog780

do.end329:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %pdev330 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %182 = ptrtoint ptr %pdev330 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev330, align 4
  %dev331 = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %hw332 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %call333 = tail call ptr @iavf_stat_str(ptr noundef %hw332, i32 noundef %v_retval) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev331, ptr noundef nonnull @.str.133, i32 noundef %v_retval, ptr noundef %call333, i32 noundef %v_opcode) #13
  br label %if.end335

if.end335:                                        ; preds = %do.end329, %for.end312, %for.end276, %for.end245, %for.end209, %for.inc157.if.end335_crit_edge, %for.inc.if.end335_crit_edge, %if.end43.if.end335_crit_edge
  %184 = zext i32 %v_opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %v_opcode, label %if.end335.sw.default765_crit_edge [
    i32 10, label %sw.bb336
    i32 15, label %sw.bb352
    i32 3, label %sw.bb373
    i32 51, label %if.then451
    i32 8, label %sw.bb467
    i32 9, label %sw.bb470
    i32 1, label %if.end335.sw.bb476_crit_edge
    i32 7, label %if.end335.sw.bb476_crit_edge1289
    i32 20, label %sw.bb481
    i32 21, label %sw.bb487
    i32 25, label %sw.bb489
    i32 29, label %sw.bb502
    i32 32, label %if.end335.sw.bb519_crit_edge
    i32 33, label %if.end335.sw.bb546_crit_edge
    i32 47, label %sw.bb582
    i32 48, label %sw.bb637
    i32 45, label %sw.bb693
    i32 46, label %sw.bb722
    i32 27, label %sw.bb757
    i32 28, label %sw.bb761
  ]

if.end335.sw.bb546_crit_edge:                     ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb546

if.end335.sw.bb519_crit_edge:                     ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb519

if.end335.sw.bb476_crit_edge1289:                 ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb476

if.end335.sw.bb476_crit_edge:                     ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb476

if.end335.sw.default765_crit_edge:                ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default765

sw.bb336:                                         ; preds = %if.end335
  br i1 %tobool44.not, label %if.then338, label %sw.bb336.if.end339_crit_edge

sw.bb336.if.end339_crit_edge:                     ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end339

if.then338:                                       ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iavf_mac_add_ok(ptr noundef %adapter)
  br label %if.end339

if.end339:                                        ; preds = %if.then338, %sw.bb336.if.end339_crit_edge, %sw.bb336.thread
  %dev_addr340 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %185 = ptrtoint ptr %dev_addr340 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev_addr340, align 64
  %addr343 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %189 = ptrtoint ptr %addr343 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %addr343, align 4
  %xor.i = xor i32 %190, %188
  %add.ptr.i1148 = getelementptr i8, ptr %186, i32 4
  %191 = ptrtoint ptr %add.ptr.i1148 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr.i1148, align 2
  %add.ptr1.i1149 = getelementptr %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1, i32 4
  %193 = ptrtoint ptr %add.ptr1.i1149 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr1.i1149, align 2
  %xor37.i = xor i16 %194, %192
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i1150 = icmp eq i32 %or.i, 0
  br i1 %cmp.i1150, label %if.end339.sw.epilog780_crit_edge, label %if.then346

if.end339.sw.epilog780_crit_edge:                 ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.then346:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %addr343, i32 noundef 6) #9
  br label %sw.epilog780

sw.bb352:                                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  %rx_unicast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 1
  %195 = ptrtoint ptr %rx_unicast to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %rx_unicast, align 8
  %rx_multicast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 2
  %197 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %rx_multicast, align 8
  %add = add i64 %198, %196
  %rx_broadcast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 3
  %199 = ptrtoint ptr %rx_broadcast to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %rx_broadcast, align 8
  %add353 = add i64 %add, %200
  %conv354 = trunc i64 %add353 to i32
  %stats355 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %201 = ptrtoint ptr %stats355 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %conv354, ptr %stats355, align 8
  %tx_unicast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 7
  %202 = ptrtoint ptr %tx_unicast to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %tx_unicast, align 8
  %tx_multicast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 8
  %204 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %tx_multicast, align 8
  %add356 = add i64 %205, %203
  %tx_broadcast = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 9
  %206 = ptrtoint ptr %tx_broadcast to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %tx_broadcast, align 8
  %add357 = add i64 %add356, %207
  %conv358 = trunc i64 %add357 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %208 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv358, ptr %tx_packets, align 4
  %209 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %msg, align 8
  %conv360 = trunc i64 %210 to i32
  %rx_bytes362 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %211 = ptrtoint ptr %rx_bytes362 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv360, ptr %rx_bytes362, align 8
  %tx_bytes = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 6
  %212 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %tx_bytes, align 8
  %conv363 = trunc i64 %213 to i32
  %tx_bytes365 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %214 = ptrtoint ptr %tx_bytes365 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv363, ptr %tx_bytes365, align 4
  %tx_errors = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 11
  %215 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %tx_errors, align 8
  %conv366 = trunc i64 %216 to i32
  %tx_errors368 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %217 = ptrtoint ptr %tx_errors368 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %conv366, ptr %tx_errors368, align 4
  %rx_discards = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 4
  %218 = ptrtoint ptr %rx_discards to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %rx_discards, align 8
  %conv369 = trunc i64 %219 to i32
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %220 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv369, ptr %rx_dropped, align 8
  %tx_discards = getelementptr inbounds %struct.iavf_eth_stats, ptr %msg, i32 0, i32 10
  %221 = ptrtoint ptr %tx_discards to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %tx_discards, align 8
  %conv371 = trunc i64 %222 to i32
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %223 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %conv371, ptr %tx_dropped, align 4
  %current_stats = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 44
  %224 = call ptr @memcpy(ptr %current_stats, ptr %msg, i32 96)
  br label %sw.epilog780

sw.bb373:                                         ; preds = %if.end335
  %vf_res = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 39
  %225 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vf_res, align 4
  %227 = tail call i16 @llvm.umin.i16(i16 %msglen, i16 84)
  %cond = zext i16 %227 to i32
  %228 = call ptr @memcpy(ptr %226, ptr %msg, i32 %cond)
  %229 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vf_res, align 4
  %num_queue_pairs.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %num_queue_pairs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %232)
  %cmp.i1152 = icmp ugt i16 %232, 16
  br i1 %cmp.i1152, label %if.then.i1153, label %sw.bb373.iavf_validate_num_queues.exit_crit_edge

sw.bb373.iavf_validate_num_queues.exit_crit_edge: ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_validate_num_queues.exit

if.then.i1153:                                    ; preds = %sw.bb373
  %conv.i = zext i16 %232 to i32
  %pdev.i = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %233 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.160, i32 noundef %conv.i, i32 noundef 16) #13
  %235 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pdev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.163, i32 noundef 16) #13
  %237 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vf_res, align 4
  %num_queue_pairs11.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %num_queue_pairs11.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 16, ptr %num_queue_pairs11.i, align 2
  %240 = load ptr, ptr %vf_res, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %240, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %cmp1428.not.i = icmp eq i16 %242, 0
  br i1 %cmp1428.not.i, label %if.then.i1153.iavf_validate_num_queues.exit_crit_edge, label %if.then.i1153.for.body.i1155_crit_edge

if.then.i1153.for.body.i1155_crit_edge:           ; preds = %if.then.i1153
  br label %for.body.i1155

if.then.i1153.iavf_validate_num_queues.exit_crit_edge: ; preds = %if.then.i1153
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_validate_num_queues.exit

for.body.i1155:                                   ; preds = %for.body.i1155.for.body.i1155_crit_edge, %if.then.i1153.for.body.i1155_crit_edge
  %243 = phi ptr [ %246, %for.body.i1155.for.body.i1155_crit_edge ], [ %240, %if.then.i1153.for.body.i1155_crit_edge ]
  %i.029.i = phi i32 [ %inc.i1154, %for.body.i1155.for.body.i1155_crit_edge ], [ 0, %if.then.i1153.for.body.i1155_crit_edge ]
  %num_queue_pairs18.i = getelementptr %struct.virtchnl_vf_resource, ptr %243, i32 0, i32 7, i32 %i.029.i, i32 1
  %244 = ptrtoint ptr %num_queue_pairs18.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 16, ptr %num_queue_pairs18.i, align 2
  %inc.i1154 = add nuw nsw i32 %i.029.i, 1
  %245 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %vf_res, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %246, align 4
  %conv13.i = zext i16 %248 to i32
  %cmp14.i = icmp ult i32 %inc.i1154, %conv13.i
  br i1 %cmp14.i, label %for.body.i1155.for.body.i1155_crit_edge, label %for.body.i1155.iavf_validate_num_queues.exit_crit_edge

for.body.i1155.iavf_validate_num_queues.exit_crit_edge: ; preds = %for.body.i1155
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_validate_num_queues.exit

for.body.i1155.for.body.i1155_crit_edge:          ; preds = %for.body.i1155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i1155

iavf_validate_num_queues.exit:                    ; preds = %for.body.i1155.iavf_validate_num_queues.exit_crit_edge, %if.then.i1153.iavf_validate_num_queues.exit_crit_edge, %sw.bb373.iavf_validate_num_queues.exit_crit_edge
  %hw381 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29
  %249 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %vf_res, align 4
  tail call void @iavf_vf_parse_hw_config(ptr noundef %hw381, ptr noundef %250) #9
  %addr385 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1
  %251 = ptrtoint ptr %addr385 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %addr385, align 4
  %add.ptr.i1157 = getelementptr %struct.iavf_adapter, ptr %adapter, i32 0, i32 29, i32 2, i32 1, i32 4
  %253 = ptrtoint ptr %add.ptr.i1157 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %add.ptr.i1157, align 2
  %conv.i1158 = zext i16 %254 to i32
  %or.i1159 = or i32 %252, %conv.i1158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i1159)
  %cmp.i1160 = icmp eq i32 %or.i1159, 0
  br i1 %cmp.i1160, label %if.then388, label %if.else394

if.then388:                                       ; preds = %iavf_validate_num_queues.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev_addr393 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %255 = ptrtoint ptr %dev_addr393 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev_addr393, align 64
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %259 = ptrtoint ptr %addr385 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %addr385, align 4
  %add.ptr.i1161 = getelementptr i8, ptr %256, i32 4
  %260 = ptrtoint ptr %add.ptr.i1161 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %add.ptr.i1161, align 2
  %262 = ptrtoint ptr %add.ptr.i1157 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %add.ptr.i1157, align 2
  br label %if.end404

if.else394:                                       ; preds = %iavf_validate_num_queues.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %addr385, i32 noundef 6) #9
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %263 = ptrtoint ptr %addr385 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %addr385, align 4
  %265 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %perm_addr, align 4
  %266 = ptrtoint ptr %add.ptr.i1157 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %add.ptr.i1157, align 2
  %add.ptr1.i1164 = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %268 = ptrtoint ptr %add.ptr1.i1164 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %add.ptr1.i1164, align 2
  br label %if.end404

if.end404:                                        ; preds = %if.else394, %if.then388
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %call409 = tail call ptr @iavf_add_filter(ptr noundef %adapter, ptr noundef %addr385) #9
  %269 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %270, i32 0, i32 4
  %271 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %vf_cap_flags, align 4
  %and411 = and i32 %272, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and411)
  %tobool412.not = icmp eq i32 %and411, 0
  br i1 %tobool412.not, label %if.end404.if.end439_crit_edge, label %if.then413

if.end404.if.end439_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end439

if.then413:                                       ; preds = %if.end404
  %vlan_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 5
  %273 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile ptr, ptr %vlan_filter_list, align 4
  %cmp.i1165.not = icmp eq ptr %274, %vlan_filter_list
  br i1 %cmp.i1165.not, label %if.then413.if.end439_crit_edge, label %for.cond422.preheader

if.then413.if.end439_crit_edge:                   ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end439

for.cond422.preheader:                            ; preds = %if.then413
  %275 = ptrtoint ptr %vlan_filter_list to i32
  call void @__asan_load4_noabort(i32 %275)
  %vlf.01277 = load ptr, ptr %vlan_filter_list, align 4
  %cmp425.not1278 = icmp eq ptr %vlf.01277, %vlan_filter_list
  br i1 %cmp425.not1278, label %for.cond422.preheader.for.end436_crit_edge, label %for.cond422.preheader.for.body428_crit_edge

for.cond422.preheader.for.body428_crit_edge:      ; preds = %for.cond422.preheader
  br label %for.body428

for.cond422.preheader.for.end436_crit_edge:       ; preds = %for.cond422.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end436

for.body428:                                      ; preds = %for.body428.for.body428_crit_edge, %for.cond422.preheader.for.body428_crit_edge
  %vlf.01279 = phi ptr [ %vlf.0, %for.body428.for.body428_crit_edge ], [ %vlf.01277, %for.cond422.preheader.for.body428_crit_edge ]
  %add429 = getelementptr inbounds %struct.iavf_vlan_filter, ptr %vlf.01279, i32 0, i32 3
  %276 = ptrtoint ptr %add429 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %add429, align 1
  %277 = ptrtoint ptr %vlf.01279 to i32
  call void @__asan_load4_noabort(i32 %277)
  %vlf.0 = load ptr, ptr %vlf.01279, align 4
  %cmp425.not = icmp eq ptr %vlf.0, %vlan_filter_list
  br i1 %cmp425.not, label %for.body428.for.end436_crit_edge, label %for.body428.for.body428_crit_edge

for.body428.for.body428_crit_edge:                ; preds = %for.body428
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body428

for.body428.for.end436_crit_edge:                 ; preds = %for.body428
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end436

for.end436:                                       ; preds = %for.body428.for.end436_crit_edge, %for.cond422.preheader.for.end436_crit_edge
  %aq_required = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 26
  %278 = ptrtoint ptr %aq_required to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %aq_required, align 8
  %or437 = or i64 %279, 8
  store i64 %or437, ptr %aq_required, align 8
  br label %if.end439

if.end439:                                        ; preds = %for.end436, %if.then413.if.end439_crit_edge, %if.end404.if.end439_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  %call441 = tail call i32 @iavf_parse_vf_resource_msg(ptr noundef %adapter) #9
  %280 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags443 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %vf_cap_flags443 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %vf_cap_flags443, align 4
  %and444 = and i32 %283, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and444)
  %tobool445.not = icmp eq i32 %and444, 0
  br i1 %tobool445.not, label %if.end439.if.end463_crit_edge, label %if.end439.sw.epilog780_crit_edge

if.end439.sw.epilog780_crit_edge:                 ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.end439.if.end463_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end463

if.then451:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_v2_caps = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 42
  %284 = tail call i16 @llvm.umin.i16(i16 %msglen, i16 40)
  %cond462 = zext i16 %284 to i32
  %285 = call ptr @memcpy(ptr %vlan_v2_caps, ptr %msg, i32 %cond462)
  br label %if.end463

if.end463:                                        ; preds = %if.then451, %if.end439.if.end463_crit_edge
  %call464 = tail call i32 @iavf_process_config(ptr noundef %adapter) #9
  %flags465 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %286 = ptrtoint ptr %flags465 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %flags465, align 4
  %or466 = or i32 %287, 262144
  store i32 %or466, ptr %flags465, align 4
  br label %sw.epilog780

sw.bb467:                                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iavf_irq_enable(ptr noundef %adapter, i1 noundef zeroext true) #9
  %flags468 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %288 = ptrtoint ptr %flags468 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %flags468, align 4
  %and469 = and i32 %289, -131073
  store i32 %and469, ptr %flags468, align 4
  br label %sw.epilog780

sw.bb470:                                         ; preds = %if.end335
  tail call void @iavf_free_all_tx_resources(ptr noundef %adapter) #9
  tail call void @iavf_free_all_rx_resources(ptr noundef %adapter) #9
  %state471 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 30
  %290 = ptrtoint ptr %state471 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %state471, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %291)
  %cmp472 = icmp eq i32 %291, 11
  br i1 %cmp472, label %if.then474, label %sw.bb470.sw.epilog780_crit_edge

sw.bb470.sw.epilog780_crit_edge:                  ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.then474:                                       ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iavf_change_state(ptr noundef %adapter)
  %down_waitqueue = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %down_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog780

sw.bb476:                                         ; preds = %if.end335.sw.bb476_crit_edge, %if.end335.sw.bb476_crit_edge1289
  %current_op = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %292 = ptrtoint ptr %current_op to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %current_op, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %293, i32 %v_opcode)
  %cmp477.not = icmp eq i32 %293, %v_opcode
  br i1 %cmp477.not, label %sw.bb476.sw.epilog780_crit_edge, label %sw.bb476.cleanup782_crit_edge

sw.bb476.cleanup782_crit_edge:                    ; preds = %sw.bb476
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup782

sw.bb476.sw.epilog780_crit_edge:                  ; preds = %sw.bb476
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

sw.bb481:                                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msglen)
  %tobool483.not = icmp eq i16 %msglen, 0
  br i1 %tobool483.not, label %sw.bb481.sw.epilog780_crit_edge, label %land.lhs.true

sw.bb481.sw.epilog780_crit_edge:                  ; preds = %sw.bb481
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

land.lhs.true:                                    ; preds = %sw.bb481
  %cinst = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 23
  %294 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cinst, align 4
  %tobool484.not = icmp eq ptr %295, null
  br i1 %tobool484.not, label %land.lhs.true.sw.epilog780_crit_edge, label %if.then485

land.lhs.true.sw.epilog780_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.then485:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %vsi = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45
  tail call void @iavf_notify_client_message(ptr noundef %vsi, ptr noundef %msg, i16 noundef zeroext %msglen) #9
  br label %sw.epilog780

sw.bb487:                                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  %client_pending = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 22
  %296 = ptrtoint ptr %client_pending to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %client_pending, align 8
  %and488 = and i32 %297, -2097153
  store i32 %and488, ptr %client_pending, align 8
  br label %sw.epilog780

sw.bb489:                                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %msglen)
  %cmp491 = icmp eq i16 %msglen, 8
  br i1 %cmp491, label %if.then493, label %do.end498

if.then493:                                       ; preds = %sw.bb489
  call void @__sanitizer_cov_trace_pc() #11
  %298 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %msg, align 8
  %hena494 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 47
  %300 = ptrtoint ptr %hena494 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %hena494, align 8
  br label %sw.epilog780

do.end498:                                        ; preds = %sw.bb489
  call void @__sanitizer_cov_trace_pc() #11
  %pdev499 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %301 = ptrtoint ptr %pdev499 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pdev499, align 4
  %dev500 = getelementptr inbounds %struct.pci_dev, ptr %302, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev500, ptr noundef nonnull @.str.136, i32 noundef 25) #13
  br label %sw.epilog780

sw.bb502:                                         ; preds = %if.end335
  %303 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %msg, align 2
  %conv503 = zext i16 %304 to i32
  %num_req_queues = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 12
  %305 = ptrtoint ptr %num_req_queues to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %num_req_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %306, i32 %conv503)
  %cmp504.not = icmp eq i32 %306, %conv503
  br i1 %cmp504.not, label %sw.bb502.sw.epilog780_crit_edge, label %do.end509

sw.bb502.sw.epilog780_crit_edge:                  ; preds = %sw.bb502
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

do.end509:                                        ; preds = %sw.bb502
  call void @__sanitizer_cov_trace_pc() #11
  %pdev510 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %307 = ptrtoint ptr %pdev510 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %pdev510, align 4
  %dev511 = getelementptr inbounds %struct.pci_dev, ptr %308, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev511, ptr noundef nonnull @.str.139, i32 noundef %306, i32 noundef %conv503) #13
  %309 = ptrtoint ptr %num_req_queues to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %num_req_queues, align 8
  %flags516 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 25
  %310 = ptrtoint ptr %flags516 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %flags516, align 4
  %and517 = and i32 %311, -65537
  store i32 %and517, ptr %flags516, align 4
  br label %sw.epilog780

sw.bb519:                                         ; preds = %if.end335.sw.bb519_crit_edge, %sw.bb101.sw.bb519_crit_edge
  %cloud_filter_list522 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  %312 = ptrtoint ptr %cloud_filter_list522 to i32
  call void @__asan_load4_noabort(i32 %312)
  %.pn10961272 = load ptr, ptr %cloud_filter_list522, align 4
  %cmp529.not1274 = icmp eq ptr %.pn10961272, %cloud_filter_list522
  br i1 %cmp529.not1274, label %sw.bb519.sw.epilog780_crit_edge, label %sw.bb519.for.body532_crit_edge

sw.bb519.for.body532_crit_edge:                   ; preds = %sw.bb519
  br label %for.body532

sw.bb519.sw.epilog780_crit_edge:                  ; preds = %sw.bb519
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

for.body532:                                      ; preds = %for.inc539.for.body532_crit_edge, %sw.bb519.for.body532_crit_edge
  %.pn10961275 = phi ptr [ %.pn1096, %for.inc539.for.body532_crit_edge ], [ %.pn10961272, %sw.bb519.for.body532_crit_edge ]
  %cf520.01276 = getelementptr i8, ptr %.pn10961275, i32 -4
  %313 = ptrtoint ptr %cf520.01276 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %cf520.01276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %314)
  %cmp534 = icmp eq i32 %314, 1
  br i1 %cmp534, label %if.then536, label %for.body532.for.inc539_crit_edge

for.body532.for.inc539_crit_edge:                 ; preds = %for.body532
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc539

if.then536:                                       ; preds = %for.body532
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %cf520.01276 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 3, ptr %cf520.01276, align 4
  br label %for.inc539

for.inc539:                                       ; preds = %if.then536, %for.body532.for.inc539_crit_edge
  %316 = ptrtoint ptr %.pn10961275 to i32
  call void @__asan_load4_noabort(i32 %316)
  %.pn1096 = load ptr, ptr %.pn10961275, align 4
  %cmp529.not = icmp eq ptr %.pn1096, %cloud_filter_list522
  br i1 %cmp529.not, label %for.inc539.sw.epilog780_crit_edge, label %for.inc539.for.body532_crit_edge

for.inc539.for.body532_crit_edge:                 ; preds = %for.inc539
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body532

for.inc539.sw.epilog780_crit_edge:                ; preds = %for.inc539
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

sw.bb546:                                         ; preds = %if.end335.sw.bb546_crit_edge, %sw.bb129.sw.bb546_crit_edge
  %cloud_filter_list550 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 54
  %317 = ptrtoint ptr %cloud_filter_list550 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cloud_filter_list550, align 4
  %cmp562.not1267 = icmp eq ptr %318, %cloud_filter_list550
  br i1 %cmp562.not1267, label %sw.bb546.sw.epilog780_crit_edge, label %for.body565.lr.ph

sw.bb546.sw.epilog780_crit_edge:                  ; preds = %sw.bb546
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

for.body565.lr.ph:                                ; preds = %sw.bb546
  %num_cloud_filters572 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 56
  br label %for.body565

for.body565:                                      ; preds = %for.inc575.for.body565_crit_edge, %for.body565.lr.ph
  %.pn1095.in1268 = phi ptr [ %318, %for.body565.lr.ph ], [ %.pn10951271, %for.inc575.for.body565_crit_edge ]
  %cf547.01270 = getelementptr i8, ptr %.pn1095.in1268, i32 -4
  %319 = ptrtoint ptr %.pn1095.in1268 to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pn10951271 = load ptr, ptr %.pn1095.in1268, align 4
  %320 = ptrtoint ptr %cf547.01270 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %cf547.01270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %321)
  %cmp567 = icmp eq i32 %321, 2
  br i1 %cmp567, label %if.then569, label %for.body565.for.inc575_crit_edge

for.body565.for.inc575_crit_edge:                 ; preds = %for.body565
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575

if.then569:                                       ; preds = %for.body565
  %322 = ptrtoint ptr %cf547.01270 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %cf547.01270, align 4
  %call.i.i1167 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1095.in1268) #9
  br i1 %call.i.i1167, label %if.end.i.i1170, label %if.then569.list_del.exit1172_crit_edge

if.then569.list_del.exit1172_crit_edge:           ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1172

if.end.i.i1170:                                   ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1168 = getelementptr inbounds %struct.list_head, ptr %.pn1095.in1268, i32 0, i32 1
  %323 = ptrtoint ptr %prev.i.i1168 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %prev.i.i1168, align 4
  %325 = ptrtoint ptr %.pn1095.in1268 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %.pn1095.in1268, align 4
  %prev1.i.i.i1169 = getelementptr inbounds %struct.list_head, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %prev1.i.i.i1169 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %324, ptr %prev1.i.i.i1169, align 4
  %328 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile ptr %326, ptr %324, align 4
  br label %list_del.exit1172

list_del.exit1172:                                ; preds = %if.end.i.i1170, %if.then569.list_del.exit1172_crit_edge
  %329 = ptrtoint ptr %.pn1095.in1268 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1095.in1268, align 4
  %prev.i1171 = getelementptr inbounds %struct.list_head, ptr %.pn1095.in1268, i32 0, i32 1
  %330 = ptrtoint ptr %prev.i1171 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1171, align 4
  tail call void @kfree(ptr noundef %cf547.01270) #9
  %331 = ptrtoint ptr %num_cloud_filters572 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %num_cloud_filters572, align 8
  %dec573 = add i16 %332, -1
  store i16 %dec573, ptr %num_cloud_filters572, align 8
  br label %for.inc575

for.inc575:                                       ; preds = %list_del.exit1172, %for.body565.for.inc575_crit_edge
  %cmp562.not = icmp eq ptr %.pn10951271, %cloud_filter_list550
  br i1 %cmp562.not, label %for.inc575.sw.epilog780_crit_edge, label %for.inc575.for.body565_crit_edge

for.inc575.for.body565_crit_edge:                 ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body565

for.inc575.sw.epilog780_crit_edge:                ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

sw.bb582:                                         ; preds = %if.end335
  %fdir_fltr_lock585 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock585) #9
  %fdir_list_head587 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %333 = ptrtoint ptr %fdir_list_head587 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %fdir_list_head587, align 4
  %cmp599.not1260 = icmp eq ptr %334, %fdir_list_head587
  br i1 %cmp599.not1260, label %sw.bb582.for.end635_crit_edge, label %for.body602.lr.ph

sw.bb582.for.end635_crit_edge:                    ; preds = %sw.bb582
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end635

for.body602.lr.ph:                                ; preds = %sw.bb582
  %status = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %msg, i32 0, i32 4
  %pdev621 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %fdir_active_fltr625 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 57
  %flow_id = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %msg, i32 0, i32 2
  br label %for.body602

for.body602:                                      ; preds = %for.inc629.for.body602_crit_edge, %for.body602.lr.ph
  %.pn1094.in1261 = phi ptr [ %334, %for.body602.lr.ph ], [ %.pn10941264, %for.inc629.for.body602_crit_edge ]
  %fdir583.01263 = getelementptr i8, ptr %.pn1094.in1261, i32 -4
  %335 = ptrtoint ptr %.pn1094.in1261 to i32
  call void @__asan_load4_noabort(i32 %335)
  %.pn10941264 = load ptr, ptr %.pn1094.in1261, align 4
  %336 = ptrtoint ptr %fdir583.01263 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %fdir583.01263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %337)
  %cmp604 = icmp eq i32 %337, 1
  br i1 %cmp604, label %if.then606, label %for.body602.for.inc629_crit_edge

for.body602.for.inc629_crit_edge:                 ; preds = %for.body602
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc629

if.then606:                                       ; preds = %for.body602
  %338 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp607 = icmp eq i32 %339, 0
  %340 = ptrtoint ptr %pdev621 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %pdev621, align 4
  %dev614 = getelementptr inbounds %struct.pci_dev, ptr %341, i32 0, i32 44
  br i1 %cmp607, label %do.end612, label %do.end620

do.end612:                                        ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #11
  %loc = getelementptr i8, ptr %.pn1094.in1261, i32 148
  %342 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %loc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev614, ptr noundef nonnull @.str.142, i32 noundef %343) #13
  %344 = ptrtoint ptr %fdir583.01263 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 4, ptr %fdir583.01263, align 4
  %345 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %flow_id, align 4
  %flow_id616 = getelementptr i8, ptr %.pn1094.in1261, i32 144
  %347 = ptrtoint ptr %flow_id616 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %flow_id616, align 4
  br label %for.inc629

do.end620:                                        ; preds = %if.then606
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev614, ptr noundef nonnull @.str.145, i32 noundef %339) #13
  tail call void @iavf_print_fdir_fltr(ptr noundef %adapter, ptr noundef %fdir583.01263) #9
  %call.i.i1173 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1094.in1261) #9
  br i1 %call.i.i1173, label %if.end.i.i1176, label %do.end620.list_del.exit1178_crit_edge

do.end620.list_del.exit1178_crit_edge:            ; preds = %do.end620
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1178

if.end.i.i1176:                                   ; preds = %do.end620
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1174 = getelementptr inbounds %struct.list_head, ptr %.pn1094.in1261, i32 0, i32 1
  %348 = ptrtoint ptr %prev.i.i1174 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %prev.i.i1174, align 4
  %350 = ptrtoint ptr %.pn1094.in1261 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %.pn1094.in1261, align 4
  %prev1.i.i.i1175 = getelementptr inbounds %struct.list_head, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %prev1.i.i.i1175 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %349, ptr %prev1.i.i.i1175, align 4
  %353 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %353)
  store volatile ptr %351, ptr %349, align 4
  br label %list_del.exit1178

list_del.exit1178:                                ; preds = %if.end.i.i1176, %do.end620.list_del.exit1178_crit_edge
  %354 = ptrtoint ptr %.pn1094.in1261 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1094.in1261, align 4
  %prev.i1177 = getelementptr inbounds %struct.list_head, ptr %.pn1094.in1261, i32 0, i32 1
  %355 = ptrtoint ptr %prev.i1177 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1177, align 4
  tail call void @kfree(ptr noundef %fdir583.01263) #9
  %356 = ptrtoint ptr %fdir_active_fltr625 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %fdir_active_fltr625, align 2
  %dec626 = add i16 %357, -1
  store i16 %dec626, ptr %fdir_active_fltr625, align 2
  br label %for.inc629

for.inc629:                                       ; preds = %list_del.exit1178, %do.end612, %for.body602.for.inc629_crit_edge
  %cmp599.not = icmp eq ptr %.pn10941264, %fdir_list_head587
  br i1 %cmp599.not, label %for.inc629.for.end635_crit_edge, label %for.inc629.for.body602_crit_edge

for.inc629.for.body602_crit_edge:                 ; preds = %for.inc629
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body602

for.inc629.for.end635_crit_edge:                  ; preds = %for.inc629
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end635

for.end635:                                       ; preds = %for.inc629.for.end635_crit_edge, %sw.bb582.for.end635_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock585) #9
  br label %sw.epilog780

sw.bb637:                                         ; preds = %if.end335
  %fdir_fltr_lock640 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock640) #9
  %fdir_list_head642 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %358 = ptrtoint ptr %fdir_list_head642 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %fdir_list_head642, align 4
  %cmp654.not1253 = icmp eq ptr %359, %fdir_list_head642
  br i1 %cmp654.not1253, label %sw.bb637.for.end691_crit_edge, label %for.body657.lr.ph

sw.bb637.for.end691_crit_edge:                    ; preds = %sw.bb637
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end691

for.body657.lr.ph:                                ; preds = %sw.bb637
  %status662 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %msg, i32 0, i32 3
  %pdev680 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %fdir_active_fltr673 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 57
  br label %for.body657

for.body657:                                      ; preds = %for.inc685.for.body657_crit_edge, %for.body657.lr.ph
  %.pn1093.in1254 = phi ptr [ %359, %for.body657.lr.ph ], [ %.pn10931257, %for.inc685.for.body657_crit_edge ]
  %fdir638.01256 = getelementptr i8, ptr %.pn1093.in1254, i32 -4
  %360 = ptrtoint ptr %.pn1093.in1254 to i32
  call void @__asan_load4_noabort(i32 %360)
  %.pn10931257 = load ptr, ptr %.pn1093.in1254, align 4
  %361 = ptrtoint ptr %fdir638.01256 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %fdir638.01256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %362)
  %cmp659 = icmp eq i32 %362, 3
  br i1 %cmp659, label %if.then661, label %for.body657.for.inc685_crit_edge

for.body657.for.inc685_crit_edge:                 ; preds = %for.body657
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc685

if.then661:                                       ; preds = %for.body657
  %363 = ptrtoint ptr %status662 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %status662, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp663 = icmp eq i32 %364, 0
  br i1 %cmp663, label %do.end668, label %if.else675

do.end668:                                        ; preds = %if.then661
  %365 = ptrtoint ptr %pdev680 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %pdev680, align 4
  %dev670 = getelementptr inbounds %struct.pci_dev, ptr %366, i32 0, i32 44
  %loc671 = getelementptr i8, ptr %.pn1093.in1254, i32 148
  %367 = ptrtoint ptr %loc671 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %loc671, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev670, ptr noundef nonnull @.str.148, i32 noundef %368) #13
  %call.i.i1179 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1093.in1254) #9
  br i1 %call.i.i1179, label %if.end.i.i1182, label %do.end668.list_del.exit1184_crit_edge

do.end668.list_del.exit1184_crit_edge:            ; preds = %do.end668
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1184

if.end.i.i1182:                                   ; preds = %do.end668
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1180 = getelementptr inbounds %struct.list_head, ptr %.pn1093.in1254, i32 0, i32 1
  %369 = ptrtoint ptr %prev.i.i1180 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %prev.i.i1180, align 4
  %371 = ptrtoint ptr %.pn1093.in1254 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %.pn1093.in1254, align 4
  %prev1.i.i.i1181 = getelementptr inbounds %struct.list_head, ptr %372, i32 0, i32 1
  %373 = ptrtoint ptr %prev1.i.i.i1181 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %370, ptr %prev1.i.i.i1181, align 4
  %374 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %374)
  store volatile ptr %372, ptr %370, align 4
  br label %list_del.exit1184

list_del.exit1184:                                ; preds = %if.end.i.i1182, %do.end668.list_del.exit1184_crit_edge
  %375 = ptrtoint ptr %.pn1093.in1254 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1093.in1254, align 4
  %prev.i1183 = getelementptr inbounds %struct.list_head, ptr %.pn1093.in1254, i32 0, i32 1
  %376 = ptrtoint ptr %prev.i1183 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1183, align 4
  tail call void @kfree(ptr noundef %fdir638.01256) #9
  %377 = ptrtoint ptr %fdir_active_fltr673 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %fdir_active_fltr673, align 2
  %dec674 = add i16 %378, -1
  store i16 %dec674, ptr %fdir_active_fltr673, align 2
  br label %for.inc685

if.else675:                                       ; preds = %if.then661
  call void @__sanitizer_cov_trace_pc() #11
  %379 = ptrtoint ptr %fdir638.01256 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 4, ptr %fdir638.01256, align 4
  %380 = ptrtoint ptr %pdev680 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pdev680, align 4
  %dev681 = getelementptr inbounds %struct.pci_dev, ptr %381, i32 0, i32 44
  %382 = ptrtoint ptr %status662 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %status662, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev681, ptr noundef nonnull @.str.151, i32 noundef %383) #13
  tail call void @iavf_print_fdir_fltr(ptr noundef %adapter, ptr noundef %fdir638.01256) #9
  br label %for.inc685

for.inc685:                                       ; preds = %if.else675, %list_del.exit1184, %for.body657.for.inc685_crit_edge
  %cmp654.not = icmp eq ptr %.pn10931257, %fdir_list_head642
  br i1 %cmp654.not, label %for.inc685.for.end691_crit_edge, label %for.inc685.for.body657_crit_edge

for.inc685.for.body657_crit_edge:                 ; preds = %for.inc685
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body657

for.inc685.for.end691_crit_edge:                  ; preds = %for.inc685
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end691

for.end691:                                       ; preds = %for.inc685.for.end691_crit_edge, %sw.bb637.for.end691_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock640) #9
  br label %sw.epilog780

sw.bb693:                                         ; preds = %if.end335
  %adv_rss_lock695 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock695) #9
  %adv_rss_list_head697 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  %384 = ptrtoint ptr %adv_rss_list_head697 to i32
  call void @__asan_load4_noabort(i32 %384)
  %.pn10921246 = load ptr, ptr %adv_rss_list_head697, align 4
  %cmp704.not1248 = icmp eq ptr %.pn10921246, %adv_rss_list_head697
  br i1 %cmp704.not1248, label %sw.bb693.for.end720_crit_edge, label %sw.bb693.for.body707_crit_edge

sw.bb693.for.body707_crit_edge:                   ; preds = %sw.bb693
  br label %for.body707

sw.bb693.for.end720_crit_edge:                    ; preds = %sw.bb693
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end720

for.body707:                                      ; preds = %for.inc714.for.body707_crit_edge, %sw.bb693.for.body707_crit_edge
  %.pn10921249 = phi ptr [ %.pn1092, %for.inc714.for.body707_crit_edge ], [ %.pn10921246, %sw.bb693.for.body707_crit_edge ]
  %rss694.01250 = getelementptr i8, ptr %.pn10921249, i32 -4
  %385 = ptrtoint ptr %rss694.01250 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %rss694.01250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %386)
  %cmp709 = icmp eq i32 %386, 1
  br i1 %cmp709, label %if.then711, label %for.body707.for.inc714_crit_edge

for.body707.for.inc714_crit_edge:                 ; preds = %for.body707
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc714

if.then711:                                       ; preds = %for.body707
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iavf_print_adv_rss_cfg(ptr noundef %adapter, ptr noundef %rss694.01250, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.153) #9
  %387 = ptrtoint ptr %rss694.01250 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 4, ptr %rss694.01250, align 8
  br label %for.inc714

for.inc714:                                       ; preds = %if.then711, %for.body707.for.inc714_crit_edge
  %388 = ptrtoint ptr %.pn10921249 to i32
  call void @__asan_load4_noabort(i32 %388)
  %.pn1092 = load ptr, ptr %.pn10921249, align 4
  %cmp704.not = icmp eq ptr %.pn1092, %adv_rss_list_head697
  br i1 %cmp704.not, label %for.inc714.for.end720_crit_edge, label %for.inc714.for.body707_crit_edge

for.inc714.for.body707_crit_edge:                 ; preds = %for.inc714
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body707

for.inc714.for.end720_crit_edge:                  ; preds = %for.inc714
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end720

for.end720:                                       ; preds = %for.inc714.for.end720_crit_edge, %sw.bb693.for.end720_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock695) #9
  br label %sw.epilog780

sw.bb722:                                         ; preds = %if.end335
  %adv_rss_lock725 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock725) #9
  %adv_rss_list_head727 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  %389 = ptrtoint ptr %adv_rss_list_head727 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %adv_rss_list_head727, align 8
  %cmp739.not1241 = icmp eq ptr %390, %adv_rss_list_head727
  br i1 %cmp739.not1241, label %sw.bb722.for.end755_crit_edge, label %sw.bb722.for.body742_crit_edge

sw.bb722.for.body742_crit_edge:                   ; preds = %sw.bb722
  br label %for.body742

sw.bb722.for.end755_crit_edge:                    ; preds = %sw.bb722
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end755

for.body742:                                      ; preds = %for.inc749.for.body742_crit_edge, %sw.bb722.for.body742_crit_edge
  %.pn.in1242 = phi ptr [ %.pn1245, %for.inc749.for.body742_crit_edge ], [ %390, %sw.bb722.for.body742_crit_edge ]
  %rss723.01244 = getelementptr i8, ptr %.pn.in1242, i32 -4
  %391 = ptrtoint ptr %.pn.in1242 to i32
  call void @__asan_load4_noabort(i32 %391)
  %.pn1245 = load ptr, ptr %.pn.in1242, align 4
  %392 = ptrtoint ptr %rss723.01244 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %rss723.01244, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %393)
  %cmp744 = icmp eq i32 %393, 3
  br i1 %cmp744, label %if.then746, label %for.body742.for.inc749_crit_edge

for.body742.for.inc749_crit_edge:                 ; preds = %for.body742
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc749

if.then746:                                       ; preds = %for.body742
  %call.i.i1185 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in1242) #9
  br i1 %call.i.i1185, label %if.end.i.i1188, label %if.then746.list_del.exit1190_crit_edge

if.then746.list_del.exit1190_crit_edge:           ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit1190

if.end.i.i1188:                                   ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i1186 = getelementptr inbounds %struct.list_head, ptr %.pn.in1242, i32 0, i32 1
  %394 = ptrtoint ptr %prev.i.i1186 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %prev.i.i1186, align 4
  %396 = ptrtoint ptr %.pn.in1242 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %.pn.in1242, align 4
  %prev1.i.i.i1187 = getelementptr inbounds %struct.list_head, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %prev1.i.i.i1187 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %395, ptr %prev1.i.i.i1187, align 4
  %399 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %399)
  store volatile ptr %397, ptr %395, align 4
  br label %list_del.exit1190

list_del.exit1190:                                ; preds = %if.end.i.i1188, %if.then746.list_del.exit1190_crit_edge
  %400 = ptrtoint ptr %.pn.in1242 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in1242, align 4
  %prev.i1189 = getelementptr inbounds %struct.list_head, ptr %.pn.in1242, i32 0, i32 1
  %401 = ptrtoint ptr %prev.i1189 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1189, align 4
  tail call void @kfree(ptr noundef %rss723.01244) #9
  br label %for.inc749

for.inc749:                                       ; preds = %list_del.exit1190, %for.body742.for.inc749_crit_edge
  %cmp739.not = icmp eq ptr %.pn1245, %adv_rss_list_head727
  br i1 %cmp739.not, label %for.inc749.for.end755_crit_edge, label %for.inc749.for.body742_crit_edge

for.inc749.for.body742_crit_edge:                 ; preds = %for.inc749
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body742

for.inc749.for.end755_crit_edge:                  ; preds = %for.inc749
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end755

for.end755:                                       ; preds = %for.inc749.for.end755_crit_edge, %sw.bb722.for.end755_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock725) #9
  br label %sw.epilog780

sw.bb757:                                         ; preds = %if.end335
  br i1 %tobool44.not, label %if.then759, label %sw.bb757.sw.epilog780_crit_edge

sw.bb757.sw.epilog780_crit_edge:                  ; preds = %sw.bb757
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.then759:                                       ; preds = %sw.bb757
  call void @__sanitizer_cov_trace_pc() #11
  %features.i1191 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %402 = ptrtoint ptr %features.i1191 to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %features.i1191, align 16
  %and.sink.i1193 = or i64 %403, 256
  store i64 %and.sink.i1193, ptr %features.i1191, align 16
  br label %sw.epilog780

sw.bb761:                                         ; preds = %if.end335
  br i1 %tobool44.not, label %if.then763, label %sw.bb761.sw.epilog780_crit_edge

sw.bb761.sw.epilog780_crit_edge:                  ; preds = %sw.bb761
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

if.then763:                                       ; preds = %sw.bb761
  call void @__sanitizer_cov_trace_pc() #11
  %features.i1194 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %404 = ptrtoint ptr %features.i1194 to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %features.i1194, align 16
  %and.i1195 = and i64 %405, -257
  store i64 %and.i1195, ptr %features.i1194, align 16
  br label %sw.epilog780

sw.default765:                                    ; preds = %if.end335.sw.default765_crit_edge, %do.end92, %do.end81, %do.end73, %do.end65, %do.end49
  %current_op766 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %406 = ptrtoint ptr %current_op766 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %current_op766, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %tobool767.not = icmp eq i32 %407, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %407, i32 %v_opcode)
  %cmp770.not = icmp eq i32 %407, %v_opcode
  %or.cond = or i1 %tobool767.not, %cmp770.not
  br i1 %or.cond, label %sw.default765.sw.epilog780_crit_edge, label %do.end775

sw.default765.sw.epilog780_crit_edge:             ; preds = %sw.default765
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog780

do.end775:                                        ; preds = %sw.default765
  call void @__sanitizer_cov_trace_pc() #11
  %pdev776 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %408 = ptrtoint ptr %pdev776 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %pdev776, align 4
  %dev777 = getelementptr inbounds %struct.pci_dev, ptr %409, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev777, ptr noundef nonnull @.str.155, i32 noundef %407, i32 noundef %v_opcode) #13
  br label %sw.epilog780

sw.epilog780:                                     ; preds = %do.end775, %sw.default765.sw.epilog780_crit_edge, %if.then763, %sw.bb761.sw.epilog780_crit_edge, %if.then759, %sw.bb757.sw.epilog780_crit_edge, %for.end755, %for.end720, %for.end691, %for.end635, %for.inc575.sw.epilog780_crit_edge, %sw.bb546.sw.epilog780_crit_edge, %for.inc539.sw.epilog780_crit_edge, %sw.bb519.sw.epilog780_crit_edge, %do.end509, %sw.bb502.sw.epilog780_crit_edge, %do.end498, %if.then493, %sw.bb487, %if.then485, %land.lhs.true.sw.epilog780_crit_edge, %sw.bb481.sw.epilog780_crit_edge, %sw.bb476.sw.epilog780_crit_edge, %if.then474, %sw.bb470.sw.epilog780_crit_edge, %sw.bb467, %if.end463, %if.end439.sw.epilog780_crit_edge, %sw.bb352, %if.then346, %if.end339.sw.epilog780_crit_edge, %sw.bb761.thread, %sw.bb757.thread
  %current_op781 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 38
  %410 = ptrtoint ptr %current_op781 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %current_op781, align 8
  br label %cleanup782

cleanup782:                                       ; preds = %sw.epilog780, %sw.bb476.cleanup782_crit_edge, %do.end39, %if.then28, %do.end.cleanup782_crit_edge, %if.end29.i, %if.end.i.cleanup782_crit_edge, %if.then.i1111, %if.end13.cleanup782_crit_edge, %if.then9.cleanup782_crit_edge, %iavf_set_adapter_link_speed_from_vpe.exit.cleanup782_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_start_all_queues(ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.05, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #9
  %inc = add nuw i32 %i.05, 1
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iavf_stat_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_mac_add_reject(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %mac_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 6
  %2 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_filter_list, align 4
  %cmp.not36 = icmp eq ptr %3, %mac_filter_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.037 = phi ptr [ %3, %for.body.lr.ph ], [ %ftmp.040, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %f.037 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ftmp.040 = load ptr, ptr %f.037, align 4
  %5 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.037, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 2
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %macaddr = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.037, i32 0, i32 1
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macaddr, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %xor.i = xor i32 %13, %11
  %add.ptr.i = getelementptr %struct.iavf_mac_filter, ptr %f.037, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %9, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %if.endthread-pre-split

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear10 = and i8 %bf.load, -65
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.clear10, ptr %5, align 2
  br label %if.end

if.endthread-pre-split:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load11.pr = load i8, ptr %5, align 2
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then, %for.body.if.end_crit_edge
  %bf.load11 = phi i8 [ %bf.load11.pr, %if.endthread-pre-split ], [ %bf.clear10, %if.then ], [ %bf.load, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load11)
  %tobool13.not = icmp sgt i8 %bf.load11, -1
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.037) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %f.037, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %f.037 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %26 = ptrtoint ptr %f.037 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %f.037, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f.037, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %f.037) #9
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.end.for.inc_crit_edge
  %cmp.not = icmp eq ptr %ftmp.040, %mac_filter_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_print_fdir_fltr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_mac_add_ok(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_vlan_list_lock = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_vlan_list_lock) #9
  %mac_filter_list = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %mac_filter_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_filter_list, align 4
  %cmp.not19 = icmp eq ptr %1, %mac_filter_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %f.020 = phi ptr [ %ftmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %f.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ftmp.0 = load ptr, ptr %f.020, align 4
  %3 = getelementptr inbounds %struct.iavf_mac_filter, ptr %f.020, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %3, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %3, align 2
  %cmp.not = icmp eq ptr %ftmp.0, %mac_filter_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_vlan_list_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iavf_add_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_parse_vf_resource_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_process_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_irq_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_free_all_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_free_all_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_change_state(ptr nocapture noundef %adapter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state1 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 30
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %last_state = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 31
  %2 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %last_state, align 8
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %state1, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_change_state.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_change_state, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !367

if.then6:                                         ; preds = %do.body
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %last_state7 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 31
  %6 = ptrtoint ptr %last_state7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %8 = icmp ult i32 %7, 14
  br i1 %8, label %switch.lookup, label %if.then6.iavf_state_str.exit_crit_edge

if.then6.iavf_state_str.exit_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_state_str.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [14 x ptr], ptr @switch.table.iavf_change_state, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iavf_state_str.exit

iavf_state_str.exit:                              ; preds = %switch.lookup, %if.then6.iavf_state_str.exit_crit_edge
  %retval.0.i1 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.200, %if.then6.iavf_state_str.exit_crit_edge ]
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %12 = icmp ult i32 %11, 14
  br i1 %12, label %switch.lookup17, label %iavf_state_str.exit.iavf_state_str.exit15_crit_edge

iavf_state_str.exit.iavf_state_str.exit15_crit_edge: ; preds = %iavf_state_str.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_state_str.exit15

switch.lookup17:                                  ; preds = %iavf_state_str.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep18 = getelementptr inbounds [14 x ptr], ptr @switch.table.iavf_change_state.201, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load19 = load ptr, ptr %switch.gep18, align 4
  br label %iavf_state_str.exit15

iavf_state_str.exit15:                            ; preds = %switch.lookup17, %iavf_state_str.exit.iavf_state_str.exit15_crit_edge
  %retval.0.i14 = phi ptr [ %switch.load19, %switch.lookup17 ], [ @.str.200, %iavf_state_str.exit.iavf_state_str.exit15_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_change_state.__UNIQUE_ID_ddebug525, ptr noundef %dev, ptr noundef nonnull @.str.187, ptr noundef nonnull %retval.0.i1, ptr noundef nonnull %retval.0.i14) #9
  br label %do.end

do.end:                                           ; preds = %iavf_state_str.exit15, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_notify_client_message(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_aq_send_msg_to_pf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iavf_aq_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !227, !228, !229, !231, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @iavf_verify_api_ver._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @iavf_verify_api_ver._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 307, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @iavf_configure_queues._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @iavf_configure_queues._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 362, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iavf_enable_queues._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @iavf_enable_queues._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 387, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iavf_disable_queues._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @iavf_disable_queues._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 417, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iavf_map_queues._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @iavf_map_queues._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 472, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @iavf_add_ether_addrs._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @iavf_add_ether_addrs._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 492, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @iavf_add_ether_addrs._entry.16, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @iavf_add_ether_addrs._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 542, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iavf_del_ether_addrs._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iavf_del_ether_addrs._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 562, i32 3}
!46 = !{ptr @iavf_del_ether_addrs._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iavf_del_ether_addrs._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 651, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iavf_add_vlans._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @iavf_add_vlans._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 675, i32 4}
!55 = !{ptr @iavf_add_vlans._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @iavf_add_vlans._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @iavf_add_vlans._entry.30, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 713, i32 4}
!59 = !{ptr @iavf_add_vlans._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 777, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iavf_del_vlans._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @iavf_del_vlans._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 811, i32 4}
!67 = !{ptr @iavf_del_vlans._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @iavf_del_vlans._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @iavf_del_vlans._entry.37, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 851, i32 4}
!71 = !{ptr @iavf_del_vlans._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 917, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iavf_set_promiscuous._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @iavf_set_promiscuous._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 927, i32 3}
!79 = !{ptr @iavf_set_promiscuous._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @iavf_set_promiscuous._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 933, i32 3}
!83 = !{ptr @iavf_set_promiscuous._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @iavf_set_promiscuous._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 941, i32 4}
!87 = !{ptr @iavf_set_promiscuous._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iavf_set_promiscuous._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 947, i32 4}
!91 = !{ptr @iavf_set_promiscuous._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @iavf_set_promiscuous._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 994, i32 3}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iavf_get_hena._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iavf_get_hena._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1015, i32 3}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iavf_set_hena._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @iavf_set_hena._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1039, i32 3}
!105 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iavf_set_rss_key._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @iavf_set_rss_key._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1071, i32 3}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @iavf_set_rss_lut._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @iavf_set_rss_lut._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1099, i32 3}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @iavf_enable_vlan_stripping._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @iavf_enable_vlan_stripping._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1118, i32 3}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @iavf_disable_vlan_stripping._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @iavf_disable_vlan_stripping._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1452, i32 3}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @iavf_enable_channels._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @iavf_enable_channels._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1488, i32 3}
!130 = !{ptr @iavf_disable_channels._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @iavf_disable_channels._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1549, i32 3}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @iavf_add_cloud_filter._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @iavf_add_cloud_filter._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1597, i32 3}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @iavf_del_cloud_filter._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @iavf_del_cloud_filter._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1646, i32 3}
!144 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @iavf_add_fdir_filter._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @iavf_add_fdir_filter._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1696, i32 3}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @iavf_del_fdir_filter._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @iavf_del_fdir_filter._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1741, i32 3}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @iavf_add_adv_rss_cfg._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @iavf_add_adv_rss_cfg._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1758, i32 13}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1759, i32 13}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1792, i32 3}
!163 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @iavf_del_adv_rss_cfg._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @iavf_del_adv_rss_cfg._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1915, i32 4}
!168 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @iavf_virtchnl_completion._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @iavf_virtchnl_completion._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1918, i32 5}
!173 = !{ptr @iavf_virtchnl_completion._entry.84, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @iavf_virtchnl_completion._entry_ptr.86, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1923, i32 4}
!177 = !{ptr @iavf_virtchnl_completion._entry.87, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @iavf_virtchnl_completion._entry_ptr.89, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1932, i32 4}
!181 = !{ptr @iavf_virtchnl_completion._entry.90, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @iavf_virtchnl_completion._entry_ptr.92, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1936, i32 4}
!185 = !{ptr @iavf_virtchnl_completion._entry.93, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @iavf_virtchnl_completion._entry_ptr.95, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1943, i32 4}
!189 = !{ptr @iavf_virtchnl_completion._entry.96, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @iavf_virtchnl_completion._entry_ptr.98, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1947, i32 4}
!193 = !{ptr @iavf_virtchnl_completion._entry.99, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @iavf_virtchnl_completion._entry_ptr.101, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1951, i32 4}
!197 = !{ptr @iavf_virtchnl_completion._entry.102, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @iavf_virtchnl_completion._entry_ptr.104, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.106, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1959, i32 4}
!201 = !{ptr @iavf_virtchnl_completion._entry.105, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @iavf_virtchnl_completion._entry_ptr.107, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1973, i32 6}
!205 = !{ptr @iavf_virtchnl_completion._entry.108, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @iavf_virtchnl_completion._entry_ptr.110, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.112, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1992, i32 6}
!209 = !{ptr @iavf_virtchnl_completion._entry.111, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @iavf_virtchnl_completion._entry_ptr.113, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2009, i32 6}
!213 = !{ptr @iavf_virtchnl_completion._entry.114, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @iavf_virtchnl_completion._entry_ptr.116, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2014, i32 7}
!217 = !{ptr @iavf_virtchnl_completion._entry.117, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @iavf_virtchnl_completion._entry_ptr.119, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.121, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2032, i32 6}
!221 = !{ptr @iavf_virtchnl_completion._entry.120, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @iavf_virtchnl_completion._entry_ptr.122, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.123, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2050, i32 15}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2067, i32 6}
!227 = !{ptr @iavf_virtchnl_completion._entry.124, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @iavf_virtchnl_completion._entry_ptr.126, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2076, i32 4}
!231 = !{ptr @iavf_virtchnl_completion._entry.127, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @iavf_virtchnl_completion._entry_ptr.129, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @iavf_virtchnl_completion._entry.130, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2083, i32 4}
!235 = !{ptr @iavf_virtchnl_completion._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2090, i32 4}
!238 = !{ptr @iavf_virtchnl_completion._entry.132, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @iavf_virtchnl_completion._entry_ptr.134, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.136, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2219, i32 4}
!242 = !{ptr @iavf_virtchnl_completion._entry.135, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @iavf_virtchnl_completion._entry_ptr.137, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2228, i32 4}
!246 = !{ptr @iavf_virtchnl_completion._entry.138, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @iavf_virtchnl_completion._entry_ptr.140, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2270, i32 6}
!250 = !{ptr @iavf_virtchnl_completion._entry.141, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @iavf_virtchnl_completion._entry_ptr.143, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2275, i32 6}
!254 = !{ptr @iavf_virtchnl_completion._entry.144, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @iavf_virtchnl_completion._entry_ptr.146, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.148, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2296, i32 6}
!258 = !{ptr @iavf_virtchnl_completion._entry.147, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @iavf_virtchnl_completion._entry_ptr.149, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.151, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2303, i32 6}
!262 = !{ptr @iavf_virtchnl_completion._entry.150, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @iavf_virtchnl_completion._entry_ptr.152, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.153, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2320, i32 14}
!266 = !{ptr @.str.155, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 2357, i32 4}
!268 = !{ptr @iavf_virtchnl_completion._entry.154, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @iavf_virtchnl_completion._entry_ptr.156, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.157, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 32, i32 3}
!272 = !{ptr @.str.158, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.159, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @iavf_send_pf_msg.__UNIQUE_ID_ddebug526, !271, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!275 = !{ptr @.str.160, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 185, i32 3}
!277 = !{ptr @.str.161, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @iavf_validate_num_queues._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @iavf_validate_num_queues._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.163, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 188, i32 3}
!282 = !{ptr @iavf_validate_num_queues._entry.162, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @iavf_validate_num_queues._entry_ptr.164, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.165, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1256, i32 3}
!286 = !{ptr @.str.166, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @iavf_send_vlan_offload_v2._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @iavf_send_vlan_offload_v2._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.167, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1236, i32 3}
!291 = !{ptr @.str.168, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @iavf_clear_offload_v2_aq_required._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @iavf_clear_offload_v2_aq_required._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.169, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1171, i32 3}
!296 = !{ptr @.str.170, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @iavf_set_vc_offload_ethertype._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @iavf_set_vc_offload_ethertype._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.171, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1184, i32 3}
!301 = !{ptr @iavf_set_vc_offload_ethertype.__UNIQUE_ID_ddebug531, !300, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!302 = !{ptr @.str.172, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1340, i32 23}
!304 = !{ptr @.str.173, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1386, i32 43}
!306 = !{ptr @.str.174, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1389, i32 43}
!308 = !{ptr @.str.175, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1390, i32 30}
!310 = distinct !{null, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1392, i32 42}
!312 = !{ptr @.str.177, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1392, i32 48}
!314 = !{ptr @.str.178, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1395, i32 22}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1398, i32 22}
!318 = !{ptr @.str.180, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1512, i32 3}
!320 = !{ptr @.str.181, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @iavf_print_cloud_filter._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @iavf_print_cloud_filter._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.183, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/intel/iavf/iavf_virtchnl.c", i32 1522, i32 3}
!325 = !{ptr @iavf_print_cloud_filter._entry.182, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @iavf_print_cloud_filter._entry_ptr.184, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.185, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 474, i32 2}
!329 = !{ptr @.str.186, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.187, !328, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @iavf_change_state.__UNIQUE_ID_ddebug525, !328, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!332 = !{ptr @.str.188, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 439, i32 10}
!334 = !{ptr @.str.189, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 441, i32 10}
!336 = !{ptr @.str.190, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 443, i32 10}
!338 = !{ptr @.str.191, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 445, i32 10}
!340 = !{ptr @.str.192, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 447, i32 10}
!342 = !{ptr @.str.193, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 449, i32 10}
!344 = !{ptr @.str.194, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 451, i32 10}
!346 = !{ptr @.str.195, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 453, i32 10}
!348 = !{ptr @.str.196, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 455, i32 10}
!350 = !{ptr @.str.197, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 457, i32 10}
!352 = !{ptr @.str.198, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 459, i32 10}
!354 = !{ptr @.str.199, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 461, i32 10}
!356 = !{ptr @.str.200, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/intel/iavf/iavf.h", i32 463, i32 10}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 2149038341, i64 2149038346, i64 2149038359, i64 2149038403, i64 2149038437, i64 2149038458}
!368 = !{i8 0, i8 2}
