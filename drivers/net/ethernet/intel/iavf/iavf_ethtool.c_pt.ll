; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iavf_stats = type { [32 x i8], i32, i32 }
%struct.iavf_priv_flags = type { [32 x i8], i32, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.158, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.158 = type { ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iavf_ring = type { ptr, ptr, ptr, ptr, %union.anon.155, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.iavf_queue_stats, %struct.u64_stats_sync, %union.anon.157, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, [64 x i8] }
%union.anon.155 = type { ptr }
%struct.iavf_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.157 = type { %struct.iavf_tx_queue_stats }
%struct.iavf_tx_queue_stats = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.143, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.143 = type { i32 }
%struct.virtchnl_vf_resource = type { i16, i16, i16, i16, i32, i32, i32, [1 x %struct.virtchnl_vsi_resource] }
%struct.virtchnl_vsi_resource = type { i16, i16, i32, i16, [6 x i8] }
%struct.iavf_fdir_fltr = type { i32, %struct.list_head, i32, %struct.iavf_fdir_eth, %struct.iavf_fdir_eth, %struct.iavf_fdir_ip, %struct.iavf_fdir_ip, %struct.iavf_fdir_extra, %struct.iavf_fdir_extra, i32, i8, i8, [2 x %struct.iavf_flex_word], i32, i32, i32, %struct.virtchnl_fdir_add }
%struct.iavf_fdir_eth = type { i16 }
%struct.iavf_fdir_ip = type { %union.anon.161, i16, i16, i32, i32, %union.anon.162, i8 }
%union.anon.161 = type { %struct.iavf_ipv6_addrs }
%struct.iavf_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.162 = type { i8 }
%struct.iavf_fdir_extra = type { [2 x i32] }
%struct.iavf_flex_word = type { i16, i16 }
%struct.virtchnl_fdir_add = type { i16, i16, i32, %struct.virtchnl_fdir_rule, i32 }
%struct.virtchnl_fdir_rule = type { %struct.virtchnl_proto_hdrs, %struct.virtchnl_filter_action_set }
%struct.virtchnl_proto_hdrs = type { i8, [3 x i8], i32, [32 x %struct.virtchnl_proto_hdr] }
%struct.virtchnl_proto_hdr = type { i32, i32, [64 x i8] }
%struct.virtchnl_filter_action_set = type { i32, [8 x %struct.virtchnl_filter_action] }
%struct.virtchnl_filter_action = type { i32, %union.anon.163 }
%union.anon.163 = type { %struct.anon.165, [24 x i8] }
%struct.anon.165 = type { i8, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
%struct.iavf_adv_rss = type { i32, %struct.list_head, i32, i64, %struct.virtchnl_rss_cfg }
%struct.virtchnl_rss_cfg = type { %struct.virtchnl_proto_hdrs, i32, [128 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.144, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.144 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.159, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.159 = type { ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.iavf_q_vector = type { ptr, ptr, %struct.napi_struct, %struct.iavf_ring_container, %struct.iavf_ring_container, i32, i8, i8, i16, i16, [31 x i8], i8, %struct.cpumask, %struct.irq_affinity_notify }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.iavf_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.__va_list = type { ptr }

@iavf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1723, i32 0, ptr @iavf_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @iavf_get_msglevel, ptr @iavf_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @iavf_get_coalesce, ptr @iavf_set_coalesce, ptr @iavf_get_ringparam, ptr @iavf_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @iavf_get_strings, ptr null, ptr @iavf_get_ethtool_stats, ptr null, ptr null, ptr @iavf_get_priv_flags, ptr @iavf_set_priv_flags, ptr @iavf_get_sset_count, ptr @iavf_get_rxnfc, ptr @iavf_set_rxnfc, ptr null, ptr null, ptr @iavf_get_rxfh_key_size, ptr @iavf_get_rxfh_indir_size, ptr @iavf_get_rxfh, ptr @iavf_set_rxfh, ptr null, ptr null, ptr @iavf_get_channels, ptr @iavf_set_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iavf_get_per_queue_coalesce, ptr @iavf_set_per_queue_coalesce, ptr @iavf_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@iavf_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"rx-usecs=0, need to disable adaptive-rx for a complete disable\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid value, rx-usecs range is 0-8160\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"tx-usecs=0, need to disable adaptive-tx for a complete disable\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid value, tx-usecs range is 0-8160\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid queue value, queue range is 0 - %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Rx interrupt throttling cannot be changed if adaptive-rx is enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Tx interrupt throttling cannot be changed if adaptive-tx is enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Requested Tx descriptor count rounded up to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Requested Rx descriptor count rounded up to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@iavf_set_ringparam.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iavf\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iavf_set_ringparam\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/iavf/iavf_ethtool.c\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Nothing to change, descriptor count is same as requested\0A\00", [38 x i8] zeroinitializer }, align 32
@iavf_set_ringparam.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Changing Tx descriptor count from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_set_ringparam.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Changing Rx descriptor count from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_wq = external dso_local local_unnamed_addr global ptr, align 4
@iavf_gstrings_stats = internal constant { [12 x %struct.iavf_stats], [96 x i8] } { [12 x %struct.iavf_stats] [%struct.iavf_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1232 }, %struct.iavf_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1240 }, %struct.iavf_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1248 }, %struct.iavf_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1256 }, %struct.iavf_stats { [32 x i8] c"rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1264 }, %struct.iavf_stats { [32 x i8] c"rx_unknown_protocol\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1272 }, %struct.iavf_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1280 }, %struct.iavf_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1288 }, %struct.iavf_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1296 }, %struct.iavf_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1304 }, %struct.iavf_stats { [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1312 }, %struct.iavf_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1320 }], [96 x i8] zeroinitializer }, align 32
@iavf_gstrings_queue_stats = internal constant { [2 x %struct.iavf_stats], [48 x i8] } { [2 x %struct.iavf_stats] [%struct.iavf_stats { [32 x i8] c"%s-%u.packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.iavf_stats { [32 x i8] c"%s-%u.bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 64 }], [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@iavf_gstrings_priv_flags = internal constant { [1 x %struct.iavf_priv_flags], [56 x i8] } { [1 x %struct.iavf_priv_flags] [%struct.iavf_priv_flags { [32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32768, i8 0 }], [56 x i8] zeroinitializer }, align 32
@iavf_add_one_ethtool_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected stat size for %s\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iavf_set_priv_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.13, i32 520, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Unable to update adapter->flags as it was modified by another thread...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iavf_set_priv_flags\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_set_priv_flags._entry_ptr = internal global ptr @iavf_set_priv_flags._entry, section ".printk_index", align 4
@iavf_add_fdir_ethtool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.13, i32 1409, ptr @.str.30, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Unable to add Flow Director filter because VF reached the limit of max allowed filters (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_add_fdir_ethtool\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iavf_add_fdir_ethtool._entry_ptr = internal global ptr @iavf_add_fdir_ethtool._entry, section ".printk_index", align 4
@iavf_add_fdir_ethtool._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.13, i32 1415, ptr @.str.30, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to add Flow Director filter, it already exists\0A\00", [41 x i8] zeroinitializer }, align 32
@iavf_add_fdir_ethtool._entry_ptr.33 = internal global ptr @iavf_add_fdir_ethtool._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iavf_set_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.13, i32 1845, ptr @.str.36, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot set channels since ADq is enabled.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iavf_set_channels\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iavf_set_channels._entry_ptr = internal global ptr @iavf_set_channels._entry, section ".printk_index", align 4
@switch.table.iavf_get_rxnfc = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 9, i32 17, i32 5, i32 6, i32 10, i32 18], [36 x i8] zeroinitializer }, align 32
@switch.table.iavf_set_rxnfc = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 9, i32 17, i32 5, i32 6, i32 10, i32 18], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.40 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.42 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"iavf_ethtool_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1970, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 585, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 836, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 839, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 843, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 846, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 861, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 778, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 787, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 638, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 646, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 651, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 657, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 662, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 668, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"iavf_gstrings_stats\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 223, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"iavf_gstrings_queue_stats\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 54, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 422, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 424, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 399, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"iavf_gstrings_priv_flags\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 259, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 98, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 695, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 723, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 519, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1407, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1415, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [50 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1845, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"switch.table.iavf_get_rxnfc\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [28 x i8] c"switch.table.iavf_set_rxnfc\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @iavf_add_fdir_ethtool._entry, ptr @iavf_add_fdir_ethtool._entry.31, ptr @iavf_add_fdir_ethtool._entry_ptr, ptr @iavf_add_fdir_ethtool._entry_ptr.33, ptr @iavf_set_channels._entry, ptr @iavf_set_channels._entry_ptr, ptr @iavf_set_priv_flags._entry, ptr @iavf_set_priv_flags._entry_ptr, ptr @iavf_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @iavf_gstrings_stats, ptr @iavf_gstrings_queue_stats, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @iavf_gstrings_priv_flags, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.iavf_get_rxnfc, ptr @switch.table.iavf_set_rxnfc], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_gstrings_stats to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_gstrings_queue_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_gstrings_priv_flags to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_priv_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_fdir_ethtool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_add_fdir_ethtool._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_set_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_get_rxnfc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_set_rxnfc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iavf_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iavf_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iavf_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @iavf_driver_name, i32 noundef 32) #20
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call3 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str, i32 noundef 4) #20
  %pdev = getelementptr i8, ptr %netdev, i32 2900
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %6 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_msglevel(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3532
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iavf_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %data)
  %tobool.not = icmp ult i32 %data, 268435456
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %debug_mask = getelementptr i8, ptr %netdev, i32 3328
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %debug_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 3532
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %work_limit.i = getelementptr i8, ptr %netdev, i32 4676
  %0 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %work_limit.i, align 4
  %conv.i = zext i16 %1 to i32
  %tx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %2 = ptrtoint ptr %tx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %tx_max_coalesced_frames.i, align 4
  %3 = load i16, ptr %work_limit.i, align 4
  %conv3.i = zext i16 %3 to i32
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3.i, ptr %rx_max_coalesced_frames.i, align 4
  %rx_rings.i = getelementptr i8, ptr %netdev, i32 2840
  %5 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_rings.i, align 8
  %tx_rings.i = getelementptr i8, ptr %netdev, i32 2828
  %7 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_rings.i, align 4
  %itr_setting.i = getelementptr %struct.iavf_ring, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %itr_setting.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %tobool.not.i = icmp sgt i16 %10, -1
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then11.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %11 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %use_adaptive_rx_coalesce.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %entry.if.end12.i_crit_edge
  %itr_setting13.i = getelementptr %struct.iavf_ring, ptr %8, i32 0, i32 9
  %12 = ptrtoint ptr %itr_setting13.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %itr_setting13.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool16.not.i = icmp sgt i16 %13, -1
  br i1 %tobool16.not.i, label %if.end12.i.__iavf_get_coalesce.exit_crit_edge, label %if.then17.i

if.end12.i.__iavf_get_coalesce.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__iavf_get_coalesce.exit

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %14 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %use_adaptive_tx_coalesce.i, align 4
  br label %__iavf_get_coalesce.exit

__iavf_get_coalesce.exit:                         ; preds = %if.then17.i, %if.end12.i.__iavf_get_coalesce.exit_crit_edge
  %15 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %itr_setting.i, align 32
  %17 = and i16 %16, 32767
  %and21.i = zext i16 %17 to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %18 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and21.i, ptr %rx_coalesce_usecs.i, align 4
  %19 = ptrtoint ptr %itr_setting13.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %itr_setting13.i, align 32
  %21 = and i16 %20, 32767
  %and24.i = zext i16 %21 to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %22 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and24.i, ptr %tx_coalesce_usecs.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__iavf_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iavf_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 2856
  %2 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_desc_count, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 2836
  %5 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_desc_count, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = add i32 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %6)
  %7 = icmp ult i32 %6, -4033
  br i1 %7, label %if.end.if.then10_crit_edge, label %lor.lhs.false5

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

lor.lhs.false5:                                   ; preds = %if.end
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %10 = add i32 %9, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %10)
  %11 = icmp ult i32 %10, -4033
  br i1 %11, label %lor.lhs.false5.if.then10_crit_edge, label %if.end13

lor.lhs.false5.if.then10_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false5.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %rx_pending12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pending12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pending12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %13, i32 noundef 64, i32 noundef 4096, i32 noundef 32) #23
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false5
  %add = add nuw nsw i32 %5, 31
  %and = and i32 %add, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp16.not = icmp eq i32 %and, %5
  br i1 %cmp16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %and) #23
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %14 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_pending, align 4
  %add20 = add i32 %15, 31
  %and21 = and i32 %add20, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %15)
  %cmp23.not = icmp eq i32 %and21, %15
  br i1 %cmp23.not, label %if.end18.if.end25_crit_edge, label %if.then24

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %and21) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18.if.end25_crit_edge
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 2836
  %16 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_desc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp26 = icmp eq i32 %and, %17
  br i1 %cmp26, label %land.lhs.true, label %do.body43

land.lhs.true:                                    ; preds = %if.end25
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 2856
  %18 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %19)
  %cmp27 = icmp eq i32 %and21, %19
  br i1 %cmp27, label %do.body29, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end63

do.body29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_ringparam, %if.then34)) #20
          to label %cleanup [label %if.then34], !srcloc !91

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @iavf_set_ringparam.__UNIQUE_ID_ddebug527, ptr noundef %netdev, ptr noundef nonnull @.str.14) #20
  br label %cleanup

do.body43:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_ringparam, %if.then55)) #20
          to label %do.end61 [label %if.then55], !srcloc !91

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_desc_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @iavf_set_ringparam.__UNIQUE_ID_ddebug528, ptr noundef %netdev, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %and) #20
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %do.body43
  %22 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %tx_desc_count, align 4
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %land.lhs.true.if.end63_crit_edge
  %rx_desc_count64 = getelementptr i8, ptr %netdev, i32 2856
  %23 = ptrtoint ptr %rx_desc_count64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_desc_count64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %24)
  %cmp65.not = icmp eq i32 %and21, %24
  br i1 %cmp65.not, label %if.end63.if.end88_crit_edge, label %do.body68

if.end63.if.end88_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

do.body68:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_set_ringparam, %if.then80)) #20
          to label %do.end86 [label %if.then80], !srcloc !91

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %rx_desc_count64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_desc_count64, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @iavf_set_ringparam.__UNIQUE_ID_ddebug529, ptr noundef %netdev, ptr noundef nonnull @.str.16, i32 noundef %26, i32 noundef %and21) #20
  br label %do.end86

do.end86:                                         ; preds = %if.then80, %do.body68
  %27 = ptrtoint ptr %rx_desc_count64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and21, ptr %rx_desc_count64, align 8
  br label %if.end88

if.end88:                                         ; preds = %do.end86, %if.end63.if.end88_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end88.cleanup_crit_edge, label %if.then90

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr i8, ptr %netdev, i32 2884
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or = or i32 %31, 32
  store i32 %or, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %32 = load ptr, ptr @iavf_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %add.ptr.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end88.cleanup_crit_edge, %if.then34, %do.body29, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then90 ], [ 0, %if.end88.cleanup_crit_edge ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iavf_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %sset, ptr noundef %data) #1 align 64 {
entry:
  %data.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sset, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %1 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %data.addr.i, align 4
  call void (ptr, ptr, i32, ...) @__iavf_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @iavf_gstrings_stats, i32 noundef 12) #20
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %sw.bb.iavf_get_stat_strings.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.iavf_get_stat_strings.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_get_stat_strings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  call void (ptr, ptr, i32, ...) @__iavf_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @iavf_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %i.05.i) #20
  call void (ptr, ptr, i32, ...) @__iavf_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @iavf_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %i.05.i) #20
  %inc.i = add nuw i32 %i.05.i, 1
  %4 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %real_num_tx_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iavf_get_stat_strings.exit_crit_edge

for.body.i.iavf_get_stat_strings.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_get_stat_strings.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

iavf_get_stat_strings.exit:                       ; preds = %for.body.i.iavf_get_stat_strings.exit_crit_edge, %sw.bb.iavf_get_stat_strings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef nonnull @iavf_gstrings_priv_flags) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %iavf_get_stat_strings.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iavf_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #5 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @iavf_schedule_request_stats(ptr noundef %add.ptr.i) #20
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %iavf_add_one_ethtool_stat.exit.i.for.body.i_crit_edge, %entry
  %incdec.ptr.i19 = phi ptr [ %data, %entry ], [ %incdec.ptr.i, %iavf_add_one_ethtool_stat.exit.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %iavf_add_one_ethtool_stat.exit.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %incdec.ptr.i19, i32 1
  %arrayidx.i = getelementptr %struct.iavf_stats, ptr @iavf_gstrings_stats, i32 %i.01.i
  br i1 %tobool.not.i.i, label %for.body.i.iavf_add_one_ethtool_stat.exit.i_crit_edge, label %if.end.i.i

for.body.i.iavf_add_one_ethtool_stat.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_add_one_ethtool_stat.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %stat_offset.i.i = getelementptr %struct.iavf_stats, ptr @iavf_gstrings_stats, i32 %i.01.i, i32 2
  %0 = ptrtoint ptr %stat_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %sizeof_stat.i.i = getelementptr %struct.iavf_stats, ptr @iavf_gstrings_stats, i32 %i.01.i, i32 1
  %2 = ptrtoint ptr %sizeof_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeof_stat.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %land.end.i.i [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 1, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i.i, align 8
  br label %iavf_add_one_ethtool_stat.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %conv.i.i = zext i32 %8 to i64
  br label %iavf_add_one_ethtool_stat.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv3.i.i = zext i16 %10 to i64
  br label %iavf_add_one_ethtool_stat.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i, align 1
  %conv5.i.i = zext i8 %12 to i64
  br label %iavf_add_one_ethtool_stat.exit.i

land.end.i.i:                                     ; preds = %if.end.i.i
  %.b55.i.i = load i1, ptr @iavf_add_one_ethtool_stat.__already_done, align 1
  br i1 %.b55.i.i, label %land.end.i.i.iavf_add_one_ethtool_stat.exit.i_crit_edge, label %if.then12.i.i, !prof !92

land.end.i.i.iavf_add_one_ethtool_stat.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_add_one_ethtool_stat.exit.i

if.then12.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @iavf_add_one_ethtool_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %arrayidx.i) #20
  br label %iavf_add_one_ethtool_stat.exit.i

iavf_add_one_ethtool_stat.exit.i:                 ; preds = %if.then12.i.i, %land.end.i.i.iavf_add_one_ethtool_stat.exit.i_crit_edge, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %for.body.i.iavf_add_one_ethtool_stat.exit.i_crit_edge
  %.sink.i.i = phi i64 [ %6, %sw.bb.i.i ], [ %conv.i.i, %sw.bb1.i.i ], [ %conv3.i.i, %sw.bb2.i.i ], [ %conv5.i.i, %sw.bb4.i.i ], [ 0, %for.body.i.iavf_add_one_ethtool_stat.exit.i_crit_edge ], [ 0, %if.then12.i.i ], [ 0, %land.end.i.i.iavf_add_one_ethtool_stat.exit.i_crit_edge ]
  %13 = ptrtoint ptr %incdec.ptr.i19 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.sink.i.i, ptr %incdec.ptr.i19, align 8
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %__iavf_add_ethtool_stats.exit, label %iavf_add_one_ethtool_stat.exit.i.for.body.i_crit_edge

iavf_add_one_ethtool_stat.exit.i.for.body.i_crit_edge: ; preds = %iavf_add_one_ethtool_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

__iavf_add_ethtool_stats.exit:                    ; preds = %iavf_add_one_ethtool_stat.exit.i
  %14 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr.i, ptr %data.addr, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !81) #20
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %__iavf_add_ethtool_stats.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

__iavf_add_ethtool_stats.exit.rcu_read_lock.exit_crit_edge: ; preds = %__iavf_add_ethtool_stats.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %__iavf_add_ethtool_stats.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %__iavf_add_ethtool_stats.exit.rcu_read_lock.exit_crit_edge
  %num_active_queues = getelementptr i8, ptr %netdev, i32 2820
  %19 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20.not = icmp eq i32 %20, 0
  br i1 %cmp20.not, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %tx_rings = getelementptr i8, ptr %netdev, i32 2828
  %rx_rings = getelementptr i8, ptr %netdev, i32 2840
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr %struct.iavf_ring, ptr %22, i32 %i.021
  call fastcc void @iavf_add_queue_stats(ptr noundef nonnull %data.addr, ptr noundef %arrayidx)
  %23 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_rings, align 8
  %arrayidx1 = getelementptr %struct.iavf_ring, ptr %24, i32 %i.021
  call fastcc void @iavf_add_queue_stats(ptr noundef nonnull %data.addr, ptr noundef %arrayidx1)
  %inc = add nuw i32 %i.021, 1
  %25 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_active_queues, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i10, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %for.end
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !94
  %27 = tail call i32 @llvm.read_register.i32(metadata !81) #20
  %and.i.i.i.i.i17 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_get_priv_flags(ptr nocapture noundef readonly %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2884
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 15
  %2 = and i32 %and, 1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_priv_flags(ptr noundef %netdev, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr i8, ptr %netdev, i32 2884
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %and = shl i32 %flags, 15
  %2 = and i32 %and, 32768
  %and3 = and i32 %1, -32769
  %new_flags.1 = or i32 %and3, %2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags1, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %flags1, i32 1, i32 3, i32 1) #20
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %flags1, i32 %1, i32 %new_flags.1) #20, !srcloc !96
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %asmresult1.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !97
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %1)
  %cmp31.not = icmp eq i32 %asmresult1.i, %1
  br i1 %cmp31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr i8, ptr %netdev, i32 2900
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #23
  br label %cleanup48

if.end36:                                         ; preds = %__cmpxchg.exit
  %xor37 = xor i32 %and, %1
  %and38 = and i32 %xor37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.cleanup48_crit_edge, label %if.then40

if.end36.cleanup48_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup48

if.then40:                                        ; preds = %if.end36
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then40.cleanup48_crit_edge, label %if.then42

if.then40.cleanup48_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup48

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1, align 4
  %or44 = or i32 %9, 32
  store i32 %or44, ptr %flags1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %10 = load ptr, ptr @iavf_wq, align 4
  %call.i73 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %add.ptr.i) #20
  br label %cleanup48

cleanup48:                                        ; preds = %if.then42, %if.then40.cleanup48_crit_edge, %if.end36.cleanup48_crit_edge, %do.end35
  %retval.2 = phi i32 [ -11, %do.end35 ], [ 0, %if.then40.cleanup48_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end36.cleanup48_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %sset, label %if.else3 [
    i32 1, label %if.then
    i32 2, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 105
  %1 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %real_num_tx_queues, align 8
  %mul = shl i32 %2, 2
  %add = add i32 %mul, 12
  br label %return

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return:                                           ; preds = %if.else3, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ -22, %if.else3 ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_get_rxnfc(ptr noundef %netdev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb5
    i32 48, label %sw.bb7
    i32 41, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %num_active_queues = getelementptr i8, ptr %netdev, i32 2820
  %3 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_active_queues, align 4
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %vf_res = getelementptr i8, ptr %netdev, i32 3476
  %6 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vf_cap_flags, align 4
  %and = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.end

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  %fdir_active_fltr = getelementptr i8, ptr %netdev, i32 4842
  %10 = ptrtoint ptr %fdir_active_fltr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fdir_active_fltr, align 2
  %conv3 = zext i16 %11 to i32
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3, ptr %12, align 8
  %data4 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %data4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 128, ptr %data4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %vf_res.i = getelementptr i8, ptr %netdev, i32 3476
  %15 = ptrtoint ptr %vf_res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vf_res.i, align 4
  %vf_cap_flags.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %vf_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vf_cap_flags.i, align 4
  %and.i = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  %fdir_fltr_lock.i = getelementptr i8, ptr %netdev, i32 4852
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock.i) #20
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %location.i, align 8
  %call.i = tail call ptr @iavf_find_fdir_fltr_by_loc(ptr noundef %add.ptr.i, i32 noundef %20) #20
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.release_lock.i_crit_edge, label %if.end3.i

if.end.i.release_lock.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %release_lock.i

if.end3.i:                                        ; preds = %if.end.i
  %flow_type.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow_type.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %22, label %iavf_fltr_to_ethtool_flow.exit.thread392.i [
    i32 1, label %if.end3.i.sw.bb.i_crit_edge
    i32 2, label %if.end3.i.sw.bb.i_crit_edge38
    i32 3, label %if.end3.i.sw.bb.i_crit_edge39
    i32 4, label %if.end3.i.sw.bb33.i_crit_edge
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb63.i
    i32 7, label %if.end3.i.sw.bb102.i_crit_edge
    i32 8, label %sw.bb7.i.i
    i32 9, label %sw.bb8.i.i
    i32 10, label %if.end3.i.sw.bb141.i_crit_edge
    i32 11, label %sw.bb10.i.i
    i32 12, label %sw.bb176.i
    i32 13, label %sw.bb218.i
  ]

if.end3.i.sw.bb141.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb141.i

if.end3.i.sw.bb102.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb102.i

if.end3.i.sw.bb33.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb33.i

if.end3.i.sw.bb.i_crit_edge39:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge38:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

sw.bb4.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb33.i

sw.bb7.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb102.i

sw.bb8.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb102.i

sw.bb10.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb141.i

iavf_fltr_to_ethtool_flow.exit.thread392.i:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fs.i, align 8
  %m_u394.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %25 = call ptr @memset(ptr %m_u394.i, i32 0, i32 72)
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end3.i.sw.bb.i_crit_edge, %if.end3.i.sw.bb.i_crit_edge38, %if.end3.i.sw.bb.i_crit_edge39
  %26 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %fs.i, align 8
  %m_u362.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip_data.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %27 = call ptr @memset(ptr %m_u362.i, i32 0, i32 72)
  %28 = ptrtoint ptr %ip_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ip_data.i, align 4
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %h_u.i, align 4
  %dst_ip.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst_ip.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ip4dst.i, align 4
  %src_port.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %src_port.i, align 4
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %psrc.i, align 4
  %dst_port.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dst_port.i, align 2
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %39 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pdst.i, align 2
  %40 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %tos.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tos.i, align 4
  %ip_mask.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %ip_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ip_mask.i, align 4
  %46 = ptrtoint ptr %m_u362.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %m_u362.i, align 4
  %dst_ip19.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %dst_ip19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst_ip19.i, align 4
  %ip4dst21.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %ip4dst21.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ip4dst21.i, align 4
  %src_port23.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %src_port23.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %src_port23.i, align 4
  %psrc25.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %psrc25.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %psrc25.i, align 4
  %dst_port27.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 2
  %53 = ptrtoint ptr %dst_port27.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dst_port27.i, align 2
  %pdst29.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u362.i, i32 0, i32 3
  %55 = ptrtoint ptr %pdst29.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %pdst29.i, align 2
  %56 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  %tos32.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %tos32.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %tos32.i, align 4
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %sw.bb4.i.i, %if.end3.i.sw.bb33.i_crit_edge
  %retval.0.i.ph377.i = phi i32 [ 10, %sw.bb4.i.i ], [ 9, %if.end3.i.sw.bb33.i_crit_edge ]
  %60 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i.ph377.i, ptr %fs.i, align 8
  %m_u380.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip_data34.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %61 = call ptr @memset(ptr %m_u380.i, i32 0, i32 72)
  %62 = ptrtoint ptr %ip_data34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ip_data34.i, align 4
  %h_u36.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %h_u36.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %h_u36.i, align 4
  %dst_ip39.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %dst_ip39.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dst_ip39.i, align 4
  %ip4dst41.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %ip4dst41.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ip4dst41.i, align 4
  %spi.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 4
  %68 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %spi.i, align 4
  %spi44.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %70 = ptrtoint ptr %spi44.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %spi44.i, align 4
  %71 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 4
  %tos47.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %74 = ptrtoint ptr %tos47.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tos47.i, align 4
  %ip_mask48.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %75 = ptrtoint ptr %ip_mask48.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ip_mask48.i, align 4
  %77 = ptrtoint ptr %m_u380.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %m_u380.i, align 4
  %dst_ip53.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %dst_ip53.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dst_ip53.i, align 4
  %ip4dst55.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %ip4dst55.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %ip4dst55.i, align 4
  %spi57.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 4
  %81 = ptrtoint ptr %spi57.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %spi57.i, align 4
  %spi59.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %83 = ptrtoint ptr %spi59.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %spi59.i, align 4
  %84 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 4
  %tos62.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %87 = ptrtoint ptr %tos62.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %tos62.i, align 4
  br label %sw.epilog.i

sw.bb63.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  %88 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 13, ptr %fs.i, align 8
  %m_u398.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip_data64.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %89 = call ptr @memset(ptr %m_u398.i, i32 0, i32 72)
  %90 = ptrtoint ptr %ip_data64.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ip_data64.i, align 4
  %h_u66.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %h_u66.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %h_u66.i, align 4
  %dst_ip69.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %dst_ip69.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dst_ip69.i, align 4
  %ip4dst71.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %ip4dst71.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %ip4dst71.i, align 4
  %l4_header.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 3
  %96 = ptrtoint ptr %l4_header.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %l4_header.i, align 4
  %l4_4_bytes.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %98 = ptrtoint ptr %l4_4_bytes.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %l4_4_bytes.i, align 4
  %99 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 4
  %tos76.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %102 = ptrtoint ptr %tos76.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %tos76.i, align 4
  %ip_ver.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u66.i, i32 0, i32 4
  %103 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %ip_ver.i, align 1
  %proto.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 6
  %104 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %proto.i, align 1
  %proto80.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u66.i, i32 0, i32 5
  %106 = ptrtoint ptr %proto80.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %proto80.i, align 2
  %ip_mask81.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %107 = ptrtoint ptr %ip_mask81.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ip_mask81.i, align 4
  %109 = ptrtoint ptr %m_u398.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %m_u398.i, align 4
  %dst_ip86.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %110 = ptrtoint ptr %dst_ip86.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dst_ip86.i, align 4
  %ip4dst88.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %112 = ptrtoint ptr %ip4dst88.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %ip4dst88.i, align 4
  %l4_header90.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 3
  %113 = ptrtoint ptr %l4_header90.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %l4_header90.i, align 4
  %l4_4_bytes92.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %115 = ptrtoint ptr %l4_4_bytes92.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %l4_4_bytes92.i, align 4
  %116 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 4
  %tos95.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %119 = ptrtoint ptr %tos95.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %tos95.i, align 4
  %ip_ver97.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u398.i, i32 0, i32 4
  %120 = ptrtoint ptr %ip_ver97.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -1, ptr %ip_ver97.i, align 1
  %proto99.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 6
  %121 = ptrtoint ptr %proto99.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %proto99.i, align 1
  %proto101.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u398.i, i32 0, i32 5
  %123 = ptrtoint ptr %proto101.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %proto101.i, align 2
  br label %sw.epilog.i

sw.bb102.i:                                       ; preds = %sw.bb8.i.i, %sw.bb7.i.i, %if.end3.i.sw.bb102.i_crit_edge
  %retval.0.i.ph369.i = phi i32 [ 6, %sw.bb7.i.i ], [ 7, %sw.bb8.i.i ], [ 5, %if.end3.i.sw.bb102.i_crit_edge ]
  %124 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %retval.0.i.ph369.i, ptr %fs.i, align 8
  %m_u372.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u103.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_data104.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %125 = call ptr @memset(ptr %m_u372.i, i32 0, i32 72)
  %126 = call ptr @memcpy(ptr %h_u103.i, ptr %ip_data104.i, i32 16)
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %dst_ip109.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %127 = call ptr @memcpy(ptr %ip6dst.i, ptr %dst_ip109.i, i32 16)
  %src_port111.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 1
  %128 = ptrtoint ptr %src_port111.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %src_port111.i, align 4
  %psrc113.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %130 = ptrtoint ptr %psrc113.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %psrc113.i, align 4
  %dst_port115.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 2
  %131 = ptrtoint ptr %dst_port115.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %dst_port115.i, align 2
  %pdst117.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %133 = ptrtoint ptr %pdst117.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %pdst117.i, align 2
  %134 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 4
  %tclass.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %137 = ptrtoint ptr %tclass.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %tclass.i, align 4
  %ip_mask123.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %138 = call ptr @memcpy(ptr %m_u372.i, ptr %ip_mask123.i, i32 16)
  %ip6dst126.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %dst_ip129.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %139 = call ptr @memcpy(ptr %ip6dst126.i, ptr %dst_ip129.i, i32 16)
  %src_port131.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 1
  %140 = ptrtoint ptr %src_port131.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %src_port131.i, align 4
  %psrc133.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %142 = ptrtoint ptr %psrc133.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %psrc133.i, align 4
  %dst_port135.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 2
  %143 = ptrtoint ptr %dst_port135.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %dst_port135.i, align 2
  %pdst137.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %145 = ptrtoint ptr %pdst137.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %pdst137.i, align 2
  %146 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %146, align 4
  %tclass140.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %149 = ptrtoint ptr %tclass140.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %tclass140.i, align 4
  br label %sw.epilog.i

sw.bb141.i:                                       ; preds = %sw.bb10.i.i, %if.end3.i.sw.bb141.i_crit_edge
  %retval.0.i.ph385.i = phi i32 [ 12, %sw.bb10.i.i ], [ 11, %if.end3.i.sw.bb141.i_crit_edge ]
  %150 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %retval.0.i.ph385.i, ptr %fs.i, align 8
  %m_u388.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u142.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_data145.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %151 = call ptr @memset(ptr %m_u388.i, i32 0, i32 72)
  %152 = call ptr @memcpy(ptr %h_u142.i, ptr %ip_data145.i, i32 16)
  %ip6dst148.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %dst_ip151.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %153 = call ptr @memcpy(ptr %ip6dst148.i, ptr %dst_ip151.i, i32 16)
  %spi153.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 4
  %154 = ptrtoint ptr %spi153.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %spi153.i, align 4
  %spi155.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %156 = ptrtoint ptr %spi155.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %spi155.i, align 4
  %157 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 4
  %tclass158.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %160 = ptrtoint ptr %tclass158.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %tclass158.i, align 4
  %ip_mask162.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %161 = call ptr @memcpy(ptr %m_u388.i, ptr %ip_mask162.i, i32 16)
  %ip6dst165.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %dst_ip168.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %162 = call ptr @memcpy(ptr %ip6dst165.i, ptr %dst_ip168.i, i32 16)
  %spi170.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 4
  %163 = ptrtoint ptr %spi170.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %spi170.i, align 4
  %spi172.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %165 = ptrtoint ptr %spi172.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %spi172.i, align 4
  %166 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 4
  %tclass175.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %169 = ptrtoint ptr %tclass175.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %tclass175.i, align 4
  br label %sw.epilog.i

sw.bb176.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  %170 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 14, ptr %fs.i, align 8
  %m_u404.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u177.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_data180.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5
  %171 = call ptr @memset(ptr %m_u404.i, i32 0, i32 72)
  %172 = call ptr @memcpy(ptr %h_u177.i, ptr %ip_data180.i, i32 16)
  %ip6dst183.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %dst_ip186.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %173 = call ptr @memcpy(ptr %ip6dst183.i, ptr %dst_ip186.i, i32 16)
  %l4_header188.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 3
  %174 = ptrtoint ptr %l4_header188.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %l4_header188.i, align 4
  %l4_4_bytes190.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %176 = ptrtoint ptr %l4_4_bytes190.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %l4_4_bytes190.i, align 4
  %177 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 5
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 4
  %tclass193.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %180 = ptrtoint ptr %tclass193.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %tclass193.i, align 4
  %proto195.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 5, i32 6
  %181 = ptrtoint ptr %proto195.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %proto195.i, align 1
  %l4_proto.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u177.i, i32 0, i32 4
  %183 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %l4_proto.i, align 1
  %ip_mask200.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6
  %184 = call ptr @memcpy(ptr %m_u404.i, ptr %ip_mask200.i, i32 16)
  %ip6dst203.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %dst_ip206.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %185 = call ptr @memcpy(ptr %ip6dst203.i, ptr %dst_ip206.i, i32 16)
  %l4_header208.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 3
  %186 = ptrtoint ptr %l4_header208.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %l4_header208.i, align 4
  %l4_4_bytes210.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %188 = ptrtoint ptr %l4_4_bytes210.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %l4_4_bytes210.i, align 4
  %189 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 5
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %189, align 4
  %tclass213.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %192 = ptrtoint ptr %tclass213.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %tclass213.i, align 4
  %proto215.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 6, i32 6
  %193 = ptrtoint ptr %proto215.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %proto215.i, align 1
  %l4_proto217.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u404.i, i32 0, i32 4
  %195 = ptrtoint ptr %l4_proto217.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %l4_proto217.i, align 1
  br label %sw.epilog.i

sw.bb218.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  %196 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 18, ptr %fs.i, align 8
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %eth_data.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 3
  %197 = call ptr @memset(ptr %m_u.i, i32 0, i32 72)
  %198 = ptrtoint ptr %eth_data.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %eth_data.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %200 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %h_proto.i, align 4
  %eth_mask.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 4
  %201 = ptrtoint ptr %eth_mask.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %eth_mask.i, align 2
  %h_proto222.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %203 = ptrtoint ptr %h_proto222.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %h_proto222.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb218.i, %sw.bb176.i, %sw.bb141.i, %sw.bb102.i, %sw.bb63.i, %sw.bb33.i, %sw.bb.i, %iavf_fltr_to_ethtool_flow.exit.thread392.i
  %retval.0.i365.i = phi i32 [ 18, %sw.bb218.i ], [ 14, %sw.bb176.i ], [ %retval.0.i.ph385.i, %sw.bb141.i ], [ %retval.0.i.ph369.i, %sw.bb102.i ], [ 13, %sw.bb63.i ], [ %retval.0.i.ph377.i, %sw.bb33.i ], [ %22, %sw.bb.i ], [ 0, %iavf_fltr_to_ethtool_flow.exit.thread392.i ]
  %ret.0.i = phi i32 [ 0, %sw.bb218.i ], [ 0, %sw.bb176.i ], [ 0, %sw.bb141.i ], [ 0, %sw.bb102.i ], [ 0, %sw.bb63.i ], [ 0, %sw.bb33.i ], [ 0, %sw.bb.i ], [ -22, %iavf_fltr_to_ethtool_flow.exit.thread392.i ]
  %ext_mask.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 8
  %204 = ptrtoint ptr %ext_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ext_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i.i = icmp eq i32 %205, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog.i.if.end.i.i_crit_edge

sw.epilog.i.if.end.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i
  %arrayidx3.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %206 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool4.not.i.i = icmp eq i32 %207, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.iavf_fill_rx_flow_ext_data.exit.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

land.lhs.true.i.i.iavf_fill_rx_flow_ext_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_fill_rx_flow_ext_data.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.epilog.i.if.end.i.i_crit_edge
  %or.i.i = or i32 %retval.0.i365.i, -2147483648
  %208 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %or.i.i, ptr %fs.i, align 8
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %ext_data.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 7
  %209 = ptrtoint ptr %ext_data.i.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 8)
  %210 = load i64, ptr %ext_data.i.i, align 4
  %211 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 8)
  store i64 %210, ptr %data.i.i, align 4
  %data7.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %212 = ptrtoint ptr %ext_mask.i.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 8)
  %213 = load i64, ptr %ext_mask.i.i, align 4
  %214 = ptrtoint ptr %data7.i.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 8)
  store i64 %213, ptr %data7.i.i, align 4
  br label %iavf_fill_rx_flow_ext_data.exit.i

iavf_fill_rx_flow_ext_data.exit.i:                ; preds = %if.end.i.i, %land.lhs.true.i.i.iavf_fill_rx_flow_ext_data.exit.i_crit_edge
  %action.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 9
  %215 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp.i = icmp eq i32 %216, 0
  br i1 %cmp.i, label %iavf_fill_rx_flow_ext_data.exit.i.release_lock.sink.split.i_crit_edge, label %if.else.i

iavf_fill_rx_flow_ext_data.exit.i.release_lock.sink.split.i_crit_edge: ; preds = %iavf_fill_rx_flow_ext_data.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %release_lock.sink.split.i

if.else.i:                                        ; preds = %iavf_fill_rx_flow_ext_data.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %q_index.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call.i, i32 0, i32 15
  %217 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %q_index.i, align 4
  %conv.i = zext i32 %218 to i64
  br label %release_lock.sink.split.i

release_lock.sink.split.i:                        ; preds = %if.else.i, %iavf_fill_rx_flow_ext_data.exit.i.release_lock.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %conv.i, %if.else.i ], [ -1, %iavf_fill_rx_flow_ext_data.exit.i.release_lock.sink.split.i_crit_edge ]
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %219 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 %.sink.i, ptr %ring_cookie.i, align 8
  br label %release_lock.i

release_lock.i:                                   ; preds = %release_lock.sink.split.i, %if.end.i.release_lock.i_crit_edge
  %ret.1.i = phi i32 [ -22, %if.end.i.release_lock.i_crit_edge ], [ %ret.0.i, %release_lock.sink.split.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i) #20
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %vf_res.i22 = getelementptr i8, ptr %netdev, i32 3476
  %220 = ptrtoint ptr %vf_res.i22 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %vf_res.i22, align 4
  %vf_cap_flags.i23 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %221, i32 0, i32 4
  %222 = ptrtoint ptr %vf_cap_flags.i23 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %vf_cap_flags.i23, align 4
  %and.i24 = and i32 %223, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i27

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i27:                                       ; preds = %sw.bb7
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %224 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 128, ptr %data.i, align 8
  %fdir_fltr_lock.i26 = getelementptr i8, ptr %netdev, i32 4852
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock.i26) #20
  %fdir_list_head.i = getelementptr i8, ptr %netdev, i32 4844
  %225 = ptrtoint ptr %fdir_list_head.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pn31.i = load ptr, ptr %fdir_list_head.i, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, %fdir_list_head.i
  br i1 %cmp.not32.i, label %if.end.i27.if.then12.i_crit_edge, label %for.body.lr.ph.i

if.end.i27.if.then12.i_crit_edge:                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12.i

for.body.lr.ph.i:                                 ; preds = %if.end.i27
  %226 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn31.i, %for.body.lr.ph.i ], [ %.pn.i, %if.end4.i.for.body.i_crit_edge ]
  %cnt.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %226, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.033.i, i32 %228)
  %cmp2.i = icmp eq i32 %cnt.033.i, %228
  br i1 %cmp2.i, label %release_lock.i28, label %if.end4.i

if.end4.i:                                        ; preds = %for.body.i
  %loc.i = getelementptr i8, ptr %.pn34.i, i32 148
  %229 = ptrtoint ptr %loc.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %loc.i, align 4
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %cnt.033.i
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cnt.033.i, 1
  %232 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fdir_list_head.i
  br i1 %cmp.not.i, label %if.end4.i.if.then12.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

if.end4.i.if.then12.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12.i

release_lock.i28:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i26) #20
  br label %sw.epilog

if.then12.i:                                      ; preds = %if.end4.i.if.then12.i_crit_edge, %if.end.i27.if.then12.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end.i27.if.then12.i_crit_edge ], [ %inc.i, %if.end4.i.if.then12.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i26) #20
  %233 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %cnt.0.lcssa.i, ptr %233, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %vf_res.i30 = getelementptr i8, ptr %netdev, i32 3476
  %235 = ptrtoint ptr %vf_res.i30 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %vf_res.i30, align 4
  %vf_cap_flags.i31 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %vf_cap_flags.i31 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %vf_cap_flags.i31, align 4
  %and.i32 = and i32 %238, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i33, label %sw.bb9.sw.epilog_crit_edge, label %if.end.i35

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i35:                                       ; preds = %sw.bb9
  %data.i34 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %239 = ptrtoint ptr %data.i34 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 0, ptr %data.i34, align 8
  %flow_type.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %240 = ptrtoint ptr %flow_type.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flow_type.i.i, align 4
  %switch.tableidx = add i32 %241, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %242 = icmp ult i32 %switch.tableidx, 7
  br i1 %242, label %switch.hole_check, label %if.end.i35.sw.epilog_crit_edge

if.end.i35.sw.epilog_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end.i35
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %243 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %switch.lobit.not = icmp eq i8 %243, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.iavf_get_rxnfc, i32 0, i32 %switch.tableidx
  %244 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %244)
  %switch.load = load i32, ptr %switch.gep, align 4
  %adv_rss_lock.i = getelementptr i8, ptr %netdev, i32 4904
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock.i) #20
  %call3.i = tail call ptr @iavf_find_adv_rss_cfg_by_hdrs(ptr noundef %add.ptr.i, i32 noundef %switch.load) #20
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end7.thread.i, label %if.end7.i

if.end7.thread.i:                                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock.i) #20
  br label %sw.epilog

if.end7.i:                                        ; preds = %switch.lookup
  %hash_flds6.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call3.i, i32 0, i32 3
  %245 = ptrtoint ptr %hash_flds6.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %hash_flds6.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock.i) #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %246)
  %cmp9.i = icmp eq i64 %246, 0
  br i1 %cmp9.i, label %if.end7.i.sw.epilog_crit_edge, label %if.end11.i

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end7.i
  %and12.i = and i64 %246, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  %247 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %data.i34, align 8
  %or.i = or i64 %248, 16
  store i64 %or.i, ptr %data.i34, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %and17.i = and i64 %246, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then19.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  %249 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %data.i34, align 8
  %or21.i = or i64 %250, 32
  store i64 %or21.i, ptr %data.i34, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end22.i_crit_edge
  %and23.i = and i64 %246, 336
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %tobool24.not.i = icmp eq i64 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #22
  %251 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %data.i34, align 8
  %or27.i = or i64 %252, 64
  store i64 %or27.i, ptr %data.i34, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %and29.i = and i64 %246, 672
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29.i)
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.sw.epilog_crit_edge, label %if.then31.i

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #22
  %253 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %data.i34, align 8
  %or33.i = or i64 %254, 128
  store i64 %or33.i, ptr %data.i34, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31.i, %if.end28.i.sw.epilog_crit_edge, %if.end7.i.sw.epilog_crit_edge, %if.end7.thread.i, %switch.hole_check.sw.epilog_crit_edge, %if.end.i35.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %if.then12.i, %release_lock.i28, %sw.bb7.sw.epilog_crit_edge, %release_lock.i, %sw.bb5.sw.epilog_crit_edge, %if.end, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb ], [ %ret.1.i, %release_lock.i ], [ -95, %sw.bb5.sw.epilog_crit_edge ], [ -95, %sw.bb7.sw.epilog_crit_edge ], [ 0, %if.then12.i ], [ -90, %release_lock.i28 ], [ -95, %sw.bb9.sw.epilog_crit_edge ], [ -22, %if.end7.i.sw.epilog_crit_edge ], [ 0, %if.then31.i ], [ 0, %if.end28.i.sw.epilog_crit_edge ], [ -22, %if.end.i35.sw.epilog_crit_edge ], [ -22, %if.end7.thread.i ], [ -22, %switch.hole_check.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_rxnfc(ptr noundef %netdev, ptr noundef readonly %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
    i32 42, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %vf_res.i = getelementptr i8, ptr %netdev, i32 3476
  %3 = ptrtoint ptr %vf_res.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vf_res.i, align 4
  %vf_cap_flags.i = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %vf_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vf_cap_flags.i, align 4
  %and.i = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs.i, align 8
  %and1.i = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %fdir_active_fltr.i = getelementptr i8, ptr %netdev, i32 4842
  %9 = ptrtoint ptr %fdir_active_fltr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fdir_active_fltr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %10)
  %cmp.i = icmp ugt i16 %10, 127
  br i1 %cmp.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev.i = getelementptr i8, ptr %netdev, i32 2900
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 128) #23
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end4.i
  %fdir_fltr_lock.i = getelementptr i8, ptr %netdev, i32 4852
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock.i) #20
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %location.i, align 8
  %call.i = tail call ptr @iavf_find_fdir_fltr_by_loc(ptr noundef %add.ptr.i, i32 noundef %14) #20
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.end16.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev13.i = getelementptr i8, ptr %netdev, i32 2900
  %15 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev13.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.32) #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i) #20
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end7.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 2776) #24
  %tobool19.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i, label %if.end16.i.sw.epilog_crit_edge, label %while.cond.preheader.i

if.end16.i.sw.epilog_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

while.cond.preheader.i:                           ; preds = %if.end16.i
  %crit_lock.i = getelementptr i8, ptr %netdev, i32 2564
  %call2275.i = tail call i32 @mutex_trylock(ptr noundef %crit_lock.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2275.i)
  %tobool23.not76.i = icmp eq i32 %call2275.i, 0
  br i1 %tobool23.not76.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %count.077.i = phi i32 [ %dec.i, %if.end27.i.while.body.i_crit_edge ], [ 50, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.077.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp24.i = icmp eq i32 %dec.i, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.end27.i

if.then26.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %sw.epilog

if.end27.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #20
  %call22.i = tail call i32 @mutex_trylock(ptr noundef %crit_lock.i) #20
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end27.i.while.body.i_crit_edge, label %if.end27.i.while.end.i_crit_edge

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %ring_cookie.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ring_cookie.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp.i.i = icmp eq i64 %20, -1
  br i1 %cmp.i.i, label %while.end.i.if.end5.i.i_crit_edge, label %if.else.i.i

while.end.i.if.end5.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %while.end.i
  %conv.i.i = trunc i64 %20 to i32
  %num_active_queues.i.i = getelementptr i8, ptr %netdev, i32 2820
  %21 = ptrtoint ptr %num_active_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_active_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i.i)
  %cmp2.not.i.i = icmp ugt i32 %22, %conv.i.i
  br i1 %cmp2.not.i.i, label %if.else.i.i.if.end5.i.i_crit_edge, label %if.else.i.i.land.lhs.true.critedge.i_crit_edge

if.else.i.i.land.lhs.true.critedge.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

if.else.i.i.if.end5.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.else.i.i.if.end5.i.i_crit_edge, %while.end.i.if.end5.i.i_crit_edge
  %q_index.0.i.i = phi i32 [ 0, %while.end.i.if.end5.i.i_crit_edge ], [ %conv.i.i, %if.else.i.i.if.end5.i.i_crit_edge ]
  %act.0.i.i = phi i32 [ 0, %while.end.i.if.end5.i.i_crit_edge ], [ 3, %if.else.i.i.if.end5.i.i_crit_edge ]
  %action.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %action.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %act.0.i.i, ptr %action.i.i, align 4
  %24 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %location.i, align 8
  %loc.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %loc.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %loc.i.i, align 8
  %q_index6.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %q_index6.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %q_index.0.i.i, ptr %q_index6.i.i, align 4
  %28 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %tobool.not.i.i = icmp sgt i32 %29, -1
  br i1 %tobool.not.i.i, label %if.end5.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %ext_data.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 7
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %data.i.i, align 4
  %32 = ptrtoint ptr %ext_data.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %ext_data.i.i, align 4
  %ext_mask.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 8
  %data12.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %33 = ptrtoint ptr %data12.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %data12.i.i, align 4
  %35 = ptrtoint ptr %ext_mask.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %ext_mask.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end14.i.i_crit_edge
  %and16.i.i = and i32 %29, 536870911
  %36 = zext i32 %and16.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and16.i.i, label %iavf_ethtool_flow_to_fltr.exit.i.i [
    i32 1, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge
    i32 2, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge44
    i32 3, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge45
    i32 9, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread387.i.i_crit_edge
    i32 10, label %sw.bb4.i.i.i
    i32 13, label %iavf_ethtool_flow_to_fltr.exit.thread395.i.i
    i32 5, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread382.i.i_crit_edge
    i32 6, label %sw.bb7.i.i.i
    i32 7, label %sw.bb8.i.i.i
    i32 11, label %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread392.i.i_crit_edge
    i32 12, label %sw.bb10.i.i.i
    i32 14, label %iavf_ethtool_flow_to_fltr.exit.thread398.i.i
    i32 18, label %iavf_ethtool_flow_to_fltr.exit.thread401.i.i
  ]

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread392.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread392.i.i

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread382.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread382.i.i

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread387.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread387.i.i

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge45: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread.i.i

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge44: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread.i.i

if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread387.i.i

iavf_ethtool_flow_to_fltr.exit.thread395.i.i:     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_type17397.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %flow_type17397.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %flow_type17397.i.i, align 4
  %h_u74.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %h_u74.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_u74.i.i, align 4
  %ip_data76.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %ip_data76.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ip_data76.i.i, align 4
  %ip4dst79.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %ip4dst79.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ip4dst79.i.i, align 4
  %dst_ip81.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %dst_ip81.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dst_ip81.i.i, align 8
  %l4_4_bytes.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %l4_4_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %l4_4_bytes.i.i, align 4
  %l4_header.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %l4_header.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %l4_header.i.i, align 8
  %tos85.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %tos85.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tos85.i.i, align 4
  %49 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %49, align 8
  %proto.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u74.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %proto.i.i, align 2
  %proto89.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 6
  %53 = ptrtoint ptr %proto89.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %proto89.i.i, align 1
  %m_u90.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %m_u90.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_u90.i.i, align 4
  %ip_mask92.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %ip_mask92.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ip_mask92.i.i, align 4
  %ip4dst95.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %ip4dst95.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip4dst95.i.i, align 4
  %dst_ip97.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %dst_ip97.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dst_ip97.i.i, align 8
  %l4_4_bytes99.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %l4_4_bytes99.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %l4_4_bytes99.i.i, align 4
  %l4_header101.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %62 = ptrtoint ptr %l4_header101.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %l4_header101.i.i, align 8
  %tos103.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %tos103.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tos103.i.i, align 4
  %65 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %65, align 8
  %proto106.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u90.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %proto106.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %proto106.i.i, align 2
  %proto108.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %69 = ptrtoint ptr %proto108.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %proto108.i.i, align 1
  br label %sw.epilog.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread382.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread382.i.i

sw.bb10.i.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_ethtool_flow_to_fltr.exit.thread392.i.i

iavf_ethtool_flow_to_fltr.exit.thread398.i.i:     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_type17400.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %flow_type17400.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 12, ptr %flow_type17400.i.i, align 4
  %ip_data185.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %h_u187.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %71 = call ptr @memcpy(ptr %ip_data185.i.i, ptr %h_u187.i.i, i32 16)
  %dst_ip191.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %ip6dst193.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %72 = call ptr @memcpy(ptr %dst_ip191.i.i, ptr %ip6dst193.i.i, i32 16)
  %l4_4_bytes196.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %73 = ptrtoint ptr %l4_4_bytes196.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %l4_4_bytes196.i.i, align 4
  %l4_header198.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %l4_header198.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %l4_header198.i.i, align 8
  %tclass200.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %tclass200.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tclass200.i.i, align 4
  %78 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %77, ptr %78, align 8
  %l4_proto.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u187.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %l4_proto.i.i, align 1
  %proto204.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 6
  %82 = ptrtoint ptr %proto204.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %proto204.i.i, align 1
  %ip_mask205.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %m_u207.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %83 = call ptr @memcpy(ptr %ip_mask205.i.i, ptr %m_u207.i.i, i32 16)
  %dst_ip211.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %ip6dst213.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %dst_ip211.i.i, ptr %ip6dst213.i.i, i32 16)
  %l4_4_bytes216.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %85 = ptrtoint ptr %l4_4_bytes216.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %l4_4_bytes216.i.i, align 4
  %l4_header218.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %87 = ptrtoint ptr %l4_header218.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %l4_header218.i.i, align 8
  %tclass220.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %88 = ptrtoint ptr %tclass220.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tclass220.i.i, align 4
  %90 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %90, align 8
  %l4_proto223.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u207.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %l4_proto223.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %l4_proto223.i.i, align 1
  %proto225.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %94 = ptrtoint ptr %proto225.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %proto225.i.i, align 1
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.thread401.i.i:     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_type17403.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %flow_type17403.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 13, ptr %flow_type17403.i.i, align 4
  %h_proto.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %96 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %h_proto.i.i, align 4
  %eth_data.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %eth_data.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %eth_data.i.i, align 8
  %h_proto229.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %99 = ptrtoint ptr %h_proto229.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %h_proto229.i.i, align 4
  %eth_mask.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %eth_mask.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %eth_mask.i.i, align 2
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.thread.i.i:        ; preds = %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge44, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread.i.i_crit_edge45
  %flow_type17379.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %flow_type17379.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and16.i.i, ptr %flow_type17379.i.i, align 4
  %h_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %103 = ptrtoint ptr %h_u.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %h_u.i.i, align 4
  %ip_data.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %105 = ptrtoint ptr %ip_data.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %ip_data.i.i, align 4
  %ip4dst.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ip4dst.i.i, align 4
  %dst_ip.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %dst_ip.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dst_ip.i.i, align 8
  %psrc.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %109 = ptrtoint ptr %psrc.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %psrc.i.i, align 4
  %src_port.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %src_port.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %src_port.i.i, align 4
  %pdst.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %pdst.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %pdst.i.i, align 2
  %dst_port.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %114 = ptrtoint ptr %dst_port.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %dst_port.i.i, align 2
  %tos.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %115 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tos.i.i, align 4
  %117 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %116, ptr %117, align 8
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %119 = ptrtoint ptr %m_u.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %m_u.i.i, align 4
  %ip_mask.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %121 = ptrtoint ptr %ip_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %ip_mask.i.i, align 4
  %ip4dst29.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %122 = ptrtoint ptr %ip4dst29.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ip4dst29.i.i, align 4
  %dst_ip31.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %124 = ptrtoint ptr %dst_ip31.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %dst_ip31.i.i, align 8
  %psrc33.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %125 = ptrtoint ptr %psrc33.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %psrc33.i.i, align 4
  %src_port35.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %127 = ptrtoint ptr %src_port35.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %src_port35.i.i, align 4
  %pdst37.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i.i, i32 0, i32 3
  %128 = ptrtoint ptr %pdst37.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %pdst37.i.i, align 2
  %dst_port39.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %130 = ptrtoint ptr %dst_port39.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %dst_port39.i.i, align 2
  %tos41.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %131 = ptrtoint ptr %tos41.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tos41.i.i, align 4
  %133 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %132, ptr %133, align 8
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.thread382.i.i:     ; preds = %sw.bb8.i.i.i, %sw.bb7.i.i.i, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread382.i.i_crit_edge
  %retval.0.i.ph381.i.i = phi i32 [ 8, %sw.bb7.i.i.i ], [ 9, %sw.bb8.i.i.i ], [ 7, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread382.i.i_crit_edge ]
  %flow_type17384.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %135 = ptrtoint ptr %flow_type17384.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %retval.0.i.ph381.i.i, ptr %flow_type17384.i.i, align 4
  %ip_data110.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %h_u112.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %136 = call ptr @memcpy(ptr %ip_data110.i.i, ptr %h_u112.i.i, i32 16)
  %dst_ip115.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %ip6dst.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %137 = call ptr @memcpy(ptr %dst_ip115.i.i, ptr %ip6dst.i.i, i32 16)
  %psrc119.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %138 = ptrtoint ptr %psrc119.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %psrc119.i.i, align 4
  %src_port121.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %140 = ptrtoint ptr %src_port121.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %src_port121.i.i, align 4
  %pdst123.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %141 = ptrtoint ptr %pdst123.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %pdst123.i.i, align 2
  %dst_port125.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %143 = ptrtoint ptr %dst_port125.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %dst_port125.i.i, align 2
  %tclass.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %144 = ptrtoint ptr %tclass.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %tclass.i.i, align 4
  %146 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %145, ptr %146, align 8
  %ip_mask128.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %m_u130.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %148 = call ptr @memcpy(ptr %ip_mask128.i.i, ptr %m_u130.i.i, i32 16)
  %dst_ip134.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %ip6dst136.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %149 = call ptr @memcpy(ptr %dst_ip134.i.i, ptr %ip6dst136.i.i, i32 16)
  %psrc139.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %150 = ptrtoint ptr %psrc139.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %psrc139.i.i, align 4
  %src_port141.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %152 = ptrtoint ptr %src_port141.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %src_port141.i.i, align 4
  %pdst143.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %153 = ptrtoint ptr %pdst143.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %pdst143.i.i, align 2
  %dst_port145.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %155 = ptrtoint ptr %dst_port145.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %dst_port145.i.i, align 2
  %tclass147.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %156 = ptrtoint ptr %tclass147.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tclass147.i.i, align 4
  %158 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %157, ptr %158, align 8
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.thread387.i.i:     ; preds = %sw.bb4.i.i.i, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread387.i.i_crit_edge
  %retval.0.i.ph386.i.i = phi i32 [ 5, %sw.bb4.i.i.i ], [ 4, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread387.i.i_crit_edge ]
  %flow_type17389.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %160 = ptrtoint ptr %flow_type17389.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %retval.0.i.ph386.i.i, ptr %flow_type17389.i.i, align 4
  %h_u44.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %h_u44.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %h_u44.i.i, align 4
  %ip_data46.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %163 = ptrtoint ptr %ip_data46.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %ip_data46.i.i, align 4
  %ip4dst49.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %164 = ptrtoint ptr %ip4dst49.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ip4dst49.i.i, align 4
  %dst_ip51.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %dst_ip51.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %dst_ip51.i.i, align 8
  %spi.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %167 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %spi.i.i, align 4
  %spi54.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 4
  %169 = ptrtoint ptr %spi54.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %spi54.i.i, align 4
  %tos56.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %170 = ptrtoint ptr %tos56.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tos56.i.i, align 4
  %172 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %171, ptr %172, align 8
  %m_u58.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %174 = ptrtoint ptr %m_u58.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %m_u58.i.i, align 4
  %ip_mask60.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %176 = ptrtoint ptr %ip_mask60.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %ip_mask60.i.i, align 4
  %ip4dst63.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %177 = ptrtoint ptr %ip4dst63.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ip4dst63.i.i, align 4
  %dst_ip65.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %179 = ptrtoint ptr %dst_ip65.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %dst_ip65.i.i, align 8
  %spi67.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %180 = ptrtoint ptr %spi67.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %spi67.i.i, align 4
  %spi69.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %182 = ptrtoint ptr %spi69.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %spi69.i.i, align 4
  %tos71.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %183 = ptrtoint ptr %tos71.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %tos71.i.i, align 4
  %185 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %184, ptr %185, align 8
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.thread392.i.i:     ; preds = %sw.bb10.i.i.i, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread392.i.i_crit_edge
  %retval.0.i.ph391.i.i = phi i32 [ 11, %sw.bb10.i.i.i ], [ 10, %if.end14.i.i.iavf_ethtool_flow_to_fltr.exit.thread392.i.i_crit_edge ]
  %flow_type17394.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %187 = ptrtoint ptr %flow_type17394.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %retval.0.i.ph391.i.i, ptr %flow_type17394.i.i, align 4
  %ip_data150.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5
  %h_u152.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %188 = call ptr @memcpy(ptr %ip_data150.i.i, ptr %h_u152.i.i, i32 16)
  %dst_ip156.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %ip6dst158.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %189 = call ptr @memcpy(ptr %dst_ip156.i.i, ptr %ip6dst158.i.i, i32 16)
  %spi161.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %190 = ptrtoint ptr %spi161.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %spi161.i.i, align 4
  %spi163.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 4
  %192 = ptrtoint ptr %spi163.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %spi163.i.i, align 4
  %tclass165.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 4
  %193 = ptrtoint ptr %tclass165.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tclass165.i.i, align 4
  %195 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %194, ptr %195, align 8
  %ip_mask167.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %m_u169.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %197 = call ptr @memcpy(ptr %ip_mask167.i.i, ptr %m_u169.i.i, i32 16)
  %dst_ip173.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %ip6dst175.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %198 = call ptr @memcpy(ptr %dst_ip173.i.i, ptr %ip6dst175.i.i, i32 16)
  %spi178.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %199 = ptrtoint ptr %spi178.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %spi178.i.i, align 4
  %spi180.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %201 = ptrtoint ptr %spi180.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %spi180.i.i, align 4
  %tclass182.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %202 = ptrtoint ptr %tclass182.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %tclass182.i.i, align 4
  %204 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %203, ptr %204, align 8
  br label %sw.epilog.i.i

iavf_ethtool_flow_to_fltr.exit.i.i:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %flow_type17.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 2
  %206 = ptrtoint ptr %flow_type17.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %flow_type17.i.i, align 4
  br label %land.lhs.true.critedge.i

sw.epilog.i.i:                                    ; preds = %iavf_ethtool_flow_to_fltr.exit.thread392.i.i, %iavf_ethtool_flow_to_fltr.exit.thread387.i.i, %iavf_ethtool_flow_to_fltr.exit.thread382.i.i, %iavf_ethtool_flow_to_fltr.exit.thread.i.i, %iavf_ethtool_flow_to_fltr.exit.thread401.i.i, %iavf_ethtool_flow_to_fltr.exit.thread398.i.i, %iavf_ethtool_flow_to_fltr.exit.thread395.i.i
  %call231.i.i = tail call zeroext i1 @iavf_fdir_is_dup_fltr(ptr noundef %add.ptr.i, ptr noundef %call7.i.i.i) #20
  br i1 %call231.i.i, label %sw.epilog.i.i.land.lhs.true.critedge.i_crit_edge, label %if.end233.i.i

sw.epilog.i.i.land.lhs.true.critedge.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

if.end233.i.i:                                    ; preds = %sw.epilog.i.i
  %207 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %208)
  %tobool.not.i.i.i = icmp sgt i32 %208, -1
  br i1 %tobool.not.i.i.i, label %if.end233.i.i.iavf_add_fdir_fltr_info.exit.i_crit_edge, label %for.body.preheader.i.i.i

if.end233.i.i.iavf_add_fdir_fltr_info.exit.i_crit_edge: ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_add_fdir_fltr_info.exit.i

for.body.preheader.i.i.i:                         ; preds = %if.end233.i.i
  %arrayidx.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4
  %209 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %211 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool3.not.i.i.i = icmp eq i32 %210, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool4.not.i.i.i = icmp eq i32 %212, 0
  %or.cond.i.i.i = select i1 %tobool3.not.i.i.i, i1 true, i1 %tobool4.not.i.i.i
  br i1 %or.cond.i.i.i, label %for.body.preheader.i.i.i.for.inc.i.i.i_crit_edge, label %if.end6.i.i.i

for.body.preheader.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i.i

if.end6.i.i.i:                                    ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %212)
  %cmp.i.i.i.i = icmp eq i32 %212, -1
  br i1 %cmp.i.i.i.i, label %if.end8.i.i.i, label %if.end6.i.i.i.land.lhs.true.critedge.i_crit_edge

if.end6.i.i.i.land.lhs.true.critedge.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

if.end8.i.i.i:                                    ; preds = %if.end6.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 12, i32 0
  %conv11.i.i.i = trunc i32 %210 to i16
  %word.i.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 12, i32 0, i32 1
  %213 = ptrtoint ptr %word.i.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv11.i.i.i, ptr %word.i.i.i, align 4
  %shr.i.i.i = lshr i32 %210, 16
  %conv13.i.i.i = trunc i32 %shr.i.i.i to i16
  %214 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv13.i.i.i, ptr %arrayidx9.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33095679, i32 %210)
  %cmp16.i.i.i = icmp ugt i32 %210, 33095679
  br i1 %cmp16.i.i.i, label %if.end8.i.i.i.land.lhs.true.critedge.i_crit_edge, label %if.end8.i.i.i.for.inc.i.i.i_crit_edge

if.end8.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i.i

if.end8.i.i.i.land.lhs.true.critedge.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

for.inc.i.i.i:                                    ; preds = %if.end8.i.i.i.for.inc.i.i.i_crit_edge, %for.body.preheader.i.i.i.for.inc.i.i.i_crit_edge
  %cnt.1.i.i.i = phi i32 [ 0, %for.body.preheader.i.i.i.for.inc.i.i.i_crit_edge ], [ 1, %if.end8.i.i.i.for.inc.i.i.i_crit_edge ]
  %arrayidx.1.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 4, i32 1
  %215 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx.1.i.i.i, align 4
  %arrayidx2.1.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4, i32 1
  %217 = ptrtoint ptr %arrayidx2.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx2.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool3.not.1.i.i.i = icmp eq i32 %216, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool4.not.1.i.i.i = icmp eq i32 %218, 0
  %or.cond.1.i.i.i = select i1 %tobool3.not.1.i.i.i, i1 true, i1 %tobool4.not.1.i.i.i
  br i1 %or.cond.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end6.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1.i.i.i

if.end6.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %218)
  %cmp.i.1.i.i.i = icmp eq i32 %218, -1
  br i1 %cmp.i.1.i.i.i, label %if.end8.1.i.i.i, label %if.end6.1.i.i.i.land.lhs.true.critedge.i_crit_edge

if.end6.1.i.i.i.land.lhs.true.critedge.i_crit_edge: ; preds = %if.end6.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

if.end8.1.i.i.i:                                  ; preds = %if.end6.1.i.i.i
  %inc.1.i.i.i = add nuw nsw i32 %cnt.1.i.i.i, 1
  %arrayidx9.1.i.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 12, i32 %cnt.1.i.i.i
  %conv11.1.i.i.i = trunc i32 %216 to i16
  %word.1.i.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 12, i32 %cnt.1.i.i.i, i32 1
  %219 = ptrtoint ptr %word.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv11.1.i.i.i, ptr %word.1.i.i.i, align 4
  %shr.1.i.i.i = lshr i32 %216, 16
  %conv13.1.i.i.i = trunc i32 %shr.1.i.i.i to i16
  %220 = ptrtoint ptr %arrayidx9.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv13.1.i.i.i, ptr %arrayidx9.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33095679, i32 %216)
  %cmp16.1.i.i.i = icmp ugt i32 %216, 33095679
  br i1 %cmp16.1.i.i.i, label %if.end8.1.i.i.i.land.lhs.true.critedge.i_crit_edge, label %if.end8.1.i.i.i.for.inc.1.i.i.i_crit_edge

if.end8.1.i.i.i.for.inc.1.i.i.i_crit_edge:        ; preds = %if.end8.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1.i.i.i

if.end8.1.i.i.i.land.lhs.true.critedge.i_crit_edge: ; preds = %if.end8.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

for.inc.1.i.i.i:                                  ; preds = %if.end8.1.i.i.i.for.inc.1.i.i.i_crit_edge, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %cnt.1.1.i.i.i = phi i32 [ %cnt.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ], [ %inc.1.i.i.i, %if.end8.1.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %conv22.i.i.i = trunc i32 %cnt.1.1.i.i.i to i8
  %flex_cnt.i.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %221 = ptrtoint ptr %flex_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv22.i.i.i, ptr %flex_cnt.i.i.i, align 1
  br label %iavf_add_fdir_fltr_info.exit.i

iavf_add_fdir_fltr_info.exit.i:                   ; preds = %for.inc.1.i.i.i, %if.end233.i.i.iavf_add_fdir_fltr_info.exit.i_crit_edge
  %call238.i.i = tail call i32 @iavf_fill_fdir_add_msg(ptr noundef %add.ptr.i, ptr noundef %call7.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238.i.i)
  %tobool29.not.i = icmp eq i32 %call238.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %iavf_add_fdir_fltr_info.exit.i.land.lhs.true.critedge.i_crit_edge

iavf_add_fdir_fltr_info.exit.i.land.lhs.true.critedge.i_crit_edge: ; preds = %iavf_add_fdir_fltr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.critedge.i

if.end31.i:                                       ; preds = %iavf_add_fdir_fltr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock.i) #20
  tail call void @iavf_fdir_list_add_fltr(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i) #20
  %222 = ptrtoint ptr %fdir_active_fltr.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %fdir_active_fltr.i, align 2
  %inc.i = add i16 %223, 1
  store i16 %inc.i, ptr %fdir_active_fltr.i, align 2
  %224 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %call7.i.i.i, align 8
  %aq_required.i = getelementptr i8, ptr %netdev, i32 2888
  %225 = ptrtoint ptr %aq_required.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %aq_required.i, align 8
  %or.i = or i64 %226, 33554432
  store i64 %or.i, ptr %aq_required.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %227 = load ptr, ptr @iavf_wq, align 4
  %watchdog_task.i = getelementptr i8, ptr %netdev, i32 3360
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %227, ptr noundef %watchdog_task.i, i32 noundef 0) #20
  br label %if.end39.i

land.lhs.true.critedge.i:                         ; preds = %iavf_add_fdir_fltr_info.exit.i.land.lhs.true.critedge.i_crit_edge, %if.end8.1.i.i.i.land.lhs.true.critedge.i_crit_edge, %if.end6.1.i.i.i.land.lhs.true.critedge.i_crit_edge, %if.end8.i.i.i.land.lhs.true.critedge.i_crit_edge, %if.end6.i.i.i.land.lhs.true.critedge.i_crit_edge, %sw.epilog.i.i.land.lhs.true.critedge.i_crit_edge, %iavf_ethtool_flow_to_fltr.exit.i.i, %if.else.i.i.land.lhs.true.critedge.i_crit_edge
  %retval.0.i73.i = phi i32 [ %call238.i.i, %iavf_add_fdir_fltr_info.exit.i.land.lhs.true.critedge.i_crit_edge ], [ -22, %if.end8.i.i.i.land.lhs.true.critedge.i_crit_edge ], [ -22, %if.end6.i.i.i.land.lhs.true.critedge.i_crit_edge ], [ -22, %if.end6.1.i.i.i.land.lhs.true.critedge.i_crit_edge ], [ -22, %if.end8.1.i.i.i.land.lhs.true.critedge.i_crit_edge ], [ -17, %sw.epilog.i.i.land.lhs.true.critedge.i_crit_edge ], [ -22, %iavf_ethtool_flow_to_fltr.exit.i.i ], [ -22, %if.else.i.i.land.lhs.true.critedge.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true.critedge.i, %if.end31.i
  %retval.0.i72.i = phi i32 [ 0, %if.end31.i ], [ %retval.0.i73.i, %land.lhs.true.critedge.i ]
  tail call void @mutex_unlock(ptr noundef %crit_lock.i) #20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %vf_res.i12 = getelementptr i8, ptr %netdev, i32 3476
  %228 = ptrtoint ptr %vf_res.i12 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %vf_res.i12, align 4
  %vf_cap_flags.i13 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %vf_cap_flags.i13 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %vf_cap_flags.i13, align 4
  %and.i14 = and i32 %231, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i15, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i19

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i19:                                       ; preds = %sw.bb3
  %fdir_fltr_lock.i16 = getelementptr i8, ptr %netdev, i32 4852
  tail call void @_raw_spin_lock_bh(ptr noundef %fdir_fltr_lock.i16) #20
  %location.i17 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %232 = ptrtoint ptr %location.i17 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %location.i17, align 8
  %call.i18 = tail call ptr @iavf_find_fdir_fltr_by_loc(ptr noundef %add.ptr.i, i32 noundef %233) #20
  %tobool1.not.i = icmp eq ptr %call.i18, null
  br i1 %tobool1.not.i, label %if.end10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i19
  %234 = ptrtoint ptr %call.i18 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %call.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %235)
  %cmp.i20 = icmp eq i32 %235, 4
  br i1 %cmp.i20, label %if.then3.i, label %if.then2.i.land.lhs.true.i_crit_edge

if.then2.i.land.lhs.true.i_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

if.then3.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #22
  %236 = ptrtoint ptr %call.i18 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 2, ptr %call.i18, align 4
  %aq_required.i21 = getelementptr i8, ptr %netdev, i32 2888
  %237 = ptrtoint ptr %aq_required.i21 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %aq_required.i21, align 8
  %or.i22 = or i64 %238, 67108864
  store i64 %or.i22, ptr %aq_required.i21, align 8
  br label %land.lhs.true.i

if.end10.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #22
  %fdir_active_fltr.i23 = getelementptr i8, ptr %netdev, i32 4842
  %239 = ptrtoint ptr %fdir_active_fltr.i23 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %fdir_active_fltr.i23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool7.not.i = icmp eq i16 %240, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 -22
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i16) #20
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.then3.i, %if.then2.i.land.lhs.true.i_crit_edge
  %err.0.ph.i = phi i32 [ -16, %if.then2.i.land.lhs.true.i_crit_edge ], [ 0, %if.then3.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %fdir_fltr_lock.i16) #20
  %241 = ptrtoint ptr %call.i18 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %call.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %242)
  %cmp14.i = icmp eq i32 %242, 2
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %243 = load ptr, ptr @iavf_wq, align 4
  %watchdog_task.i24 = getelementptr i8, ptr %netdev, i32 3360
  %call.i.i25 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %243, ptr noundef %watchdog_task.i24, i32 noundef 0) #20
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %vf_res.i27 = getelementptr i8, ptr %netdev, i32 3476
  %244 = ptrtoint ptr %vf_res.i27 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %vf_res.i27, align 4
  %vf_cap_flags.i28 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %245, i32 0, i32 4
  %246 = ptrtoint ptr %vf_cap_flags.i28 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %vf_cap_flags.i28, align 4
  %and.i29 = and i32 %247, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i31

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i31:                                       ; preds = %sw.bb5
  %flow_type.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %248 = ptrtoint ptr %flow_type.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %flow_type.i.i, align 4
  %switch.tableidx = add i32 %249, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %250 = icmp ult i32 %switch.tableidx, 7
  br i1 %250, label %switch.hole_check, label %if.end.i31.sw.epilog_crit_edge

if.end.i31.sw.epilog_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end.i31
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %251 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %switch.lobit.not = icmp eq i8 %251, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.iavf_set_rxnfc, i32 0, i32 %switch.tableidx
  %252 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %252)
  %switch.load = load i32, ptr %switch.gep, align 4
  %data.i.i32 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %253 = ptrtoint ptr %data.i.i32 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %data.i.i32, align 8
  %255 = and i64 %254, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %255)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %switch.lookup.if.end27.i.i_crit_edge, label %if.then.i.i

switch.lookup.if.end27.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27.i.i

if.then.i.i:                                      ; preds = %switch.lookup
  %257 = zext i32 %249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %249, label %if.then.i.i.if.end27.i.i_crit_edge [
    i32 1, label %if.then.i.i.sw.bb.i89.i_crit_edge
    i32 2, label %if.then.i.i.sw.bb.i89.i_crit_edge46
    i32 3, label %if.then.i.i.sw.bb.i89.i_crit_edge47
    i32 5, label %if.then.i.i.sw.bb14.i.i_crit_edge
    i32 6, label %if.then.i.i.sw.bb14.i.i_crit_edge48
    i32 7, label %if.then.i.i.sw.bb14.i.i_crit_edge49
  ]

if.then.i.i.sw.bb14.i.i_crit_edge49:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb14.i.i

if.then.i.i.sw.bb14.i.i_crit_edge48:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb14.i.i

if.then.i.i.sw.bb14.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb14.i.i

if.then.i.i.sw.bb.i89.i_crit_edge47:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i89.i

if.then.i.i.sw.bb.i89.i_crit_edge46:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i89.i

if.then.i.i.sw.bb.i89.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i89.i

if.then.i.i.if.end27.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27.i.i

sw.bb.i89.i:                                      ; preds = %if.then.i.i.sw.bb.i89.i_crit_edge, %if.then.i.i.sw.bb.i89.i_crit_edge46, %if.then.i.i.sw.bb.i89.i_crit_edge47
  %and.i.i = lshr i64 %254, 4
  %258 = and i64 %and.i.i, 3
  br label %if.end27.i.i

sw.bb14.i.i:                                      ; preds = %if.then.i.i.sw.bb14.i.i_crit_edge, %if.then.i.i.sw.bb14.i.i_crit_edge48, %if.then.i.i.sw.bb14.i.i_crit_edge49
  %259 = lshr i64 %254, 2
  %260 = and i64 %259, 12
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %sw.bb14.i.i, %sw.bb.i89.i, %if.then.i.i.if.end27.i.i_crit_edge, %switch.lookup.if.end27.i.i_crit_edge
  %hfld.2.i.i = phi i64 [ 0, %if.then.i.i.if.end27.i.i_crit_edge ], [ 0, %switch.lookup.if.end27.i.i_crit_edge ], [ %258, %sw.bb.i89.i ], [ %260, %sw.bb14.i.i ]
  %261 = and i64 %254, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %261)
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %if.end27.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge, label %if.then35.i.i

if.end27.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_adv_rss_parse_hash_flds.exit.i

if.then35.i.i:                                    ; preds = %if.end27.i.i
  %263 = zext i32 %249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %249, label %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge [
    i32 1, label %if.then35.i.i.sw.bb37.i.i_crit_edge
    i32 5, label %if.then35.i.i.sw.bb37.i.i_crit_edge50
    i32 2, label %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge
    i32 6, label %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge51
    i32 3, label %if.then35.i.i.sw.bb63.i.i_crit_edge
    i32 7, label %if.then35.i.i.sw.bb63.i.i_crit_edge52
  ]

if.then35.i.i.sw.bb63.i.i_crit_edge52:            ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb63.i.i

if.then35.i.i.sw.bb63.i.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb63.i.i

if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge51: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_adv_rss_parse_hash_flds.exit.thread.i

if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_adv_rss_parse_hash_flds.exit.thread.i

if.then35.i.i.sw.bb37.i.i_crit_edge50:            ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb37.i.i

if.then35.i.i.sw.bb37.i.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb37.i.i

if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %iavf_adv_rss_parse_hash_flds.exit.i

sw.bb37.i.i:                                      ; preds = %if.then35.i.i.sw.bb37.i.i_crit_edge, %if.then35.i.i.sw.bb37.i.i_crit_edge50
  %and29.i.i = lshr i64 %254, 2
  %264 = and i64 %and29.i.i, 48
  %265 = or i64 %hfld.2.i.i, %264
  br label %iavf_adv_rss_parse_hash_flds.exit.i

iavf_adv_rss_parse_hash_flds.exit.thread.i:       ; preds = %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge, %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.thread.i_crit_edge51
  %266 = or i64 %hfld.2.i.i, %261
  br label %if.end6.i

sw.bb63.i.i:                                      ; preds = %if.then35.i.i.sw.bb63.i.i_crit_edge, %if.then35.i.i.sw.bb63.i.i_crit_edge52
  %267 = shl i64 %254, 2
  %268 = and i64 %267, 768
  %269 = or i64 %hfld.2.i.i, %268
  br label %iavf_adv_rss_parse_hash_flds.exit.i

iavf_adv_rss_parse_hash_flds.exit.i:              ; preds = %sw.bb63.i.i, %sw.bb37.i.i, %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge, %if.end27.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge
  %hfld.6.i.i = phi i64 [ %hfld.2.i.i, %if.then35.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge ], [ %hfld.2.i.i, %if.end27.i.i.iavf_adv_rss_parse_hash_flds.exit.i_crit_edge ], [ %265, %sw.bb37.i.i ], [ %269, %sw.bb63.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hfld.6.i.i)
  %cmp4.i = icmp eq i64 %hfld.6.i.i, 0
  br i1 %cmp4.i, label %iavf_adv_rss_parse_hash_flds.exit.i.sw.epilog_crit_edge, label %iavf_adv_rss_parse_hash_flds.exit.i.if.end6.i_crit_edge

iavf_adv_rss_parse_hash_flds.exit.i.if.end6.i_crit_edge: ; preds = %iavf_adv_rss_parse_hash_flds.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

iavf_adv_rss_parse_hash_flds.exit.i.sw.epilog_crit_edge: ; preds = %iavf_adv_rss_parse_hash_flds.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end6.i:                                        ; preds = %iavf_adv_rss_parse_hash_flds.exit.i.if.end6.i_crit_edge, %iavf_adv_rss_parse_hash_flds.exit.thread.i
  %hfld.6.i95.i = phi i64 [ %266, %iavf_adv_rss_parse_hash_flds.exit.thread.i ], [ %hfld.6.i.i, %iavf_adv_rss_parse_hash_flds.exit.i.if.end6.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %270 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %270, i32 noundef 3520, i32 noundef 2472) #24
  %tobool8.not.i34 = icmp eq ptr %call7.i.i.i33, null
  br i1 %tobool8.not.i34, label %if.end6.i.sw.epilog_crit_edge, label %if.end10.i35

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end10.i35:                                     ; preds = %if.end6.i
  %cfg_msg.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call7.i.i.i33, i32 0, i32 4
  %call11.i = tail call i32 @iavf_fill_adv_rss_cfg_msg(ptr noundef %cfg_msg.i, i32 noundef %switch.load, i64 noundef %hfld.6.i95.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %while.cond.preheader.i37, label %if.then13.i

while.cond.preheader.i37:                         ; preds = %if.end10.i35
  %crit_lock.i36 = getelementptr i8, ptr %netdev, i32 2564
  %call15106.i = tail call i32 @mutex_trylock(ptr noundef %crit_lock.i36) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15106.i)
  %tobool16.not107.i = icmp eq i32 %call15106.i, 0
  br i1 %tobool16.not107.i, label %while.cond.preheader.i37.while.body.i39_crit_edge, label %while.cond.preheader.i37.while.end.i40_crit_edge

while.cond.preheader.i37.while.end.i40_crit_edge: ; preds = %while.cond.preheader.i37
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i40

while.cond.preheader.i37.while.body.i39_crit_edge: ; preds = %while.cond.preheader.i37
  br label %while.body.i39

if.then13.i:                                      ; preds = %if.end10.i35
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i33) #20
  br label %sw.epilog

while.body.i39:                                   ; preds = %if.end19.i.while.body.i39_crit_edge, %while.cond.preheader.i37.while.body.i39_crit_edge
  %count.0108.i = phi i32 [ %dec.i38, %if.end19.i.while.body.i39_crit_edge ], [ 50, %while.cond.preheader.i37.while.body.i39_crit_edge ]
  %dec.i38 = add nsw i32 %count.0108.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i38)
  %cmp17.i = icmp eq i32 %dec.i38, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i33) #20
  br label %sw.epilog

if.end19.i:                                       ; preds = %while.body.i39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %271 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %271(i32 noundef 214748) #20
  %call15.i = tail call i32 @mutex_trylock(ptr noundef %crit_lock.i36) #20
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end19.i.while.body.i39_crit_edge, label %if.end19.i.while.end.i40_crit_edge

if.end19.i.while.end.i40_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i40

if.end19.i.while.body.i39_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i39

while.end.i40:                                    ; preds = %if.end19.i.while.end.i40_crit_edge, %while.cond.preheader.i37.while.end.i40_crit_edge
  %adv_rss_lock.i = getelementptr i8, ptr %netdev, i32 4904
  tail call void @_raw_spin_lock_bh(ptr noundef %adv_rss_lock.i) #20
  %call20.i = tail call ptr @iavf_find_adv_rss_cfg_by_hdrs(ptr noundef %add.ptr.i, i32 noundef %switch.load) #20
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.else35.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.end.i40
  %272 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %call20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %273)
  %cmp23.not.i = icmp eq i32 %273, 4
  br i1 %cmp23.not.i, label %if.else.i, label %if.then22.i.if.end45.thread.i_crit_edge

if.then22.i.if.end45.thread.i_crit_edge:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45.thread.i

if.else.i:                                        ; preds = %if.then22.i
  %hash_flds25.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call20.i, i32 0, i32 3
  %274 = ptrtoint ptr %hash_flds25.i to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %hash_flds25.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %275, i64 %hfld.6.i95.i)
  %cmp26.not.i = icmp eq i64 %275, %hfld.6.i95.i
  br i1 %cmp26.not.i, label %if.else.i.if.end45.thread.i_crit_edge, label %if.then27.i

if.else.i.if.end45.thread.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45.thread.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %276 = ptrtoint ptr %call20.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %call20.i, align 8
  %277 = ptrtoint ptr %hash_flds25.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %hfld.6.i95.i, ptr %hash_flds25.i, align 8
  %cfg_msg30.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call20.i, i32 0, i32 4
  %278 = call ptr @memcpy(ptr %cfg_msg30.i, ptr %cfg_msg.i, i32 2444)
  %aq_required.i41 = getelementptr i8, ptr %netdev, i32 2888
  %279 = ptrtoint ptr %aq_required.i41 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %aq_required.i41, align 8
  %or.i42 = or i64 %280, 134217728
  store i64 %or.i42, ptr %aq_required.i41, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %281 = load ptr, ptr @iavf_wq, align 4
  %watchdog_task.c102.i = getelementptr i8, ptr %netdev, i32 3360
  %call.i.c103.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %281, ptr noundef %watchdog_task.c102.i, i32 noundef 0) #20
  br label %if.then48.i

if.else35.i:                                      ; preds = %while.end.i40
  %282 = ptrtoint ptr %call7.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %call7.i.i.i33, align 8
  %packet_hdrs.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call7.i.i.i33, i32 0, i32 2
  %283 = ptrtoint ptr %packet_hdrs.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %switch.load, ptr %packet_hdrs.i, align 4
  %hash_flds37.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call7.i.i.i33, i32 0, i32 3
  %284 = ptrtoint ptr %hash_flds37.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %hfld.6.i95.i, ptr %hash_flds37.i, align 8
  %list.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call7.i.i.i33, i32 0, i32 1
  %adv_rss_list_head.i = getelementptr i8, ptr %netdev, i32 4896
  %prev.i.i = getelementptr i8, ptr %netdev, i32 4900
  %285 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %286, ptr noundef %adv_rss_list_head.i) #20
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else35.i.list_add_tail.exit.i_crit_edge

if.else35.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #22
  %287 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %list.i, ptr %prev.i.i, align 4
  %288 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %adv_rss_list_head.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iavf_adv_rss, ptr %call7.i.i.i33, i32 0, i32 1, i32 1
  %289 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %286, ptr %prev3.i.i.i, align 8
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %290)
  store volatile ptr %list.i, ptr %286, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.else35.i.list_add_tail.exit.i_crit_edge
  %aq_required38.i = getelementptr i8, ptr %netdev, i32 2888
  %291 = ptrtoint ptr %aq_required38.i to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %aq_required38.i, align 8
  %or39.i = or i64 %292, 134217728
  store i64 %or39.i, ptr %aq_required38.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iavf_wq to i32))
  %293 = load ptr, ptr @iavf_wq, align 4
  %watchdog_task.c.i = getelementptr i8, ptr %netdev, i32 3360
  %call.i.c.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %293, ptr noundef %watchdog_task.c.i, i32 noundef 0) #20
  tail call void @mutex_unlock(ptr noundef %crit_lock.i36) #20
  br label %sw.epilog

if.end45.thread.i:                                ; preds = %if.else.i.if.end45.thread.i_crit_edge, %if.then22.i.if.end45.thread.i_crit_edge
  %err.0.i = phi i32 [ -16, %if.then22.i.if.end45.thread.i_crit_edge ], [ -17, %if.else.i.if.end45.thread.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %adv_rss_lock.i) #20
  br label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.thread.i, %if.then27.i
  %err.098101.i = phi i32 [ %err.0.i, %if.end45.thread.i ], [ 0, %if.then27.i ]
  tail call void @mutex_unlock(ptr noundef %crit_lock.i36) #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i33) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then48.i, %list_add_tail.exit.i, %if.then18.i, %if.then13.i, %if.end6.i.sw.epilog_crit_edge, %iavf_adv_rss_parse_hash_flds.exit.i.sw.epilog_crit_edge, %switch.hole_check.sw.epilog_crit_edge, %if.end.i31.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.then15.i, %land.lhs.true.i.sw.epilog_crit_edge, %if.end10.i, %sw.bb3.sw.epilog_crit_edge, %if.end39.i, %if.then26.i, %if.end16.i.sw.epilog_crit_edge, %do.end12.i, %do.end.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -28, %do.end.i ], [ -17, %do.end12.i ], [ -22, %if.then26.i ], [ %retval.0.i72.i, %if.end39.i ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ -12, %if.end16.i.sw.epilog_crit_edge ], [ -95, %sw.bb3.sw.epilog_crit_edge ], [ %err.0.ph.i, %if.then15.i ], [ %err.0.ph.i, %land.lhs.true.i.sw.epilog_crit_edge ], [ %spec.select.i, %if.end10.i ], [ -22, %if.then13.i ], [ -22, %if.then18.i ], [ -95, %sw.bb5.sw.epilog_crit_edge ], [ -22, %iavf_adv_rss_parse_hash_flds.exit.i.sw.epilog_crit_edge ], [ -12, %if.end6.i.sw.epilog_crit_edge ], [ %err.098101.i, %if.then48.i ], [ -22, %if.end.i31.sw.epilog_crit_edge ], [ 0, %list_add_tail.exit.i ], [ -22, %switch.hole_check.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_rxfh_key_size(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_key_size = getelementptr i8, ptr %netdev, i32 4696
  %0 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_key_size, align 8
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_rxfh_indir_size(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_lut_size = getelementptr i8, ptr %netdev, i32 4698
  %0 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rss_lut_size, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %key, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %rss_key = getelementptr i8, ptr %netdev, i32 4700
  %1 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rss_key, align 4
  %rss_key_size = getelementptr i8, ptr %netdev, i32 4696
  %3 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rss_key_size, align 8
  %conv = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %key, ptr %2, i32 %conv)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %indir, null
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %for.cond.preheader

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

for.cond.preheader:                               ; preds = %if.end3
  %rss_lut_size = getelementptr i8, ptr %netdev, i32 4698
  %6 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rss_lut_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp22.not = icmp eq i16 %7, 0
  br i1 %cmp22.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rss_lut = getelementptr i8, ptr %netdev, i32 4704
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %rss_lut to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rss_lut, align 8
  %arrayidx = getelementptr i8, ptr %9, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %11 to i32
  %arrayidx11 = getelementptr i32, ptr %indir, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv9, ptr %arrayidx11, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %13 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rss_lut_size, align 2
  %15 = zext i16 %14 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end12:                                         ; preds = %for.body.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %key, null
  %tobool6.not = icmp eq ptr %indir, null
  %or.cond = and i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %rss_key = getelementptr i8, ptr %netdev, i32 4700
  %0 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_key, align 4
  %rss_key_size = getelementptr i8, ptr %netdev, i32 4696
  %2 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rss_key_size, align 8
  %conv11 = zext i16 %3 to i32
  %4 = call ptr @memcpy(ptr %1, ptr %key, i32 %conv11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  br i1 %tobool6.not, label %if.end12.if.end22_crit_edge, label %for.cond.preheader

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end12
  %rss_lut_size = getelementptr i8, ptr %netdev, i32 4698
  %5 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rss_lut_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1737.not = icmp eq i16 %6, 0
  br i1 %cmp1737.not, label %for.cond.preheader.if.end22_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rss_lut = getelementptr i8, ptr %netdev, i32 4704
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %conv19 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %rss_lut to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rss_lut, align 8
  %arrayidx21 = getelementptr i8, ptr %10, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %arrayidx21, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %12 = ptrtoint ptr %rss_lut_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rss_lut_size, align 2
  %14 = zext i16 %13 to i32
  %cmp17 = icmp ult i32 %indvars.iv.next, %14
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end22:                                         ; preds = %for.body.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %call23 = tail call i32 @iavf_config_rss(ptr noundef %add.ptr.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iavf_get_channels(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi_res = getelementptr i8, ptr %netdev, i32 3480
  %0 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi_res, align 8
  %num_queue_pairs = getelementptr inbounds %struct.virtchnl_vsi_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %3 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %4 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %max_combined, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %5 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %6 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %other_count, align 4
  %num_active_queues = getelementptr i8, ptr %netdev, i32 2820
  %7 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_active_queues, align 4
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %9 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %ch) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  %vf_res = getelementptr i8, ptr %netdev, i32 3476
  %2 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_cap_flags, align 4
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_tc = getelementptr i8, ptr %netdev, i32 4784
  %6 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr i8, ptr %netdev, i32 2900
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34) #23
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %vsi_res = getelementptr i8, ptr %netdev, i32 3480
  %10 = ptrtoint ptr %vsi_res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi_res, align 8
  %num_queue_pairs = getelementptr inbounds %struct.virtchnl_vsi_resource, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_queue_pairs, align 2
  %conv3 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv3)
  %cmp4 = icmp ugt i32 %1, %conv3
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %num_active_queues = getelementptr i8, ptr %netdev, i32 2820
  %14 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_active_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %15)
  %cmp8 = icmp eq i32 %1, %15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %16 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.end11
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %18 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %20 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp16.not = icmp eq i32 %21, 1
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %num_req_queues = getelementptr i8, ptr %netdev, i32 2824
  %22 = ptrtoint ptr %num_req_queues to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %1, ptr %num_req_queues, align 8
  %flags = getelementptr i8, ptr %netdev, i32 2884
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 65536
  store i32 %or, ptr %flags, align 4
  tail call void @iavf_schedule_reset(ptr noundef %add.ptr.i) #20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %i.057 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 10) #20
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and23 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.then29, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.then29:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and31 = and i32 %28, -65537
  store i32 %and31, ptr %flags, align 4
  %29 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %1, ptr %num_active_queues, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %for.body.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %if.then29 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_per_queue_coalesce(ptr nocapture noundef readonly %netdev, i32 noundef %queue, ptr nocapture noundef writeonly %ec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %work_limit.i = getelementptr i8, ptr %netdev, i32 4676
  %0 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %work_limit.i, align 4
  %conv.i = zext i16 %1 to i32
  %tx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %2 = ptrtoint ptr %tx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %tx_max_coalesced_frames.i, align 4
  %3 = load i16, ptr %work_limit.i, align 4
  %conv3.i = zext i16 %3 to i32
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3.i, ptr %rx_max_coalesced_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp.i = icmp slt i32 %queue, 0
  br i1 %cmp.i, label %entry.if.end8.i_crit_edge, label %if.else.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

if.else.i:                                        ; preds = %entry
  %num_active_queues.i = getelementptr i8, ptr %netdev, i32 2820
  %5 = ptrtoint ptr %num_active_queues.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_active_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %queue)
  %cmp5.not.i = icmp sgt i32 %6, %queue
  br i1 %cmp5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.__iavf_get_coalesce.exit_crit_edge

if.else.i.__iavf_get_coalesce.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__iavf_get_coalesce.exit

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %queue.addr.0.i = phi i32 [ %queue, %if.else.i.if.end8.i_crit_edge ], [ 0, %entry.if.end8.i_crit_edge ]
  %rx_rings.i = getelementptr i8, ptr %netdev, i32 2840
  %7 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_rings.i, align 8
  %tx_rings.i = getelementptr i8, ptr %netdev, i32 2828
  %9 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_rings.i, align 4
  %itr_setting.i = getelementptr %struct.iavf_ring, ptr %8, i32 %queue.addr.0.i, i32 9
  %11 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %itr_setting.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %tobool.not.i = icmp sgt i16 %12, -1
  br i1 %tobool.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %13 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use_adaptive_rx_coalesce.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %itr_setting13.i = getelementptr %struct.iavf_ring, ptr %10, i32 %queue.addr.0.i, i32 9
  %14 = ptrtoint ptr %itr_setting13.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %itr_setting13.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool16.not.i = icmp sgt i16 %15, -1
  br i1 %tobool16.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then17.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %16 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %use_adaptive_tx_coalesce.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end12.i.if.end18.i_crit_edge
  %17 = ptrtoint ptr %itr_setting.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %itr_setting.i, align 32
  %19 = and i16 %18, 32767
  %and21.i = zext i16 %19 to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %20 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and21.i, ptr %rx_coalesce_usecs.i, align 4
  %21 = ptrtoint ptr %itr_setting13.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %itr_setting13.i, align 32
  %23 = and i16 %22, 32767
  %and24.i = zext i16 %23 to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %24 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and24.i, ptr %tx_coalesce_usecs.i, align 4
  br label %__iavf_get_coalesce.exit

__iavf_get_coalesce.exit:                         ; preds = %if.end18.i, %if.else.i.__iavf_get_coalesce.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end18.i ], [ -22, %if.else.i.__iavf_get_coalesce.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iavf_set_per_queue_coalesce(ptr noundef %netdev, i32 noundef %queue, ptr nocapture noundef readonly %ec) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__iavf_set_coalesce(ptr noundef %netdev, ptr noundef %ec, i32 noundef %queue)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iavf_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %cmd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = call ptr @memset(ptr %link_modes, i32 0, i32 12)
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %autoneg, align 1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -17, ptr %port, align 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %duplex, align 4
  %vf_res = getelementptr i8, ptr %netdev, i32 3476
  %4 = ptrtoint ptr %vf_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_res, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf_cap_flags, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %link_speed_mbps = getelementptr i8, ptr %netdev, i32 3468
  %8 = ptrtoint ptr %link_speed_mbps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_speed_mbps, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %9, label %if.then.cleanup.sink.split_crit_edge [
    i32 0, label %if.then.if.else_crit_edge
    i32 -1, label %if.then.if.else_crit_edge51
  ]

if.then.if.else_crit_edge51:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then.if.else_crit_edge, %if.then.if.else_crit_edge51
  br label %cleanup.sink.split

if.end10:                                         ; preds = %entry
  %link_speed = getelementptr i8, ptr %netdev, i32 3464
  %11 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_speed, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %12, label %if.end10.cleanup_crit_edge [
    i32 16, label %if.end10.cleanup.sink.split_crit_edge
    i32 64, label %sw.bb13
    i32 32, label %sw.bb16
    i32 8, label %sw.bb19
    i32 128, label %sw.bb22
    i32 1, label %sw.bb25
    i32 4, label %sw.bb28
    i32 2, label %sw.bb31
  ]

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb13:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %if.end10.cleanup.sink.split_crit_edge, %if.else, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 25000, %sw.bb13 ], [ 20000, %sw.bb16 ], [ 10000, %sw.bb19 ], [ 5000, %sw.bb22 ], [ 2500, %sw.bb25 ], [ 1000, %sw.bb28 ], [ 100, %sw.bb31 ], [ -1, %if.else ], [ %9, %if.then.cleanup.sink.split_crit_edge ], [ 40000, %if.end10.cleanup.sink.split_crit_edge ]
  %speed12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %speed12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %speed12, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iavf_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, i32 noundef %queue) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 8
  %0 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 4
  %2 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv = trunc i32 %1 to i16
  %work_limit = getelementptr i8, ptr %netdev, i32 4676
  %4 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %work_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_coalesce_usecs, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %lor.lhs.false16 [
    i32 0, label %if.then5
    i32 1, label %if.end.do.body21_crit_edge
  ]

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body21

if.then5:                                         ; preds = %if.end
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %8 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then5.if.end67_crit_edge, label %do.body

if.then5.if.end67_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

do.body:                                          ; preds = %if.then5
  %msg_enable = getelementptr i8, ptr %netdev, i32 3532
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg_enable, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool9.not = icmp eq i16 %12, 0
  br i1 %tobool9.not, label %do.body.if.end67_crit_edge, label %do.body.if.end67.sink.split_crit_edge

do.body.if.end67.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67.sink.split

do.body.if.end67_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

lor.lhs.false16:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %6)
  %cmp18 = icmp ugt i32 %6, 8160
  br i1 %cmp18, label %lor.lhs.false16.do.body21_crit_edge, label %if.else30

lor.lhs.false16.do.body21_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false16.do.body21_crit_edge, %if.end.do.body21_crit_edge
  %msg_enable22 = getelementptr i8, ptr %netdev, i32 3532
  %13 = ptrtoint ptr %msg_enable22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msg_enable22, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool25.not = icmp eq i16 %15, 0
  br i1 %tobool25.not, label %do.body21.cleanup_crit_edge, label %if.then26

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.2) #23
  br label %cleanup

if.else30:                                        ; preds = %lor.lhs.false16
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %16 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_coalesce_usecs, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %17, label %lor.lhs.false50 [
    i32 0, label %if.then33
    i32 1, label %if.else30.do.body55_crit_edge
  ]

if.else30.do.body55_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body55

if.then33:                                        ; preds = %if.else30
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %19 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  br i1 %tobool34.not, label %if.then33.if.end67_crit_edge, label %do.body36

if.then33.if.end67_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

do.body36:                                        ; preds = %if.then33
  %msg_enable37 = getelementptr i8, ptr %netdev, i32 3532
  %21 = ptrtoint ptr %msg_enable37 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg_enable37, align 4
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool40.not = icmp eq i16 %23, 0
  br i1 %tobool40.not, label %do.body36.if.end67_crit_edge, label %do.body36.if.end67.sink.split_crit_edge

do.body36.if.end67.sink.split_crit_edge:          ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67.sink.split

do.body36.if.end67_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

lor.lhs.false50:                                  ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %17)
  %cmp52 = icmp ugt i32 %17, 8160
  br i1 %cmp52, label %lor.lhs.false50.do.body55_crit_edge, label %lor.lhs.false50.if.end67_crit_edge

lor.lhs.false50.if.end67_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end67

lor.lhs.false50.do.body55_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body55

do.body55:                                        ; preds = %lor.lhs.false50.do.body55_crit_edge, %if.else30.do.body55_crit_edge
  %msg_enable56 = getelementptr i8, ptr %netdev, i32 3532
  %24 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msg_enable56, align 4
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool59.not = icmp eq i16 %26, 0
  br i1 %tobool59.not, label %do.body55.cleanup_crit_edge, label %if.then60

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.4) #23
  br label %cleanup

if.end67.sink.split:                              ; preds = %do.body36.if.end67.sink.split_crit_edge, %do.body.if.end67.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.1, %do.body.if.end67.sink.split_crit_edge ], [ @.str.3, %do.body36.if.end67.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull %.str.3.sink) #23
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %lor.lhs.false50.if.end67_crit_edge, %do.body36.if.end67_crit_edge, %if.then33.if.end67_crit_edge, %do.body.if.end67_crit_edge, %if.then5.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp68 = icmp slt i32 %queue, 0
  %num_active_queues = getelementptr i8, ptr %netdev, i32 2820
  %27 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_active_queues, align 4
  br i1 %cmp68, label %for.cond.preheader, label %if.else77

for.cond.preheader:                               ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp71134 = icmp sgt i32 %28, 0
  br i1 %cmp71134, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end98_crit_edge

for.cond.preheader.if.end98_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0135, 1
  %29 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_active_queues, align 4
  %cmp71 = icmp slt i32 %inc, %30
  br i1 %cmp71, label %for.cond.for.body_crit_edge, label %for.cond.if.end98_crit_edge

for.cond.if.end98_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call73 = tail call fastcc i32 @iavf_set_itr_per_queue(ptr noundef %add.ptr.i, ptr noundef %ec, i32 noundef %i.0135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %queue)
  %cmp79 = icmp sgt i32 %28, %queue
  br i1 %cmp79, label %if.then81, label %do.body87

if.then81:                                        ; preds = %if.else77
  %call82 = tail call fastcc i32 @iavf_set_itr_per_queue(ptr noundef %add.ptr.i, ptr noundef %ec, i32 noundef %queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then81.if.end98_crit_edge, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then81.if.end98_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

do.body87:                                        ; preds = %if.else77
  %msg_enable88 = getelementptr i8, ptr %netdev, i32 3532
  %31 = ptrtoint ptr %msg_enable88 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %msg_enable88, align 4
  %33 = and i16 %32, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool91.not = icmp eq i16 %33, 0
  br i1 %tobool91.not, label %do.body87.cleanup_crit_edge, label %if.then92

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #22
  %sub = add i32 %28, -1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %sub) #23
  br label %cleanup

if.end98:                                         ; preds = %if.then81.if.end98_crit_edge, %for.cond.if.end98_crit_edge, %for.cond.preheader.if.end98_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then92, %do.body87.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then60, %do.body55.cleanup_crit_edge, %if.then26, %do.body21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -22, %if.then26 ], [ -22, %do.body21.cleanup_crit_edge ], [ -22, %if.then60 ], [ -22, %do.body55.cleanup_crit_edge ], [ -22, %if.then81.cleanup_crit_edge ], [ -22, %if.then92 ], [ -22, %do.body87.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iavf_set_itr_per_queue(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %ec, i32 noundef %queue) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_rings = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_rings, align 8
  %tx_rings = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_rings, align 4
  %itr_setting2 = getelementptr %struct.iavf_ring, ptr %1, i32 %queue, i32 9
  %4 = ptrtoint ptr %itr_setting2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %itr_setting2, align 32
  %6 = and i16 %5, 32767
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %7 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv4 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv4)
  %cmp.not = icmp eq i32 %8, %conv4
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %9 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end10_crit_edge, label %do.body

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

do.body:                                          ; preds = %land.lhs.true
  %msg_enable = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 43
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_enable, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.6) #23
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %itr_setting11 = getelementptr %struct.iavf_ring, ptr %3, i32 %queue, i32 9
  %16 = ptrtoint ptr %itr_setting11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %itr_setting11, align 32
  %18 = and i16 %17, 32767
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %19 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv15 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv15)
  %cmp16.not = icmp eq i32 %20, %conv15
  br i1 %cmp16.not, label %if.end10.if.end31_crit_edge, label %land.lhs.true18

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31

land.lhs.true18:                                  ; preds = %if.end10
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %21 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end31_crit_edge, label %do.body21

land.lhs.true18.if.end31_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31

do.body21:                                        ; preds = %land.lhs.true18
  %msg_enable22 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 43
  %23 = ptrtoint ptr %msg_enable22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msg_enable22, align 4
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool25.not = icmp eq i16 %25, 0
  br i1 %tobool25.not, label %do.body21.cleanup_crit_edge, label %if.then26

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  %netdev27 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 27
  %26 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev27, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.7) #23
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true18.if.end31_crit_edge, %if.end10.if.end31_crit_edge
  %28 = trunc i32 %8 to i16
  %29 = add i16 %28, 1
  %conv34 = and i16 %29, 8190
  %30 = ptrtoint ptr %itr_setting2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv34, ptr %itr_setting2, align 32
  %31 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_coalesce_usecs, align 4
  %33 = trunc i32 %32 to i16
  %34 = add i16 %33, 1
  %conv39 = and i16 %34, 8190
  %35 = ptrtoint ptr %itr_setting11 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv39, ptr %itr_setting11, align 32
  %36 = load i16, ptr %itr_setting2, align 32
  %37 = or i16 %36, -32768
  store i16 %37, ptr %itr_setting2, align 32
  %use_adaptive_rx_coalesce44 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %38 = ptrtoint ptr %use_adaptive_rx_coalesce44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %use_adaptive_rx_coalesce44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool45.not = icmp eq i32 %39, 0
  br i1 %tobool45.not, label %if.then46, label %if.end31.if.end50_crit_edge

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %40 = and i16 %36, 32767
  %41 = ptrtoint ptr %itr_setting2 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %itr_setting2, align 32
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end31.if.end50_crit_edge
  %42 = ptrtoint ptr %itr_setting11 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %itr_setting11, align 32
  %44 = or i16 %43, -32768
  store i16 %44, ptr %itr_setting11, align 32
  %use_adaptive_tx_coalesce55 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %45 = ptrtoint ptr %use_adaptive_tx_coalesce55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %use_adaptive_tx_coalesce55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool56.not = icmp eq i32 %46, 0
  br i1 %tobool56.not, label %if.then57, label %if.end50.if.end62_crit_edge

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %47 = and i16 %43, 32767
  %48 = ptrtoint ptr %itr_setting11 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %itr_setting11, align 32
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end50.if.end62_crit_edge
  %q_vector63 = getelementptr %struct.iavf_ring, ptr %1, i32 %queue, i32 27
  %49 = ptrtoint ptr %q_vector63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q_vector63, align 4
  %51 = ptrtoint ptr %itr_setting2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %itr_setting2, align 32
  %53 = and i16 %52, 32767
  %target_itr = getelementptr inbounds %struct.iavf_q_vector, ptr %50, i32 0, i32 3, i32 5
  %54 = ptrtoint ptr %target_itr to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %target_itr, align 2
  %q_vector68 = getelementptr %struct.iavf_ring, ptr %3, i32 %queue, i32 27
  %55 = ptrtoint ptr %q_vector68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %q_vector68, align 4
  %57 = ptrtoint ptr %itr_setting11 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %itr_setting11, align 32
  %59 = and i16 %58, 32767
  %target_itr73 = getelementptr inbounds %struct.iavf_q_vector, ptr %56, i32 0, i32 4, i32 5
  %60 = ptrtoint ptr %target_itr73 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %target_itr73, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then26, %do.body21.cleanup_crit_edge, %if.then9, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %if.then9 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then26 ], [ -22, %do.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__iavf_add_stat_strings(ptr nocapture noundef %p, ptr nocapture noundef readonly %stats, i32 noundef %size, ...) unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not = icmp eq i32 %size, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #20
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !98
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.iavf_stats, ptr %stats, i32 %i.05
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %2, i32 noundef 32, ptr noundef %arrayidx, [1 x i32] %.fca.0.insert)
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr, ptr %p, align 4
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #20
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_schedule_request_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_add_queue_stats(ptr nocapture noundef %data, ptr noundef %ring) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %syncp3 = getelementptr inbounds %struct.iavf_ring, ptr %ring, i32 0, i32 22
  %tobool.not = icmp eq ptr %ring, null
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring, i32 0, i32 22, i32 0, i32 1
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !99
  %and.i.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_off() #20
  %1 = tail call ptr @llvm.returnaddress(i32 0) #20
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #20
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %2) #20
  tail call void @trace_hardirqs_on() #20
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #22
  %3 = tail call ptr @llvm.returnaddress(i32 0) #20
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #20
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %4) #20
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !100
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !101

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #20, !srcloc !102
  %6 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp3, align 4
  %and18.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !104
  %8 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp3, align 4
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %9, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !105
  br label %cond.end

cond.end:                                         ; preds = %u64_stats_fetch_begin_irq.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %.lcssa.i.i, %u64_stats_fetch_begin_irq.exit ], [ 0, %entry.cond.end_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br i1 %tobool.not, label %iavf_add_one_ethtool_stat.exit.1.thread, label %land.rhs

iavf_add_one_ethtool_stat.exit.1.thread:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %11, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx.116 = getelementptr i64, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx.116 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx.116, align 8
  br label %do.end

land.rhs:                                         ; preds = %cond.end
  %add.ptr.i = getelementptr i8, ptr %ring, i32 56
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %11, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %arrayidx.1 = getelementptr i64, ptr %20, i32 1
  %add.ptr.i.1 = getelementptr i8, ptr %ring, i32 64
  %21 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.1, align 8
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !106
  %24 = ptrtoint ptr %syncp3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %syncp3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cond)
  %cmp.i.i.i.i.not = icmp eq i32 %25, %cond
  br i1 %cmp.i.i.i.i.not, label %land.rhs.do.end_crit_edge, label %land.rhs.cond.false_crit_edge

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.false

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %iavf_add_one_ethtool_stat.exit.1.thread
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i64, ptr %27, i32 2
  store ptr %add.ptr, ptr %data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iavf_find_fdir_fltr_by_loc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iavf_find_adv_rss_cfg_by_hdrs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_fdir_list_add_fltr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iavf_fdir_is_dup_fltr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_fill_fdir_add_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_fill_adv_rss_cfg_msg(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_config_rss(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_schedule_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #19 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @iavf_ethtool_ops, !1, !"iavf_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 1970, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 585, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 836, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 839, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 843, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 846, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 861, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 778, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 787, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 638, i32 22}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 646, i32 23}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 651, i32 23}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 657, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug527, !25, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 662, i32 3}
!32 = !{ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug528, !31, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 668, i32 3}
!35 = !{ptr @iavf_set_ringparam.__UNIQUE_ID_ddebug529, !34, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 422, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 424, i32 3}
!40 = !{ptr @iavf_gstrings_stats, !41, !"iavf_gstrings_stats", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 223, i32 32}
!42 = !{ptr @iavf_gstrings_queue_stats, !43, !"iavf_gstrings_queue_stats", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 54, i32 32}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 399, i32 35}
!46 = !{ptr @iavf_gstrings_priv_flags, !47, !"iavf_gstrings_priv_flags", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 259, i32 37}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 98, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 519, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iavf_set_priv_flags._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @iavf_set_priv_flags._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 1407, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iavf_add_fdir_ethtool._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @iavf_add_fdir_ethtool._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 1415, i32 3}
!73 = !{ptr @iavf_add_fdir_ethtool._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @iavf_add_fdir_ethtool._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/iavf/iavf_ethtool.c", i32 1845, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iavf_set_channels._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @iavf_set_channels._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2149031513, i64 2149031518, i64 2149031531, i64 2149031575, i64 2149031609, i64 2149031630}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2149434295}
!94 = !{i64 2149434561}
!95 = !{i64 2158497385}
!96 = !{i64 927628, i64 927649, i64 927672, i64 927691, i64 927710}
!97 = !{i64 2158497803}
!98 = !{!"auto-init"}
!99 = !{i64 821836, i64 821897}
!100 = !{i64 824568}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 824853}
!103 = !{i64 2154851585}
!104 = !{i64 2154851427}
!105 = !{i64 2154851755}
!106 = !{i64 2150049962}
