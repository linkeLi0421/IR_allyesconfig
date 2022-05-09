; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_txrx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%struct.atomic_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iavf_rx_ptype_decoded = type { i24 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.178, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.178 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iavf_ring = type { ptr, ptr, ptr, ptr, %union.anon.151, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.iavf_queue_stats, %struct.u64_stats_sync, %union.anon.153, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, [64 x i8] }
%union.anon.151 = type { ptr }
%struct.iavf_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.153 = type { %struct.iavf_tx_queue_stats }
%struct.iavf_tx_queue_stats = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.iavf_tx_buffer = type { ptr, %union.anon.152, i32, i16, i32, i32, i32 }
%union.anon.152 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.129, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.129 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.155, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.155 = type { ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.iavf_q_vector = type { ptr, ptr, %struct.napi_struct, %struct.iavf_ring_container, %struct.iavf_ring_container, i32, i8, i8, i16, i16, [31 x i8], i8, %struct.cpumask, %struct.irq_affinity_notify }
%struct.iavf_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.iavf_rx_buffer = type { i32, ptr, i16, i16 }
%union.iavf_32byte_rx_desc = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64, i64, i64 }
%struct.anon.161 = type { %struct.anon.162, %struct.anon.166, %struct.anon.167, %struct.anon.168 }
%struct.anon.162 = type { %struct.anon.163, %union.anon.165 }
%struct.anon.163 = type { %union.anon.164, i16 }
%union.anon.164 = type { i16 }
%union.anon.165 = type { i32 }
%struct.anon.166 = type { i64 }
%struct.anon.167 = type { i16, i16, i16, i16 }
%struct.anon.168 = type { %union.anon.169, %union.anon.170 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i32 }
%struct.iavf_tx_desc = type { i64, i64 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iavf_tx_context_desc = type { i32, i16, i16, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.126, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.126 = type { %struct.atomic_t }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/iavf/iavf_txrx.c\00", [52 x i8] zeroinitializer }, align 32
@iavf_setup_tx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 636, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iavf_setup_tx_descriptors\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_setup_tx_descriptors._entry_ptr = internal global ptr @iavf_setup_tx_descriptors._entry, section ".printk_index", align 4
@iavf_setup_rx_descriptors.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&rx_ring->syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@iavf_setup_rx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 755, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Rx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iavf_setup_rx_descriptors\00", [38 x i8] zeroinitializer }, align 32
@iavf_setup_rx_descriptors._entry_ptr = internal global ptr @iavf_setup_rx_descriptors._entry, section ".printk_index", align 4
@__tracepoint_iavf_clean_tx_irq = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/iavf/iavf_trace.h\00", [51 x i8] zeroinitializer }, align 32
@trace_iavf_clean_tx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_iavf_clean_tx_irq_unmap = external dso_local global %struct.tracepoint, align 4
@trace_iavf_clean_tx_irq_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_iavf_clean_rx_irq = external dso_local global %struct.tracepoint, align 4
@trace_iavf_clean_rx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iavf_ptype_lookup = external dso_local local_unnamed_addr global [0 x %struct.iavf_rx_ptype_decoded], align 4
@__tracepoint_iavf_clean_rx_irq_rx = external dso_local global %struct.tracepoint, align 4
@trace_iavf_clean_rx_irq_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_iavf_xmit_frame_ring = external dso_local global %struct.tracepoint, align 4
@trace_iavf_xmit_frame_ring.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iavf_tx_prepare_vlan_flags.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str, ptr @.str.16, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iavf\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iavf_tx_prepare_vlan_flags\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported Tx VLAN tag location requested\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@iavf_tx_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 2364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iavf_tx_map\00", [20 x i8] zeroinitializer }, align 32
@iavf_tx_map._entry_ptr = internal global ptr @iavf_tx_map._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__tracepoint_iavf_xmit_frame_ring_drop = external dso_local global %struct.tracepoint, align 4
@trace_iavf_xmit_frame_ring_drop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 17, i64 41, i64 47]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 16, i64 32, i64 64]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 623, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 635, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 745, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 754, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_trace.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 95, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 271, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1368, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1809, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 598, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private constant [47 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_txrx.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 2364, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 6 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @iavf_setup_rx_descriptors._entry, ptr @iavf_setup_rx_descriptors._entry_ptr, ptr @iavf_setup_tx_descriptors._entry, ptr @iavf_setup_tx_descriptors._entry_ptr, ptr @iavf_tx_map._entry, ptr @iavf_tx_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iavf_setup_rx_descriptors.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_setup_tx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_setup_rx_descriptors.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_setup_rx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_tx_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_clean_tx_ring(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 16
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp22.not = icmp eq i16 %4, 0
  br i1 %cmp22.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev11.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %iavf_unmap_and_free_tx_resource.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %iavf_unmap_and_free_tx_resource.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 16
  %arrayidx = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv
  %7 = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %tx_flags.i = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 6
  %10 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %9) #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  %len.i = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 5
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.iavf_unmap_and_free_tx_resource.exit_crit_edge, label %if.end.i.if.end15.sink.split.i_crit_edge

if.end.i.if.end15.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i

if.end.i.iavf_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_unmap_and_free_tx_resource.exit

if.else7.i:                                       ; preds = %for.body
  %len8.i = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 5
  %14 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %if.else7.i.iavf_unmap_and_free_tx_resource.exit_crit_edge, label %if.else7.i.if.end15.sink.split.i_crit_edge

if.else7.i.if.end15.sink.split.i_crit_edge:       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i

if.else7.i.iavf_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_unmap_and_free_tx_resource.exit

if.end15.sink.split.i:                            ; preds = %if.else7.i.if.end15.sink.split.i_crit_edge, %if.end.i.if.end15.sink.split.i_crit_edge
  %.sink33.i = phi i32 [ %13, %if.end.i.if.end15.sink.split.i_crit_edge ], [ %15, %if.else7.i.if.end15.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev11.i, align 8
  %dma12.i = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 4
  %18 = ptrtoint ptr %dma12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma12.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %.sink33.i, i32 noundef 1, i32 noundef 0) #12
  br label %iavf_unmap_and_free_tx_resource.exit

iavf_unmap_and_free_tx_resource.exit:             ; preds = %if.end15.sink.split.i, %if.else7.i.iavf_unmap_and_free_tx_resource.exit_crit_edge, %if.end.i.iavf_unmap_and_free_tx_resource.exit_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %7, align 4
  %len16.i = getelementptr %struct.iavf_tx_buffer, ptr %6, i32 %indvars.iv, i32 5
  %22 = ptrtoint ptr %len16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %len16.i, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count, align 2
  %25 = zext i16 %24 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %25
  br i1 %cmp, label %iavf_unmap_and_free_tx_resource.exit.for.body_crit_edge, label %for.end.loopexit

iavf_unmap_and_free_tx_resource.exit.for.body_crit_edge: ; preds = %iavf_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %iavf_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i16 %24 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 28
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 16
  %28 = call ptr @memset(ptr %27, i32 0, i32 %.lcssa)
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 1
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 4
  %size = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 24
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 32
  %33 = call ptr @memset(ptr %30, i32 0, i32 %32)
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 13
  %34 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %next_to_use, align 8
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 14
  %35 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %next_to_clean, align 2
  %netdev = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 3
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  %tobool5.not = icmp eq ptr %37, null
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %queue_index.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 6
  %38 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %queue_index.i, align 8
  %conv.i = zext i16 %39 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %41, i32 %conv.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #12
  %dql.i = getelementptr %struct.netdev_queue, ptr %41, i32 %conv.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_free_tx_resources(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iavf_clean_tx_ring(ptr noundef %tx_ring)
  %0 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 16
  tail call void @kfree(ptr noundef %2) #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 16
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 24
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 32
  %dma = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 25
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_get_tx_pending(ptr nocapture noundef readonly %ring, i1 zeroext %in_sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %conv = zext i16 %1 to i32
  %tail1 = getelementptr inbounds %struct.iavf_ring, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !75
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp4 = icmp ugt i32 %5, %conv
  br i1 %cmp4, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.iavf_ring, ptr %ring, i32 0, i32 10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 2
  %conv6 = zext i16 %7 to i32
  %add = add i32 %5, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %.pn = phi i32 [ %add, %cond.false ], [ %5, %if.then.cond.end_crit_edge ]
  %cond = sub i32 %.pn, %conv
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_detect_recover_hung(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.iavf_vsi, ptr %vsi, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool1.not = icmp eq i32 %and1.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %netdev4 = getelementptr inbounds %struct.iavf_vsi, ptr %vsi, i32 0, i32 1
  %2 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %7 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi, align 4
  %num_active_queues49 = getelementptr inbounds %struct.iavf_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %num_active_queues49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_active_queues49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp50.not = icmp eq i32 %10, 0
  br i1 %cmp50.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %41, %for.inc.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %tx_rings = getelementptr inbounds %struct.iavf_adapter, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051
  %tobool12.not = icmp eq ptr %arrayidx, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %stats = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 21
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stats, align 8
  %18 = trunc i64 %17 to i32
  %conv = and i32 %18, 2147483647
  %prev_pkt_ctr = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 23, i32 0, i32 5
  %19 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prev_pkt_ctr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp16 = icmp eq i32 %20, %conv
  br i1 %cmp16, label %if.then18, label %do.end

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %q_vector = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 27
  %21 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q_vector, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsi, align 4
  %hw.i = getelementptr inbounds %struct.iavf_adapter, ptr %24, i32 0, i32 29
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 8
  %reg_idx.i = getelementptr inbounds %struct.iavf_q_vector, ptr %22, i32 0, i32 9
  %27 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg_idx.i, align 8
  %conv.i = zext i16 %28 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 14336
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 486539265) #12, !srcloc !78
  br label %for.inc

do.end:                                           ; preds = %if.then14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  %next_to_clean.i = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 14
  %29 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next_to_clean.i, align 2
  %conv.i45 = zext i16 %30 to i32
  %tail1.i = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 8
  %31 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail1.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !75
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i45)
  %cmp.not.i = icmp eq i32 %34, %conv.i45
  br i1 %cmp.not.i, label %do.end.iavf_get_tx_pending.exit.thread_crit_edge, label %if.then.i

do.end.iavf_get_tx_pending.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_get_tx_pending.exit.thread

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i45)
  %cmp4.i = icmp ugt i32 %34, %conv.i45
  br i1 %cmp4.i, label %if.then.i.iavf_get_tx_pending.exit_crit_edge, label %cond.false.i

if.then.i.iavf_get_tx_pending.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_get_tx_pending.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr %struct.iavf_ring, ptr %13, i32 %i.051, i32 10
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count.i, align 2
  %conv6.i = zext i16 %36 to i32
  %add.i46 = add i32 %34, %conv6.i
  br label %iavf_get_tx_pending.exit

iavf_get_tx_pending.exit:                         ; preds = %cond.false.i, %if.then.i.iavf_get_tx_pending.exit_crit_edge
  %.pn.i = phi i32 [ %add.i46, %cond.false.i ], [ %34, %if.then.i.iavf_get_tx_pending.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.pn.i, i32 %conv.i45)
  %tobool24.not = icmp eq i32 %.pn.i, %conv.i45
  br i1 %tobool24.not, label %iavf_get_tx_pending.exit.iavf_get_tx_pending.exit.thread_crit_edge, label %iavf_get_tx_pending.exit._crit_edge

iavf_get_tx_pending.exit._crit_edge:              ; preds = %iavf_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %37

iavf_get_tx_pending.exit.iavf_get_tx_pending.exit.thread_crit_edge: ; preds = %iavf_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_get_tx_pending.exit.thread

iavf_get_tx_pending.exit.thread:                  ; preds = %iavf_get_tx_pending.exit.iavf_get_tx_pending.exit.thread_crit_edge, %do.end.iavf_get_tx_pending.exit.thread_crit_edge
  br label %37

37:                                               ; preds = %iavf_get_tx_pending.exit.thread, %iavf_get_tx_pending.exit._crit_edge
  %38 = phi i32 [ -1, %iavf_get_tx_pending.exit.thread ], [ %conv, %iavf_get_tx_pending.exit._crit_edge ]
  %39 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %prev_pkt_ctr, align 8
  br label %for.inc

for.inc:                                          ; preds = %37, %if.then18, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %40 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vsi, align 4
  %num_active_queues = getelementptr inbounds %struct.iavf_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %num_active_queues to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_active_queues, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_force_wb(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %q_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %hw = getelementptr inbounds %struct.iavf_adapter, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %reg_idx = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 9
  %4 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_idx, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 14336
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 486539265) #12, !srcloc !78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_setup_tx_descriptors(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 16
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !80

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 623, i32 noundef 9, ptr noundef null) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %2, align 16
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.end17.err_crit_edge, label %if.end26

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end26:                                         ; preds = %if.end17
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  %conv28 = zext i16 %9 to i32
  %mul29 = shl nuw nsw i32 %conv28, 4
  %size = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 24
  %add = add nuw nsw i32 %mul29, 4095
  %and = and i32 %add, 2093056
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %size, align 32
  %dma = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 25
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef nonnull %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #12
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %desc, align 4
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %13) #16
  br label %err

if.end41:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 13
  %14 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %next_to_use, align 8
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 14
  %15 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %next_to_clean, align 2
  %prev_pkt_ctr = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 23, i32 0, i32 5
  %16 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %prev_pkt_ctr, align 8
  br label %cleanup

err:                                              ; preds = %do.end39, %if.end17.err_crit_edge
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 16
  tail call void @kfree(ptr noundef %18) #12
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %2, align 16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -12, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_clean_rx_ring(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 16
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.end:                                           ; preds = %entry
  %skb = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 30
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %count = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp50.not = icmp eq i16 %7, 0
  br i1 %cmp50.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %dev = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 2
  %rx_buf_len = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 16
  %page = getelementptr %struct.iavf_rx_buffer, ptr %9, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.iavf_rx_buffer, ptr %9, i32 %indvars.iv
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %page_offset = getelementptr %struct.iavf_rx_buffer, ptr %9, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page_offset, align 4
  %conv11 = zext i16 %17 to i32
  %18 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_buf_len, align 2
  %conv12 = zext i16 %19 to i32
  %add.i = add i32 %15, %conv11
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %add.i, i32 noundef %conv12, i32 noundef 2) #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_buf_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %25)
  %cmp.i = icmp ugt i16 %25, 2048
  %..i = zext i1 %cmp.i to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #12
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  %pagecnt_bias = getelementptr %struct.iavf_rx_buffer, ptr %9, i32 %indvars.iv, i32 3
  %28 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pagecnt_bias, align 2
  %conv16 = zext i16 %29 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %27, i32 noundef %conv16) #12
  %30 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %page, align 4
  %31 = ptrtoint ptr %page_offset to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %page_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %count, align 2
  %34 = zext i16 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end.loopexit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i16 %33 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end5.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %if.end5.for.end_crit_edge ]
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 16
  %37 = call ptr @memset(ptr %36, i32 0, i32 %.lcssa)
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 1
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  %size = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 24
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 32
  %42 = call ptr @memset(ptr %39, i32 0, i32 %41)
  %next_to_alloc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 29
  %43 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %next_to_alloc, align 8
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 14
  %44 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 13
  %45 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %next_to_use, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %for.end, %entry.cleanup21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_free_rx_resources(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iavf_clean_rx_ring(ptr noundef %rx_ring)
  %0 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 16
  tail call void @kfree(ptr noundef %2) #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 16
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 24
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 32
  %dma = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 25
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_setup_rx_descriptors(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %2 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !80

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 739, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 10
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %2, align 16
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end.err_crit_edge, label %do.body24

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

do.body24:                                        ; preds = %if.end
  %syncp = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 22
  %dep_map.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 22, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @iavf_setup_rx_descriptors.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %syncp, align 4
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 2
  %conv28 = zext i16 %10 to i32
  %mul29 = shl nuw nsw i32 %conv28, 5
  %size = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 24
  %add = add nuw nsw i32 %mul29, 4095
  %and = and i32 %add, 4190208
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %size, align 32
  %dma = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 25
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #12
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %desc, align 4
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %14) #16
  br label %err

if.end41:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %next_to_alloc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 29
  %15 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %next_to_alloc, align 8
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 14
  %16 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 13
  %17 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %next_to_use, align 8
  br label %cleanup

err:                                              ; preds = %do.end39, %if.end.err_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 16
  tail call void @kfree(ptr noundef %19) #12
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %2, align 16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -12, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iavf_alloc_rx_buffers(ptr nocapture noundef %rx_ring, i16 noundef zeroext %cleaned_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 13
  %netdev = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count)
  %tobool1.not = icmp eq i16 %cleaned_count, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 8
  %desc = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %union.iavf_32byte_rx_desc, ptr %5, i32 %idxprom
  %6 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 16
  %arrayidx3 = getelementptr %struct.iavf_rx_buffer, ptr %8, i32 %idxprom
  %page_reuse_count.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 23, i32 0, i32 3
  %rx_buf_len.i.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 12
  %dev.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 2
  %flags.i.i.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 20
  %count = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %if.end
  %cleaned_count.addr.0 = phi i16 [ %cleaned_count, %if.end ], [ %dec, %if.end20.do.body_crit_edge ]
  %ntu.0 = phi i16 [ %3, %if.end ], [ %ntu.1, %if.end20.do.body_crit_edge ]
  %rx_desc.0 = phi ptr [ %arrayidx, %if.end ], [ %rx_desc.1, %if.end20.do.body_crit_edge ]
  %bi.0 = phi ptr [ %arrayidx3, %if.end ], [ %bi.1, %if.end20.do.body_crit_edge ]
  %page1.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %bi.0, i32 0, i32 1
  %9 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !81

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %page_reuse_count.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %page_reuse_count.i, align 8
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr %page_reuse_count.i, align 8
  br label %if.end5

if.end.i:                                         ; preds = %do.body
  %13 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i.i = icmp ugt i16 %14, 2048
  %..i.i = zext i1 %cmp.i.i to i32
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef %..i.i, i32 noundef 0, ptr noundef null) #12
  %tobool5.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.no_buffers_crit_edge, label %if.end16.i, !prof !81

if.end.i.no_buffers_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_buffers

if.end16.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %17 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i49.i = icmp ugt i16 %18, 2048
  %..i50.i = zext i1 %cmp.i49.i to i32
  %shl.i = shl nuw nsw i32 4096, %..i50.i
  %call18.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef %shl.i, i32 noundef 2, i32 noundef 34) #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %call18.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %cmp.i51.not.i = icmp eq i32 %call18.i, -1
  br i1 %cmp.i51.not.i, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %cmp.i54.i = icmp ugt i16 %22, 2048
  %..i55.i = zext i1 %cmp.i54.i to i32
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %..i55.i) #12
  br label %no_buffers

if.end26.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %bi.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call18.i, ptr %bi.0, align 4
  %24 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i.i.i, ptr %page1.i, align 4
  %25 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i.i.i, align 2
  %27 = and i16 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i.not.i.i = icmp eq i16 %27, 0
  %conv.i = select i1 %tobool.i.not.i.i, i16 0, i16 258
  %page_offset.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %bi.0, i32 0, i32 2
  %28 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %page_offset.i, align 4
  %pagecnt_bias.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %bi.0, i32 0, i32 3
  %29 = ptrtoint ptr %pagecnt_bias.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %pagecnt_bias.i, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.end26.i, %if.then.i
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %32 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi.0, align 4
  %page_offset = getelementptr inbounds %struct.iavf_rx_buffer, ptr %bi.0, i32 0, i32 2
  %34 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %page_offset, align 4
  %conv = zext i16 %35 to i32
  %36 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_buf_len.i.i, align 2
  %conv6 = zext i16 %37 to i32
  %add.i = add i32 %33, %conv
  tail call void @dma_sync_single_for_device(ptr noundef %31, i32 noundef %add.i, i32 noundef %conv6, i32 noundef 2) #12
  %38 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi.0, align 4
  %40 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %page_offset, align 4
  %conv9 = zext i16 %41 to i32
  %add = add i32 %39, %conv9
  %conv10 = zext i32 %add to i64
  %42 = tail call i64 @llvm.bswap.i64(i64 %conv10)
  %43 = ptrtoint ptr %rx_desc.0 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_desc.0, align 8
  %incdec.ptr = getelementptr %union.iavf_32byte_rx_desc, ptr %rx_desc.0, i32 1
  %incdec.ptr11 = getelementptr %struct.iavf_rx_buffer, ptr %bi.0, i32 1
  %inc = add i16 %ntu.0, 1
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %45)
  %cmp = icmp eq i16 %inc, %45
  br i1 %cmp, label %if.then17, label %if.end5.if.end20_crit_edge, !prof !81

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc, align 4
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %6, align 16
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end5.if.end20_crit_edge
  %ntu.1 = phi i16 [ 0, %if.then17 ], [ %inc, %if.end5.if.end20_crit_edge ]
  %rx_desc.1 = phi ptr [ %47, %if.then17 ], [ %incdec.ptr, %if.end5.if.end20_crit_edge ]
  %bi.1 = phi ptr [ %49, %if.then17 ], [ %incdec.ptr11, %if.end5.if.end20_crit_edge ]
  %qword1 = getelementptr inbounds %struct.anon.161, ptr %rx_desc.1, i32 0, i32 1
  %50 = ptrtoint ptr %qword1 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %qword1, align 8
  %dec = add i16 %cleaned_count.addr.0, -1
  %tobool21.not = icmp eq i16 %dec, 0
  br i1 %tobool21.not, label %do.end, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %if.end20
  %51 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %ntu.1)
  %cmp25.not = icmp eq i16 %52, %ntu.1
  br i1 %cmp25.not, label %do.end.cleanup_crit_edge, label %if.then27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv24 = zext i16 %ntu.1 to i32
  %53 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %ntu.1, ptr %next_to_use, align 8
  %next_to_alloc.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 29
  %54 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %ntu.1, ptr %next_to_alloc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !82
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !83
  tail call void @arm_heavy_mb() #12
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv24) #12
  %tail.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 8
  %56 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #12, !srcloc !78
  br label %cleanup

no_buffers:                                       ; preds = %if.then22.i, %if.end.i.no_buffers_crit_edge
  %alloc_page_failed24.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 23, i32 0, i32 1
  %58 = ptrtoint ptr %alloc_page_failed24.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %alloc_page_failed24.i, align 8
  %inc25.i = add i64 %59, 1
  store i64 %inc25.i, ptr %alloc_page_failed24.i, align 8
  %60 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %ntu.0)
  %cmp33.not = icmp eq i16 %61, %ntu.0
  br i1 %cmp33.not, label %no_buffers.cleanup_crit_edge, label %if.then35

no_buffers.cleanup_crit_edge:                     ; preds = %no_buffers
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %no_buffers
  call void @__sanitizer_cov_trace_pc() #14
  %conv32 = zext i16 %ntu.0 to i32
  %62 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %ntu.0, ptr %next_to_use, align 8
  %next_to_alloc.i70 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 29
  %63 = ptrtoint ptr %next_to_alloc.i70 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %ntu.0, ptr %next_to_alloc.i70, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !82
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !83
  tail call void @arm_heavy_mb() #12
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv32) #12
  %tail.i71 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 8
  %65 = ptrtoint ptr %tail.i71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i71, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #12, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %no_buffers.cleanup_crit_edge, %if.then27, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then27 ], [ false, %do.end.cleanup_crit_edge ], [ true, %if.then35 ], [ true, %no_buffers.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_napi_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %vsi1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %state = getelementptr inbounds %struct.iavf_vsi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx = getelementptr i8, ptr %napi, i32 248
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %ring.0197 = load ptr, ptr %tx, align 8
  %cmp.not198 = icmp eq ptr %ring.0197, null
  br i1 %cmp.not198, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %work_limit.i = getelementptr inbounds %struct.iavf_vsi, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0201 = phi ptr [ %ring.0197, %for.body.lr.ph ], [ %ring.0, %for.inc.for.body_crit_edge ]
  %arm_wb.0.off0200 = phi i1 [ false, %for.body.lr.ph ], [ %arm_wb.1.off0, %for.inc.for.body_crit_edge ]
  %clean_complete.0.off0199 = phi i1 [ true, %for.body.lr.ph ], [ %clean_complete.1.off0, %for.inc.for.body_crit_edge ]
  %next_to_clean.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 14
  %5 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %next_to_clean.i, align 2
  %conv.i = zext i16 %6 to i32
  %7 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %work_limit.i, align 4
  %conv1.i = zext i16 %8 to i32
  %9 = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 16
  %arrayidx.i = getelementptr %struct.iavf_tx_buffer, ptr %11, i32 %conv.i
  %desc.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 1
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %arrayidx2.i = getelementptr %struct.iavf_tx_desc, ptr %13, i32 %conv.i
  %count.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 10
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count.i, align 2
  %conv3.i = zext i16 %15 to i32
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  %dev.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %for.body
  %i.0.i = phi i32 [ %sub.i, %for.body ], [ %i.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_buf.0.i = phi ptr [ %arrayidx.i, %for.body ], [ %tx_buf.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_desc.0.i = phi ptr [ %arrayidx2.i, %for.body ], [ %tx_desc.3.i, %cleanup.i.do.body.i_crit_edge ]
  %total_bytes.0.i = phi i32 [ 0, %for.body ], [ %add.i, %cleanup.i.do.body.i_crit_edge ]
  %total_packets.0.i = phi i32 [ 0, %for.body ], [ %add13.i, %cleanup.i.do.body.i_crit_edge ]
  %budget.0.i = phi i32 [ %conv1.i, %for.body ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %16 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buf.0.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i.do.end63.i_crit_edge, label %do.end.i

do.body.i.do.end63.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  tail call fastcc void @trace_iavf_clean_tx_irq(ptr noundef %ring.0201, ptr noundef %tx_desc.0.i, ptr noundef %tx_buf.0.i) #12
  %cmd_type_offset_bsz.i = getelementptr inbounds %struct.iavf_tx_desc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cmd_type_offset_bsz.i, align 8
  %and.i = and i64 %19, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool8.not.i, label %do.end.i.do.end63.i_crit_edge, label %if.end10.i

do.end.i.do.end63.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63.i

if.end10.i:                                       ; preds = %do.end.i
  %20 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_buf.0.i, align 4
  %bytecount.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytecount.i, align 4
  %add.i = add i32 %22, %total_bytes.0.i
  %gso_segs.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_segs.i, align 4
  %conv12.i = zext i16 %24 to i32
  %add13.i = add i32 %total_packets.0.i, %conv12.i
  %25 = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @napi_consume_skb(ptr noundef %27, i32 noundef %budget) #12
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 4
  %30 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 5
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #12
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %25, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %len.i, align 4
  %cmp.not304.i = icmp eq ptr %tx_desc.0.i, %17
  br i1 %cmp.not304.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %if.end35.i.while.body.i_crit_edge, %if.end10.i.while.body.i_crit_edge
  %tx_desc.1307.i = phi ptr [ %tx_desc.2.i, %if.end35.i.while.body.i_crit_edge ], [ %tx_desc.0.i, %if.end10.i.while.body.i_crit_edge ]
  %tx_buf.1306.i = phi ptr [ %tx_buf.2.i, %if.end35.i.while.body.i_crit_edge ], [ %tx_buf.0.i, %if.end10.i.while.body.i_crit_edge ]
  %i.1305.i = phi i32 [ %i.2.i, %if.end35.i.while.body.i_crit_edge ], [ %i.0.i, %if.end10.i.while.body.i_crit_edge ]
  tail call fastcc void @trace_iavf_clean_tx_irq_unmap(ptr noundef %ring.0201, ptr noundef %tx_desc.1307.i, ptr noundef %tx_buf.1306.i) #12
  %incdec.ptr.i = getelementptr %struct.iavf_tx_buffer, ptr %tx_buf.1306.i, i32 1
  %incdec.ptr16.i = getelementptr %struct.iavf_tx_desc, ptr %tx_desc.1307.i, i32 1
  %inc.i = add i32 %i.1305.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool17.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool17.not.i, label %if.then21.i, label %while.body.i.if.end27.i_crit_edge, !prof !81

while.body.i.if.end27.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then21.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count.i, align 2
  %conv23.i = zext i16 %37 to i32
  %sub24.i = sub nsw i32 0, %conv23.i
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 16
  %40 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %while.body.i.if.end27.i_crit_edge
  %i.2.i = phi i32 [ %sub24.i, %if.then21.i ], [ %inc.i, %while.body.i.if.end27.i_crit_edge ]
  %tx_buf.2.i = phi ptr [ %39, %if.then21.i ], [ %incdec.ptr.i, %while.body.i.if.end27.i_crit_edge ]
  %tx_desc.2.i = phi ptr [ %41, %if.then21.i ], [ %incdec.ptr16.i, %while.body.i.if.end27.i_crit_edge ]
  %len28.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.2.i, i32 0, i32 5
  %42 = ptrtoint ptr %len28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool29.not.i = icmp eq i32 %43, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then30.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %dma32.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_buf.2.i, i32 0, i32 4
  %46 = ptrtoint ptr %dma32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma32.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %47, i32 noundef %43, i32 noundef 1, i32 noundef 0) #12
  %48 = ptrtoint ptr %len28.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %len28.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end35.i_crit_edge
  %cmp.not.i = icmp eq ptr %tx_desc.2.i, %17
  br i1 %cmp.not.i, label %if.end35.i.while.end.i_crit_edge, label %if.end35.i.while.body.i_crit_edge

if.end35.i.while.body.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end35.i.while.end.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %if.end35.i.while.end.i_crit_edge, %if.end10.i.while.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.0.i, %if.end10.i.while.end.i_crit_edge ], [ %i.2.i, %if.end35.i.while.end.i_crit_edge ]
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0.i, %if.end10.i.while.end.i_crit_edge ], [ %tx_buf.2.i, %if.end35.i.while.end.i_crit_edge ]
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.0.i, %if.end10.i.while.end.i_crit_edge ], [ %17, %if.end35.i.while.end.i_crit_edge ]
  %incdec.ptr36.i = getelementptr %struct.iavf_tx_buffer, ptr %tx_buf.1.lcssa.i, i32 1
  %incdec.ptr37.i = getelementptr %struct.iavf_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc38.i = add i32 %i.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc38.i)
  %tobool39.not.i = icmp eq i32 %inc38.i, 0
  br i1 %tobool39.not.i, label %if.then48.i, label %while.end.i.cleanup.i_crit_edge, !prof !81

while.end.i.cleanup.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then48.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %count.i, align 2
  %conv50.i = zext i16 %50 to i32
  %sub51.i = sub nsw i32 0, %conv50.i
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %9, align 16
  %53 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then48.i, %while.end.i.cleanup.i_crit_edge
  %i.3.i = phi i32 [ %sub51.i, %if.then48.i ], [ %inc38.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_buf.3.i = phi ptr [ %52, %if.then48.i ], [ %incdec.ptr36.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_desc.3.i = phi ptr [ %54, %if.then48.i ], [ %incdec.ptr37.i, %while.end.i.cleanup.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.3.i) #12, !srcloc !85
  %dec.i = add i32 %budget.0.i, -1
  %tobool56.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool56.not.i, label %cleanup.i.do.end63.i_crit_edge, label %cleanup.i.do.body.i_crit_edge, !prof !86

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

cleanup.i.do.end63.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63.i

do.end63.i:                                       ; preds = %cleanup.i.do.end63.i_crit_edge, %do.end.i.do.end63.i_crit_edge, %do.body.i.do.end63.i_crit_edge
  %budget.1295.i = phi i32 [ 0, %cleanup.i.do.end63.i_crit_edge ], [ %budget.0.i, %do.body.i.do.end63.i_crit_edge ], [ %budget.0.i, %do.end.i.do.end63.i_crit_edge ]
  %total_packets.1294.i = phi i32 [ %add13.i, %cleanup.i.do.end63.i_crit_edge ], [ %total_packets.0.i, %do.body.i.do.end63.i_crit_edge ], [ %total_packets.0.i, %do.end.i.do.end63.i_crit_edge ]
  %total_bytes.1293.i = phi i32 [ %add.i, %cleanup.i.do.end63.i_crit_edge ], [ %total_bytes.0.i, %do.body.i.do.end63.i_crit_edge ], [ %total_bytes.0.i, %do.end.i.do.end63.i_crit_edge ]
  %i.4292.i = phi i32 [ %i.3.i, %cleanup.i.do.end63.i_crit_edge ], [ %i.0.i, %do.body.i.do.end63.i_crit_edge ], [ %i.0.i, %do.end.i.do.end63.i_crit_edge ]
  %55 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %count.i, align 2
  %57 = trunc i32 %i.4292.i to i16
  %conv67.i = add i16 %56, %57
  %58 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv67.i, ptr %next_to_clean.i, align 2
  %syncp.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 22
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #12
  %conv69.i = zext i32 %total_bytes.1293.i to i64
  %stats.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 21
  %bytes.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 21, i32 1
  %59 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes.i, align 8
  %add70.i = add i64 %60, %conv69.i
  store i64 %add70.i, ptr %bytes.i, align 8
  %conv71.i = zext i32 %total_packets.1294.i to i64
  %61 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %stats.i, align 8
  %add73.i = add i64 %62, %conv71.i
  store i64 %add73.i, ptr %stats.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 22, i32 0, i32 1
  %63 = tail call ptr @llvm.returnaddress(i32 0) #12
  %64 = ptrtoint ptr %63 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %64) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %65 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %q_vector.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 27
  %67 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %q_vector.i, align 4
  %total_bytes75.i = getelementptr inbounds %struct.iavf_q_vector, ptr %68, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %total_bytes75.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %total_bytes75.i, align 8
  %add76.i = add i32 %70, %total_bytes.1293.i
  store i32 %add76.i, ptr %total_bytes75.i, align 8
  %71 = load ptr, ptr %q_vector.i, align 4
  %total_packets79.i = getelementptr inbounds %struct.iavf_q_vector, ptr %71, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %total_packets79.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %total_packets79.i, align 4
  %add80.i = add i32 %73, %total_packets.1294.i
  store i32 %add80.i, ptr %total_packets79.i, align 4
  %flags.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 20
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flags.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool83.not.i = icmp eq i16 %76, 0
  br i1 %tobool83.not.i, label %do.end63.i.if.end115.i_crit_edge, label %if.then84.i

do.end63.i.if.end115.i_crit_edge:                 ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.then84.i:                                      ; preds = %do.end63.i
  %77 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %next_to_clean.i, align 2
  %conv.i.i = zext i16 %78 to i32
  %tail1.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 8
  %79 = ptrtoint ptr %tail1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail1.i.i, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #12, !srcloc !75
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %82, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then84.i.if.end115.i_crit_edge, label %if.then.i.i

if.then84.i.if.end115.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.then.i.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv.i.i)
  %cmp4.i.i = icmp ugt i32 %82, %conv.i.i
  br i1 %cmp4.i.i, label %if.then.i.i.iavf_get_tx_pending.exit.i_crit_edge, label %cond.false.i.i

if.then.i.i.iavf_get_tx_pending.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_get_tx_pending.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %count.i, align 2
  %conv6.i.i = zext i16 %84 to i32
  %add.i.i = add i32 %82, %conv6.i.i
  br label %iavf_get_tx_pending.exit.i

iavf_get_tx_pending.exit.i:                       ; preds = %cond.false.i.i, %if.then.i.i.iavf_get_tx_pending.exit.i_crit_edge
  %.pn.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ %82, %if.then.i.i.iavf_get_tx_pending.exit.i_crit_edge ]
  %cond.i.i = sub i32 %.pn.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1295.i)
  %tobool85.not.i = icmp eq i32 %budget.1295.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i.i)
  %cmp86.i = icmp ugt i32 %cond.i.i, 3
  %or.cond270.i = select i1 %tobool85.not.i, i1 true, i1 %cmp86.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pn.i.i, i32 %conv.i.i)
  %cmp89.not.i = icmp eq i32 %.pn.i.i, %conv.i.i
  %or.cond271.i = select i1 %or.cond270.i, i1 true, i1 %cmp89.not.i
  br i1 %or.cond271.i, label %iavf_get_tx_pending.exit.i.if.end115.i_crit_edge, label %land.lhs.true91.i

iavf_get_tx_pending.exit.i.if.end115.i_crit_edge: ; preds = %iavf_get_tx_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

land.lhs.true91.i:                                ; preds = %iavf_get_tx_pending.exit.i
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state, align 4
  %and1.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool93.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true94.i, label %land.lhs.true91.i.if.end115.i_crit_edge

land.lhs.true91.i.if.end115.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

land.lhs.true94.i:                                ; preds = %land.lhs.true91.i
  %87 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 13
  %89 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp98.i = icmp ugt i16 %88, %90
  br i1 %cmp98.i, label %land.lhs.true94.i.cond.end.i_crit_edge, label %cond.false.i

land.lhs.true94.i.cond.end.i_crit_edge:           ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %count.i, align 2
  %conv101.i = zext i16 %92 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true94.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv101.i, %cond.false.i ], [ 0, %land.lhs.true94.i.cond.end.i_crit_edge ]
  %conv103.i = zext i16 %88 to i32
  %conv106.i = zext i16 %90 to i32
  %93 = xor i32 %conv106.i, -1
  %add104.i = add nsw i32 %93, %conv103.i
  %sub108.i = add nsw i32 %add104.i, %cond.i
  %94 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %count.i, align 2
  %conv110.i = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub108.i, i32 %conv110.i)
  %cmp111.not.i = icmp eq i32 %sub108.i, %conv110.i
  br i1 %cmp111.not.i, label %cond.end.i.if.end115.i_crit_edge, label %if.then113.i

cond.end.i.if.end115.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.then113.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arm_wb.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 18
  %96 = ptrtoint ptr %arm_wb.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %arm_wb.i, align 1
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then113.i, %cond.end.i.if.end115.i_crit_edge, %land.lhs.true91.i.if.end115.i_crit_edge, %iavf_get_tx_pending.exit.i.if.end115.i_crit_edge, %if.then84.i.if.end115.i_crit_edge, %do.end63.i.if.end115.i_crit_edge
  %netdev.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 3
  %97 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %netdev.i.i, align 4
  %queue_index.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 6
  %99 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %queue_index.i.i, align 8
  %conv.i274.i = zext i16 %100 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 103
  %101 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %102, i32 %conv.i274.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1293.i)
  %tobool.not.i.i = icmp eq i32 %total_bytes.1293.i, 0
  br i1 %tobool.not.i.i, label %if.end115.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end.i.i, !prof !81

if.end115.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_tx_completed_queue.exit.i

if.end.i.i:                                       ; preds = %if.end115.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %102, i32 %conv.i274.i, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %total_bytes.1293.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %102, i32 %conv.i274.i, i32 15, i32 1
  %103 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %105 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %104, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end14.i.i, !prof !81

if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_tx_completed_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %102, i32 %conv.i274.i, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_tx_completed_queue.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i.i) #12
  br label %netdev_tx_completed_queue.exit.i

netdev_tx_completed_queue.exit.i:                 ; preds = %if.then17.i.i, %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end115.i.netdev_tx_completed_queue.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_packets.1294.i)
  %tobool117.not.i = icmp eq i32 %total_packets.1294.i, 0
  br i1 %tobool117.not.i, label %netdev_tx_completed_queue.exit.i.iavf_clean_tx_irq.exit_crit_edge, label %land.lhs.true118.i

netdev_tx_completed_queue.exit.i.iavf_clean_tx_irq.exit_crit_edge: ; preds = %netdev_tx_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_tx_irq.exit

land.lhs.true118.i:                               ; preds = %netdev_tx_completed_queue.exit.i
  %107 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev.i.i, align 4
  %state.i275.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %state.i275.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %state.i275.i, align 4
  %111 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i276.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i276.i, label %land.rhs.i, label %land.lhs.true118.i.iavf_clean_tx_irq.exit_crit_edge

land.lhs.true118.i.iavf_clean_tx_irq.exit_crit_edge: ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_tx_irq.exit

land.rhs.i:                                       ; preds = %land.lhs.true118.i
  %112 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use123.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 13
  %114 = ptrtoint ptr %next_to_use123.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %next_to_use123.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %115)
  %cmp125.i = icmp ugt i16 %113, %115
  br i1 %cmp125.i, label %land.rhs.i.cond.end131.i_crit_edge, label %cond.false128.i

land.rhs.i.cond.end131.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end131.i

cond.false128.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %count.i, align 2
  %conv130.i = zext i16 %117 to i32
  br label %cond.end131.i

cond.end131.i:                                    ; preds = %cond.false128.i, %land.rhs.i.cond.end131.i_crit_edge
  %cond132.i = phi i32 [ %conv130.i, %cond.false128.i ], [ 0, %land.rhs.i.cond.end131.i_crit_edge ]
  %conv134.i = zext i16 %113 to i32
  %conv137.i = zext i16 %115 to i32
  %118 = xor i32 %conv137.i, -1
  %add135.i = add nsw i32 %118, %conv134.i
  %sub139.i = add nsw i32 %add135.i, %cond132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %sub139.i)
  %cmp140.i = icmp sgt i32 %sub139.i, 45
  br i1 %cmp140.i, label %do.end152.i, label %cond.end131.i.iavf_clean_tx_irq.exit_crit_edge, !prof !81

cond.end131.i.iavf_clean_tx_irq.exit_crit_edge:   ; preds = %cond.end131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_tx_irq.exit

do.end152.i:                                      ; preds = %cond.end131.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !89
  %119 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %netdev.i.i, align 4
  %121 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %queue_index.i.i, align 8
  %conv.i277.i = zext i16 %122 to i32
  %_tx.i.i278.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 103
  %123 = ptrtoint ptr %_tx.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %_tx.i.i278.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %124, i32 %conv.i277.i, i32 13
  %125 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end152.i.iavf_clean_tx_irq.exit_crit_edge, label %land.lhs.true158.i

do.end152.i.iavf_clean_tx_irq.exit_crit_edge:     ; preds = %do.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_tx_irq.exit

land.lhs.true158.i:                               ; preds = %do.end152.i
  %127 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %state, align 4
  %and1.i273.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i273.i)
  %tobool162.not.i = icmp eq i32 %and1.i273.i, 0
  br i1 %tobool162.not.i, label %if.then163.i, label %land.lhs.true158.i.iavf_clean_tx_irq.exit_crit_edge

land.lhs.true158.i.iavf_clean_tx_irq.exit_crit_edge: ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_tx_irq.exit

if.then163.i:                                     ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i281.i = getelementptr %struct.netdev_queue, ptr %124, i32 %conv.i277.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i281.i) #12
  %129 = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 23
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %129, align 8
  %inc166.i = add i64 %131, 1
  store i64 %inc166.i, ptr %129, align 8
  br label %iavf_clean_tx_irq.exit

iavf_clean_tx_irq.exit:                           ; preds = %if.then163.i, %land.lhs.true158.i.iavf_clean_tx_irq.exit_crit_edge, %do.end152.i.iavf_clean_tx_irq.exit_crit_edge, %cond.end131.i.iavf_clean_tx_irq.exit_crit_edge, %land.lhs.true118.i.iavf_clean_tx_irq.exit_crit_edge, %netdev_tx_completed_queue.exit.i.iavf_clean_tx_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1295.i)
  %tobool169.i.not = icmp eq i32 %budget.1295.i, 0
  br i1 %tobool169.i.not, label %iavf_clean_tx_irq.exit.for.inc_crit_edge, label %if.end6

iavf_clean_tx_irq.exit.for.inc_crit_edge:         ; preds = %iavf_clean_tx_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %iavf_clean_tx_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arm_wb7 = getelementptr inbounds %struct.iavf_ring, ptr %ring.0201, i32 0, i32 18
  %132 = ptrtoint ptr %arm_wb7 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arm_wb7, align 1, !range !90
  %134 = zext i8 %133 to i32
  %conv10 = zext i1 %arm_wb.0.off0200 to i32
  %or = or i32 %134, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool11 = icmp ne i32 %or, 0
  %135 = ptrtoint ptr %arm_wb7 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arm_wb7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %iavf_clean_tx_irq.exit.for.inc_crit_edge
  %clean_complete.1.off0 = phi i1 [ %clean_complete.0.off0199, %if.end6 ], [ false, %iavf_clean_tx_irq.exit.for.inc_crit_edge ]
  %arm_wb.1.off0 = phi i1 [ %tobool11, %if.end6 ], [ %arm_wb.0.off0200, %iavf_clean_tx_irq.exit.for.inc_crit_edge ]
  %136 = ptrtoint ptr %ring.0201 to i32
  call void @__asan_load4_noabort(i32 %136)
  %ring.0 = load ptr, ptr %ring.0201, align 8
  %cmp.not = icmp eq ptr %ring.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %clean_complete.0.off0.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %clean_complete.1.off0, %for.inc.for.end_crit_edge ]
  %arm_wb.0.off0.lcssa = phi i1 [ false, %if.end.for.end_crit_edge ], [ %arm_wb.1.off0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp13 = icmp slt i32 %budget, 1
  br i1 %cmp13, label %for.end.tx_only_crit_edge, label %if.end16

for.end.tx_only_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_only

if.end16:                                         ; preds = %for.end
  %num_ringpairs = getelementptr i8, ptr %napi, i32 277
  %137 = ptrtoint ptr %num_ringpairs to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %num_ringpairs, align 1
  %conv17 = zext i8 %138 to i32
  %div171 = udiv i32 %budget, %conv17
  %139 = tail call i32 @llvm.umax.i32(i32 %div171, i32 1)
  %rx = getelementptr i8, ptr %napi, i32 224
  %140 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %140)
  %ring.1203 = load ptr, ptr %rx, align 8
  %cmp23.not204 = icmp eq ptr %ring.1203, null
  br i1 %cmp23.not204, label %if.end16.for.end33_crit_edge, label %if.end16.for.body25_crit_edge

if.end16.for.body25_crit_edge:                    ; preds = %if.end16
  br label %for.body25

if.end16.for.end33_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33

for.body25:                                       ; preds = %iavf_clean_rx_irq.exit.for.body25_crit_edge, %if.end16.for.body25_crit_edge
  %ring.1207 = phi ptr [ %ring.1, %iavf_clean_rx_irq.exit.for.body25_crit_edge ], [ %ring.1203, %if.end16.for.body25_crit_edge ]
  %work_done.0206 = phi i32 [ %add, %iavf_clean_rx_irq.exit.for.body25_crit_edge ], [ 0, %if.end16.for.body25_crit_edge ]
  %clean_complete.2.off0205 = phi i1 [ %spec.select, %iavf_clean_rx_irq.exit.for.body25_crit_edge ], [ %clean_complete.0.off0.lcssa, %if.end16.for.body25_crit_edge ]
  %skb1.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 30
  %141 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %skb1.i, align 4
  %next_to_clean.i115 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 14
  %143 = ptrtoint ptr %next_to_clean.i115 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %next_to_clean.i115, align 2
  %next_to_use.i116 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 13
  %145 = ptrtoint ptr %next_to_use.i116 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %next_to_use.i116, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %144, i16 %146)
  %cmp.i = icmp ugt i16 %144, %146
  br i1 %cmp.i, label %for.body25.cond.end.i120_crit_edge, label %cond.false.i118

for.body25.cond.end.i120_crit_edge:               ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i120

cond.false.i118:                                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  %count.i117 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 10
  %147 = ptrtoint ptr %count.i117 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %count.i117, align 2
  br label %cond.end.i120

cond.end.i120:                                    ; preds = %cond.false.i118, %for.body25.cond.end.i120_crit_edge
  %cond.i119 = phi i16 [ %148, %cond.false.i118 ], [ 0, %for.body25.cond.end.i120_crit_edge ]
  %149 = xor i16 %146, -1
  %add.i121 = add i16 %144, %149
  %sub9.i = add i16 %add.i121, %cond.i119
  %desc.i122 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 1
  %150 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 4
  %dev.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 2
  %rx_buf_len.i.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 12
  %flags.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 20
  %q_vector.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 27
  %count.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 10
  %netdev.i.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 3
  %vsi.i.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 26
  %queue_index.i.i123 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 6
  %151 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 23
  br label %while.body.i124

while.body.i124:                                  ; preds = %cleanup.i132.while.body.i124_crit_edge, %cond.end.i120
  %failure.0.off0305.i = phi i1 [ false, %cond.end.i120 ], [ %failure.1.off0.i, %cleanup.i132.while.body.i124_crit_edge ]
  %cleaned_count.0304.i = phi i16 [ %sub9.i, %cond.end.i120 ], [ %inc42.i, %cleanup.i132.while.body.i124_crit_edge ]
  %skb.0303.i = phi ptr [ %142, %cond.end.i120 ], [ %skb.2.i, %cleanup.i132.while.body.i124_crit_edge ]
  %total_rx_packets.0300.i = phi i32 [ 0, %cond.end.i120 ], [ %total_rx_packets.1.i, %cleanup.i132.while.body.i124_crit_edge ]
  %total_rx_bytes.0297.i = phi i32 [ 0, %cond.end.i120 ], [ %total_rx_bytes.1.i, %cleanup.i132.while.body.i124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %cleaned_count.0304.i)
  %cmp15.i = icmp ult i16 %cleaned_count.0304.i, 16
  %brmerge.i = select i1 %cmp15.i, i1 true, i1 %failure.0.off0305.i
  %cleaned_count.0.mux.i = select i1 %cmp15.i, i16 %cleaned_count.0304.i, i16 0
  %not.cmp15.i = xor i1 %cmp15.i, true
  %failure.0.off0.mux.i = select i1 %not.cmp15.i, i1 true, i1 %failure.0.off0305.i
  br i1 %brmerge.i, label %while.body.i124.if.end.i_crit_edge, label %lor.rhs.i

while.body.i124.if.end.i_crit_edge:               ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.rhs.i:                                        ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #14
  %call.i125 = tail call zeroext i1 @iavf_alloc_rx_buffers(ptr noundef %ring.1207, i16 noundef zeroext %cleaned_count.0304.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %lor.rhs.i, %while.body.i124.if.end.i_crit_edge
  %cleaned_count.1.i = phi i16 [ %cleaned_count.0.mux.i, %while.body.i124.if.end.i_crit_edge ], [ 0, %lor.rhs.i ]
  %failure.1.off0.i = phi i1 [ %failure.0.off0.mux.i, %while.body.i124.if.end.i_crit_edge ], [ %call.i125, %lor.rhs.i ]
  %152 = ptrtoint ptr %desc.i122 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %desc.i122, align 4
  %154 = ptrtoint ptr %next_to_clean.i115 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %next_to_clean.i115, align 2
  %idxprom.i = zext i16 %155 to i32
  %arrayidx.i126 = getelementptr %union.iavf_32byte_rx_desc, ptr %153, i32 %idxprom.i
  %qword1.i = getelementptr inbounds %struct.anon.161, ptr %arrayidx.i126, i32 0, i32 1
  %156 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %qword1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !91
  %158 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %qword1.i, align 8
  %and.i.i = and i64 %159, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.iavf_clean_rx_irq.exit_crit_edge, label %if.end23.i

if.end.i.iavf_clean_rx_irq.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_rx_irq.exit

if.end23.i:                                       ; preds = %if.end.i
  %160 = and i64 %157, 3237940992
  %161 = tail call i64 @llvm.bswap.i64(i64 %160) #12
  %shr.i = lshr exact i64 %161, 38
  %conv24.i = trunc i64 %shr.i to i32
  tail call fastcc void @trace_iavf_clean_rx_irq(ptr noundef %ring.1207, ptr noundef %arrayidx.i126, ptr noundef %skb.0303.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24.i)
  %tobool.not.i.i127 = icmp eq i32 %conv24.i, 0
  br i1 %tobool.not.i.i127, label %iavf_get_rx_buffer.exit.i, label %iavf_get_rx_buffer.exit.thread.i

iavf_get_rx_buffer.exit.i:                        ; preds = %if.end23.i
  %tobool26.not.i = icmp eq ptr %skb.0303.i, null
  br i1 %tobool26.not.i, label %iavf_get_rx_buffer.exit.i.if.else.i_crit_edge, label %iavf_get_rx_buffer.exit.i.if.end41.i_crit_edge

iavf_get_rx_buffer.exit.i.if.end41.i_crit_edge:   ; preds = %iavf_get_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

iavf_get_rx_buffer.exit.i.if.else.i_crit_edge:    ; preds = %iavf_get_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

iavf_get_rx_buffer.exit.thread.i:                 ; preds = %if.end23.i
  %162 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %150, align 16
  %164 = ptrtoint ptr %next_to_clean.i115 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %next_to_clean.i115, align 2
  %idxprom.i.i = zext i16 %165 to i32
  %arrayidx.i.i = getelementptr %struct.iavf_rx_buffer, ptr %163, i32 %idxprom.i.i
  %page.i.i = getelementptr %struct.iavf_rx_buffer, ptr %163, i32 %idxprom.i.i, i32 1
  %166 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %page.i.i, align 4
  tail call void @llvm.prefetch.p0(ptr %167, i32 1, i32 3, i32 1) #12
  %168 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i.i, align 8
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i.i, align 4
  %page_offset.i.i = getelementptr %struct.iavf_rx_buffer, ptr %163, i32 %idxprom.i.i, i32 2
  %172 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %page_offset.i.i, align 4
  %conv.i.i128 = zext i16 %173 to i32
  %add.i.i.i = add i32 %171, %conv.i.i128
  tail call void @dma_sync_single_for_cpu(ptr noundef %169, i32 noundef %add.i.i.i, i32 noundef %conv24.i, i32 noundef 2) #12
  %pagecnt_bias.i.i = getelementptr %struct.iavf_rx_buffer, ptr %163, i32 %idxprom.i.i, i32 3
  %174 = ptrtoint ptr %pagecnt_bias.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %pagecnt_bias.i.i, align 2
  %dec.i.i = add i16 %175, -1
  store i16 %dec.i.i, ptr %pagecnt_bias.i.i, align 2
  %tobool26.not246.i = icmp eq ptr %skb.0303.i, null
  br i1 %tobool26.not246.i, label %iavf_get_rx_buffer.exit.thread.i.if.else.i_crit_edge, label %if.end.i189.i

iavf_get_rx_buffer.exit.thread.i.if.else.i_crit_edge: ; preds = %iavf_get_rx_buffer.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end.i189.i:                                    ; preds = %iavf_get_rx_buffer.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %177)
  %cmp.i.i.i = icmp ugt i16 %177, 2048
  %..i.i.i = zext i1 %cmp.i.i.i to i32
  %shl.i.i = shl nuw nsw i32 4096, %..i.i.i
  %div11.i.i = lshr exact i32 %shl.i.i, 1
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0303.i, i32 0, i32 17
  %178 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i186.i = zext i8 %181 to i32
  %182 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %page.i.i, align 4
  %184 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %page_offset.i.i, align 4
  %conv2.i.i = zext i16 %185 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %skb.0303.i, i32 noundef %conv.i186.i, ptr noundef %183, i32 noundef %conv2.i.i, i32 noundef %conv24.i, i32 noundef %div11.i.i) #12
  %186 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %page_offset.i.i, align 4
  %188 = trunc i32 %div11.i.i to i16
  %conv5.i.i = xor i16 %187, %188
  store i16 %conv5.i.i, ptr %page_offset.i.i, align 4
  br label %if.end41.i

if.else.i:                                        ; preds = %iavf_get_rx_buffer.exit.thread.i.if.else.i_crit_edge, %iavf_get_rx_buffer.exit.i.if.else.i_crit_edge
  %retval.0.i249.i = phi ptr [ %arrayidx.i.i, %iavf_get_rx_buffer.exit.thread.i.if.else.i_crit_edge ], [ null, %iavf_get_rx_buffer.exit.i.if.else.i_crit_edge ]
  %189 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %flags.i.i, align 2
  %191 = and i16 %190, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %tobool.i190.not.i = icmp eq i16 %191, 0
  %192 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %193)
  %cmp.i.i203.i = icmp ugt i16 %193, 2048
  %..i.i204.i = zext i1 %cmp.i.i203.i to i32
  %shl.i205.i = shl nuw nsw i32 4096, %..i.i204.i
  %div48.i.i = lshr exact i32 %shl.i205.i, 1
  %tobool.not.i206.i = icmp eq ptr %retval.0.i249.i, null
  br i1 %tobool.i190.not.i, label %if.else31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else.i
  br i1 %tobool.not.i206.i, label %if.then29.i.if.then36.thread.i_crit_edge, label %if.end.i199.i

if.then29.i.if.then36.thread.i_crit_edge:         ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.thread.i

if.end.i199.i:                                    ; preds = %if.then29.i
  %page.i196.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 1
  %194 = ptrtoint ptr %page.i196.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %page.i196.i, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %195) #12
  %page_offset.i197.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 2
  %196 = ptrtoint ptr %page_offset.i197.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %page_offset.i197.i, align 4
  %conv.i198.i = zext i16 %197 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %conv.i198.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i.i) #12, !srcloc !85
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -258
  %call4.i.i = tail call ptr @napi_build_skb(ptr noundef %add.ptr3.i.i, i32 noundef %div48.i.i) #12
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i199.i.if.then38.i_crit_edge, label %if.end10.i.i, !prof !81

if.end.i199.i.if.then38.i_crit_edge:              ; preds = %if.end.i199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.end10.i.i:                                     ; preds = %if.end.i199.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i.i, i32 0, i32 19
  %198 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %199, i32 258
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i.i, i32 0, i32 16
  %200 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %201, i32 258
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i.i, i32 0, i32 7
  %202 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.i.not.i.i.i = icmp eq i32 %203, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !80

do.body3.i.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !92
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i27.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %conv24.i
  %204 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr.i27.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i.i, i32 0, i32 6
  %205 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i200.i = add i32 %206, %conv24.i
  store i32 %add.i.i200.i, ptr %len9.i.i.i, align 4
  %207 = ptrtoint ptr %page_offset.i197.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %page_offset.i197.i, align 4
  %209 = trunc i32 %div48.i.i to i16
  %conv15.i.i = xor i16 %208, %209
  store i16 %conv15.i.i, ptr %page_offset.i197.i, align 4
  br label %if.end41.i

if.else31.i:                                      ; preds = %if.else.i
  br i1 %tobool.not.i206.i, label %if.else31.i.if.then36.thread.i_crit_edge, label %if.end.i212.i

if.else31.i.if.then36.thread.i_crit_edge:         ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.thread.i

if.end.i212.i:                                    ; preds = %if.else31.i
  %page.i207.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 1
  %210 = ptrtoint ptr %page.i207.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %page.i207.i, align 4
  %call1.i208.i = tail call ptr @page_address(ptr noundef %211) #12
  %page_offset.i209.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 2
  %212 = ptrtoint ptr %page_offset.i209.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %page_offset.i209.i, align 4
  %conv.i210.i = zext i16 %213 to i32
  %add.ptr.i211.i = getelementptr i8, ptr %call1.i208.i, i32 %conv.i210.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i211.i) #12, !srcloc !85
  %214 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %q_vector.i.i, align 4
  %napi.i.i = getelementptr inbounds %struct.iavf_q_vector, ptr %215, i32 0, i32 2
  %call2.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi.i.i, i32 noundef 256, i32 noundef 10784) #12
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i212.i.if.then38.i_crit_edge, label %if.end8.i.i, !prof !81

if.end.i212.i.if.then38.i_crit_edge:              ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.end8.i.i:                                      ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv24.i)
  %cmp.i.i129 = icmp ugt i32 %conv24.i, 256
  br i1 %cmp.i.i129, label %if.then10.i.i, label %if.end8.i.i.if.end12.i.i_crit_edge

if.end8.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %216 = getelementptr inbounds %struct.anon.51, ptr %call2.i.i, i32 0, i32 2
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 8
  %call11.i.i = tail call i32 @eth_get_headlen(ptr noundef %218, ptr noundef %add.ptr.i211.i, i32 noundef 256) #12
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end8.i.i.if.end12.i.i_crit_edge
  %headlen.0.i.i = phi i32 [ %call11.i.i, %if.then10.i.i ], [ %conv24.i, %if.end8.i.i.if.end12.i.i_crit_edge ]
  %data_len.i.i.i213.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 7
  %219 = ptrtoint ptr %data_len.i.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %data_len.i.i.i213.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.i.not.i.i214.i = icmp eq i32 %220, 0
  br i1 %tobool.i.not.i.i214.i, label %__skb_put.exit.i220.i, label %do.body3.i.i215.i, !prof !80

do.body3.i.i215.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !92
  unreachable

__skb_put.exit.i220.i:                            ; preds = %if.end12.i.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 16
  %221 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i216.i = getelementptr i8, ptr %222, i32 %headlen.0.i.i
  store ptr %add.ptr.i.i216.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i217.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 6
  %223 = ptrtoint ptr %len9.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len9.i.i217.i, align 4
  %add.i.i218.i = add i32 %224, %headlen.0.i.i
  store i32 %add.i.i218.i, ptr %len9.i.i217.i, align 4
  %add.i.i130 = add i32 %headlen.0.i.i, 3
  %and.i219.i = and i32 %add.i.i130, -4
  %225 = call ptr @memcpy(ptr %222, ptr %add.ptr.i211.i, i32 %and.i219.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %headlen.0.i.i, i32 %conv24.i)
  %tobool14.not.i.i = icmp eq i32 %headlen.0.i.i, %conv24.i
  br i1 %tobool14.not.i.i, label %if.else.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %__skb_put.exit.i220.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %conv24.i, %headlen.0.i.i
  %226 = ptrtoint ptr %page.i207.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %page.i207.i, align 4
  %228 = ptrtoint ptr %page_offset.i209.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %page_offset.i209.i, align 4
  %conv18.i.i = zext i16 %229 to i32
  %add19.i.i = add i32 %headlen.0.i.i, %conv18.i.i
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call2.i.i, i32 noundef 0, ptr noundef %227, i32 noundef %add19.i.i, i32 noundef %sub.i.i, i32 noundef %div48.i.i) #12
  %230 = ptrtoint ptr %page_offset.i209.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %page_offset.i209.i, align 4
  %232 = trunc i32 %div48.i.i to i16
  %conv22.i.i = xor i16 %231, %232
  store i16 %conv22.i.i, ptr %page_offset.i209.i, align 4
  br label %if.end41.i

if.else.i.i:                                      ; preds = %__skb_put.exit.i220.i
  call void @__sanitizer_cov_trace_pc() #14
  %pagecnt_bias.i221.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 3
  %233 = ptrtoint ptr %pagecnt_bias.i221.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %pagecnt_bias.i221.i, align 2
  %inc.i.i = add i16 %234, 1
  store i16 %inc.i.i, ptr %pagecnt_bias.i221.i, align 2
  br label %if.end41.i

if.then36.thread.i:                               ; preds = %if.else31.i.if.then36.thread.i_crit_edge, %if.then29.i.if.then36.thread.i_crit_edge
  %alloc_buff_failed261.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 23, i32 0, i32 2
  %235 = ptrtoint ptr %alloc_buff_failed261.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %alloc_buff_failed261.i, align 8
  %inc262.i = add i64 %236, 1
  store i64 %inc262.i, ptr %alloc_buff_failed261.i, align 8
  br label %iavf_clean_rx_irq.exit

if.then38.i:                                      ; preds = %if.end.i212.i.if.then38.i_crit_edge, %if.end.i199.i.if.then38.i_crit_edge
  %alloc_buff_failed.i = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 23, i32 0, i32 2
  %237 = ptrtoint ptr %alloc_buff_failed.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %alloc_buff_failed.i, align 8
  %inc.i131 = add i64 %238, 1
  store i64 %inc.i131, ptr %alloc_buff_failed.i, align 8
  %pagecnt_bias.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %retval.0.i249.i, i32 0, i32 3
  %239 = ptrtoint ptr %pagecnt_bias.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %pagecnt_bias.i, align 2
  %inc39.i = add i16 %240, 1
  store i16 %inc39.i, ptr %pagecnt_bias.i, align 2
  br label %iavf_clean_rx_irq.exit

if.end41.i:                                       ; preds = %if.else.i.i, %if.then15.i.i, %__skb_put.exit.i.i, %if.end.i189.i, %iavf_get_rx_buffer.exit.i.if.end41.i_crit_edge
  %retval.0.i247.ph.i = phi ptr [ %retval.0.i249.i, %if.else.i.i ], [ %retval.0.i249.i, %if.then15.i.i ], [ %retval.0.i249.i, %__skb_put.exit.i.i ], [ null, %iavf_get_rx_buffer.exit.i.if.end41.i_crit_edge ], [ %arrayidx.i.i, %if.end.i189.i ]
  %skb.1.ph.i = phi ptr [ %call2.i.i, %if.else.i.i ], [ %call2.i.i, %if.then15.i.i ], [ %call4.i.i, %__skb_put.exit.i.i ], [ %skb.0303.i, %iavf_get_rx_buffer.exit.i.if.end41.i_crit_edge ], [ %skb.0303.i, %if.end.i189.i ]
  tail call fastcc void @iavf_put_rx_buffer(ptr noundef %ring.1207, ptr noundef %retval.0.i247.ph.i) #12
  %inc42.i = add nuw nsw i16 %cleaned_count.1.i, 1
  %241 = ptrtoint ptr %next_to_clean.i115 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %next_to_clean.i115, align 2
  %conv.i224.i = zext i16 %242 to i32
  %add.i225.i = add nuw nsw i32 %conv.i224.i, 1
  %243 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %count.i.i, align 2
  %conv1.i.i = zext i16 %244 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i225.i, i32 %conv1.i.i)
  %cmp.i226.i = icmp ult i32 %add.i225.i, %conv1.i.i
  %spec.select.i.i = select i1 %cmp.i226.i, i32 %add.i225.i, i32 0
  %conv3.i.i = trunc i32 %spec.select.i.i to i16
  %245 = ptrtoint ptr %next_to_clean.i115 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv3.i.i, ptr %next_to_clean.i115, align 2
  %246 = ptrtoint ptr %desc.i122 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %desc.i122, align 4
  %arrayidx.i227.i = getelementptr %union.iavf_32byte_rx_desc, ptr %247, i32 %spec.select.i.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i227.i) #12, !srcloc !85
  %248 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %qword1.i, align 8
  %and.i.i.i = and i64 %249, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %iavf_is_non_eop.exit.thread.i, label %if.end45.i, !prof !81

iavf_is_non_eop.exit.thread.i:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %250 = ptrtoint ptr %151 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %151, align 8
  %inc.i228.i = add i64 %251, 1
  store i64 %inc.i228.i, ptr %151, align 8
  br label %cleanup.i132

if.end45.i:                                       ; preds = %if.end41.i
  %and.i231.i = and i64 %249, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i231.i)
  %tobool.i232.not.i = icmp eq i64 %and.i231.i, 0
  br i1 %tobool.i232.not.i, label %if.end54.i, label %if.then53.i, !prof !80

if.then53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.1.ph.i, i32 noundef 1) #12
  br label %cleanup.i132

if.end54.i:                                       ; preds = %if.end45.i
  %len1.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 6
  %252 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %len1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %253)
  %cmp.i.i.i.i.i = icmp ult i32 %253, 60
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end54.i.if.end57.i_crit_edge, !prof !81

if.end54.i.if.end57.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then.i.i.i.i.i:                                ; preds = %if.end54.i
  %sub.i.i.i.i.i = sub nuw nsw i32 60, %253
  %call.i.i.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %skb.1.ph.i, i32 noundef %sub.i.i.i.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i.cleanup.i132_crit_edge

if.then.i.i.i.i.i.cleanup.i132_crit_edge:         ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i132

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 7
  %254 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %255, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %__skb_put.exit.i.i.i.i.i, label %do.body3.i.i.i.i.i.i, !prof !80

do.body3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !92
  unreachable

__skb_put.exit.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 16
  %256 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tail.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %257, i32 %sub.i.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  %258 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %259, %sub.i.i.i.i.i
  store i32 %add.i.i.i.i.i.i, ptr %len1.i.i.i.i.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %__skb_put.exit.i.i.i.i.i, %if.end54.i.if.end57.i_crit_edge
  %260 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add58.i = add i32 %261, %total_rx_bytes.0297.i
  %262 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %qword1.i, align 8
  %264 = tail call i64 @llvm.bswap.i64(i64 %263) #12
  %265 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %netdev.i.i.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 23
  %267 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %features.i.i.i, align 16
  %and.i.i234.i = and i64 %268, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i234.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i234.i, 0
  %and1.i.i.i = and i64 %263, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 13510798882111488, i64 %and1.i.i.i)
  %cmp.i.i236.i = icmp eq i64 %and1.i.i.i, 13510798882111488
  %or.cond.i = select i1 %tobool.not.i.i.i, i1 %cmp.i.i236.i, i1 false
  br i1 %or.cond.i, label %if.then2.i.i.i, label %if.end57.i.iavf_rx_hash.exit.i.i_crit_edge

if.end57.i.iavf_rx_hash.exit.i.i_crit_edge:       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_rx_hash.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %and61.i = lshr i64 %264, 30
  %conv63.i = trunc i64 %and61.i to i32
  %hi_dword.i.i.i = getelementptr inbounds %struct.anon.162, ptr %arrayidx.i126, i32 0, i32 1
  %269 = ptrtoint ptr %hi_dword.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %hi_dword.i.i.i, align 4
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #12
  %idxprom.i.i.i.i.i = and i32 %conv63.i, 255
  %arrayidx.i.i.i.i.i = getelementptr [0 x %struct.iavf_rx_ptype_decoded], ptr @iavf_ptype_lookup, i32 0, i32 %idxprom.i.i.i.i.i
  %272 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %retval.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %273 = and i32 %retval.sroa.0.0.copyload.i.i.i.i.i, -1073512448
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073643520, i32 %273)
  %274 = icmp eq i32 %273, -1073643520
  %..i.i237.i = select i1 %274, i16 128, i16 0
  %l4_hash.i.i10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15
  %275 = ptrtoint ptr %l4_hash.i.i10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %bf.load.i.i11.i.i.i = load i16, ptr %l4_hash.i.i10.i.i.i, align 8
  %bf.clear.i.i.i.i.i = and i16 %bf.load.i.i11.i.i.i, -193
  %bf.set.i.i.i.i.i = or i16 %..i.i237.i, %bf.clear.i.i.i.i.i
  store i16 %bf.set.i.i.i.i.i, ptr %l4_hash.i.i10.i.i.i, align 8
  %hash10.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15, i32 0, i32 8
  %276 = ptrtoint ptr %hash10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %271, ptr %hash10.i.i.i.i.i, align 4
  br label %iavf_rx_hash.exit.i.i

iavf_rx_hash.exit.i.i:                            ; preds = %if.then2.i.i.i, %if.end57.i.iavf_rx_hash.exit.i.i_crit_edge
  %277 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %vsi.i.i, align 8
  %279 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %qword1.i, align 8
  %281 = tail call i64 @llvm.bswap.i64(i64 %280) #12
  %and.i10.i.i = lshr i64 %281, 30
  %conv.i.i.i = trunc i64 %and.i10.i.i to i32
  %282 = trunc i64 %281 to i32
  %idxprom.i.i.i.i = and i32 %conv.i.i.i, 255
  %arrayidx.i.i.i.i = getelementptr [0 x %struct.iavf_rx_ptype_decoded], ptr @iavf_ptype_lookup, i32 0, i32 %idxprom.i.i.i.i
  %283 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %retval.sroa.0.0.copyload.i.i.i.i = load i32, ptr %arrayidx.i.i.i.i, align 4
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15
  %284 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1537
  store i16 %bf.clear.i.i.i, ptr %ip_summed.i.i.i, align 8
  %netdev.i11.i.i = getelementptr inbounds %struct.iavf_vsi, ptr %278, i32 0, i32 1
  %285 = ptrtoint ptr %netdev.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %netdev.i11.i.i, align 4
  %features.i12.i.i = getelementptr inbounds %struct.net_device, ptr %286, i32 0, i32 23
  %287 = ptrtoint ptr %features.i12.i.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %features.i12.i.i, align 16
  %and7.i.i.i = and i64 %288, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i)
  %tobool.not.i13.i.i = icmp ne i64 %and7.i.i.i, 0
  %and8.i.i.i = and i32 %282, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp ne i32 %and8.i.i.i, 0
  %or.cond135.i.i.i = select i1 %tobool.not.i13.i.i, i1 %tobool9.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %retval.sroa.0.0.copyload.i.i.i.i)
  %.not.i.i.i = icmp ugt i32 %retval.sroa.0.0.copyload.i.i.i.i, -1073741825
  %or.cond.i.i.i = select i1 %or.cond135.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %land.rhs.i.i.i, label %iavf_rx_hash.exit.i.i.iavf_process_skb_fields.exit.i_crit_edge

iavf_rx_hash.exit.i.i.iavf_process_skb_fields.exit.i_crit_edge: ; preds = %iavf_rx_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_process_skb_fields.exit.i

land.rhs.i.i.i:                                   ; preds = %iavf_rx_hash.exit.i.i
  %289 = and i32 %retval.sroa.0.0.copyload.i.i.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp27.i.i.i = icmp ne i32 %289, 0
  %290 = and i32 %282, 20971520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool46.not.i.i.i = icmp eq i32 %290, 0
  %or.cond133.i.i.i = select i1 %cmp27.i.i.i, i1 true, i1 %tobool46.not.i.i.i
  br i1 %or.cond133.i.i.i, label %if.end48.i.i.i, label %land.rhs.i.i.i.checksum_fail.i.i.i_crit_edge

land.rhs.i.i.i.checksum_fail.i.i.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %checksum_fail.i.i.i

if.end48.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp38.not.i.i.i = icmp eq i32 %289, 0
  %and52.i.i.i = and i32 %282, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i.i)
  %tobool53.not.i.i.i = icmp eq i32 %and52.i.i.i, 0
  %or.cond134.i.i.i = select i1 %cmp38.not.i.i.i, i1 true, i1 %tobool53.not.i.i.i
  br i1 %or.cond134.i.i.i, label %if.end55.i.i.i, label %if.end48.i.i.i.iavf_process_skb_fields.exit.i_crit_edge

if.end48.i.i.i.iavf_process_skb_fields.exit.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_process_skb_fields.exit.i

if.end55.i.i.i:                                   ; preds = %if.end48.i.i.i
  %291 = and i32 %282, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool57.not.i.i.i = icmp eq i32 %291, 0
  br i1 %tobool57.not.i.i.i, label %if.end59.i.i.i, label %if.end55.i.i.i.checksum_fail.i.i.i_crit_edge

if.end55.i.i.i.checksum_fail.i.i.i_crit_edge:     ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %checksum_fail.i.i.i

if.end59.i.i.i:                                   ; preds = %if.end55.i.i.i
  %292 = and i32 %282, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool61.not.i.i.i = icmp eq i32 %292, 0
  br i1 %tobool61.not.i.i.i, label %if.end63.i.i.i, label %if.end59.i.i.i.iavf_process_skb_fields.exit.i_crit_edge

if.end59.i.i.i.iavf_process_skb_fields.exit.i_crit_edge: ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_process_skb_fields.exit.i

if.end63.i.i.i:                                   ; preds = %if.end59.i.i.i
  %bf.lshr65.i.i.i = lshr i32 %retval.sroa.0.0.copyload.i.i.i.i, 18
  %bf.clear66.i.i.i = and i32 %bf.lshr65.i.i.i, 15
  %bf.clear66.off.i.i.i = add nsw i32 %bf.clear66.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear66.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %bf.clear66.off.i.i.i, 3
  br i1 %switch.i.i.i, label %sw.bb.i.i.i, label %if.end63.i.i.i.iavf_process_skb_fields.exit.i_crit_edge

if.end63.i.i.i.iavf_process_skb_fields.exit.i_crit_edge: ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_process_skb_fields.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set70.i.i.i = or i16 %bf.clear.i.i.i, 512
  %293 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %bf.set70.i.i.i, ptr %ip_summed.i.i.i, align 8
  br label %iavf_process_skb_fields.exit.i

checksum_fail.i.i.i:                              ; preds = %if.end55.i.i.i.checksum_fail.i.i.i_crit_edge, %land.rhs.i.i.i.checksum_fail.i.i.i_crit_edge
  %294 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %278, align 4
  %hw_csum_rx_error.i.i.i = getelementptr inbounds %struct.iavf_adapter, ptr %295, i32 0, i32 17
  %296 = ptrtoint ptr %hw_csum_rx_error.i.i.i to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %hw_csum_rx_error.i.i.i, align 8
  %inc.i.i.i = add i64 %297, 1
  store i64 %inc.i.i.i, ptr %hw_csum_rx_error.i.i.i, align 8
  br label %iavf_process_skb_fields.exit.i

iavf_process_skb_fields.exit.i:                   ; preds = %checksum_fail.i.i.i, %sw.bb.i.i.i, %if.end63.i.i.i.iavf_process_skb_fields.exit.i_crit_edge, %if.end59.i.i.i.iavf_process_skb_fields.exit.i_crit_edge, %if.end48.i.i.i.iavf_process_skb_fields.exit.i_crit_edge, %iavf_rx_hash.exit.i.i.iavf_process_skb_fields.exit.i_crit_edge
  %298 = ptrtoint ptr %queue_index.i.i123 to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %queue_index.i.i123, align 8
  %add.i.i238.i = add i16 %299, 1
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 10
  %300 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %add.i.i238.i, ptr %queue_mapping.i.i.i, align 8
  %301 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %netdev.i.i.i, align 4
  %call.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.1.ph.i, ptr noundef %302) #12
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15, i32 0, i32 18
  %303 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %call.i.i, ptr %protocol.i.i, align 8
  %and64.i = and i64 %264, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64.i)
  %tobool65.not.i = icmp eq i64 %and64.i, 0
  br i1 %tobool65.not.i, label %iavf_process_skb_fields.exit.i.if.end70.i_crit_edge, label %land.lhs.true.i

iavf_process_skb_fields.exit.i.if.end70.i_crit_edge: ; preds = %iavf_process_skb_fields.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

land.lhs.true.i:                                  ; preds = %iavf_process_skb_fields.exit.i
  %304 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %flags.i.i, align 2
  %306 = and i16 %305, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %306)
  %tobool68.not.i = icmp eq i16 %306, 0
  br i1 %tobool68.not.i, label %land.lhs.true.i.if.end70.i_crit_edge, label %if.then69.i

land.lhs.true.i.if.end70.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then69.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %l2tag1.i = getelementptr inbounds %struct.anon.163, ptr %arrayidx.i126, i32 0, i32 1
  %307 = ptrtoint ptr %l2tag1.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %l2tag1.i, align 2
  %309 = tail call i16 @llvm.bswap.i16(i16 %308) #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then69.i, %land.lhs.true.i.if.end70.i_crit_edge, %iavf_process_skb_fields.exit.i.if.end70.i_crit_edge
  %vlan_tag.0.i = phi i16 [ %309, %if.then69.i ], [ 0, %land.lhs.true.i.if.end70.i_crit_edge ], [ 0, %iavf_process_skb_fields.exit.i.if.end70.i_crit_edge ]
  %qword2.i = getelementptr inbounds %struct.anon.161, ptr %arrayidx.i126, i32 0, i32 2
  %310 = ptrtoint ptr %qword2.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %qword2.i, align 8
  %312 = and i16 %311, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %312)
  %tobool73.not.i = icmp eq i16 %312, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end81.i_crit_edge, label %land.lhs.true74.i

if.end70.i.if.end81.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

land.lhs.true74.i:                                ; preds = %if.end70.i
  %313 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %flags.i.i, align 2
  %315 = and i16 %314, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %315)
  %tobool78.not.i = icmp eq i16 %315, 0
  br i1 %tobool78.not.i, label %land.lhs.true74.i.if.end81.i_crit_edge, label %if.then79.i

land.lhs.true74.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then79.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #14
  %l2tag2_2.i = getelementptr inbounds %struct.anon.167, ptr %qword2.i, i32 0, i32 3
  %316 = ptrtoint ptr %l2tag2_2.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %l2tag2_2.i, align 2
  %318 = tail call i16 @llvm.bswap.i16(i16 %317) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then79.i, %land.lhs.true74.i.if.end81.i_crit_edge, %if.end70.i.if.end81.i_crit_edge
  %vlan_tag.1.i = phi i16 [ %318, %if.then79.i ], [ %vlan_tag.0.i, %land.lhs.true74.i.if.end81.i_crit_edge ], [ %vlan_tag.0.i, %if.end70.i.if.end81.i_crit_edge ]
  tail call fastcc void @trace_iavf_clean_rx_irq_rx(ptr noundef %ring.1207, ptr noundef %arrayidx.i126, ptr noundef nonnull %skb.1.ph.i) #12
  %319 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %q_vector.i.i, align 4
  %321 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %netdev.i.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %322, i32 0, i32 23
  %323 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %features.i.i, align 16
  %and.i239.i = and i64 %324, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i239.i)
  %tobool.not.i240.i = icmp eq i64 %and.i239.i, 0
  %325 = and i16 %vlan_tag.1.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %325)
  %tobool3.not.i241.i = icmp eq i16 %325, 0
  %or.cond.i.i = or i1 %tobool3.not.i241.i, %tobool.not.i240.i
  br i1 %or.cond.i.i, label %if.else.i242.i, label %if.end81.i.if.end13.sink.split.i.i_crit_edge

if.end81.i.if.end13.sink.split.i.i_crit_edge:     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split.i.i

if.else.i242.i:                                   ; preds = %if.end81.i
  %and6.i.i = and i64 %324, 70368744177664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.i)
  %tobool7.not.i.i = icmp eq i64 %and6.i.i, 0
  %or.cond21.i.i = or i1 %tobool3.not.i241.i, %tobool7.not.i.i
  br i1 %or.cond21.i.i, label %if.else.i242.i.iavf_receive_skb.exit.i_crit_edge, label %if.else.i242.i.if.end13.sink.split.i.i_crit_edge

if.else.i242.i.if.end13.sink.split.i.i_crit_edge: ; preds = %if.else.i242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split.i.i

if.else.i242.i.iavf_receive_skb.exit.i_crit_edge: ; preds = %if.else.i242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_receive_skb.exit.i

if.end13.sink.split.i.i:                          ; preds = %if.else.i242.i.if.end13.sink.split.i.i_crit_edge, %if.end81.i.if.end13.sink.split.i.i_crit_edge
  %.sink.i.i = phi i16 [ -32512, %if.end81.i.if.end13.sink.split.i.i_crit_edge ], [ -30552, %if.else.i242.i.if.end13.sink.split.i.i_crit_edge ]
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15, i32 0, i32 9
  %326 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %.sink.i.i, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15, i32 0, i32 10
  %327 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %vlan_tag.1.i, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph.i, i32 0, i32 15, i32 0, i32 3
  %328 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %bf.load.i25.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i26.i.i = or i32 %bf.load.i25.i.i, -2147483648
  store i32 %bf.set.i26.i.i, ptr %vlan_present.i.i.i, align 2
  br label %iavf_receive_skb.exit.i

iavf_receive_skb.exit.i:                          ; preds = %if.end13.sink.split.i.i, %if.else.i242.i.iavf_receive_skb.exit.i_crit_edge
  %napi.i243.i = getelementptr inbounds %struct.iavf_q_vector, ptr %320, i32 0, i32 2
  %call.i244.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i243.i, ptr noundef nonnull %skb.1.ph.i) #12
  %inc82.i = add nuw i32 %total_rx_packets.0300.i, 1
  br label %cleanup.i132

cleanup.i132:                                     ; preds = %iavf_receive_skb.exit.i, %if.then.i.i.i.i.i.cleanup.i132_crit_edge, %if.then53.i, %iavf_is_non_eop.exit.thread.i
  %total_rx_bytes.1.i = phi i32 [ %total_rx_bytes.0297.i, %if.then53.i ], [ %add58.i, %iavf_receive_skb.exit.i ], [ %total_rx_bytes.0297.i, %iavf_is_non_eop.exit.thread.i ], [ %total_rx_bytes.0297.i, %if.then.i.i.i.i.i.cleanup.i132_crit_edge ]
  %total_rx_packets.1.i = phi i32 [ %total_rx_packets.0300.i, %if.then53.i ], [ %inc82.i, %iavf_receive_skb.exit.i ], [ %total_rx_packets.0300.i, %iavf_is_non_eop.exit.thread.i ], [ %total_rx_packets.0300.i, %if.then.i.i.i.i.i.cleanup.i132_crit_edge ]
  %skb.2.i = phi ptr [ null, %if.then53.i ], [ null, %iavf_receive_skb.exit.i ], [ %skb.1.ph.i, %iavf_is_non_eop.exit.thread.i ], [ null, %if.then.i.i.i.i.i.cleanup.i132_crit_edge ]
  %cmp11.i = icmp ult i32 %total_rx_packets.1.i, %139
  br i1 %cmp11.i, label %cleanup.i132.while.body.i124_crit_edge, label %cleanup.i132.iavf_clean_rx_irq.exit_crit_edge, !prof !80

cleanup.i132.iavf_clean_rx_irq.exit_crit_edge:    ; preds = %cleanup.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_clean_rx_irq.exit

cleanup.i132.while.body.i124_crit_edge:           ; preds = %cleanup.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i124

iavf_clean_rx_irq.exit:                           ; preds = %cleanup.i132.iavf_clean_rx_irq.exit_crit_edge, %if.then38.i, %if.then36.thread.i, %if.end.i.iavf_clean_rx_irq.exit_crit_edge
  %total_rx_bytes.0291.i = phi i32 [ %total_rx_bytes.0297.i, %if.then36.thread.i ], [ %total_rx_bytes.0297.i, %if.then38.i ], [ %total_rx_bytes.1.i, %cleanup.i132.iavf_clean_rx_irq.exit_crit_edge ], [ %total_rx_bytes.0297.i, %if.end.i.iavf_clean_rx_irq.exit_crit_edge ]
  %total_rx_packets.0285.i = phi i32 [ %total_rx_packets.0300.i, %if.then36.thread.i ], [ %total_rx_packets.0300.i, %if.then38.i ], [ %total_rx_packets.1.i, %cleanup.i132.iavf_clean_rx_irq.exit_crit_edge ], [ %total_rx_packets.0300.i, %if.end.i.iavf_clean_rx_irq.exit_crit_edge ]
  %skb.3.i = phi ptr [ null, %if.then36.thread.i ], [ null, %if.then38.i ], [ %skb.2.i, %cleanup.i132.iavf_clean_rx_irq.exit_crit_edge ], [ %skb.0303.i, %if.end.i.iavf_clean_rx_irq.exit_crit_edge ]
  %329 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %skb.3.i, ptr %skb1.i, align 4
  %syncp.i133 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 22
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i133) #12
  %conv89.i = zext i32 %total_rx_packets.0285.i to i64
  %stats.i134 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 21
  %330 = ptrtoint ptr %stats.i134 to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %stats.i134, align 8
  %add90.i = add i64 %331, %conv89.i
  store i64 %add90.i, ptr %stats.i134, align 8
  %conv91.i = zext i32 %total_rx_bytes.0291.i to i64
  %bytes.i135 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 21, i32 1
  %332 = ptrtoint ptr %bytes.i135 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %bytes.i135, align 8
  %add93.i = add i64 %333, %conv91.i
  store i64 %add93.i, ptr %bytes.i135, align 8
  %dep_map.i.i.i136 = getelementptr inbounds %struct.iavf_ring, ptr %ring.1207, i32 0, i32 22, i32 0, i32 1
  %334 = tail call ptr @llvm.returnaddress(i32 0) #12
  %335 = ptrtoint ptr %334 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i136, i32 noundef %335) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %336 = ptrtoint ptr %syncp.i133 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %syncp.i133, align 4
  %inc.i.i.i.i137 = add i32 %337, 1
  store i32 %inc.i.i.i.i137, ptr %syncp.i133, align 4
  %338 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %q_vector.i.i, align 4
  %total_packets.i = getelementptr inbounds %struct.iavf_q_vector, ptr %339, i32 0, i32 3, i32 3
  %340 = ptrtoint ptr %total_packets.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %total_packets.i, align 4
  %add95.i = add i32 %341, %total_rx_packets.0285.i
  store i32 %add95.i, ptr %total_packets.i, align 4
  %342 = load ptr, ptr %q_vector.i.i, align 4
  %total_bytes.i = getelementptr inbounds %struct.iavf_q_vector, ptr %342, i32 0, i32 3, i32 2
  %343 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %total_bytes.i, align 8
  %add98.i = add i32 %344, %total_rx_bytes.0291.i
  store i32 %add98.i, ptr %total_bytes.i, align 8
  %spec.select.i = select i1 %failure.1.off0.i, i32 %139, i32 %total_rx_packets.0285.i
  %add = add i32 %spec.select.i, %work_done.0206
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %139)
  %cmp27.not = icmp slt i32 %spec.select.i, %139
  %spec.select = select i1 %cmp27.not, i1 %clean_complete.2.off0205, i1 false
  %345 = ptrtoint ptr %ring.1207 to i32
  call void @__asan_load4_noabort(i32 %345)
  %ring.1 = load ptr, ptr %ring.1207, align 8
  %cmp23.not = icmp eq ptr %ring.1, null
  br i1 %cmp23.not, label %iavf_clean_rx_irq.exit.for.end33_crit_edge, label %iavf_clean_rx_irq.exit.for.body25_crit_edge

iavf_clean_rx_irq.exit.for.body25_crit_edge:      ; preds = %iavf_clean_rx_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25

iavf_clean_rx_irq.exit.for.end33_crit_edge:       ; preds = %iavf_clean_rx_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33

for.end33:                                        ; preds = %iavf_clean_rx_irq.exit.for.end33_crit_edge, %if.end16.for.end33_crit_edge
  %clean_complete.2.off0.lcssa = phi i1 [ %clean_complete.0.off0.lcssa, %if.end16.for.end33_crit_edge ], [ %spec.select, %iavf_clean_rx_irq.exit.for.end33_crit_edge ]
  %work_done.0.lcssa = phi i32 [ 0, %if.end16.for.end33_crit_edge ], [ %add, %iavf_clean_rx_irq.exit.for.end33_crit_edge ]
  br i1 %clean_complete.2.off0.lcssa, label %if.end47, label %if.then35

if.then35:                                        ; preds = %for.end33
  %346 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i140 = and i32 %346, -16384
  %347 = inttoptr i32 %and.i140 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %347, i32 0, i32 3
  %348 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %cpu, align 4
  %affinity_mask = getelementptr i8, ptr %napi, i32 316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %350 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %349)
  %cmp.not.i.i.i = icmp ugt i32 %350, %349
  br i1 %cmp.not.i.i.i, label %if.then35.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i141

if.then35.cpumask_test_cpu.exit_crit_edge:        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i141:                                ; preds = %if.then35
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i141.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !80

land.rhs.i.i.i141.cpumask_test_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i141.cpumask_test_cpu.exit_crit_edge, %if.then35.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %349, 5
  %arrayidx.i.i142 = getelementptr i32, ptr %affinity_mask, i32 %div3.i.i
  %351 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load volatile i32, ptr %arrayidx.i.i142, align 4
  %and.i.i143 = and i32 %349, 31
  %353 = shl nuw i32 1, %and.i.i143
  %354 = and i32 %352, %353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool38.not = icmp eq i32 %354, 0
  br i1 %tobool38.not, label %if.then39, label %cpumask_test_cpu.exit.tx_only_crit_edge

cpumask_test_cpu.exit.tx_only_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_only

if.then39:                                        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void @arm_heavy_mb() #12
  %355 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %1, align 4
  %hw.i = getelementptr inbounds %struct.iavf_adapter, ptr %356, i32 0, i32 29
  %357 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hw.i, align 8
  %reg_idx.i = getelementptr i8, ptr %napi, i32 280
  %359 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %reg_idx.i, align 8
  %conv.i145 = zext i16 %360 to i32
  %mul.i = shl nuw nsw i32 %conv.i145, 2
  %add.i146 = add nuw nsw i32 %mul.i, 14336
  %add.ptr.i = getelementptr i8, ptr %358, i32 %add.i146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 486539265) #12, !srcloc !78
  %sub = add i32 %budget, -1
  br label %cleanup

tx_only:                                          ; preds = %cpumask_test_cpu.exit.tx_only_crit_edge, %for.end.tx_only_crit_edge
  br i1 %arm_wb.0.off0.lcssa, label %if.then43, label %tx_only.cleanup_crit_edge

tx_only.cleanup_crit_edge:                        ; preds = %tx_only
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %tx_only
  %361 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %tx, align 8
  %tx_force_wb = getelementptr inbounds %struct.iavf_ring, ptr %362, i32 0, i32 23, i32 0, i32 4
  %363 = ptrtoint ptr %tx_force_wb to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %tx_force_wb, align 8
  %inc = add i64 %364, 1
  store i64 %inc, ptr %tx_force_wb, align 8
  %365 = load ptr, ptr %tx, align 8
  %flags1.i = getelementptr inbounds %struct.iavf_ring, ptr %365, i32 0, i32 20
  %366 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %flags1.i, align 2
  %368 = and i16 %367, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %368)
  %tobool.not.i147 = icmp eq i16 %368, 0
  br i1 %tobool.not.i147, label %if.then43.cleanup_crit_edge, label %if.end.i148

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i148:                                      ; preds = %if.then43
  %arm_wb_state.i = getelementptr i8, ptr %napi, i32 313
  %369 = ptrtoint ptr %arm_wb_state.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arm_wb_state.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool2.not.i = icmp eq i8 %370, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i148.cleanup_crit_edge

if.end.i148.cleanup_crit_edge:                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  tail call void @arm_heavy_mb() #12
  %371 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %1, align 4
  %hw.i149 = getelementptr inbounds %struct.iavf_adapter, ptr %372, i32 0, i32 29
  %373 = ptrtoint ptr %hw.i149 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %hw.i149, align 8
  %reg_idx.i150 = getelementptr i8, ptr %napi, i32 280
  %375 = ptrtoint ptr %reg_idx.i150 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %reg_idx.i150, align 8
  %conv5.i = zext i16 %376 to i32
  %mul.i151 = shl nuw nsw i32 %conv5.i, 2
  %add.i152 = add nuw nsw i32 %mul.i151, 14336
  %add.ptr.i153 = getelementptr i8, ptr %374, i32 %add.i152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 402653248) #12, !srcloc !78
  %377 = ptrtoint ptr %arm_wb_state.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 1, ptr %arm_wb_state.i, align 1
  br label %cleanup

if.end47:                                         ; preds = %for.end33
  %378 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.iavf_adapter, ptr %379, i32 0, i32 25
  %380 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %flags, align 4
  %and = and i32 %381, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end47.if.end50_crit_edge, label %if.then49

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %arm_wb_state = getelementptr i8, ptr %napi, i32 313
  %382 = ptrtoint ptr %arm_wb_state to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 0, ptr %arm_wb_state, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47.if.end50_crit_edge
  %call51 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #12
  br i1 %call51, label %if.then54, label %if.end50.if.end55_crit_edge, !prof !80

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  %383 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %1, align 4
  %hw1.i = getelementptr inbounds %struct.iavf_adapter, ptr %384, i32 0, i32 29
  tail call fastcc void @iavf_update_itr(ptr noundef %add.ptr, ptr noundef %tx) #12
  tail call fastcc void @iavf_update_itr(ptr noundef %add.ptr, ptr noundef %rx) #12
  %target_itr.i = getelementptr i8, ptr %napi, i32 242
  %385 = ptrtoint ptr %target_itr.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %target_itr.i, align 2
  %conv.i156 = zext i16 %386 to i32
  %current_itr.i = getelementptr i8, ptr %napi, i32 244
  %387 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %current_itr.i, align 4
  %conv4.i = zext i16 %388 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %386, i16 %388)
  %cmp.i157 = icmp ult i16 %386, %388
  br i1 %cmp.i157, label %if.then.i, label %if.else.i159

if.then.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %389 = and i16 %386, 8190
  %conv2.i.i158 = zext i16 %389 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i158, 4
  %or4.i.i = or i32 %shl3.i.i, 1
  %390 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %386, ptr %current_itr.i, align 4
  %itr_countdown.i = getelementptr i8, ptr %napi, i32 276
  %391 = ptrtoint ptr %itr_countdown.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 3, ptr %itr_countdown.i, align 4
  br label %if.end69.i

if.else.i159:                                     ; preds = %if.then54
  %target_itr13.i = getelementptr i8, ptr %napi, i32 266
  %392 = ptrtoint ptr %target_itr13.i to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %target_itr13.i, align 2
  %current_itr16.i = getelementptr i8, ptr %napi, i32 268
  %394 = ptrtoint ptr %current_itr16.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %current_itr16.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %393, i16 %395)
  %cmp18.i = icmp ult i16 %393, %395
  br i1 %cmp18.i, label %if.else.i159.if.then35.i_crit_edge, label %lor.lhs.false.i

if.else.i159.if.then35.i_crit_edge:               ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %if.else.i159
  %conv17.i = zext i16 %395 to i32
  %conv14.i = zext i16 %393 to i32
  %sub.i160 = sub nsw i32 %conv.i156, %conv4.i
  %sub32.i = sub nsw i32 %conv14.i, %conv17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i160, i32 %sub32.i)
  %cmp33.i = icmp slt i32 %sub.i160, %sub32.i
  br i1 %cmp33.i, label %lor.lhs.false.i.if.then35.i_crit_edge, label %if.else44.i

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %if.else.i159.if.then35.i_crit_edge
  %396 = and i16 %393, 8190
  %conv2.i104.i = zext i16 %396 to i32
  %shl3.i105.i = shl nuw nsw i32 %conv2.i104.i, 4
  %or4.i106.i = or i32 %shl3.i105.i, 9
  %397 = ptrtoint ptr %current_itr16.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %393, ptr %current_itr16.i, align 4
  %itr_countdown43.i = getelementptr i8, ptr %napi, i32 276
  %398 = ptrtoint ptr %itr_countdown43.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 3, ptr %itr_countdown43.i, align 4
  br label %if.end69.i

if.else44.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp2(i16 %386, i16 %388)
  %cmp51.not.i = icmp eq i16 %386, %388
  br i1 %cmp51.not.i, label %if.else62.i, label %if.then53.i161

if.then53.i161:                                   ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #14
  %399 = and i16 %386, 8190
  %conv2.i107.i = zext i16 %399 to i32
  %shl3.i108.i = shl nuw nsw i32 %conv2.i107.i, 4
  %or4.i109.i = or i32 %shl3.i108.i, 1
  %400 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 %386, ptr %current_itr.i, align 4
  %itr_countdown61.i = getelementptr i8, ptr %napi, i32 276
  %401 = ptrtoint ptr %itr_countdown61.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 3, ptr %itr_countdown61.i, align 4
  br label %if.end69.i

if.else62.i:                                      ; preds = %if.else44.i
  %itr_countdown64.i = getelementptr i8, ptr %napi, i32 276
  %402 = ptrtoint ptr %itr_countdown64.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %itr_countdown64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool.not.i162 = icmp eq i8 %403, 0
  br i1 %tobool.not.i162, label %if.else62.i.if.end69.i_crit_edge, label %if.then65.i

if.else62.i.if.end69.i_crit_edge:                 ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i163 = add i8 %403, -1
  %404 = ptrtoint ptr %itr_countdown64.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %dec.i163, ptr %itr_countdown64.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.else62.i.if.end69.i_crit_edge, %if.then53.i161, %if.then35.i, %if.then.i
  %intval.0.i = phi i32 [ %or4.i.i, %if.then.i ], [ %or4.i106.i, %if.then35.i ], [ %or4.i109.i, %if.then53.i161 ], [ 25, %if.then65.i ], [ 25, %if.else62.i.if.end69.i_crit_edge ]
  %405 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load volatile i32, ptr %state, align 4
  %and1.i.i165 = and i32 %406, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i165)
  %tobool71.not.i = icmp eq i32 %and1.i.i165, 0
  br i1 %tobool71.not.i, label %do.body.i170, label %if.end69.i.if.end55_crit_edge

if.end69.i.if.end55_crit_edge:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.body.i170:                                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @arm_heavy_mb() #12
  %407 = tail call i32 @llvm.bswap.i32(i32 %intval.0.i) #12
  %408 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %hw1.i, align 4
  %reg_idx.i166 = getelementptr i8, ptr %napi, i32 280
  %410 = ptrtoint ptr %reg_idx.i166 to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %reg_idx.i166, align 8
  %conv73.i = zext i16 %411 to i32
  %mul.i167 = shl nuw nsw i32 %conv73.i, 2
  %add.i168 = add nuw nsw i32 %mul.i167, 14336
  %add.ptr.i169 = getelementptr i8, ptr %409, i32 %add.i168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %407) #12, !srcloc !78
  br label %if.end55

if.end55:                                         ; preds = %do.body.i170, %if.end69.i.if.end55_crit_edge, %if.end50.if.end55_crit_edge
  %sub56 = add i32 %budget, -1
  %412 = tail call i32 @llvm.smin.i32(i32 %work_done.0.lcssa, i32 %sub56)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end4.i, %if.end.i148.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %tx_only.cleanup_crit_edge, %if.then39, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %412, %if.end55 ], [ %sub, %if.then39 ], [ %budget, %tx_only.cleanup_crit_edge ], [ %budget, %if.then43.cleanup_crit_edge ], [ %budget, %if.end.i148.cleanup_crit_edge ], [ %budget, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__iavf_chk_linearize(ptr nocapture noundef readonly %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp ult i8 %3, 7
  br i1 %cmp, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -6
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size, align 4
  %conv5 = zext i16 %5 to i32
  %sub6 = sub nsw i32 1, %conv5
  %bv_len.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %6 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_len.i, align 4
  %add = add i32 %sub6, %7
  %bv_len.i80 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 1, i32 1
  %8 = ptrtoint ptr %bv_len.i80 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i80, align 4
  %add10 = add i32 %add, %9
  %bv_len.i81 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 2, i32 1
  %10 = ptrtoint ptr %bv_len.i81 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i81, align 4
  %add13 = add i32 %add10, %11
  %bv_len.i82 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 3, i32 1
  %12 = ptrtoint ptr %bv_len.i82 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len.i82, align 4
  %add16 = add i32 %add13, %13
  %incdec.ptr17 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 5
  %bv_len.i83 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 4, i32 1
  %14 = ptrtoint ptr %bv_len.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i83, align 4
  %add19 = add i32 %add16, %15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %frag.0 = phi ptr [ %incdec.ptr17, %if.end ], [ %incdec.ptr24, %for.inc ]
  %stale.0 = phi ptr [ %frags, %if.end ], [ %incdec.ptr46, %for.inc ]
  %nr_frags.0 = phi i32 [ %sub, %if.end ], [ %dec, %for.inc ]
  %sum.0 = phi i32 [ %add19, %if.end ], [ %sub45, %for.inc ]
  %bv_len.i85 = getelementptr inbounds %struct.bio_vec, ptr %stale.0, i32 0, i32 1
  %16 = ptrtoint ptr %bv_len.i85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bv_len.i85, align 4
  %incdec.ptr24 = getelementptr %struct.bio_vec, ptr %frag.0, i32 1
  %bv_len.i86 = getelementptr inbounds %struct.bio_vec, ptr %frag.0, i32 0, i32 1
  %18 = ptrtoint ptr %bv_len.i86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i86, align 4
  %add26 = add i32 %19, %sum.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %17)
  %cmp27 = icmp sgt i32 %17, 16383
  br i1 %cmp27, label %if.then29, label %for.cond.if.end38_crit_edge

for.cond.if.end38_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then29:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0, i32 0, i32 2
  %20 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_offset.i, align 4
  %sub31 = sub i32 0, %21
  %and = and i32 %sub31, 4095
  %22 = add i32 %sum.0, -12288
  %23 = add i32 %22, %19
  %24 = add nsw i32 %17, -12288
  %25 = sub nuw nsw i32 %24, %and
  %umin = call i32 @llvm.umin.i32(i32 %25, i32 16383)
  %26 = xor i32 %umin, -1
  %27 = add i32 %17, %26
  %28 = sub i32 %27, %and
  %29 = urem i32 %28, 12288
  %30 = sub i32 %28, %29
  %31 = add i32 %and, %30
  %32 = sub i32 %23, %31
  %33 = sub i32 %25, %30
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %for.cond.if.end38_crit_edge
  %sum.2 = phi i32 [ %add26, %for.cond.if.end38_crit_edge ], [ %32, %if.then29 ]
  %stale_size.1 = phi i32 [ %17, %for.cond.if.end38_crit_edge ], [ %33, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sum.2)
  %cmp39 = icmp slt i32 %sum.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags.0)
  %tobool.not = icmp eq i32 %nr_frags.0, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end38.cleanup47_crit_edge, label %for.inc

if.end38.cleanup47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

for.inc:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %sub45 = sub i32 %sum.2, %stale_size.1
  %dec = add nsw i32 %nr_frags.0, -1
  %incdec.ptr46 = getelementptr %struct.bio_vec, ptr %stale.0, i32 1
  br label %for.cond

cleanup47:                                        ; preds = %if.end38.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup47_crit_edge ], [ %cmp39, %if.end38.cleanup47_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__iavf_maybe_stop_tx(ptr nocapture noundef %tx_ring, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %queue_index = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 6
  %2 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_index, align 8
  %conv.i = zext i16 %3 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  %next_to_clean = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 14
  %6 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 13
  %8 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp ugt i16 %7, %9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count, align 2
  %conv5 = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %conv7 = zext i16 %7 to i32
  %conv9 = zext i16 %9 to i32
  %12 = xor i32 %conv9, -1
  %add = add nsw i32 %12, %conv7
  %sub10 = add nsw i32 %add, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10, i32 %size)
  %cmp11 = icmp slt i32 %sub10, %size
  br i1 %cmp11, label %cond.end.return_crit_edge, label %if.end, !prof !80

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %15 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queue_index, align 8
  %conv.i25 = zext i16 %16 to i32
  %_tx.i.i26 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i26, align 128
  %state.i.i27 = getelementptr %struct.netdev_queue, ptr %18, i32 %conv.i25, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i27) #12
  %19 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 23
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %19, align 8
  br label %return

return:                                           ; preds = %if.end, %cond.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_xmit_frame(ptr noundef %skb, ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr i8, ptr %netdev, i32 2828
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.iavf_ring, ptr %1, i32 %idxprom
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp = icmp ult i32 %5, 17
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge, !prof !81

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %sub = sub nuw nsw i32 17, %5
  %call.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 17, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 17
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i16, ptr %tail.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %call8 = tail call fastcc i32 @iavf_xmit_frame_ring(ptr noundef %skb, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iavf_xmit_frame_ring(ptr noundef %skb, ptr noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  %frag_off.i = alloca i16, align 2
  %l4_proto.i = alloca i8, align 1
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %1) #12, !srcloc !85
  tail call fastcc void @trace_iavf_xmit_frame_ring(ptr noundef %skb, ptr noundef %tx_ring)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags2.i, align 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  %mul.i10.i = mul i32 %sub.i.i, 85
  %shr.i11.i = lshr i32 %mul.i10.i, 20
  %add12.i = add nuw nsw i32 %shr.i11.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not13.i = icmp eq i8 %5, 0
  br i1 %tobool.not13.i, label %entry.iavf_xmit_descriptor_count.exit_crit_edge, label %if.end.preheader.i

entry.iavf_xmit_descriptor_count.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_xmit_descriptor_count.exit

if.end.preheader.i:                               ; preds = %entry
  %conv.i = zext i8 %5 to i32
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.preheader.i
  %add16.i = phi i32 [ %add.i, %if.end.i.if.end.i_crit_edge ], [ %add12.i, %if.end.preheader.i ]
  %nr_frags.015.i = phi i32 [ %dec.i, %if.end.i.if.end.i_crit_edge ], [ %conv.i, %if.end.preheader.i ]
  %frag.014.i = phi ptr [ %incdec.ptr.i, %if.end.i.if.end.i_crit_edge ], [ %frags.i, %if.end.preheader.i ]
  %dec.i = add nsw i32 %nr_frags.015.i, -1
  %incdec.ptr.i = getelementptr %struct.bio_vec, ptr %frag.014.i, i32 1
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.014.i, i32 0, i32 1
  %10 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i.i, align 4
  %mul.i.i = mul i32 %11, 85
  %shr.i.i = lshr i32 %mul.i.i, 20
  %add.i.i = add i32 %add16.i, 1
  %add.i = add i32 %add.i.i, %shr.i.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.iavf_xmit_descriptor_count.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.iavf_xmit_descriptor_count.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_xmit_descriptor_count.exit

iavf_xmit_descriptor_count.exit:                  ; preds = %if.end.i.iavf_xmit_descriptor_count.exit_crit_edge, %entry.iavf_xmit_descriptor_count.exit_crit_edge
  %add.lcssa.i = phi i32 [ %add12.i, %entry.iavf_xmit_descriptor_count.exit_crit_edge ], [ %add.i, %if.end.i.iavf_xmit_descriptor_count.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i)
  %cmp.i = icmp slt i32 %add.lcssa.i, 8
  br i1 %cmp.i, label %iavf_xmit_descriptor_count.exit.if.end5_crit_edge, label %if.end.i87, !prof !80

iavf_xmit_descriptor_count.exit.if.end5_crit_edge: ; preds = %iavf_xmit_descriptor_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i87:                                       ; preds = %iavf_xmit_descriptor_count.exit
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.i.not.i = icmp eq i16 %13, 0
  br i1 %tobool.i.not.i, label %iavf_chk_linearize.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i87
  %call3.i = tail call zeroext i1 @__iavf_chk_linearize(ptr noundef %skb) #12
  br i1 %call3.i, label %if.then2.i.if.then_crit_edge, label %if.then2.i.if.end5_crit_edge

if.then2.i.if.end5_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2.i.if.then_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

iavf_chk_linearize.exit:                          ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i)
  %cmp5.i.not = icmp eq i32 %add.lcssa.i, 8
  br i1 %cmp5.i.not, label %iavf_chk_linearize.exit.if.end5_crit_edge, label %iavf_chk_linearize.exit.if.then_crit_edge

iavf_chk_linearize.exit.if.then_crit_edge:        ; preds = %iavf_chk_linearize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

iavf_chk_linearize.exit.if.end5_crit_edge:        ; preds = %iavf_chk_linearize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %iavf_chk_linearize.exit.if.then_crit_edge, %if.then2.i.if.then_crit_edge
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %9) #12
  %tobool.not.i88.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i88.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %mul.i = mul i32 %15, 85
  %shr.i = lshr i32 %mul.i, 20
  %add.i89 = add nuw nsw i32 %shr.i, 1
  %tx_linearize = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 23, i32 0, i32 3
  %16 = ptrtoint ptr %tx_linearize to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_linearize, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %tx_linearize, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %iavf_chk_linearize.exit.if.end5_crit_edge, %if.then2.i.if.end5_crit_edge, %iavf_xmit_descriptor_count.exit.if.end5_crit_edge
  %count.0 = phi i32 [ %add.i89, %if.end ], [ 8, %iavf_chk_linearize.exit.if.end5_crit_edge ], [ %add.lcssa.i, %if.then2.i.if.end5_crit_edge ], [ %add.lcssa.i, %iavf_xmit_descriptor_count.exit.if.end5_crit_edge ]
  %add6 = add i32 %count.0, 5
  %next_to_clean.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 14
  %18 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 13
  %20 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.i90 = icmp ugt i16 %19, %21
  br i1 %cmp.i90, label %if.end5.cond.end.i_crit_edge, label %cond.false.i

if.end5.cond.end.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count.i, align 2
  %conv3.i = zext i16 %23 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end5.cond.end.i_crit_edge
  %cond.i91 = phi i32 [ %conv3.i, %cond.false.i ], [ 0, %if.end5.cond.end.i_crit_edge ]
  %conv5.i = zext i16 %19 to i32
  %conv7.i = zext i16 %21 to i32
  %24 = xor i32 %conv7.i, -1
  %add.i92 = add nsw i32 %24, %conv5.i
  %sub8.i = add nsw i32 %add.i92, %cond.i91
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %add6)
  %cmp9.not.i = icmp slt i32 %sub8.i, %add6
  br i1 %cmp9.not.i, label %iavf_maybe_stop_tx.exit, label %cond.end.i.if.end11_crit_edge, !prof !81

cond.end.i.if.end11_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

iavf_maybe_stop_tx.exit:                          ; preds = %cond.end.i
  %call.i93 = tail call i32 @__iavf_maybe_stop_tx(ptr noundef %tx_ring, i32 noundef %add6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool8.not = icmp eq i32 %call.i93, 0
  br i1 %tobool8.not, label %iavf_maybe_stop_tx.exit.if.end11_crit_edge, label %if.then9

iavf_maybe_stop_tx.exit.if.end11_crit_edge:       ; preds = %iavf_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %iavf_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tx_busy = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 23, i32 0, i32 1
  %25 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_busy, align 8
  %inc10 = add i64 %26, 1
  store i64 %inc10, ptr %tx_busy, align 8
  br label %cleanup

if.end11:                                         ; preds = %iavf_maybe_stop_tx.exit.if.end11_crit_edge, %cond.end.i.if.end11_crit_edge
  %27 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 16
  %30 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %next_to_use.i, align 8
  %idxprom = zext i16 %31 to i32
  %arrayidx = getelementptr %struct.iavf_tx_buffer, ptr %29, i32 %idxprom
  %32 = getelementptr %struct.iavf_tx_buffer, ptr %29, i32 %idxprom, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skb, ptr %32, align 4
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %bytecount = getelementptr %struct.iavf_tx_buffer, ptr %29, i32 %idxprom, i32 2
  %36 = ptrtoint ptr %bytecount to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bytecount, align 4
  %gso_segs = getelementptr %struct.iavf_tx_buffer, ptr %29, i32 %idxprom, i32 3
  %37 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %gso_segs, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i96 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i96, label %if.end11.if.end16_crit_edge, label %if.end.i98

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end.i98:                                       ; preds = %if.end11
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %39 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vlan_tci.i, align 2
  %conv.i97 = zext i16 %40 to i32
  %shl.i = shl nuw i32 %conv.i97, 16
  %flags1.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 20
  %41 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags1.i, align 2
  %conv2.i = zext i16 %42 to i32
  %and.i = and i32 %conv2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.end.i98.if.end19.i_crit_edge

if.end.i98.if.end19.i_crit_edge:                  ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i98
  %and8.i = and i32 %conv2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body.i, label %if.else.i.if.end19.i_crit_edge

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iavf_tx_prepare_vlan_flags.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iavf_xmit_frame_ring, %if.then16.i)) #12
          to label %iavf_tx_prepare_vlan_flags.exit [label %if.then16.i], !srcloc !96

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 2
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iavf_tx_prepare_vlan_flags.__UNIQUE_ID_ddebug545, ptr noundef %44, ptr noundef nonnull @.str.16) #12
  br label %if.end16

if.end19.i:                                       ; preds = %if.else.i.if.end19.i_crit_edge, %if.end.i98.if.end19.i_crit_edge
  %.sink.i = phi i32 [ 2048, %if.end.i98.if.end19.i_crit_edge ], [ 2, %if.else.i.if.end19.i_crit_edge ]
  %or11.i = or i32 %.sink.i, %shl.i
  br label %iavf_tx_prepare_vlan_flags.exit

iavf_tx_prepare_vlan_flags.exit:                  ; preds = %if.end19.i, %do.body.i
  %tx_flags.0 = phi i32 [ 0, %do.body.i ], [ %or11.i, %if.end19.i ]
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %tx_flags.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %shr = lshr i32 %tx_flags.0, 16
  %spec.select = select i1 %tobool13.not, i64 1, i64 65
  %spec.select231 = select i1 %tobool13.not, i32 0, i32 %shr
  br label %if.end16

if.end16:                                         ; preds = %iavf_tx_prepare_vlan_flags.exit, %if.then16.i, %if.end11.if.end16_crit_edge
  %tx_flags.0208 = phi i32 [ 0, %if.end11.if.end16_crit_edge ], [ 0, %if.then16.i ], [ %tx_flags.0, %iavf_tx_prepare_vlan_flags.exit ]
  %cd_type_cmd_tso_mss.0 = phi i64 [ 1, %if.end11.if.end16_crit_edge ], [ 1, %if.then16.i ], [ %spec.select, %iavf_tx_prepare_vlan_flags.exit ]
  %cd_l2tag2.0 = phi i32 [ 0, %if.end11.if.end16_crit_edge ], [ 0, %if.then16.i ], [ %spec.select231, %iavf_tx_prepare_vlan_flags.exit ]
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %47 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %48 to i32
  %49 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i16 %46, label %if.end16.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.end16.if.then.i.i_crit_edge
    i16 -32512, label %if.end16.if.then.i.i_crit_edge251
  ]

if.end16.if.then.i.i_crit_edge251:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end16.vlan_get_protocol.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.end16.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge251
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %48)
  %cmp.i.i = icmp ult i16 %48, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !81

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i99 = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i99, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %50 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i100, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  %51 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !97
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %50, align 2, !annotation !97
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i, align 4
  %55 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i.i, align 8
  %57 = add i32 %vlan_depth.1.i.i, %56
  %sub.i1.i.i.i = sub i32 %54, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !80

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %59, i32 %vlan_depth.1.i.i
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
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !81
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %60 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !81
  br i1 %60, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !81

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  br label %if.end27

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #12
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %62, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge252
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge252: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge252
  %add.i.i100 = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.end16.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %46, %if.end16.vlan_get_protocol.exit_crit_edge ], [ %62, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %64 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.if.end27_crit_edge [
    i16 2048, label %if.then19
    i16 -31011, label %if.then24
  ]

vlan_get_protocol.exit.if.end27_crit_edge:        ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then19:                                        ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or20 = or i32 %tx_flags.0208, 16
  br label %if.end27

if.then24:                                        ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or25 = or i32 %tx_flags.0208, 32
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then19, %vlan_get_protocol.exit.if.end27_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %tx_flags.1 = phi i32 [ %tx_flags.0208, %vlan_get_protocol.exit.if.end27_crit_edge ], [ %or25, %if.then24 ], [ %or20, %if.then19 ], [ %tx_flags.0208, %do.end.i.i ], [ %tx_flags.0208, %cleanup.thread.i.i ]
  %65 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %32, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i101 = load i16, ptr %ip_summed.i, align 8
  %68 = and i16 %bf.load.i101, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %68)
  %cmp.not.i = icmp eq i16 %68, 1536
  br i1 %cmp.not.i, label %if.end.i105, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end.i105:                                      ; preds = %if.end27
  %end.i.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 17
  %69 = ptrtoint ptr %end.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i.i.i102, align 4
  %gso_size.i.i103 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %gso_size.i.i103 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %gso_size.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.i.not.i104 = icmp eq i16 %72, 0
  br i1 %tobool.i.not.i104, label %if.end.i105.if.end37_crit_edge, label %if.end3.i

if.end.i105.if.end37_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end3.i:                                        ; preds = %if.end.i105
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 12
  %73 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end3.i.if.end8.i_crit_edge, label %skb_header_cloned.exit.i.i

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end3.i
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #12
  %74 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %75, 65535
  %shr.i.i157.i = ashr i32 %75, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end8.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end8.i_crit_edge:   ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = call i32 @pskb_expand_head(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i106 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp5.i106, label %skb_cow_head.exit.i.out_drop_crit_edge, label %skb_cow_head.exit.i.if.end8.i_crit_edge

skb_cow_head.exit.i.if.end8.i_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

skb_cow_head.exit.i.out_drop_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop

if.end8.i:                                        ; preds = %skb_cow_head.exit.i.if.end8.i_crit_edge, %skb_header_cloned.exit.i.i.if.end8.i_crit_edge, %if.end3.i.if.end8.i_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 18
  %76 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 15, i32 0, i32 20
  %78 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i107 = zext i16 %79 to i32
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %conv.i.i107
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 15, i32 0, i32 19
  %80 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %transport_header.i.i, align 2
  %conv.i159.i = zext i16 %81 to i32
  %add.ptr.i160.i = getelementptr i8, ptr %77, i32 %conv.i159.i
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load11.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr12.mask.i = and i8 %bf.load11.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr12.mask.i)
  %cmp14.i = icmp eq i8 %bf.lshr12.mask.i, 64
  br i1 %cmp14.i, label %if.then16.i108, label %if.else.i109

if.then16.i108:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %tot_len.i, align 2
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %check.i, align 2
  br label %if.end17.i

if.else.i109:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %payload_len.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i109, %if.then16.i108
  %86 = ptrtoint ptr %end.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i.i.i102, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gso_type.i, align 8
  %and.i110 = and i32 %89, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool.not.i111, label %if.end17.i.if.end45.i_crit_edge, label %if.then19.i

if.end17.i.if.end45.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then19.i:                                      ; preds = %if.end17.i
  %90 = and i32 %89, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %90)
  %.not.i = icmp eq i32 %90, 2048
  br i1 %.not.i, label %if.then28.i, label %if.then19.i.if.end31.i_crit_edge

if.then19.i.if.end31.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  %len.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i160.i, i32 0, i32 2
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %len.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 19
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i160.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %len29.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 6
  %94 = ptrtoint ptr %len29.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len29.i, align 4
  %sub.i = add i32 %sub.ptr.sub.neg.i, %95
  %check30.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i160.i, i32 0, i32 3
  %96 = ptrtoint ptr %check30.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %check30.i, align 2
  %conv.i.i.i = zext i16 %97 to i32
  %neg.i.i = xor i32 %conv.i.i.i, -1
  %add.i.i.i = add i32 %sub.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i4.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i4.i.i
  %98 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i) #17, !srcloc !98
  %neg.i.i.i = xor i32 %98, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i5.i.i = trunc i32 %shr.i.i.i to i16
  %99 = ptrtoint ptr %check30.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i5.i.i, ptr %check30.i, align 2
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.then19.i.if.end31.i_crit_edge
  %100 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %head.i.i, align 8
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 15, i32 0, i32 16
  %102 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i164.i = zext i16 %103 to i32
  %add.ptr.i165.i = getelementptr i8, ptr %101, i32 %conv.i164.i
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 15, i32 0, i32 15
  %104 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv.i167.i = zext i16 %105 to i32
  %add.ptr.i168.i = getelementptr i8, ptr %101, i32 %conv.i167.i
  %106 = ptrtoint ptr %add.ptr.i165.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load34.i = load i8, ptr %add.ptr.i165.i, align 4
  %bf.lshr35.mask.i = and i8 %bf.load34.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr35.mask.i)
  %cmp37.i = icmp eq i8 %bf.lshr35.mask.i, 64
  br i1 %cmp37.i, label %if.then39.i, label %if.else42.i

if.then39.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %tot_len40.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i165.i, i32 0, i32 2
  %107 = ptrtoint ptr %tot_len40.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %tot_len40.i, align 2
  %check41.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i165.i, i32 0, i32 7
  %108 = ptrtoint ptr %check41.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %check41.i, align 2
  br label %if.end45.i

if.else42.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %payload_len43.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i165.i, i32 0, i32 2
  %109 = ptrtoint ptr %payload_len43.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %payload_len43.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else42.i, %if.then39.i, %if.end17.i.if.end45.i_crit_edge
  %l4.sroa.0.0.i = phi ptr [ %add.ptr.i168.i, %if.then39.i ], [ %add.ptr.i168.i, %if.else42.i ], [ %add.ptr.i160.i, %if.end17.i.if.end45.i_crit_edge ]
  %data46.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 19
  %110 = ptrtoint ptr %data46.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data46.i, align 4
  %sub.ptr.lhs.cast47.i = ptrtoint ptr %l4.sroa.0.0.i to i32
  %sub.ptr.rhs.cast48.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub49.i = sub i32 %sub.ptr.lhs.cast47.i, %sub.ptr.rhs.cast48.i
  %len50.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 6
  %112 = ptrtoint ptr %len50.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len50.i, align 4
  %sub51.i = sub i32 %113, %sub.ptr.sub49.i
  %114 = ptrtoint ptr %end.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %end.i.i.i102, align 4
  %gso_type53.i = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %gso_type53.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %gso_type53.i, align 8
  %and54.i = and i32 %117, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.else59.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %check57.i = getelementptr inbounds %struct.udphdr, ptr %l4.sroa.0.0.i, i32 0, i32 3
  %118 = ptrtoint ptr %check57.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %check57.i, align 2
  %conv.i.i139.i = zext i16 %119 to i32
  %neg.i140.i = xor i32 %conv.i.i139.i, -1
  %add.i.i141.i = add i32 %sub51.i, %neg.i140.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i141.i, i32 %neg.i140.i)
  %cmp.i.i142.i = icmp ult i32 %add.i.i141.i, %neg.i140.i
  %conv.i4.i143.i = zext i1 %cmp.i.i142.i to i32
  %add1.i.i144.i = add i32 %add.i.i141.i, %conv.i4.i143.i
  %120 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i144.i) #17, !srcloc !98
  %neg.i.i145.i = xor i32 %120, -1
  %shr.i.i146.i = lshr i32 %neg.i.i145.i, 16
  %conv.i5.i147.i = trunc i32 %shr.i.i146.i to i16
  %121 = ptrtoint ptr %check57.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i5.i147.i, ptr %check57.i, align 2
  br label %if.then34

if.else59.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %check60.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i, i32 0, i32 6
  %122 = ptrtoint ptr %check60.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %check60.i, align 2
  %conv.i.i148.i = zext i16 %123 to i32
  %neg.i149.i = xor i32 %conv.i.i148.i, -1
  %add.i.i150.i = add i32 %sub51.i, %neg.i149.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i150.i, i32 %neg.i149.i)
  %cmp.i.i151.i = icmp ult i32 %add.i.i150.i, %neg.i149.i
  %conv.i4.i152.i = zext i1 %cmp.i.i151.i to i32
  %add1.i.i153.i = add i32 %add.i.i150.i, %conv.i4.i152.i
  %124 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i153.i) #17, !srcloc !98
  %neg.i.i154.i = xor i32 %124, -1
  %shr.i.i155.i = lshr i32 %neg.i.i154.i, 16
  %conv.i5.i156.i = trunc i32 %shr.i.i155.i to i16
  %125 = ptrtoint ptr %check60.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i5.i156.i, ptr %check60.i, align 2
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i, i32 0, i32 4
  %126 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load61.i = load i16, ptr %doff.i, align 4
  %127 = lshr i16 %bf.load61.i, 10
  %128 = and i16 %127, 60
  %mul.i112 = zext i16 %128 to i32
  br label %if.then34

if.then34:                                        ; preds = %if.else59.i, %if.then56.i
  %mul.pn.i = phi i32 [ %mul.i112, %if.else59.i ], [ 4, %if.then56.i ]
  %storemerge.in.i = add i32 %mul.pn.i, %sub.ptr.sub49.i
  %129 = ptrtoint ptr %end.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i.i.i102, align 4
  %gso_size68.i = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %gso_size68.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %gso_size68.i, align 4
  %gso_segs70.i = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 5
  %133 = ptrtoint ptr %gso_segs70.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %gso_segs70.i, align 2
  %135 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %gso_segs, align 4
  %conv73.i = zext i16 %134 to i32
  %sub74.i = add nsw i32 %conv73.i, -1
  %conv75.i = and i32 %storemerge.in.i, 255
  %mul76.i = mul nsw i32 %sub74.i, %conv75.i
  %136 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bytecount, align 4
  %add77.i = add i32 %mul76.i, %137
  store i32 %add77.i, ptr %bytecount, align 4
  %138 = ptrtoint ptr %len50.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len50.i, align 4
  %sub80.i = sub i32 %139, %conv75.i
  %conv81.i = zext i32 %sub80.i to i64
  %conv82.i = zext i16 %132 to i64
  %shl83.i = shl nuw nsw i64 %conv81.i, 30
  %shl84.i = shl i64 %conv82.i, 50
  %or.i = or i64 %shl84.i, %cd_type_cmd_tso_mss.0
  %or85.i = or i64 %or.i, %shl83.i
  %or86.i = or i64 %or85.i, 16
  %or35 = or i32 %tx_flags.1, 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end.i105.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %cd_type_cmd_tso_mss.1.ph218 = phi i64 [ %or86.i, %if.then34 ], [ %cd_type_cmd_tso_mss.0, %if.end.i105.if.end37_crit_edge ], [ %cd_type_cmd_tso_mss.0, %if.end27.if.end37_crit_edge ]
  %tx_flags.2 = phi i32 [ %or35, %if.then34 ], [ %tx_flags.1, %if.end.i105.if.end37_crit_edge ], [ %tx_flags.1, %if.end27.if.end37_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #12
  %140 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l4_proto.i) #12
  %141 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %l4_proto.i, align 1
  %ip_summed.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %142 = ptrtoint ptr %ip_summed.i114 to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load.i115 = load i16, ptr %ip_summed.i114, align 8
  %143 = and i16 %bf.load.i115, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %143)
  %cmp.not.i116 = icmp eq i16 %143, 1536
  br i1 %cmp.not.i116, label %if.end.i126, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end.i126:                                      ; preds = %if.end37
  %head.i.i117 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %144 = ptrtoint ptr %head.i.i117 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %head.i.i117, align 8
  %network_header.i.i118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %146 = ptrtoint ptr %network_header.i.i118 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %network_header.i.i118, align 4
  %conv.i.i119 = zext i16 %147 to i32
  %add.ptr.i.i120 = getelementptr i8, ptr %145, i32 %conv.i.i119
  %transport_header.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %148 = ptrtoint ptr %transport_header.i.i121 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %transport_header.i.i121, align 2
  %conv.i2.i = zext i16 %149 to i32
  %add.ptr.i3.i = getelementptr i8, ptr %145, i32 %conv.i2.i
  %150 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i123 = ptrtoint ptr %add.ptr.i.i120 to i32
  %sub.ptr.rhs.cast.i124 = ptrtoint ptr %151 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i123, %sub.ptr.rhs.cast.i124
  %div.i = sdiv i32 %sub.ptr.sub.i, 2
  %152 = and i16 %bf.load.i115, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool.not.i125 = icmp eq i16 %152, 0
  br i1 %tobool.not.i125, label %if.end.i126.if.end92.i_crit_edge, label %if.then7.i

if.end.i126.if.end92.i_crit_edge:                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92.i

if.then7.i:                                       ; preds = %if.end.i126
  %and.i127 = and i32 %tx_flags.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool8.not.i = icmp eq i32 %and.i127, 0
  br i1 %tobool8.not.i, label %if.else.i130, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %and10.i = and i32 %tx_flags.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond.i128 = select i1 %tobool11.not.i, i32 2, i32 3
  %protocol.i129 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i120, i32 0, i32 6
  %153 = ptrtoint ptr %protocol.i129 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %protocol.i129, align 1
  %155 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %l4_proto.i, align 1
  br label %if.end26.i

if.else.i130:                                     ; preds = %if.then7.i
  %and12.i = and i32 %tx_flags.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i130.if.end26thread-pre-split.i_crit_edge, label %if.then14.i

if.else.i130.if.end26thread-pre-split.i_crit_edge: ; preds = %if.else.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26thread-pre-split.i

if.then14.i:                                      ; preds = %if.else.i130
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i120, i32 40
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i120, i32 0, i32 3
  %156 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %nexthdr.i, align 2
  %158 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %l4_proto.i, align 1
  %cmp16.not.i = icmp eq ptr %add.ptr.i3.i, %add.ptr.i
  br i1 %cmp16.not.i, label %if.then14.i.if.end26.i_crit_edge, label %if.then18.i

if.then14.i.if.end26.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast20.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub22.i = sub i32 %sub.ptr.lhs.cast20.i, %sub.ptr.rhs.cast.i124
  %call23.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub22.i, ptr noundef nonnull %l4_proto.i, ptr noundef nonnull %frag_off.i) #12
  br label %if.end26thread-pre-split.i

if.end26thread-pre-split.i:                       ; preds = %if.then18.i, %if.else.i130.if.end26thread-pre-split.i_crit_edge
  %tunnel.0.ph.i = phi i32 [ 0, %if.else.i130.if.end26thread-pre-split.i_crit_edge ], [ 1, %if.then18.i ]
  %159 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %.pr.i = load i8, ptr %l4_proto.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26thread-pre-split.i, %if.then14.i.if.end26.i_crit_edge, %if.then9.i
  %160 = phi i8 [ %.pr.i, %if.end26thread-pre-split.i ], [ %157, %if.then14.i.if.end26.i_crit_edge ], [ %154, %if.then9.i ]
  %tunnel.0.i = phi i32 [ %tunnel.0.ph.i, %if.end26thread-pre-split.i ], [ 1, %if.then14.i.if.end26.i_crit_edge ], [ %cond.i128, %if.then9.i ]
  %161 = zext i8 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %160, label %sw.default.i [
    i8 17, label %sw.bb.i
    i8 47, label %sw.bb32.i
    i8 4, label %if.end26.i.sw.bb37.i_crit_edge
    i8 41, label %if.end26.i.sw.bb37.i_crit_edge253
  ]

if.end26.i.sw.bb37.i_crit_edge253:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37.i

if.end26.i.sw.bb37.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37.i

sw.bb.i:                                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = or i32 %tunnel.0.i, 512
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %163 = or i32 %tunnel.0.i, 1024
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end26.i.sw.bb37.i_crit_edge, %if.end26.i.sw.bb37.i_crit_edge253
  %164 = ptrtoint ptr %head.i.i117 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %head.i.i117, align 8
  %inner_network_header.i.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %166 = ptrtoint ptr %inner_network_header.i.i131 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %inner_network_header.i.i131, align 4
  %conv.i5.i = zext i16 %167 to i32
  %add.ptr.i6.i = getelementptr i8, ptr %165, i32 %conv.i5.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end26.i
  %and40.i = and i32 %tx_flags.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %sw.default.i.iavf_tx_enable_csum.exit_crit_edge

sw.default.i.iavf_tx_enable_csum.exit_crit_edge:  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_tx_enable_csum.exit

if.end43.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %call44.i = call i32 @skb_checksum_help(ptr noundef %skb) #12
  br label %if.end42

sw.epilog.i:                                      ; preds = %sw.bb37.i, %sw.bb32.i, %sw.bb.i
  %l4.sroa.0.0.i132 = phi ptr [ %add.ptr.i6.i, %sw.bb37.i ], [ %add.ptr.i3.i, %sw.bb32.i ], [ %add.ptr.i3.i, %sw.bb.i ]
  %tunnel.1.i = phi i32 [ %tunnel.0.i, %sw.bb37.i ], [ %163, %sw.bb32.i ], [ %162, %sw.bb.i ]
  %sub.ptr.lhs.cast45.i = ptrtoint ptr %l4.sroa.0.0.i132 to i32
  %sub.ptr.sub47.i = sub i32 %sub.ptr.lhs.cast45.i, %sub.ptr.lhs.cast.i123
  %div48.i = sdiv i32 %sub.ptr.sub47.i, 4
  %shl49.i = shl nsw i32 %div48.i, 2
  %or50.i = or i32 %shl49.i, %tunnel.1.i
  %168 = ptrtoint ptr %head.i.i117 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %head.i.i117, align 8
  %inner_network_header.i8.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %170 = ptrtoint ptr %inner_network_header.i8.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %inner_network_header.i8.i, align 4
  %conv.i9.i = zext i16 %171 to i32
  %add.ptr.i10.i = getelementptr i8, ptr %169, i32 %conv.i9.i
  %sub.ptr.lhs.cast52.i = ptrtoint ptr %add.ptr.i10.i to i32
  %sub.ptr.sub54.i = sub i32 %sub.ptr.lhs.cast52.i, %sub.ptr.lhs.cast45.i
  %div55.i = sdiv i32 %sub.ptr.sub54.i, 2
  %shl56.i = shl i32 %div55.i, 12
  %or57.i = or i32 %or50.i, %shl56.i
  %and58.i = and i32 %tx_flags.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %sw.epilog.i.if.end72.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end72.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %172 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %end.i.i, align 4
  %gso_type.i134 = getelementptr inbounds %struct.skb_shared_info, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %gso_type.i134 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %gso_type.i134, align 8
  %and61.i = and i32 %175, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %land.lhs.true63.i, label %land.lhs.true.i.if.end72.i_crit_edge

land.lhs.true.i.if.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

land.lhs.true63.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and66.i = shl i32 %175, 12
  %176 = and i32 %and66.i, 8388608
  %177 = or i32 %176, %or57.i
  br label %if.end72.i

if.end72.i:                                       ; preds = %land.lhs.true63.i, %land.lhs.true.i.if.end72.i_crit_edge, %sw.epilog.i.if.end72.i_crit_edge
  %tunnel.2.i = phi i32 [ %or57.i, %land.lhs.true.i.if.end72.i_crit_edge ], [ %or57.i, %sw.epilog.i.if.end72.i_crit_edge ], [ %177, %land.lhs.true63.i ]
  %inner_transport_header.i.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %178 = ptrtoint ptr %inner_transport_header.i.i135 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %inner_transport_header.i.i135, align 2
  %conv.i13.i = zext i16 %179 to i32
  %add.ptr.i14.i = getelementptr i8, ptr %169, i32 %conv.i13.i
  %180 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %l4_proto.i, align 1
  %tx_flags.3 = and i32 %tx_flags.2, -1073
  %and75.i = or i32 %tx_flags.3, 1024
  %181 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load76.i = load i8, ptr %add.ptr.i10.i, align 4
  %bf.lshr77.mask.i = and i8 %bf.load76.i, -16
  %182 = zext i8 %bf.lshr77.mask.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %bf.lshr77.mask.i, label %if.end72.i.if.end92.i_crit_edge [
    i8 64, label %if.end83.i.thread
    i8 96, label %if.then89.i
  ]

if.end72.i.if.end92.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92.i

if.end83.i.thread:                                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %or82.i = or i32 %tx_flags.3, 1040
  br label %if.end92.i

if.then89.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %or90.i = or i32 %tx_flags.3, 1056
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then89.i, %if.end83.i.thread, %if.end72.i.if.end92.i_crit_edge, %if.end.i126.if.end92.i_crit_edge
  %cd_tunneling.0 = phi i32 [ 0, %if.end.i126.if.end92.i_crit_edge ], [ %tunnel.2.i, %if.then89.i ], [ %tunnel.2.i, %if.end83.i.thread ], [ %tunnel.2.i, %if.end72.i.if.end92.i_crit_edge ]
  %tx_flags.5 = phi i32 [ %tx_flags.2, %if.end.i126.if.end92.i_crit_edge ], [ %or90.i, %if.then89.i ], [ %or82.i, %if.end83.i.thread ], [ %and75.i, %if.end72.i.if.end92.i_crit_edge ]
  %ip.sroa.0.1.i = phi ptr [ %add.ptr.i.i120, %if.end.i126.if.end92.i_crit_edge ], [ %add.ptr.i10.i, %if.then89.i ], [ %add.ptr.i10.i, %if.end83.i.thread ], [ %add.ptr.i10.i, %if.end72.i.if.end92.i_crit_edge ]
  %l4.sroa.0.2.i = phi ptr [ %add.ptr.i3.i, %if.end.i126.if.end92.i_crit_edge ], [ %add.ptr.i14.i, %if.then89.i ], [ %add.ptr.i14.i, %if.end83.i.thread ], [ %add.ptr.i14.i, %if.end72.i.if.end92.i_crit_edge ]
  %and93.i = and i32 %tx_flags.5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %if.else101.i, label %if.then95.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  %protocol96.i = getelementptr inbounds %struct.iphdr, ptr %ip.sroa.0.1.i, i32 0, i32 6
  %183 = ptrtoint ptr %protocol96.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %protocol96.i, align 1
  %185 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %l4_proto.i, align 1
  %and97.i = and i32 %tx_flags.5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %cond99.i = select i1 %tobool98.not.i, i32 64, i32 96
  br label %if.end118.i

if.else101.i:                                     ; preds = %if.end92.i
  %and102.i = and i32 %tx_flags.5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.else101.i.if.end118.i_crit_edge, label %if.then104.i

if.else101.i.if.end118.i_crit_edge:               ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.then104.i:                                     ; preds = %if.else101.i
  %add.ptr106.i = getelementptr i8, ptr %ip.sroa.0.1.i, i32 40
  %nexthdr107.i = getelementptr inbounds %struct.ipv6hdr, ptr %ip.sroa.0.1.i, i32 0, i32 3
  %186 = ptrtoint ptr %nexthdr107.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %nexthdr107.i, align 2
  %188 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %l4_proto.i, align 1
  %cmp108.not.i = icmp eq ptr %l4.sroa.0.2.i, %add.ptr106.i
  br i1 %cmp108.not.i, label %if.then104.i.if.end118.i_crit_edge, label %if.then110.i

if.then104.i.if.end118.i_crit_edge:               ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.then110.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast112.i = ptrtoint ptr %add.ptr106.i to i32
  %sub.ptr.rhs.cast113.i = ptrtoint ptr %190 to i32
  %sub.ptr.sub114.i = sub i32 %sub.ptr.lhs.cast112.i, %sub.ptr.rhs.cast113.i
  %call115.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub114.i, ptr noundef nonnull %l4_proto.i, ptr noundef nonnull %frag_off.i) #12
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then110.i, %if.then104.i.if.end118.i_crit_edge, %if.else101.i.if.end118.i_crit_edge, %if.then95.i
  %cmd.0.i = phi i32 [ %cond99.i, %if.then95.i ], [ 32, %if.then110.i ], [ 32, %if.then104.i.if.end118.i_crit_edge ], [ 0, %if.else101.i.if.end118.i_crit_edge ]
  %sub.ptr.lhs.cast119.i = ptrtoint ptr %l4.sroa.0.2.i to i32
  %sub.ptr.rhs.cast120.i = ptrtoint ptr %ip.sroa.0.1.i to i32
  %sub.ptr.sub121.i = sub i32 %sub.ptr.lhs.cast119.i, %sub.ptr.rhs.cast120.i
  %div122.i = sdiv i32 %sub.ptr.sub121.i, 4
  %shl123.i = shl i32 %div122.i, 7
  %or124.i = or i32 %shl123.i, %div.i
  %191 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %l4_proto.i, align 1
  %193 = zext i8 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %192, label %sw.default139.i [
    i8 6, label %sw.bb126.i
    i8 -124, label %sw.bb133.i
    i8 17, label %sw.bb136.i
  ]

sw.bb126.i:                                       ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  %or127.i = or i32 %cmd.0.i, 256
  %doff.i136 = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.2.i, i32 0, i32 4
  %194 = ptrtoint ptr %doff.i136 to i32
  call void @__asan_load2_noabort(i32 %194)
  %bf.load128.i = load i16, ptr %doff.i136, align 4
  %bf.lshr129.i = lshr i16 %bf.load128.i, 12
  %conv130.i = zext i16 %bf.lshr129.i to i32
  %shl131.i = shl nuw nsw i32 %conv130.i, 14
  %or132.i = or i32 %shl131.i, %or124.i
  br label %if.end42

sw.bb133.i:                                       ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  %or134.i = or i32 %cmd.0.i, 512
  %or135.i = or i32 %or124.i, 49152
  br label %if.end42

sw.bb136.i:                                       ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  %or137.i = or i32 %cmd.0.i, 768
  %or138.i = or i32 %or124.i, 32768
  br label %if.end42

sw.default139.i:                                  ; preds = %if.end118.i
  %and140.i = and i32 %tx_flags.5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %if.end143.i, label %sw.default139.i.iavf_tx_enable_csum.exit_crit_edge

sw.default139.i.iavf_tx_enable_csum.exit_crit_edge: ; preds = %sw.default139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_tx_enable_csum.exit

if.end143.i:                                      ; preds = %sw.default139.i
  call void @__sanitizer_cov_trace_pc() #14
  %call144.i = call i32 @skb_checksum_help(ptr noundef %skb) #12
  br label %if.end42

iavf_tx_enable_csum.exit:                         ; preds = %sw.default139.i.iavf_tx_enable_csum.exit_crit_edge, %sw.default.i.iavf_tx_enable_csum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #12
  br label %out_drop

if.end42:                                         ; preds = %if.end143.i, %sw.bb136.i, %sw.bb133.i, %sw.bb126.i, %if.end43.i, %if.end37.if.end42_crit_edge
  %cd_tunneling.1.ph = phi i32 [ %cd_tunneling.0, %sw.bb126.i ], [ %cd_tunneling.0, %sw.bb133.i ], [ %cd_tunneling.0, %sw.bb136.i ], [ 0, %if.end37.if.end42_crit_edge ], [ 0, %if.end43.i ], [ %cd_tunneling.0, %if.end143.i ]
  %td_offset.0.ph = phi i32 [ %or132.i, %sw.bb126.i ], [ %or135.i, %sw.bb133.i ], [ %or138.i, %sw.bb136.i ], [ 0, %if.end37.if.end42_crit_edge ], [ 0, %if.end43.i ], [ 0, %if.end143.i ]
  %tx_flags.6.ph = phi i32 [ %tx_flags.5, %sw.bb126.i ], [ %tx_flags.5, %sw.bb133.i ], [ %tx_flags.5, %sw.bb136.i ], [ %tx_flags.2, %if.end37.if.end42_crit_edge ], [ %tx_flags.2, %if.end43.i ], [ %tx_flags.5, %if.end143.i ]
  %td_cmd.0.ph = phi i32 [ %or127.i, %sw.bb126.i ], [ %or134.i, %sw.bb133.i ], [ %or137.i, %sw.bb136.i ], [ 0, %if.end37.if.end42_crit_edge ], [ 0, %if.end43.i ], [ 0, %if.end143.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cd_type_cmd_tso_mss.1.ph218)
  %cmp.i137 = icmp eq i64 %cd_type_cmd_tso_mss.1.ph218, 1
  %195 = or i32 %cd_tunneling.1.ph, %cd_l2tag2.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %196 = icmp eq i32 %195, 0
  %197 = and i1 %cmp.i137, %196
  br i1 %197, label %if.end42.iavf_create_tx_ctx.exit_crit_edge, label %if.end.i142

if.end42.iavf_create_tx_ctx.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_create_tx_ctx.exit

if.end.i142:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %next_to_use.i, align 8
  %conv.i139 = zext i16 %199 to i32
  %desc.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 1
  %200 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %desc.i, align 4
  %arrayidx.i = getelementptr %struct.iavf_tx_context_desc, ptr %201, i32 %conv.i139
  %inc.i = add nuw nsw i32 %conv.i139, 1
  %count.i140 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %202 = ptrtoint ptr %count.i140 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %count.i140, align 2
  %conv4.i = zext i16 %203 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv4.i)
  %cmp5.i141 = icmp ult i32 %inc.i, %conv4.i
  %phi.cast.i = trunc i32 %inc.i to i16
  %spec.select.i = select i1 %cmp5.i141, i16 %phi.cast.i, i16 0
  %204 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %spec.select.i, ptr %next_to_use.i, align 8
  %205 = call i32 @llvm.bswap.i32(i32 %cd_tunneling.1.ph) #12
  %206 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %arrayidx.i, align 8
  %conv9.i = trunc i32 %cd_l2tag2.0 to i16
  %207 = call i16 @llvm.bswap.i16(i16 %conv9.i) #12
  %l2tag2.i = getelementptr %struct.iavf_tx_context_desc, ptr %201, i32 %conv.i139, i32 1
  %208 = ptrtoint ptr %l2tag2.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %l2tag2.i, align 4
  %rsvd.i = getelementptr %struct.iavf_tx_context_desc, ptr %201, i32 %conv.i139, i32 2
  %209 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %rsvd.i, align 2
  %210 = call i64 @llvm.bswap.i64(i64 %cd_type_cmd_tso_mss.1.ph218) #12
  %type_cmd_tso_mss.i = getelementptr %struct.iavf_tx_context_desc, ptr %201, i32 %conv.i139, i32 3
  %211 = ptrtoint ptr %type_cmd_tso_mss.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %type_cmd_tso_mss.i, align 8
  br label %iavf_create_tx_ctx.exit

iavf_create_tx_ctx.exit:                          ; preds = %if.end.i142, %if.end42.iavf_create_tx_ctx.exit_crit_edge
  %212 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %data_len.i.i, align 8
  %214 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %len.i.i, align 4
  %sub.i.i144 = sub i32 %215, %213
  %216 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %next_to_use.i, align 8
  %and.i146 = and i32 %tx_flags.6.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  %shr.i148 = lshr i32 %tx_flags.6.ph, 16
  %218 = shl nuw nsw i32 %and.i146, 2
  %or43 = or i32 %td_cmd.0.ph, %218
  %219 = or i32 %or43, 4
  %td_tag.0.i = select i1 %tobool.not.i147, i32 0, i32 %shr.i148
  %tx_flags3.i = getelementptr %struct.iavf_tx_buffer, ptr %29, i32 %idxprom, i32 6
  %220 = ptrtoint ptr %tx_flags3.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %tx_flags.6.ph, ptr %tx_flags3.i, align 4
  %dev.i149 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 2
  %221 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i149, align 8
  %223 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data, align 4
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %224) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %iavf_create_tx_ctx.exit
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i152, !prof !80

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i152:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %222) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %222, i32 0, i32 3
  %225 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i151 = icmp eq ptr %226, null
  br i1 %tobool.not.i.i.i151, label %if.end.i.i.i, label %if.then.i.i152.dev_name.exit.i.i_crit_edge

if.then.i.i152.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i152
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %222, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i152.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %228, %if.end.i.i.i ], [ %226, %if.then.i.i152.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %iavf_create_tx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %222, ptr noundef %224, i32 noundef %sub.i.i144) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %229 = load ptr, ptr @mem_map, align 4
  %230 = ptrtoint ptr %224 to i32
  %sub.i1.i = add i32 %230, 1073741824
  %shr.i.i153 = lshr i32 %sub.i1.i, 12
  %add.ptr.i.i154 = getelementptr %struct.page, ptr %229, i32 %shr.i.i153
  %and.i.i = and i32 %230, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %222, ptr noundef %add.ptr.i.i154, i32 noundef %and.i.i, i32 noundef %sub.i.i144, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %desc.i155 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 1
  %231 = ptrtoint ptr %desc.i155 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %desc.i155, align 4
  %233 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %end.i.i, align 4
  %235 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i149, align 8
  call void @debug_dma_mapping_error(ptr noundef %236, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.not81.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.not81.i, label %dma_map_single_attrs.exit.i.do.end87.i_crit_edge, label %if.end11.lr.ph.i

dma_map_single_attrs.exit.i.do.end87.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87.i

if.end11.lr.ph.i:                                 ; preds = %dma_map_single_attrs.exit.i
  %frags.i157 = getelementptr inbounds %struct.skb_shared_info, ptr %234, i32 0, i32 12
  %idxprom.i = zext i16 %217 to i32
  %arrayidx.i158 = getelementptr %struct.iavf_tx_desc, ptr %232, i32 %idxprom.i
  %conv.i.i159 = zext i32 %219 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i159, 4
  %conv1.i.i = zext i32 %td_offset.0.ph to i64
  %shl2.i.i = shl nuw nsw i64 %conv1.i.i, 16
  %conv7.i.i = zext i32 %td_tag.0.i to i64
  %shl8.i.i = shl nuw i64 %conv7.i.i, 48
  %or3.i.i = or i64 %shl8.i.i, %shl2.i.i
  %or6.i.i = or i64 %or3.i.i, %shl.i.i
  %count.i160 = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  %or9.i.i = or i64 %or6.i.i, 211106232532992
  %237 = call i64 @llvm.bswap.i64(i64 %or9.i.i) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.inc.i.if.end11.i_crit_edge, %if.end11.lr.ph.i
  %dma.088.i = phi i32 [ %retval.0.i.i, %if.end11.lr.ph.i ], [ %call2.i.i, %for.inc.i.if.end11.i_crit_edge ]
  %i.087.i = phi i16 [ %217, %if.end11.lr.ph.i ], [ %i.3.i, %for.inc.i.if.end11.i_crit_edge ]
  %tx_desc.086.i = phi ptr [ %arrayidx.i158, %if.end11.lr.ph.i ], [ %tx_desc.3.i, %for.inc.i.if.end11.i_crit_edge ]
  %tx_bi.085.i = phi ptr [ %arrayidx, %if.end11.lr.ph.i ], [ %arrayidx59.i, %for.inc.i.if.end11.i_crit_edge ]
  %frag.084.i = phi ptr [ %frags.i157, %if.end11.lr.ph.i ], [ %incdec.ptr60.i, %for.inc.i.if.end11.i_crit_edge ]
  %size.083.i = phi i32 [ %sub.i.i144, %if.end11.lr.ph.i ], [ %264, %for.inc.i.if.end11.i_crit_edge ]
  %data_len.082.i = phi i32 [ %213, %if.end11.lr.ph.i ], [ %sub55.i, %for.inc.i.if.end11.i_crit_edge ]
  %len.i161 = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_bi.085.i, i32 0, i32 5
  %238 = ptrtoint ptr %len.i161 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %size.083.i, ptr %len.i161, align 4
  %dma12.i = getelementptr inbounds %struct.iavf_tx_buffer, ptr %tx_bi.085.i, i32 0, i32 4
  %239 = ptrtoint ptr %dma12.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %dma.088.i, ptr %dma12.i, align 4
  %sub.i162 = sub i32 0, %dma.088.i
  %and13.i = and i32 %sub.i162, 4095
  %add.i163 = or i32 %and13.i, 12288
  %conv.i164 = zext i32 %dma.088.i to i64
  %240 = call i64 @llvm.bswap.i64(i64 %conv.i164) #12
  %241 = ptrtoint ptr %tx_desc.086.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %240, ptr %tx_desc.086.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %size.083.i)
  %cmp73.i = icmp ugt i32 %size.083.i, 16383
  br i1 %cmp73.i, label %while.body.preheader.i, label %if.end11.i.while.end.i_crit_edge, !prof !81

if.end11.i.while.end.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end11.i
  %conv4.i.peel.i = zext i32 %add.i163 to i64
  %shl5.i.peel.i = shl nuw nsw i64 %conv4.i.peel.i, 34
  %or9.i.peel.i = or i64 %shl5.i.peel.i, %or6.i.i
  %242 = call i64 @llvm.bswap.i64(i64 %or9.i.peel.i) #12
  %cmd_type_offset_bsz.peel.i = getelementptr inbounds %struct.iavf_tx_desc, ptr %tx_desc.086.i, i32 0, i32 1
  %243 = ptrtoint ptr %cmd_type_offset_bsz.peel.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %242, ptr %cmd_type_offset_bsz.peel.i, align 8
  %incdec.ptr.peel.i = getelementptr %struct.iavf_tx_desc, ptr %tx_desc.086.i, i32 1
  %inc.peel.i = add i16 %i.087.i, 1
  %244 = ptrtoint ptr %count.i160 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %count.i160, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.peel.i, i16 %245)
  %cmp20.peel.i = icmp eq i16 %inc.peel.i, %245
  br i1 %cmp20.peel.i, label %if.then22.peel.i, label %while.body.preheader.i.if.end25.peel.i_crit_edge

while.body.preheader.i.if.end25.peel.i_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.peel.i

if.then22.peel.i:                                 ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %246 = ptrtoint ptr %desc.i155 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %desc.i155, align 4
  br label %if.end25.peel.i

if.end25.peel.i:                                  ; preds = %if.then22.peel.i, %while.body.preheader.i.if.end25.peel.i_crit_edge
  %tx_desc.2.peel.i = phi ptr [ %247, %if.then22.peel.i ], [ %incdec.ptr.peel.i, %while.body.preheader.i.if.end25.peel.i_crit_edge ]
  %i.2.peel.i = phi i16 [ 0, %if.then22.peel.i ], [ %inc.peel.i, %while.body.preheader.i.if.end25.peel.i_crit_edge ]
  %add26.peel.i = add i32 %add.i163, %dma.088.i
  %sub27.peel.i = sub i32 %size.083.i, %add.i163
  %conv28.peel.i = zext i32 %add26.peel.i to i64
  %248 = call i64 @llvm.bswap.i64(i64 %conv28.peel.i) #12
  %249 = ptrtoint ptr %tx_desc.2.peel.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %tx_desc.2.peel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub27.peel.i)
  %cmp.peel.i = icmp ugt i32 %sub27.peel.i, 16383
  br i1 %cmp.peel.i, label %if.end25.peel.i.while.body.i_crit_edge, label %if.end25.peel.i.while.end.i_crit_edge, !prof !81

if.end25.peel.i.while.end.i_crit_edge:            ; preds = %if.end25.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end25.peel.i.while.body.i_crit_edge:           ; preds = %if.end25.peel.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %if.end25.peel.i.while.body.i_crit_edge
  %dma.177.i = phi i32 [ %add26.i, %if.end25.i.while.body.i_crit_edge ], [ %add26.peel.i, %if.end25.peel.i.while.body.i_crit_edge ]
  %i.176.i = phi i16 [ %i.2.i, %if.end25.i.while.body.i_crit_edge ], [ %i.2.peel.i, %if.end25.peel.i.while.body.i_crit_edge ]
  %tx_desc.175.i = phi ptr [ %tx_desc.2.i, %if.end25.i.while.body.i_crit_edge ], [ %tx_desc.2.peel.i, %if.end25.peel.i.while.body.i_crit_edge ]
  %size.174.i = phi i32 [ %sub27.i, %if.end25.i.while.body.i_crit_edge ], [ %sub27.peel.i, %if.end25.peel.i.while.body.i_crit_edge ]
  %cmd_type_offset_bsz.i = getelementptr inbounds %struct.iavf_tx_desc, ptr %tx_desc.175.i, i32 0, i32 1
  %250 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %237, ptr %cmd_type_offset_bsz.i, align 8
  %incdec.ptr.i165 = getelementptr %struct.iavf_tx_desc, ptr %tx_desc.175.i, i32 1
  %inc.i166 = add i16 %i.176.i, 1
  %251 = ptrtoint ptr %count.i160 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %count.i160, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i166, i16 %252)
  %cmp20.i = icmp eq i16 %inc.i166, %252
  br i1 %cmp20.i, label %if.then22.i, label %while.body.i.if.end25.i_crit_edge

while.body.i.if.end25.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %253 = ptrtoint ptr %desc.i155 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %desc.i155, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %while.body.i.if.end25.i_crit_edge
  %tx_desc.2.i = phi ptr [ %254, %if.then22.i ], [ %incdec.ptr.i165, %while.body.i.if.end25.i_crit_edge ]
  %i.2.i = phi i16 [ 0, %if.then22.i ], [ %inc.i166, %while.body.i.if.end25.i_crit_edge ]
  %add26.i = add i32 %dma.177.i, 12288
  %sub27.i = add i32 %size.174.i, -12288
  %conv28.i = zext i32 %add26.i to i64
  %255 = call i64 @llvm.bswap.i64(i64 %conv28.i) #12
  %256 = ptrtoint ptr %tx_desc.2.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %tx_desc.2.i, align 8
  %cmp.i167 = icmp ugt i32 %sub27.i, 16383
  br i1 %cmp.i167, label %if.end25.i.while.body.i_crit_edge, label %if.end25.i.while.end.i_crit_edge, !prof !81, !llvm.loop !99

if.end25.i.while.end.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %if.end25.i.while.end.i_crit_edge, %if.end25.peel.i.while.end.i_crit_edge, %if.end11.i.while.end.i_crit_edge
  %size.1.lcssa.i = phi i32 [ %size.083.i, %if.end11.i.while.end.i_crit_edge ], [ %sub27.peel.i, %if.end25.peel.i.while.end.i_crit_edge ], [ %sub27.i, %if.end25.i.while.end.i_crit_edge ]
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.086.i, %if.end11.i.while.end.i_crit_edge ], [ %tx_desc.2.peel.i, %if.end25.peel.i.while.end.i_crit_edge ], [ %tx_desc.2.i, %if.end25.i.while.end.i_crit_edge ]
  %i.1.lcssa.i = phi i16 [ %i.087.i, %if.end11.i.while.end.i_crit_edge ], [ %i.2.peel.i, %if.end25.peel.i.while.end.i_crit_edge ], [ %i.2.i, %if.end25.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.082.i)
  %tobool30.not.i = icmp eq i32 %data_len.082.i, 0
  br i1 %tobool30.not.i, label %for.end.i, label %if.end40.i, !prof !80

if.end40.i:                                       ; preds = %while.end.i
  %conv4.i7.i = zext i32 %size.1.lcssa.i to i64
  %shl5.i8.i = shl nuw nsw i64 %conv4.i7.i, 34
  %or9.i12.i = or i64 %shl5.i8.i, %or6.i.i
  %257 = call i64 @llvm.bswap.i64(i64 %or9.i12.i) #12
  %cmd_type_offset_bsz42.i = getelementptr inbounds %struct.iavf_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 1
  %258 = ptrtoint ptr %cmd_type_offset_bsz42.i to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %cmd_type_offset_bsz42.i, align 8
  %incdec.ptr43.i = getelementptr %struct.iavf_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc44.i = add i16 %i.1.lcssa.i, 1
  %259 = ptrtoint ptr %count.i160 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %count.i160, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc44.i, i16 %260)
  %cmp48.i = icmp eq i16 %inc44.i, %260
  br i1 %cmp48.i, label %if.then50.i, label %if.end40.i.for.inc.i_crit_edge

if.end40.i.for.inc.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then50.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %261 = ptrtoint ptr %desc.i155 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %desc.i155, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then50.i, %if.end40.i.for.inc.i_crit_edge
  %tx_desc.3.i = phi ptr [ %262, %if.then50.i ], [ %incdec.ptr43.i, %if.end40.i.for.inc.i_crit_edge ]
  %i.3.i = phi i16 [ 0, %if.then50.i ], [ %inc44.i, %if.end40.i.for.inc.i_crit_edge ]
  %bv_len.i.i168 = getelementptr inbounds %struct.bio_vec, ptr %frag.084.i, i32 0, i32 1
  %263 = ptrtoint ptr %bv_len.i.i168 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %bv_len.i.i168, align 4
  %sub55.i = sub i32 %data_len.082.i, %264
  %265 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i149, align 8
  %267 = ptrtoint ptr %frag.084.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %frag.084.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.084.i, i32 0, i32 2
  %269 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = call i32 @dma_map_page_attrs(ptr noundef %266, ptr noundef %268, i32 noundef %270, i32 noundef %264, i32 noundef 1, i32 noundef 0) #12
  %271 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %27, align 16
  %idxprom58.i = zext i16 %i.3.i to i32
  %arrayidx59.i = getelementptr %struct.iavf_tx_buffer, ptr %272, i32 %idxprom58.i
  %incdec.ptr60.i = getelementptr %struct.bio_vec, ptr %frag.084.i, i32 1
  %273 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i149, align 8
  call void @debug_dma_mapping_error(ptr noundef %274, i32 noundef %call2.i.i) #12
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %for.inc.i.do.end87.i_crit_edge, label %for.inc.i.if.end11.i_crit_edge

for.inc.i.if.end11.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

for.inc.i.do.end87.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87.i

for.end.i:                                        ; preds = %while.end.i
  %netdev.i.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 3
  %275 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %netdev.i.i, align 4
  %queue_index.i.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 6
  %277 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %queue_index.i.i, align 8
  %conv.i13.i169 = zext i16 %278 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %276, i32 0, i32 103
  %279 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %_tx.i.i.i, align 128
  %281 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %bytecount, align 4
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %280, i32 %conv.i13.i169, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %282)
  %cmp.i.i.i171 = icmp ugt i32 %282, 268435455
  br i1 %cmp.i.i.i171, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !81

do.body2.i.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !101
  unreachable

dql_queued.exit.i.i:                              ; preds = %for.end.i
  %last_obj_cnt.i.i.i = getelementptr %struct.netdev_queue, ptr %280, i32 %conv.i13.i169, i32 15, i32 2
  %283 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %last_obj_cnt.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %284 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i172 = add i32 %285, %282
  store i32 %add.i.i.i172, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %280, i32 %conv.i13.i169, i32 15, i32 1
  %286 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %288 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i173 = sub i32 %287, %288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i173)
  %cmp.i14.i = icmp sgt i32 %sub.i.i.i173, -1
  br i1 %cmp.i14.i, label %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge, label %if.end.i.i, !prof !80

dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_tx_sent_queue.exit.i

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %280, i32 %conv.i13.i169, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %289 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %291 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %290, %292
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge, !prof !81

if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_tx_sent_queue.exit.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #12
  br label %netdev_tx_sent_queue.exit.i

netdev_tx_sent_queue.exit.i:                      ; preds = %if.then14.i.i, %if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge, %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge
  %inc62.i = add i16 %i.1.lcssa.i, 1
  %293 = ptrtoint ptr %count.i160 to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %count.i160, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc62.i, i16 %294)
  %cmp66.i = icmp eq i16 %inc62.i, %294
  %spec.store.select.i = select i1 %cmp66.i, i16 0, i16 %inc62.i
  %295 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %spec.store.select.i, ptr %next_to_use.i, align 8
  %296 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %next_to_clean.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %297, i16 %spec.store.select.i)
  %cmp.i15.i = icmp ugt i16 %297, %spec.store.select.i
  %narrow.i = select i1 %cmp.i15.i, i16 0, i16 %294
  %spec.select.i174 = zext i16 %narrow.i to i32
  %conv5.i.i = zext i16 %297 to i32
  %conv7.i16.i = zext i16 %spec.store.select.i to i32
  %298 = xor i32 %conv7.i16.i, -1
  %add.i.i175 = add nsw i32 %298, %conv5.i.i
  %sub8.i.i = add nsw i32 %add.i.i175, %spec.select.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub8.i.i)
  %cmp9.not.i.i = icmp slt i32 %sub8.i.i, 23
  br i1 %cmp9.not.i.i, label %if.end.i18.i, label %netdev_tx_sent_queue.exit.i.iavf_maybe_stop_tx.exit.i_crit_edge, !prof !81

netdev_tx_sent_queue.exit.i.iavf_maybe_stop_tx.exit.i_crit_edge: ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_maybe_stop_tx.exit.i

if.end.i18.i:                                     ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i17.i = call i32 @__iavf_maybe_stop_tx(ptr noundef %tx_ring, i32 noundef 23) #12
  br label %iavf_maybe_stop_tx.exit.i

iavf_maybe_stop_tx.exit.i:                        ; preds = %if.end.i18.i, %netdev_tx_sent_queue.exit.i.iavf_maybe_stop_tx.exit.i_crit_edge
  %or72.i = or i32 %or43, 7
  %conv.i20.i = zext i32 %or72.i to i64
  %shl.i21.i = shl nuw nsw i64 %conv.i20.i, 4
  %conv4.i25.i = zext i32 %size.1.lcssa.i to i64
  %shl5.i26.i = shl nuw nsw i64 %conv4.i25.i, 34
  %or6.i27.i = or i64 %or3.i.i, %shl.i21.i
  %or9.i30.i = or i64 %or6.i27.i, %shl5.i26.i
  %299 = call i64 @llvm.bswap.i64(i64 %or9.i30.i) #12
  %cmd_type_offset_bsz74.i = getelementptr inbounds %struct.iavf_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 1
  %300 = ptrtoint ptr %cmd_type_offset_bsz74.i to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %cmd_type_offset_bsz74.i, align 8
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %301 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %302, i32 0, i32 3
  %303 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %tx_flags.i.i, align 1
  %305 = and i8 %304, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool.not.i.i176 = icmp eq i8 %305, 0
  br i1 %tobool.not.i.i176, label %iavf_maybe_stop_tx.exit.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i31.i

iavf_maybe_stop_tx.exit.i.skb_tx_timestamp.exit.i_crit_edge: ; preds = %iavf_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit.i

if.then.i31.i:                                    ; preds = %iavf_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i31.i, %iavf_maybe_stop_tx.exit.i.skb_tx_timestamp.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  call void @arm_heavy_mb() #12
  %306 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %tx_desc.1.lcssa.i, ptr %arrayidx, align 4
  %307 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %netdev.i.i, align 4
  %309 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %queue_index.i.i, align 8
  %conv.i35.i = zext i16 %310 to i32
  %_tx.i.i36.i = getelementptr inbounds %struct.net_device, ptr %308, i32 0, i32 103
  %311 = ptrtoint ptr %_tx.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %_tx.i.i36.i, align 128
  %state.i38.i = getelementptr %struct.netdev_queue, ptr %312, i32 %conv.i35.i, i32 13
  %313 = ptrtoint ptr %state.i38.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %state.i38.i, align 4
  %and.i39.i = and i32 %314, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.i.not.i177 = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.i.not.i177, label %lor.lhs.false.i, label %skb_tx_timestamp.exit.i.do.body80.i_crit_edge

skb_tx_timestamp.exit.i.do.body80.i_crit_edge:    ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80.i

lor.lhs.false.i:                                  ; preds = %skb_tx_timestamp.exit.i
  %315 = call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i178 = and i32 %315, -16384
  %316 = inttoptr i32 %and.i.i.i178 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %318
  %319 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx.i.i, align 4
  %add.i40.i = add i32 %320, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %321 = inttoptr i32 %add.i40.i to ptr
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %321, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool.i41.not.i = icmp eq i8 %323, 0
  br i1 %tobool.i41.not.i, label %lor.lhs.false.i.do.body80.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.do.body80.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80.i

do.body80.i:                                      ; preds = %lor.lhs.false.i.do.body80.i_crit_edge, %skb_tx_timestamp.exit.i.do.body80.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @arm_heavy_mb() #12
  %324 = call i32 @llvm.bswap.i32(i32 %conv7.i16.i) #12
  %tail.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 8
  %325 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %tail.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #12, !srcloc !78
  br label %cleanup

do.end87.i:                                       ; preds = %for.inc.i.do.end87.i_crit_edge, %dma_map_single_attrs.exit.i.do.end87.i_crit_edge
  %i.0.lcssa.i = phi i16 [ %217, %dma_map_single_attrs.exit.i.do.end87.i_crit_edge ], [ %i.3.i, %for.inc.i.do.end87.i_crit_edge ]
  %327 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dev.i149, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %328, ptr noundef nonnull @.str.18) #16
  %count100.i = getelementptr inbounds %struct.iavf_ring, ptr %tx_ring, i32 0, i32 10
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %if.end101.i, %do.end87.i
  %i.5.i = phi i16 [ %i.0.lcssa.i, %do.end87.i ], [ %dec.i179, %if.end101.i ]
  %329 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %27, align 16
  %idxprom90.i = zext i16 %i.5.i to i32
  %arrayidx91.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i
  %331 = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 1
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 4
  %tobool.not.i42.i = icmp eq ptr %333, null
  br i1 %tobool.not.i42.i, label %if.else7.i.i, label %if.then.i45.i

if.then.i45.i:                                    ; preds = %for.cond89.i
  %tx_flags.i43.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 6
  %334 = ptrtoint ptr %tx_flags.i43.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %tx_flags.i43.i, align 4
  %and.i44.i = and i32 %335, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %tobool1.not.i.i = icmp eq i32 %and.i44.i, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %333) #12
  br label %if.end.i47.i

if.else.i.i:                                      ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__dev_kfree_skb_any(ptr noundef nonnull %333, i32 noundef 1) #12
  br label %if.end.i47.i

if.end.i47.i:                                     ; preds = %if.else.i.i, %if.then2.i.i
  %len.i46.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 5
  %336 = ptrtoint ptr %len.i46.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %len.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool3.not.i.i = icmp eq i32 %337, 0
  br i1 %tobool3.not.i.i, label %if.end.i47.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge, label %if.end.i47.i.if.end15.sink.split.i.i_crit_edge

if.end.i47.i.if.end15.sink.split.i.i_crit_edge:   ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.end.i47.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge: ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_unmap_and_free_tx_resource.exit.i

if.else7.i.i:                                     ; preds = %for.cond89.i
  %len8.i.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 5
  %338 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %len8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool9.not.i.i = icmp eq i32 %339, 0
  br i1 %tobool9.not.i.i, label %if.else7.i.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge, label %if.else7.i.i.if.end15.sink.split.i.i_crit_edge

if.else7.i.i.if.end15.sink.split.i.i_crit_edge:   ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else7.i.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge: ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_unmap_and_free_tx_resource.exit.i

if.end15.sink.split.i.i:                          ; preds = %if.else7.i.i.if.end15.sink.split.i.i_crit_edge, %if.end.i47.i.if.end15.sink.split.i.i_crit_edge
  %.sink33.i.i = phi i32 [ %337, %if.end.i47.i.if.end15.sink.split.i.i_crit_edge ], [ %339, %if.else7.i.i.if.end15.sink.split.i.i_crit_edge ]
  %340 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev.i149, align 8
  %dma12.i.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 4
  %342 = ptrtoint ptr %dma12.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %dma12.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %341, i32 noundef %343, i32 noundef %.sink33.i.i, i32 noundef 1, i32 noundef 0) #12
  br label %iavf_unmap_and_free_tx_resource.exit.i

iavf_unmap_and_free_tx_resource.exit.i:           ; preds = %if.end15.sink.split.i.i, %if.else7.i.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge, %if.end.i47.i.iavf_unmap_and_free_tx_resource.exit.i_crit_edge
  %344 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr null, ptr %arrayidx91.i, align 4
  %345 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr null, ptr %331, align 4
  %len16.i.i = getelementptr %struct.iavf_tx_buffer, ptr %330, i32 %idxprom90.i, i32 5
  %346 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %len16.i.i, align 4
  %cmp92.i = icmp eq ptr %arrayidx91.i, %arrayidx
  br i1 %cmp92.i, label %for.end102.i, label %if.end95.i

if.end95.i:                                       ; preds = %iavf_unmap_and_free_tx_resource.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i.5.i)
  %cmp97.i = icmp eq i16 %i.5.i, 0
  br i1 %cmp97.i, label %if.then99.i, label %if.end95.i.if.end101.i_crit_edge

if.end95.i.if.end101.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  %347 = ptrtoint ptr %count100.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %count100.i, align 2
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then99.i, %if.end95.i.if.end101.i_crit_edge
  %i.6.i = phi i16 [ %348, %if.then99.i ], [ %i.5.i, %if.end95.i.if.end101.i_crit_edge ]
  %dec.i179 = add i16 %i.6.i, -1
  br label %for.cond89.i

for.end102.i:                                     ; preds = %iavf_unmap_and_free_tx_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %349 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %i.5.i, ptr %next_to_use.i, align 8
  br label %cleanup

out_drop:                                         ; preds = %iavf_tx_enable_csum.exit, %skb_cow_head.exit.i.out_drop_crit_edge
  %350 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %32, align 4
  call fastcc void @trace_iavf_xmit_frame_ring_drop(ptr noundef %351, ptr noundef %tx_ring)
  %352 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %32, align 4
  call void @__dev_kfree_skb_any(ptr noundef %353, i32 noundef 1) #12
  %354 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr null, ptr %32, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %for.end102.i, %do.body80.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then9, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 16, %if.then9 ], [ 0, %out_drop ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %do.body80.i ], [ 0, %for.end102.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_clean_tx_irq(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq, i32 0, i32 1), ptr blockaddress(@trace_iavf_clean_tx_irq, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !106
  %call42 = tail call i32 @__traceiter_iavf_clean_tx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_clean_tx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_clean_tx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 101, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_clean_tx_irq_unmap(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq_unmap, i32 0, i32 1), ptr blockaddress(@trace_iavf_clean_tx_irq_unmap, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %call42 = tail call i32 @__traceiter_iavf_clean_tx_irq_unmap(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_tx_irq_unmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_clean_tx_irq_unmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_clean_tx_irq_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 109, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %5 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %14 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %33 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !80

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_clean_tx_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_clean_tx_irq_unmap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_clean_rx_irq(ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq, i32 0, i32 1), ptr blockaddress(@trace_iavf_clean_rx_irq, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %call42 = tail call i32 @__traceiter_iavf_clean_rx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_clean_rx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_clean_rx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 146, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_put_rx_buffer(ptr nocapture noundef %rx_ring, ptr noundef %rx_buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rx_buffer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %pagecnt_bias1.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %rx_buffer, i32 0, i32 3
  %0 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pagecnt_bias1.i, align 2
  %page2.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %rx_buffer, i32 0, i32 1
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %dev_page_is_reusable.exit.i, !prof !81

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

dev_page_is_reusable.exit.i:                      ; preds = %if.end
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i, label %dev_page_is_reusable.exit.i.if.else_crit_edge

dev_page_is_reusable.exit.i.if.else_crit_edge:    ; preds = %dev_page_is_reusable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i:                                         ; preds = %dev_page_is_reusable.exit.i
  %conv.i = zext i16 %1 to i32
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i26.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i26.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i27.i, !prof !80

if.then.i.i27.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %11, -1
  br label %page_count.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %3 to i32
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.end.i.i.i, %if.then.i.i27.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i27.i ], [ %12, %if.end.i.i.i ]
  %13 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %14 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %sub.i = sub i32 %15, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %page_count.exit.i.if.else_crit_edge, label %if.end7.i, !prof !81

page_count.exit.i.if.else_crit_edge:              ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end7.i:                                        ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool8.not.i = icmp eq i16 %1, 0
  br i1 %tobool8.not.i, label %if.then17.i, label %if.end7.i.if.then1_crit_edge, !prof !81

if.end7.i.if.then1_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then1

if.then17.i:                                      ; preds = %if.end7.i
  %_refcount.i = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 65535, ptr elementtype(i32) %_refcount.i) #12, !srcloc !120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iavf_put_rx_buffer, %if.then.i)) #12
          to label %page_ref_add.exit [label %if.then.i], !srcloc !96

if.then.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %3, i32 noundef 65535) #12
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i, %if.then17.i
  %17 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %pagecnt_bias1.i, align 2
  br label %if.then1

if.then1:                                         ; preds = %page_ref_add.exit, %if.end7.i.if.then1_crit_edge
  %next_to_alloc.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 29
  %18 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %next_to_alloc.i, align 8
  %20 = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 16
  %inc.i = add i16 %19, 1
  %count.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 10
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %24)
  %cmp.i14 = icmp ult i16 %inc.i, %24
  %spec.select.i = select i1 %cmp.i14, i16 %inc.i, i16 0
  %idxprom.i = zext i16 %19 to i32
  %arrayidx.i = getelementptr %struct.iavf_rx_buffer, ptr %22, i32 %idxprom.i
  %25 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.select.i, ptr %next_to_alloc.i, align 8
  %26 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_buffer, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page2.i, align 4
  %page7.i = getelementptr %struct.iavf_rx_buffer, ptr %22, i32 %idxprom.i, i32 1
  %31 = ptrtoint ptr %page7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %page7.i, align 4
  %page_offset.i = getelementptr inbounds %struct.iavf_rx_buffer, ptr %rx_buffer, i32 0, i32 2
  %32 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %page_offset.i, align 4
  %page_offset8.i = getelementptr %struct.iavf_rx_buffer, ptr %22, i32 %idxprom.i, i32 2
  %34 = ptrtoint ptr %page_offset8.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %page_offset8.i, align 4
  %35 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pagecnt_bias1.i, align 2
  %pagecnt_bias9.i = getelementptr %struct.iavf_rx_buffer, ptr %22, i32 %idxprom.i, i32 3
  %37 = ptrtoint ptr %pagecnt_bias9.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %pagecnt_bias9.i, align 2
  %page_reuse_count = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 23, i32 0, i32 3
  %38 = ptrtoint ptr %page_reuse_count to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %page_reuse_count, align 8
  %inc = add i64 %39, 1
  store i64 %inc, ptr %page_reuse_count, align 8
  br label %if.end3

if.else:                                          ; preds = %page_count.exit.i.if.else_crit_edge, %dev_page_is_reusable.exit.i.if.else_crit_edge
  %dev = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %42 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_buffer, align 4
  %rx_buf_len.i = getelementptr inbounds %struct.iavf_ring, ptr %rx_ring, i32 0, i32 12
  %44 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rx_buf_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %45)
  %cmp.i15 = icmp ugt i16 %45, 2048
  %..i = zext i1 %cmp.i15 to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %43, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #12
  %46 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %page2.i, align 4
  %48 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pagecnt_bias1.i, align 2
  %conv = zext i16 %49 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %47, i32 noundef %conv) #12
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %50 = ptrtoint ptr %page2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %page2.i, align 4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_clean_rx_irq_rx(ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq_rx, i32 0, i32 1), ptr blockaddress(@trace_iavf_clean_rx_irq_rx, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %call42 = tail call i32 @__traceiter_iavf_clean_rx_irq_rx(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_clean_rx_irq_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_clean_rx_irq_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_clean_rx_irq_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 154, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_clean_rx_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_clean_rx_irq_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @iavf_update_itr(ptr noundef readonly %q_vector, ptr noundef %rc) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rc, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %itr_setting = getelementptr inbounds %struct.iavf_ring, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %itr_setting, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool2.not = icmp sgt i16 %4, -1
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx.i = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 3
  %cmp.i = icmp eq ptr %rx.i, %rc
  %cond = select i1 %cmp.i, i32 32770, i32 32894
  %next_update4 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 1
  %5 = ptrtoint ptr %next_update4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_update4, align 4
  %sub = sub i32 %6, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.clear_counts_crit_edge, label %if.end7

if.end.clear_counts_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_counts

if.end7:                                          ; preds = %if.end
  %itr_countdown = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 6
  %7 = ptrtoint ptr %itr_countdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %itr_countdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %target_itr = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 5
  %9 = ptrtoint ptr %target_itr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_itr, align 2
  %conv10 = zext i16 %10 to i32
  br label %clear_counts

if.end11:                                         ; preds = %if.end7
  %total_packets = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 3
  %11 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_packets, align 4
  %total_bytes = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 2
  %13 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_bytes, align 4
  br i1 %cmp.i, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %15 = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %14)
  %cmp18 = icmp ult i32 %14, 9000
  %or.cond204 = select i1 %16, i1 %cmp18, i1 false
  br i1 %or.cond204, label %land.lhs.true20, label %if.then13.if.end52_crit_edge

if.then13.if.end52_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true20:                                  ; preds = %if.then13
  %target_itr21 = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 4, i32 5
  %17 = ptrtoint ptr %target_itr21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_itr21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %tobool24.not = icmp sgt i16 %18, -1
  br i1 %tobool24.not, label %land.lhs.true20.if.then55_crit_edge, label %land.lhs.true20.adjust_by_size_crit_edge

land.lhs.true20.adjust_by_size_crit_edge:         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %adjust_by_size

land.lhs.true20.if.then55_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp27 = icmp ult i32 %12, 4
  br i1 %cmp27, label %if.then29, label %if.else42

if.then29:                                        ; preds = %if.else
  %target_itr30 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 5
  %19 = ptrtoint ptr %target_itr30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %target_itr30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %20)
  %cmp32 = icmp eq i16 %20, 126
  br i1 %cmp32, label %land.lhs.true34, label %if.then29.if.then55_crit_edge

if.then29.if.then55_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

land.lhs.true34:                                  ; preds = %if.then29
  %target_itr35 = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %target_itr35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %target_itr35, align 2
  %23 = and i16 %22, 8190
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %23)
  %cmp38 = icmp eq i16 %23, 126
  br i1 %cmp38, label %land.lhs.true34.clear_counts_crit_edge, label %land.lhs.true34.if.then55_crit_edge

land.lhs.true34.if.then55_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

land.lhs.true34.clear_counts_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_counts

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp43 = icmp ugt i32 %12, 32
  br i1 %cmp43, label %if.then45, label %if.else42.if.then55_crit_edge

if.else42.if.then55_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %target_itr46 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 5
  %24 = ptrtoint ptr %target_itr46 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_itr46, align 2
  %26 = and i16 %25, 32767
  store i16 %26, ptr %target_itr46, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.then13.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp53 = icmp ult i32 %12, 56
  br i1 %cmp53, label %if.end52.if.then55_crit_edge, label %if.end65

if.end52.if.then55_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %if.end52.if.then55_crit_edge, %if.else42.if.then55_crit_edge, %land.lhs.true34.if.then55_crit_edge, %if.then29.if.then55_crit_edge, %land.lhs.true20.if.then55_crit_edge
  %target_itr56 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 5
  %27 = ptrtoint ptr %target_itr56 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %target_itr56, align 2
  %conv57 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv57, 2
  %and58 = and i32 %add, 8190
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and58)
  %cmp59 = icmp ugt i32 %and58, 126
  br i1 %cmp59, label %if.then61, label %if.then55.clear_counts_crit_edge

if.then55.clear_counts_crit_edge:                 ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_counts

if.then61:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %and62 = and i32 %add, 32768
  %add63 = or i32 %and62, 126
  br label %clear_counts

if.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %12)
  %cmp66 = icmp ult i32 %12, 257
  br i1 %cmp66, label %if.then68, label %if.end65.adjust_by_size_crit_edge

if.end65.adjust_by_size_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %adjust_by_size

if.then68:                                        ; preds = %if.end65
  %current_itr = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %current_itr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %current_itr, align 4
  %current_itr71 = getelementptr inbounds %struct.iavf_q_vector, ptr %q_vector, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %current_itr71 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %current_itr71, align 4
  %33 = tail call i16 @llvm.umin.i16(i16 %30, i16 %32)
  %34 = and i16 %33, 8190
  %and79 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %12)
  %cmp80 = icmp ult i32 %12, 113
  br i1 %cmp80, label %if.then68.clear_counts_crit_edge, label %if.end83

if.then68.clear_counts_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_counts

if.end83:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %div203 = lshr exact i32 %and79, 1
  %and84 = and i32 %div203, 4094
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 0
  %spec.store.select = select i1 %cmp85, i32 2, i32 %and84
  br label %clear_counts

adjust_by_size:                                   ; preds = %if.end65.adjust_by_size_crit_edge, %land.lhs.true20.adjust_by_size_crit_edge
  %tobool117.not = phi i32 [ 1, %land.lhs.true20.adjust_by_size_crit_edge ], [ 0, %if.end65.adjust_by_size_crit_edge ]
  %itr.0 = phi i32 [ 32768, %land.lhs.true20.adjust_by_size_crit_edge ], [ 0, %if.end65.adjust_by_size_crit_edge ]
  %div90 = udiv i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %div90)
  %cmp91 = icmp ult i32 %div90, 61
  br i1 %cmp91, label %adjust_by_size.if.end115_crit_edge, label %if.else94

adjust_by_size.if.end115_crit_edge:               ; preds = %adjust_by_size
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.else94:                                        ; preds = %adjust_by_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 381, i32 %div90)
  %cmp95 = icmp ult i32 %div90, 381
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul nuw nsw i32 %div90, 40
  %add98 = add nuw nsw i32 %mul, 1696
  br label %if.end115

if.else99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 1085, i32 %div90)
  %cmp100 = icmp ult i32 %div90, 1085
  br i1 %cmp100, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #14
  %mul103 = mul nuw nsw i32 %div90, 15
  %add104 = add nuw nsw i32 %mul103, 11452
  br label %if.end115

if.else105:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp4(i32 1981, i32 %div90)
  %cmp106 = icmp ult i32 %div90, 1981
  br i1 %cmp106, label %if.then108, label %if.else105.if.end115_crit_edge

if.else105.if.end115_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #14
  %mul109 = mul nuw nsw i32 %div90, 5
  %add110 = add nuw nsw i32 %mul109, 22420
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.else105.if.end115_crit_edge, %if.then102, %if.then97, %adjust_by_size.if.end115_crit_edge
  %avg_wire_size.0 = phi i32 [ %add98, %if.then97 ], [ %add104, %if.then102 ], [ %add110, %if.then108 ], [ 4096, %adjust_by_size.if.end115_crit_edge ], [ 32256, %if.else105.if.end115_crit_edge ]
  %spec.select = lshr i32 %avg_wire_size.0, %tobool117.not
  %35 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %q_vector, align 8
  %link_speed.i = getelementptr inbounds %struct.iavf_adapter, ptr %36, i32 0, i32 36
  %37 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_speed.i, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %38, label %sw.bb2.i [
    i32 16, label %if.end115.iavf_itr_divisor.exit212_crit_edge
    i32 64, label %if.end115.iavf_itr_divisor.exit_crit_edge
    i32 32, label %if.end115.iavf_itr_divisor.exit_crit_edge219
    i32 2, label %if.end115.sw.bb3.i_crit_edge
    i32 4, label %if.end115.sw.bb3.i_crit_edge220
  ]

if.end115.sw.bb3.i_crit_edge220:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

if.end115.sw.bb3.i_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

if.end115.iavf_itr_divisor.exit_crit_edge219:     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit

if.end115.iavf_itr_divisor.exit_crit_edge:        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit

if.end115.iavf_itr_divisor.exit212_crit_edge:     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit212

sw.bb2.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit

sw.bb3.i:                                         ; preds = %if.end115.sw.bb3.i_crit_edge, %if.end115.sw.bb3.i_crit_edge220
  br label %iavf_itr_divisor.exit

iavf_itr_divisor.exit:                            ; preds = %sw.bb3.i, %sw.bb2.i, %if.end115.iavf_itr_divisor.exit_crit_edge, %if.end115.iavf_itr_divisor.exit_crit_edge219
  %divisor.0.i = phi i32 [ 512, %sw.bb2.i ], [ 64, %sw.bb3.i ], [ 1024, %if.end115.iavf_itr_divisor.exit_crit_edge ], [ 1024, %if.end115.iavf_itr_divisor.exit_crit_edge219 ]
  %40 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %38, label %sw.bb2.i209 [
    i32 16, label %iavf_itr_divisor.exit.iavf_itr_divisor.exit212_crit_edge
    i32 64, label %iavf_itr_divisor.exit.sw.bb1.i208_crit_edge
    i32 32, label %iavf_itr_divisor.exit.sw.bb1.i208_crit_edge221
    i32 2, label %iavf_itr_divisor.exit.sw.bb3.i210_crit_edge
    i32 4, label %iavf_itr_divisor.exit.sw.bb3.i210_crit_edge222
  ]

iavf_itr_divisor.exit.sw.bb3.i210_crit_edge222:   ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i210

iavf_itr_divisor.exit.sw.bb3.i210_crit_edge:      ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i210

iavf_itr_divisor.exit.sw.bb1.i208_crit_edge221:   ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i208

iavf_itr_divisor.exit.sw.bb1.i208_crit_edge:      ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i208

iavf_itr_divisor.exit.iavf_itr_divisor.exit212_crit_edge: ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit212

sw.bb1.i208:                                      ; preds = %iavf_itr_divisor.exit.sw.bb1.i208_crit_edge, %iavf_itr_divisor.exit.sw.bb1.i208_crit_edge221
  br label %iavf_itr_divisor.exit212

sw.bb2.i209:                                      ; preds = %iavf_itr_divisor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iavf_itr_divisor.exit212

sw.bb3.i210:                                      ; preds = %iavf_itr_divisor.exit.sw.bb3.i210_crit_edge, %iavf_itr_divisor.exit.sw.bb3.i210_crit_edge222
  br label %iavf_itr_divisor.exit212

iavf_itr_divisor.exit212:                         ; preds = %sw.bb3.i210, %sw.bb2.i209, %sw.bb1.i208, %iavf_itr_divisor.exit.iavf_itr_divisor.exit212_crit_edge, %if.end115.iavf_itr_divisor.exit212_crit_edge
  %divisor.0.i.pn = phi i32 [ %divisor.0.i, %sw.bb2.i209 ], [ %divisor.0.i, %sw.bb3.i210 ], [ %divisor.0.i, %sw.bb1.i208 ], [ %divisor.0.i, %iavf_itr_divisor.exit.iavf_itr_divisor.exit212_crit_edge ], [ 2048, %if.end115.iavf_itr_divisor.exit212_crit_edge ]
  %divisor.0.i211 = phi i16 [ 512, %sw.bb2.i209 ], [ 64, %sw.bb3.i210 ], [ 1024, %sw.bb1.i208 ], [ 2048, %iavf_itr_divisor.exit.iavf_itr_divisor.exit212_crit_edge ], [ 2048, %if.end115.iavf_itr_divisor.exit212_crit_edge ]
  %sub123217.in = add nuw nsw i32 %divisor.0.i.pn, %spec.select
  %41 = trunc i32 %sub123217.in to i16
  %div125.lhs.trunc = add i16 %41, -1
  %div125218 = udiv i16 %div125.lhs.trunc, %divisor.0.i211
  %div125.zext = zext i16 %div125218 to i32
  %mul126 = shl nuw nsw i32 %div125.zext, 1
  %add127 = add nuw nsw i32 %mul126, %itr.0
  %and128 = and i32 %add127, 8190
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and128)
  %cmp129 = icmp ugt i32 %and128, 126
  br i1 %cmp129, label %if.then131, label %iavf_itr_divisor.exit212.clear_counts_crit_edge

iavf_itr_divisor.exit212.clear_counts_crit_edge:  ; preds = %iavf_itr_divisor.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_counts

if.then131:                                       ; preds = %iavf_itr_divisor.exit212
  call void @__sanitizer_cov_trace_pc() #14
  %and132 = and i32 %add127, 32768
  %add133 = or i32 %and132, 126
  br label %clear_counts

clear_counts:                                     ; preds = %if.then131, %iavf_itr_divisor.exit212.clear_counts_crit_edge, %if.end83, %if.then68.clear_counts_crit_edge, %if.then61, %if.then55.clear_counts_crit_edge, %land.lhs.true34.clear_counts_crit_edge, %if.then9, %if.end.clear_counts_crit_edge
  %itr.1 = phi i32 [ %cond, %if.end.clear_counts_crit_edge ], [ %conv10, %if.then9 ], [ %add133, %if.then131 ], [ %add127, %iavf_itr_divisor.exit212.clear_counts_crit_edge ], [ %add63, %if.then61 ], [ %add, %if.then55.clear_counts_crit_edge ], [ %and79, %if.then68.clear_counts_crit_edge ], [ %spec.store.select, %if.end83 ], [ 32894, %land.lhs.true34.clear_counts_crit_edge ]
  %conv135 = trunc i32 %itr.1 to i16
  %target_itr136 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 5
  %42 = ptrtoint ptr %target_itr136 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv135, ptr %target_itr136, align 2
  %add137 = add i32 %0, 1
  %43 = ptrtoint ptr %next_update4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add137, ptr %next_update4, align 4
  %total_bytes139 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 2
  %44 = ptrtoint ptr %total_bytes139 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %total_bytes139, align 4
  %total_packets140 = getelementptr inbounds %struct.iavf_ring_container, ptr %rc, i32 0, i32 3
  %45 = ptrtoint ptr %total_packets140 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %total_packets140, align 4
  br label %cleanup

cleanup:                                          ; preds = %clear_counts, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_xmit_frame_ring(ptr noundef %skb, ptr noundef %ring) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring, i32 0, i32 1), ptr blockaddress(@trace_iavf_xmit_frame_ring, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %call42 = tail call i32 @__traceiter_iavf_xmit_frame_ring(ptr noundef null, ptr noundef %skb, ptr noundef %ring) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_xmit_frame_ring.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_xmit_frame_ring.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 187, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iavf_xmit_frame_ring_drop(ptr noundef %skb, ptr noundef %ring) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring_drop, i32 0, i32 1), ptr blockaddress(@trace_iavf_xmit_frame_ring_drop, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %call42 = tail call i32 @__traceiter_iavf_xmit_frame_ring_drop(ptr noundef null, ptr noundef %skb, ptr noundef %ring) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring_drop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iavf_xmit_frame_ring_drop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iavf_xmit_frame_ring_drop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iavf_xmit_frame_ring_drop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 194, ptr noundef nonnull @.str.10) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_xmit_frame_ring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iavf_xmit_frame_ring_drop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 623, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 635, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @iavf_setup_tx_descriptors._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @iavf_setup_tx_descriptors._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @iavf_setup_rx_descriptors.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 745, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 754, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iavf_setup_rx_descriptors._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @iavf_setup_rx_descriptors._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 95, i32 1}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 103, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 140, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 148, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 182, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 1809, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @iavf_tx_prepare_vlan_flags.__UNIQUE_ID_ddebug545, !45, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/iavf/iavf_txrx.c", i32 2364, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @iavf_tx_map._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @iavf_tx_map._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/iavf/iavf_trace.h", i32 189, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 5070228}
!76 = !{i64 2158686056}
!77 = !{i64 2158690385}
!78 = !{i64 5069810}
!79 = !{i64 2158686265}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2158700614}
!83 = !{i64 2158700824}
!84 = !{i64 2158686485}
!85 = !{i64 561857}
!86 = !{!"branch_weights", i32 2002, i32 2000}
!87 = !{i64 2150062479}
!88 = !{i64 2156188592}
!89 = !{i64 2158688661}
!90 = !{i8 0, i8 2}
!91 = !{i64 2158707610}
!92 = !{i64 2155481992, i64 2155482480, i64 2155482029, i64 2155482085, i64 2155482119, i64 2155482143, i64 2155482184, i64 2155482205, i64 2155482233, i64 2155482267}
!93 = !{i64 2158689359}
!94 = !{i64 2158710496}
!95 = !{i64 2158721940}
!96 = !{i64 2149043380, i64 2149043385, i64 2149043398, i64 2149043442, i64 2149043476, i64 2149043497}
!97 = !{!"auto-init"}
!98 = !{i64 7827833}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.peeled.count", i32 1}
!101 = !{i64 2154682199, i64 2154682699, i64 2154682236, i64 2154682292, i64 2154682326, i64 2154682350, i64 2154682391, i64 2154682412, i64 2154682440, i64 2154682474}
!102 = !{i64 2154683543}
!103 = !{i64 2156187521}
!104 = !{i64 2158723669}
!105 = !{i64 2158723877}
!106 = !{i64 2158570116}
!107 = !{i64 2158570343}
!108 = !{i64 2149454721}
!109 = !{i64 2149455757}
!110 = !{i64 2158591852}
!111 = !{i64 2158592091}
!112 = !{i64 2149954161}
!113 = !{i64 2149959093}
!114 = !{i64 2149980805}
!115 = !{i64 2149985697}
!116 = !{i64 2150062154}
!117 = !{i64 2158609609}
!118 = !{i64 2158609836}
!119 = !{i64 2154335905, i64 2154336389, i64 2154335942, i64 2154335998, i64 2154336032, i64 2154336056, i64 2154336097, i64 2154336118, i64 2154336146, i64 2154336180}
!120 = !{i64 2148430003, i64 2148430029, i64 2148430058, i64 2148430092, i64 2148430123, i64 2148430146}
!121 = !{i64 2158627154}
!122 = !{i64 2158627387}
!123 = !{i64 2158644303}
!124 = !{i64 2158644524}
!125 = !{i64 2158665583}
!126 = !{i64 2158665814}
