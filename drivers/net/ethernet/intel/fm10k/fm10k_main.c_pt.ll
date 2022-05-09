; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.197, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.197 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.120 }
%union.anon.120 = type { i32 }
%struct.fm10k_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.184, ptr, [1 x i32], i32, i32, i8, i8, i8, i16, i16, i16, i16, i16, %struct.fm10k_queue_stats, %struct.u64_stats_sync, %union.anon.185, [72 x i8] }
%union.anon.184 = type { ptr }
%struct.fm10k_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { %struct.fm10k_rx_queue_stats, ptr }
%struct.fm10k_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.fm10k_rx_desc = type { %struct.anon.193 }
%struct.anon.193 = type { i64, i64, i64, i64 }
%struct.fm10k_rx_buffer = type { i32, ptr, i32 }
%struct.anon.194 = type { i32, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.fm10k_nvgre_hdr = type { i16, i16, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.fm10k_tx_buffer = type { ptr, ptr, i32, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.183 = type { ptr }
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
%struct.fm10k_tx_desc = type { i64, i16, i16, i16, i8, i8 }
%struct.page = type { i32, %union.anon.10, %union.anon.135, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.135 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.192, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.192 = type { ptr }
%struct.fm10k_q_vector = type { ptr, ptr, i16, %struct.fm10k_ring_container, %struct.fm10k_ring_container, %struct.napi_struct, %struct.cpumask, [25 x i8], ptr, %struct.callback_head, [60 x i8], [0 x %struct.fm10k_ring] }
%struct.fm10k_ring_container = type { ptr, i32, i32, i16, i16, i8, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.195 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.fm10k_l2_accel = type { i32, i16, i16, %struct.callback_head, [0 x ptr] }
%struct.vlan_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }

@fm10k_driver_name = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"fm10k\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author595 = internal constant [55 x i8] c"fm10k.author=Intel Corporation, <linux.nics@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description596 = internal constant [65 x i8] c"fm10k.description=Intel(R) Ethernet Switch Host Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file597 = internal constant [50 x i8] c"fm10k.file=drivers/net/ethernet/intel/fm10k/fm10k\00", section ".modinfo", align 1
@__UNIQUE_ID_license598 = internal constant [21 x i8] c"fm10k.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_fm10k__599_48_fm10k_init_module6 = internal global ptr @fm10k_init_module, section ".initcall6.init", align 4
@fm10k_workqueue = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_fm10k_exit_module = internal global ptr @fm10k_exit_module, section ".exitcall.exit", align 4
@fm10k_init_queueing_scheme._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to initialize MSI-X capability\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fm10k_init_queueing_scheme\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/fm10k/fm10k_main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fm10k_init_queueing_scheme._entry_ptr = internal global ptr @fm10k_init_queueing_scheme._entry, section ".printk_index", align 4
@fm10k_init_queueing_scheme._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1972, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate queue vectors\0A\00", [62 x i8] zeroinitializer }, align 32
@fm10k_init_queueing_scheme._entry_ptr.7 = internal global ptr @fm10k_init_queueing_scheme._entry.5, section ".printk_index", align 4
@fm10k_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fm10k_init_module\00", [46 x i8] zeroinitializer }, align 32
@fm10k_init_module._entry_ptr = internal global ptr @fm10k_init_module._entry, section ".printk_index", align 4
@fm10k_driver_string = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Intel(R) Ethernet Switch Host Interface Driver\00", [49 x i8] zeroinitializer }, align 32
@fm10k_init_module._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fm10k_init_module._entry_ptr.11 = internal global ptr @fm10k_init_module._entry.10, section ".printk_index", align 4
@fm10k_copyright = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Copyright(c) 2013 - 2019 Intel Corporation.\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"TSO requested for unsupported tunnel, disabling offload\0A\00", [39 x i8] zeroinitializer }, align 32
@fm10k_tx_csum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 805, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to offload encap csum!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fm10k_tx_csum\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fm10k_tx_csum._entry_ptr = internal global ptr @fm10k_tx_csum._entry, section ".printk_index", align 4
@fm10k_tx_csum._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 849, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"partial checksum, version=%d l4 proto=%x\0A\00", [54 x i8] zeroinitializer }, align 32
@fm10k_tx_csum._entry_ptr.21 = internal global ptr @fm10k_tx_csum._entry.19, section ".printk_index", align 4
@fm10k_tx_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1028, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fm10k_tx_map\00", [19 x i8] zeroinitializer }, align 32
@fm10k_tx_map._entry_ptr = internal global ptr @fm10k_tx_map._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.27 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"Detected Tx Unit Hang\0A  Tx Queue             <%d>\0A  TDH, TDT             <%x>, <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"tx hang %d detected on queue %d, resetting interface\0A\00", [42 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@fm10k_type_trans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fm10k_init_reta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1933, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"RSS indirection table assigned flows out of queue bounds. Reconfiguring.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm10k_init_reta\00", [16 x i8] zeroinitializer }, align 32
@fm10k_init_reta._entry_ptr = internal global ptr @fm10k_init_reta._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 47]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 47]
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"fm10k_driver_name\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 15, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"fm10k_workqueue\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 25, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1963, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1971, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 35, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"fm10k_driver_string\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 16, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 36, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"fm10k_copyright\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 17, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 39, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 598, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 778, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 804, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 847, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1028, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 326, i32 6 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1273, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1287, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 271, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1368, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 408, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [49 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_main.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1932, i32 4 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author595, ptr @__UNIQUE_ID_description596, ptr @__UNIQUE_ID_file597, ptr @__UNIQUE_ID_license598, ptr @__exitcall_fm10k_exit_module, ptr @__initcall__kmod_fm10k__599_48_fm10k_init_module6, ptr @fm10k_exit_module, ptr @fm10k_init_module._entry, ptr @fm10k_init_module._entry.10, ptr @fm10k_init_module._entry_ptr, ptr @fm10k_init_module._entry_ptr.11, ptr @fm10k_init_queueing_scheme._entry, ptr @fm10k_init_queueing_scheme._entry.5, ptr @fm10k_init_queueing_scheme._entry_ptr, ptr @fm10k_init_queueing_scheme._entry_ptr.7, ptr @fm10k_init_reta._entry, ptr @fm10k_init_reta._entry_ptr, ptr @fm10k_tx_csum._entry, ptr @fm10k_tx_csum._entry.19, ptr @fm10k_tx_csum._entry_ptr, ptr @fm10k_tx_csum._entry_ptr.21, ptr @fm10k_tx_map._entry, ptr @fm10k_tx_map._entry_ptr, ptr @fm10k_driver_name, ptr @fm10k_workqueue, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @fm10k_driver_string, ptr @fm10k_copyright, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_driver_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_init_queueing_scheme._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_init_queueing_scheme._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_driver_string to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_init_module._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_copyright to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_tx_csum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_tx_csum._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_tx_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_init_reta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @fm10k_driver_string) #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @fm10k_copyright) #14
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.12, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @fm10k_driver_name) #11
  store ptr %call5, ptr @fm10k_workqueue, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fm10k_dbg_init() #11
  %call6 = tail call i32 @fm10k_register_pci_driver() #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fm10k_unregister_pci_driver() #11
  tail call void @fm10k_dbg_exit() #11
  %0 = load ptr, ptr @fm10k_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_unregister_pci_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_alloc_rx_buffers(ptr nocapture noundef %rx_ring, i16 noundef zeroext %cleaned_count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count)
  %tobool.not = icmp eq i16 %cleaned_count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 2
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 4
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 16
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %union.fm10k_rx_desc, ptr %3, i32 %idxprom
  %4 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %arrayidx2 = getelementptr %struct.fm10k_rx_buffer, ptr %6, i32 %idxprom
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 14
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  %sub = sub i16 %1, %8
  %dev.i = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end21.do.body_crit_edge, %if.end
  %cleaned_count.addr.0 = phi i16 [ %cleaned_count, %if.end ], [ %dec, %if.end21.do.body_crit_edge ]
  %rx_desc.0 = phi ptr [ %arrayidx, %if.end ], [ %rx_desc.1, %if.end21.do.body_crit_edge ]
  %bi.0 = phi ptr [ %arrayidx2, %if.end ], [ %bi.1, %if.end21.do.body_crit_edge ]
  %i.0 = phi i16 [ %sub, %if.end ], [ %i.1, %if.end21.do.body_crit_edge ]
  %page1.i = getelementptr inbounds %struct.fm10k_rx_buffer, ptr %bi.0, i32 0, i32 1
  %9 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.if.end6_crit_edge, !prof !95

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %do.body
  %call38.i.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool4.not.i = icmp eq ptr %call38.i.i.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.do.end.sink.split_crit_edge, label %if.end14.i, !prof !95

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split

if.end14.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %call15.i = tail call i32 @dma_map_page_attrs(ptr noundef %12, ptr noundef nonnull %call38.i.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %call15.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15.i)
  %cmp.i.not.i = icmp eq i32 %call15.i, -1
  br i1 %cmp.i.not.i, label %if.then19.i, label %if.end23.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i.i, i32 noundef 0) #11
  br label %do.end.sink.split

if.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %bi.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call15.i, ptr %bi.0, align 4
  %16 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call38.i.i.i.i.i.i, ptr %page1.i, align 4
  %page_offset.i = getelementptr inbounds %struct.fm10k_rx_buffer, ptr %bi.0, i32 0, i32 2
  %17 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %page_offset.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end23.i, %do.body.if.end6_crit_edge
  %18 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi.0, align 4
  %page_offset = getelementptr inbounds %struct.fm10k_rx_buffer, ptr %bi.0, i32 0, i32 2
  %20 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_offset, align 4
  %add = add i32 %21, %19
  %conv7 = zext i32 %add to i64
  %22 = tail call i64 @llvm.bswap.i64(i64 %conv7)
  %23 = ptrtoint ptr %rx_desc.0 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rx_desc.0, align 8
  %incdec.ptr = getelementptr %union.fm10k_rx_desc, ptr %rx_desc.0, i32 1
  %incdec.ptr8 = getelementptr %struct.fm10k_rx_buffer, ptr %bi.0, i32 1
  %inc = add i16 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %tobool9.not = icmp eq i16 %inc, 0
  br i1 %tobool9.not, label %if.then13, label %if.end6.if.end21_crit_edge, !prof !95

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 16
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %4, align 4
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 2
  %sub19 = sub i16 0, %29
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end6.if.end21_crit_edge
  %rx_desc.1 = phi ptr [ %25, %if.then13 ], [ %incdec.ptr, %if.end6.if.end21_crit_edge ]
  %bi.1 = phi ptr [ %27, %if.then13 ], [ %incdec.ptr8, %if.end6.if.end21_crit_edge ]
  %i.1 = phi i16 [ %sub19, %if.then13 ], [ %inc, %if.end6.if.end21_crit_edge ]
  %staterr = getelementptr inbounds %struct.anon.194, ptr %rx_desc.1, i32 0, i32 2
  %30 = ptrtoint ptr %staterr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %staterr, align 8
  %dec = add i16 %cleaned_count.addr.0, -1
  %tobool22.not = icmp eq i16 %dec, 0
  br i1 %tobool22.not, label %if.end21.do.end_crit_edge, label %if.end21.do.body_crit_edge

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.sink.split:                                ; preds = %if.then19.i, %if.end.i.do.end.sink.split_crit_edge
  %31 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 20
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %inc22.i = add i64 %33, 1
  store i64 %inc22.i, ptr %31, align 8
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end21.do.end_crit_edge
  %i.2 = phi i16 [ %i.0, %do.end.sink.split ], [ %i.1, %if.end21.do.end_crit_edge ]
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count, align 2
  %add26 = add i16 %35, %i.2
  %36 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %add26)
  %cmp.not = icmp eq i16 %37, %add26
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %if.then32

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv30 = zext i16 %add26 to i32
  %38 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %add26, ptr %next_to_use, align 2
  %next_to_alloc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 15
  %39 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add26, ptr %next_to_alloc, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !97
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv30)
  %tail = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 6
  %41 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fm10k_tx_encap_offload(ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inner_protocol_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %inner_protocol_type to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %inner_protocol_type, align 2
  %1 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %4)
  %cmp3.not = icmp eq i16 %4, 25944
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %9 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.end.if.then.i.i_crit_edge
    i16 -32512, label %if.end.if.then.i.i_crit_edge97
  ]

if.end.if.then.i.i_crit_edge97:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.vlan_get_protocol.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.end.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge97
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp.i.i = icmp ult i16 %8, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !95

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %10 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  %11 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !99
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %10, align 2, !annotation !99
  %13 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i, align 8
  %17 = add i32 %vlan_depth.1.i.i, %16
  %sub.i1.i.i.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !100

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !95
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %20 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !95
  br i1 %20, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !95

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  br label %cleanup

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %22, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge98
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge98: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge98
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.end.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %6, %if.end.vlan_get_protocol.exit_crit_edge ], [ %22, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %24 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb7
  ]

vlan_get_protocol.exit.cleanup_crit_edge:         ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i60 = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i60
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %sw.epilog

sw.bb7:                                           ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i61, align 8
  %network_header.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i62 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i62, align 4
  %conv.i.i63 = zext i16 %32 to i32
  %add.ptr.i.i64 = getelementptr i8, ptr %30, i32 %conv.i.i63
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %l4_hdr.0.in = phi ptr [ %nexthdr, %sw.bb7 ], [ %protocol, %sw.bb ]
  %33 = ptrtoint ptr %l4_hdr.0.in to i32
  call void @__asan_load1_noabort(i32 %33)
  %l4_hdr.058 = load i8, ptr %l4_hdr.0.in, align 1
  %34 = zext i8 %l4_hdr.058 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %l4_hdr.058, label %sw.epilog.cleanup_crit_edge [
    i8 17, label %sw.bb10
    i8 47, label %sw.bb12
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  %35 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %vxlan_port.i = getelementptr i8, ptr %37, i32 18868
  %38 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vxlan_port.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %43 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %conv.i.i.i
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dest.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %45)
  %cmp.not.i = icmp eq i16 %39, %45
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 16
  br i1 %cmp.not.i, label %sw.bb10.sw.epilog15_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10.sw.epilog15_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.bb12:                                          ; preds = %sw.epilog
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %49 to i32
  %add.ptr.i.i.i.i65 = getelementptr i8, ptr %47, i32 %conv.i.i.i.i
  %50 = ptrtoint ptr %add.ptr.i.i.i.i65 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i65, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %51 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %protocol.i, align 8
  %54 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i.i66 = zext i16 %55 to i32
  %56 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %53, label %sw.bb12.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %sw.bb12.if.then.i.i.i_crit_edge
    i16 -32512, label %sw.bb12.if.then.i.i.i_crit_edge99
  ]

sw.bb12.if.then.i.i.i_crit_edge99:                ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

sw.bb12.if.then.i.i.i_crit_edge:                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

sw.bb12.vlan_get_protocol.exit.i_crit_edge:       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb12.if.then.i.i.i_crit_edge, %sw.bb12.if.then.i.i.i_crit_edge99
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i.i.i = icmp eq i16 %55, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %55)
  %cmp.i.i.i = icmp ult i16 %55, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add nsw i32 %conv.i.i.i66, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %57 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %58 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !99
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %57, align 2, !annotation !99
  %60 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %64 = add i32 %vlan_depth.1.i.i.i, %63
  %sub.i1.i.i.i.i = sub i32 %61, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !100

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %66, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !95
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %67 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !95
  br i1 %67, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !95

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %cleanup

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %69, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge100
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge100: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge100
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %sw.bb12.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %53, %sw.bb12.vlan_get_protocol.exit.i_crit_edge ], [ %69, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i.i)
  %cmp.not.i67 = icmp eq i16 %retval.2.i.i.i, 2048
  br i1 %cmp.not.i67, label %if.end.i, label %vlan_get_protocol.exit.i.cleanup_crit_edge

vlan_get_protocol.exit.i.cleanup_crit_edge:       ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %vlan_get_protocol.exit.i
  %71 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i.i.i, align 8
  %73 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i68 = zext i16 %74 to i32
  %add.ptr.i.i69 = getelementptr i8, ptr %72, i32 %conv.i.i68
  %add.ptr.i70 = getelementptr i8, ptr %add.ptr.i.i69, i32 %mul.i.i
  %75 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i70, align 4
  %conv4.i = zext i16 %76 to i32
  %and.i = and i32 %conv4.i, 40959
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %and9.i = and i32 %conv4.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12.i = getelementptr %struct.fm10k_nvgre_hdr, ptr %add.ptr.i70, i32 1
  br label %sw.epilog15

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %tni.i = getelementptr inbounds %struct.fm10k_nvgre_hdr, ptr %add.ptr.i70, i32 0, i32 2
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %if.end13.i, %if.then11.i, %sw.bb10.sw.epilog15_crit_edge
  %eth_hdr.0 = phi ptr [ %add.ptr12.i, %if.then11.i ], [ %tni.i, %if.end13.i ], [ %add.ptr.i, %sw.bb10.sw.epilog15_crit_edge ]
  %tobool.not = icmp eq ptr %eth_hdr.0, null
  br i1 %tobool.not, label %sw.epilog15.cleanup_crit_edge, label %if.end17

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog15
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %eth_hdr.0, i32 0, i32 2
  %77 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %h_proto, align 1
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %78, label %if.end17.cleanup_crit_edge [
    i16 2048, label %sw.bb19
    i16 -31011, label %sw.bb22
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %80 = ptrtoint ptr %head.i.i71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i71, align 8
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %82 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i72 = zext i16 %83 to i32
  %add.ptr.i.i73 = getelementptr i8, ptr %81, i32 %conv.i.i72
  %protocol21 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i73, i32 0, i32 6
  br label %sw.epilog26

sw.bb22:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %84 = ptrtoint ptr %head.i.i74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i74, align 8
  %inner_network_header.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %86 = ptrtoint ptr %inner_network_header.i.i75 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %inner_network_header.i.i75, align 4
  %conv.i.i76 = zext i16 %87 to i32
  %add.ptr.i.i77 = getelementptr i8, ptr %85, i32 %conv.i.i76
  %nexthdr24 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i77, i32 0, i32 3
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.bb22, %sw.bb19
  %inner_l4_hdr.0.in = phi ptr [ %nexthdr24, %sw.bb22 ], [ %protocol21, %sw.bb19 ]
  %88 = ptrtoint ptr %inner_l4_hdr.0.in to i32
  call void @__asan_load1_noabort(i32 %88)
  %inner_l4_hdr.059 = load i8, ptr %inner_l4_hdr.0.in, align 1
  %89 = zext i8 %inner_l4_hdr.059 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %inner_l4_hdr.059, label %sw.epilog26.cleanup_crit_edge [
    i8 6, label %sw.bb28
    i8 17, label %sw.epilog26.sw.epilog33_crit_edge
  ]

sw.epilog26.sw.epilog33_crit_edge:                ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33

sw.epilog26.cleanup_crit_edge:                    ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %90 = ptrtoint ptr %head.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i78, align 8
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %92 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i.i79 = zext i16 %93 to i32
  %add.ptr.i.i.i80 = getelementptr i8, ptr %91, i32 %conv.i.i.i79
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i80, i32 0, i32 4
  %94 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %95 = lshr i16 %bf.load.i, 10
  %96 = and i16 %95, 60
  %mul.i = zext i16 %96 to i32
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb28, %sw.epilog26.sw.epilog33_crit_edge
  %inner_l4_hlen.0 = phi i32 [ %mul.i, %sw.bb28 ], [ 8, %sw.epilog26.sw.epilog33_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i, align 8
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %99 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %inner_transport_header.i, align 2
  %conv.i = zext i16 %100 to i32
  %add.ptr.i81 = getelementptr i8, ptr %98, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i81, i32 %inner_l4_hlen.0
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %101 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %mac_header.i, align 2
  %conv.i83 = zext i16 %102 to i32
  %add.ptr.i84 = getelementptr i8, ptr %98, i32 %conv.i83
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i84 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %sub.ptr.sub)
  %cmp37 = icmp sgt i32 %sub.ptr.sub, 184
  %spec.select = select i1 %cmp37, i16 0, i16 %78
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog33, %sw.epilog26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.epilog15.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %vlan_get_protocol.exit.i.cleanup_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %sw.bb10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %vlan_get_protocol.exit.cleanup_crit_edge, %cleanup.thread.i.i, %do.end.i.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vlan_get_protocol.exit.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog15.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %sw.epilog26.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ 0, %cleanup.thread.i.i ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %vlan_get_protocol.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ], [ %spec.select, %sw.epilog33 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_xmit_frame_ring(ptr noundef %skb, ptr noundef %tx_ring) local_unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %frag_off.i = alloca i16, align 2
  %l4_hdr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = add i32 %1, 16383
  %sub = sub i32 %sub.i, %3
  %div63 = lshr i32 %sub, 14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp132.not = icmp eq i8 %7, 0
  br i1 %cmp132.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %count.0.in134 = phi i32 [ %div63, %for.body.preheader ], [ %add11, %for.body.for.body_crit_edge ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %indvars.iv, i32 1
  %8 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i, align 4
  %sub8 = add i32 %9, 16383
  %div964 = lshr i32 %sub8, 14
  %conv10 = and i32 %count.0.in134, 65535
  %add11 = add nuw nsw i32 %div964, %conv10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.in.lcssa = phi i32 [ %div63, %entry.for.end_crit_edge ], [ %add11, %for.body.for.end_crit_edge ]
  %10 = trunc i32 %count.0.in.lcssa to i16
  %conv15 = add i16 %10, 3
  %next_to_clean.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 17
  %11 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 16
  %13 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %next_to_use.i.i, align 2
  %15 = xor i16 %14, -1
  %sub2.i.i = add i16 %12, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i.i)
  %cmp.i.i = icmp slt i16 %sub2.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %for.end.fm10k_desc_unused.exit.i_crit_edge, !prof !100

for.end.fm10k_desc_unused.exit.i_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_desc_unused.exit.i

cond.true.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %count.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count.i.i, align 2
  %add.i.i = add i16 %17, %sub2.i.i
  br label %fm10k_desc_unused.exit.i

fm10k_desc_unused.exit.i:                         ; preds = %cond.true.i.i, %for.end.fm10k_desc_unused.exit.i_crit_edge
  %cond.i.i = phi i16 [ %add.i.i, %cond.true.i.i ], [ %sub2.i.i, %for.end.fm10k_desc_unused.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.i.i, i16 %conv15)
  %cmp.not.i = icmp ult i16 %cond.i.i, %conv15
  br i1 %cmp.not.i, label %fm10k_maybe_stop_tx.exit, label %fm10k_desc_unused.exit.i.if.end_crit_edge, !prof !95

fm10k_desc_unused.exit.i.if.end_crit_edge:        ; preds = %fm10k_desc_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fm10k_maybe_stop_tx.exit:                         ; preds = %fm10k_desc_unused.exit.i
  %call4.i = tail call fastcc i32 @__fm10k_maybe_stop_tx(ptr noundef %tx_ring, i16 noundef zeroext %conv15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %fm10k_maybe_stop_tx.exit.if.end_crit_edge, label %if.then

fm10k_maybe_stop_tx.exit.if.end_crit_edge:        ; preds = %fm10k_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %fm10k_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tx_busy = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_busy, align 8
  %inc17 = add i64 %19, 1
  store i64 %inc17, ptr %tx_busy, align 8
  br label %cleanup

if.end:                                           ; preds = %fm10k_maybe_stop_tx.exit.if.end_crit_edge, %fm10k_desc_unused.exit.i.if.end_crit_edge
  %20 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %next_to_use.i.i, align 2
  %idxprom18 = zext i16 %24 to i32
  %arrayidx19 = getelementptr %struct.fm10k_tx_buffer, ptr %22, i32 %idxprom18
  %skb20 = getelementptr %struct.fm10k_tx_buffer, ptr %22, i32 %idxprom18, i32 1
  %25 = ptrtoint ptr %skb20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb, ptr %skb20, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 60)
  %bytecount = getelementptr %struct.fm10k_tx_buffer, ptr %22, i32 %idxprom18, i32 2
  %29 = ptrtoint ptr %bytecount to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %bytecount, align 4
  %gso_segs = getelementptr %struct.fm10k_tx_buffer, ptr %22, i32 %idxprom18, i32 3
  %30 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %gso_segs, align 4
  %tx_flags24 = getelementptr %struct.fm10k_tx_buffer, ptr %22, i32 %idxprom18, i32 4
  %31 = ptrtoint ptr %tx_flags24 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %tx_flags24, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %33 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %33)
  %cmp.not.i66 = icmp eq i16 %33, 1536
  br i1 %cmp.not.i66, label %if.end.i67, label %if.end.if.then30_crit_edge

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.end.i67:                                       ; preds = %if.end
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.i.not.i = icmp eq i16 %37, 0
  br i1 %tobool.i.not.i, label %if.then30thread-pre-split, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i67
  %38 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  %call10.i = tail call zeroext i16 @fm10k_tx_encap_offload(ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call10.i)
  %tobool11.not.i = icmp eq i16 %call10.i, 0
  br i1 %tobool11.not.i, label %err_vxlan.i, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  br label %if.else

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %if.else

err_vxlan.i:                                      ; preds = %if.then9.i
  %netdev.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 1
  %39 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features.i, align 16
  %and.i = and i64 %42, -67108865
  store i64 %and.i, ptr %features.i, align 16
  %call31.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %err_vxlan.i.out_drop_crit_edge, label %if.then33.i

err_vxlan.i.out_drop_crit_edge:                   ; preds = %err_vxlan.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop

if.then33.i:                                      ; preds = %err_vxlan.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.15) #14
  br label %out_drop

if.else:                                          ; preds = %if.else.i, %if.end13.i
  %transport_header.i.sink.i = phi ptr [ %transport_header.i.i, %if.else.i ], [ %inner_transport_header.i.i, %if.end13.i ]
  %.sink.in.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  %46 = ptrtoint ptr %transport_header.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i.sink.i, align 2
  %conv.i58.i = zext i16 %47 to i32
  %add.ptr.i59.i = getelementptr i8, ptr %.sink.i, i32 %conv.i58.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i59.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i59.i, i32 0, i32 4
  %50 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load17.i = load i16, ptr %doff.i, align 4
  %51 = lshr i16 %bf.load17.i, 10
  %52 = and i16 %51, 60
  %shl.i = zext i16 %52 to i32
  %add.i = add i32 %sub.ptr.sub.i, %shl.i
  %conv20.i = trunc i32 %add.i to i8
  %53 = ptrtoint ptr %tx_flags24 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tx_flags24, align 2
  %55 = or i16 %54, 1
  store i16 %55, ptr %tx_flags24, align 2
  %56 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %gso_segs.i, align 2
  %60 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %gso_segs, align 4
  %conv26.i = zext i16 %59 to i32
  %sub.i68 = add nsw i32 %conv26.i, -1
  %conv27.i = and i32 %add.i, 255
  %mul.i = mul nsw i32 %sub.i68, %conv27.i
  %61 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytecount, align 4
  %add28.i = add i32 %mul.i, %62
  store i32 %add28.i, ptr %bytecount, align 4
  %desc.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %63 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc.i, align 16
  %65 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %next_to_use.i.i, align 2
  %idxprom.i = zext i16 %66 to i32
  %hdrlen29.i = getelementptr %struct.fm10k_tx_desc, ptr %64, i32 %idxprom.i, i32 4
  %67 = ptrtoint ptr %hdrlen29.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv20.i, ptr %hdrlen29.i, align 2
  %68 = load ptr, ptr %end.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %gso_size.i, align 4
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #11
  %mss.i = getelementptr %struct.fm10k_tx_desc, ptr %64, i32 %idxprom.i, i32 3
  %72 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %mss.i, align 4
  br label %if.end32

if.then30thread-pre-split:                        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %skb20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr = load ptr, ptr %skb20, align 4
  br label %if.then30

if.then30:                                        ; preds = %if.then30thread-pre-split, %if.end.if.then30_crit_edge
  %74 = phi ptr [ %.pr, %if.then30thread-pre-split ], [ %skb, %if.end.if.then30_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #11
  %75 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l4_hdr.i) #11
  %76 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %l4_hdr.i, align 1
  %ip_summed.i71 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15
  %77 = ptrtoint ptr %ip_summed.i71 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i72 = load i16, ptr %ip_summed.i71, align 8
  %78 = and i16 %bf.load.i72, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %78)
  %cmp.not.i73 = icmp eq i16 %78, 1536
  br i1 %cmp.not.i73, label %if.end.i75, label %if.then30.fm10k_tx_csum.exit_crit_edge

if.then30.fm10k_tx_csum.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_tx_csum.exit

if.end.i75:                                       ; preds = %if.then30
  %79 = and i16 %bf.load.i72, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i74 = icmp eq i16 %79, 0
  br i1 %tobool.not.i74, label %if.else.i80, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i75
  %call.i = tail call zeroext i16 @fm10k_tx_encap_offload(ptr noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool8.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool8.not.i, label %if.then9.i78, label %if.end14.i

if.then9.i78:                                     ; preds = %if.then7.i
  %call10.i76 = tail call i32 @skb_checksum_help(ptr noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i76)
  %tobool11.not.i77 = icmp eq i32 %call10.i76, 0
  br i1 %tobool11.not.i77, label %if.then9.i78.fm10k_tx_csum.exit_crit_edge, label %do.end.i

if.then9.i78.fm10k_tx_csum.exit_crit_edge:        ; preds = %if.then9.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_tx_csum.exit

do.end.i:                                         ; preds = %if.then9.i78
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.16) #14
  %csum_err.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 0, i32 1
  br label %no_csum.sink.split.i

if.end14.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 18
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 16
  %84 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i = zext i16 %85 to i32
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 %conv.i.i
  %inner_transport_header.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 15
  br label %if.end20.i

if.else.i80:                                      ; preds = %if.end.i75
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 18
  %86 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 8
  %88 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %89 to i32
  %90 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %87, label %if.else.i80.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.else.i80.if.then.i.i.i_crit_edge
    i16 -32512, label %if.else.i80.if.then.i.i.i_crit_edge155
  ]

if.else.i80.if.then.i.i.i_crit_edge155:           ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.else.i80.if.then.i.i.i_crit_edge:              ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.else.i80.vlan_get_protocol.exit.i_crit_edge:   ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i80.if.then.i.i.i_crit_edge, %if.else.i80.if.then.i.i.i_crit_edge155
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i.i.i = icmp eq i16 %89, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %89)
  %cmp.i.i.i = icmp ult i16 %89, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %vlan_get_protocol.exit.i

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %91 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %74, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %92 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !99
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %91, align 2, !annotation !99
  %94 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %98 = add i32 %vlan_depth.1.i.i.i, %97
  %sub.i1.i.i.i.i = sub i32 %95, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !100

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %100, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %74, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !95
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %101 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !95
  br i1 %101, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !95

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %vlan_get_protocol.exit.i

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %103, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %if.else.i80.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %87, %if.else.i80.vlan_get_protocol.exit.i_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %103, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %head.i106.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 18
  %105 = ptrtoint ptr %head.i106.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i106.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 20
  %107 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i, align 4
  %conv.i107.i = zext i16 %108 to i32
  %add.ptr.i108.i = getelementptr i8, ptr %106, i32 %conv.i107.i
  %transport_header.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15, i32 0, i32 19
  br label %if.end20.i

if.end20.i:                                       ; preds = %vlan_get_protocol.exit.i, %if.end14.i
  %transport_header.i.sink.i82 = phi ptr [ %transport_header.i.i81, %vlan_get_protocol.exit.i ], [ %inner_transport_header.i.i79, %if.end14.i ]
  %.sink.i83 = phi ptr [ %106, %vlan_get_protocol.exit.i ], [ %83, %if.end14.i ]
  %network_hdr.sroa.0.0.i = phi ptr [ %add.ptr.i108.i, %vlan_get_protocol.exit.i ], [ %add.ptr.i.i, %if.end14.i ]
  %protocol.0.i = phi i16 [ %retval.2.i.i.i, %vlan_get_protocol.exit.i ], [ %call.i, %if.end14.i ]
  %conv21.i = zext i16 %protocol.0.i to i32
  %109 = zext i16 %protocol.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %protocol.0.i, label %if.end20.i.sw.epilogthread-pre-split.i_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb23.i
  ]

if.end20.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilogthread-pre-split.i

sw.bb.i:                                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %protocol22.i = getelementptr inbounds %struct.iphdr, ptr %network_hdr.sroa.0.0.i, i32 0, i32 6
  %110 = ptrtoint ptr %protocol22.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %protocol22.i, align 1
  %112 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %l4_hdr.i, align 1
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end20.i
  %113 = ptrtoint ptr %transport_header.i.sink.i82 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %transport_header.i.sink.i82, align 2
  %conv.i110.i = zext i16 %114 to i32
  %add.ptr.i111.i = getelementptr i8, ptr %.sink.i83, i32 %conv.i110.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %network_hdr.sroa.0.0.i, i32 0, i32 3
  %115 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nexthdr.i, align 2
  %117 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %l4_hdr.i, align 1
  %sub.ptr.lhs.cast.i84 = ptrtoint ptr %add.ptr.i111.i to i32
  %sub.ptr.rhs.cast.i85 = ptrtoint ptr %network_hdr.sroa.0.0.i to i32
  %sub.ptr.sub.i86 = sub i32 %sub.ptr.lhs.cast.i84, %sub.ptr.rhs.cast.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub.i86)
  %cmp24.i = icmp eq i32 %sub.ptr.sub.i86, 40
  br i1 %cmp24.i, label %sw.bb23.i.sw.epilog.i_crit_edge, label %if.end29.i, !prof !100

sw.bb23.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end29.i:                                       ; preds = %sw.bb23.i
  %data.i87 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %118 = ptrtoint ptr %data.i87 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i87, align 4
  %sub.ptr.rhs.cast31.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub32.i = add i32 %sub.ptr.rhs.cast.i85, 40
  %add.i88 = sub i32 %sub.ptr.sub32.i, %sub.ptr.rhs.cast31.i
  %call33.i = call i32 @ipv6_skip_exthdr(ptr noundef %74, i32 noundef %add.i88, ptr noundef nonnull %l4_hdr.i, ptr noundef nonnull %frag_off.i) #11
  %120 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool34.not.i = icmp eq i16 %121, 0
  br i1 %tobool34.not.i, label %if.end29.i.sw.epilogthread-pre-split.i_crit_edge, label %sw.epilog.thread.i, !prof !100

if.end29.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilogthread-pre-split.i

sw.epilog.thread.i:                               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 44, ptr %l4_hdr.i, align 1
  br label %sw.default54.i

sw.epilogthread-pre-split.i:                      ; preds = %if.end29.i.sw.epilogthread-pre-split.i_crit_edge, %if.end20.i.sw.epilogthread-pre-split.i_crit_edge
  %123 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %.pr.i = load i8, ptr %l4_hdr.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %sw.bb23.i.sw.epilog.i_crit_edge, %sw.bb.i
  %124 = phi i8 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %116, %sw.bb23.i.sw.epilog.i_crit_edge ], [ %111, %sw.bb.i ]
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %124, label %sw.epilog.i.sw.default54.i_crit_edge [
    i8 6, label %sw.epilog.i.sw.epilog74.i_crit_edge
    i8 17, label %sw.epilog.i.sw.epilog74.i_crit_edge157
    i8 47, label %sw.bb45.i
  ]

sw.epilog.i.sw.epilog74.i_crit_edge157:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.i

sw.epilog.i.sw.epilog74.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.i

sw.epilog.i.sw.default54.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default54.i

sw.bb45.i:                                        ; preds = %sw.epilog.i
  %126 = ptrtoint ptr %ip_summed.i71 to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load47.i = load i16, ptr %ip_summed.i71, align 8
  %127 = and i16 %bf.load47.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool51.not.i = icmp eq i16 %127, 0
  br i1 %tobool51.not.i, label %sw.bb45.i.sw.default54.i_crit_edge, label %sw.bb45.i.sw.epilog74.i_crit_edge

sw.bb45.i.sw.epilog74.i_crit_edge:                ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.i

sw.bb45.i.sw.default54.i_crit_edge:               ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default54.i

sw.default54.i:                                   ; preds = %sw.bb45.i.sw.default54.i_crit_edge, %sw.epilog.i.sw.default54.i_crit_edge, %sw.epilog.thread.i
  %call55.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %sw.default54.i.if.end70.i_crit_edge, label %do.end66.i, !prof !100

sw.default54.i.if.end70.i_crit_edge:              ; preds = %sw.default54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

do.end66.i:                                       ; preds = %sw.default54.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev67.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  %128 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev67.i, align 8
  %130 = ptrtoint ptr %l4_hdr.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %l4_hdr.i, align 1
  %conv69.i = zext i8 %131 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.20, i32 noundef %conv21.i, i32 noundef %conv69.i) #14
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end66.i, %sw.default54.i.if.end70.i_crit_edge
  %call71.i = call i32 @skb_checksum_help(ptr noundef %74) #11
  %csum_err72.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 0, i32 1
  br label %no_csum.sink.split.i

sw.epilog74.i:                                    ; preds = %sw.bb45.i.sw.epilog74.i_crit_edge, %sw.epilog.i.sw.epilog74.i_crit_edge, %sw.epilog.i.sw.epilog74.i_crit_edge157
  %132 = ptrtoint ptr %tx_flags24 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %tx_flags24, align 2
  %134 = or i16 %133, 1
  store i16 %134, ptr %tx_flags24, align 2
  %csum_good.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 0, i32 4
  br label %no_csum.sink.split.i

no_csum.sink.split.i:                             ; preds = %sw.epilog74.i, %if.end70.i, %do.end.i
  %csum_err.sink115.i = phi ptr [ %csum_err.i, %do.end.i ], [ %csum_good.i, %sw.epilog74.i ], [ %csum_err72.i, %if.end70.i ]
  %135 = ptrtoint ptr %csum_err.sink115.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %csum_err.sink115.i, align 8
  %inc.i = add i64 %136, 1
  store i64 %inc.i, ptr %csum_err.sink115.i, align 8
  br label %fm10k_tx_csum.exit

fm10k_tx_csum.exit:                               ; preds = %no_csum.sink.split.i, %if.then9.i78.fm10k_tx_csum.exit_crit_edge, %if.then30.fm10k_tx_csum.exit_crit_edge
  %desc.i90 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %137 = ptrtoint ptr %desc.i90 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %desc.i90, align 16
  %139 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %next_to_use.i.i, align 2
  %idxprom.i92 = zext i16 %140 to i32
  %hdrlen.i = getelementptr %struct.fm10k_tx_desc, ptr %138, i32 %idxprom.i92, i32 4
  %141 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %hdrlen.i, align 2
  %mss.i93 = getelementptr %struct.fm10k_tx_desc, ptr %138, i32 %idxprom.i92, i32 3
  %142 = ptrtoint ptr %mss.i93 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %mss.i93, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_hdr.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #11
  br label %if.end32

if.end32:                                         ; preds = %fm10k_tx_csum.exit, %if.else
  %143 = ptrtoint ptr %skb20 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %skb20, align 4
  %145 = ptrtoint ptr %tx_flags24 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %tx_flags24, align 2
  %147 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %next_to_use.i.i, align 2
  %tx_flags.tr.i.i = trunc i16 %146 to i8
  %149 = shl i8 %tx_flags.tr.i.i, 2
  %conv.i.i96 = and i8 %149, 4
  %desc.i97 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %150 = ptrtoint ptr %desc.i97 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %desc.i97, align 16
  %idxprom.i98 = zext i16 %148 to i32
  %arrayidx.i = getelementptr %struct.fm10k_tx_desc, ptr %151, i32 %idxprom.i98
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 15, i32 0, i32 3
  %152 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %bf.load.i99 = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i99)
  %tobool.not.i100 = icmp sgt i32 %bf.load.i99, -1
  br i1 %tobool.not.i100, label %if.end32.if.end.i103_crit_edge, label %if.then.i

if.end32.if.end.i103_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i103

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 15, i32 0, i32 10
  %153 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %vlan_tci.i, align 2
  %155 = call i16 @llvm.bswap.i16(i16 %154) #11
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.then.i, %if.end32.if.end.i103_crit_edge
  %.sink.i101 = phi i16 [ %155, %if.then.i ], [ 0, %if.end32.if.end.i103_crit_edge ]
  %156 = getelementptr %struct.fm10k_tx_desc, ptr %151, i32 %idxprom.i98, i32 2
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %.sink.i101, ptr %156, align 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 6
  %158 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 7
  %160 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %159, %161
  %data5.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 19
  %162 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data5.i, align 4
  %dev.i102 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  %164 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i102, align 8
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %163) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i103
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !100

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %165) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i104 = icmp eq ptr %167, null
  br i1 %tobool.not.i.i.i104, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %165, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %169, %if.end.i.i.i ], [ %167, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  call void @debug_dma_map_single(ptr noundef %165, ptr noundef %163, i32 noundef %sub.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %170 = load ptr, ptr @mem_map, align 4
  %171 = ptrtoint ptr %163 to i32
  %sub.i165.i = add i32 %171, 1073741824
  %shr.i.i = lshr i32 %sub.i165.i, 12
  %add.ptr.i.i105 = getelementptr %struct.page, ptr %170, i32 %shr.i.i
  %and.i.i = and i32 %171, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %165, ptr noundef %add.ptr.i.i105, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %172 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data_len.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 17
  %174 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %end.i.i, align 4
  %176 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i102, align 8
  call void @debug_dma_mapping_error(ptr noundef %177, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.not209.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.not209.i, label %dma_map_single_attrs.exit.i.do.end71.i_crit_edge, label %if.end14.lr.ph.i

dma_map_single_attrs.exit.i.do.end71.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71.i

if.end14.lr.ph.i:                                 ; preds = %dma_map_single_attrs.exit.i
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %175, i32 0, i32 12
  %178 = or i8 %conv.i.i96, 33
  %count.i.i106 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  br label %if.end14.i108

if.end14.i108:                                    ; preds = %if.end41.i.if.end14.i108_crit_edge, %if.end14.lr.ph.i
  %i.0216.i = phi i16 [ %148, %if.end14.lr.ph.i ], [ %i.3.i, %if.end41.i.if.end14.i108_crit_edge ]
  %size.0215.i = phi i32 [ %sub.i.i, %if.end14.lr.ph.i ], [ %201, %if.end41.i.if.end14.i108_crit_edge ]
  %data_len.0214.i = phi i32 [ %173, %if.end14.lr.ph.i ], [ %sub43.i, %if.end41.i.if.end14.i108_crit_edge ]
  %dma.0213.i = phi i32 [ %retval.0.i.i, %if.end14.lr.ph.i ], [ %call2.i.i, %if.end41.i.if.end14.i108_crit_edge ]
  %frag.0212.i = phi ptr [ %frags.i, %if.end14.lr.ph.i ], [ %incdec.ptr48.i, %if.end41.i.if.end14.i108_crit_edge ]
  %tx_desc.0211.i = phi ptr [ %arrayidx.i, %if.end14.lr.ph.i ], [ %tx_desc.3.i, %if.end41.i.if.end14.i108_crit_edge ]
  %tx_buffer.0210.i = phi ptr [ %arrayidx19, %if.end14.lr.ph.i ], [ %arrayidx47.i, %if.end41.i.if.end14.i108_crit_edge ]
  %len.i107 = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0210.i, i32 0, i32 6
  %179 = ptrtoint ptr %len.i107 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %size.0215.i, ptr %len.i107, align 4
  %dma15.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0210.i, i32 0, i32 5
  %180 = ptrtoint ptr %dma15.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %dma.0213.i, ptr %dma15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %size.0215.i)
  %cmp201.i = icmp ugt i32 %size.0215.i, 16384
  br i1 %cmp201.i, label %if.end14.i108.while.body.i_crit_edge, label %if.end14.i108.while.end.i_crit_edge, !prof !95

if.end14.i108.while.end.i_crit_edge:              ; preds = %if.end14.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end14.i108.while.body.i_crit_edge:             ; preds = %if.end14.i108
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %if.end14.i108.while.body.i_crit_edge
  %i.1205.i = phi i16 [ %i.2.i, %if.end23.i.while.body.i_crit_edge ], [ %i.0216.i, %if.end14.i108.while.body.i_crit_edge ]
  %size.1204.i = phi i32 [ %sub.i111, %if.end23.i.while.body.i_crit_edge ], [ %size.0215.i, %if.end14.i108.while.body.i_crit_edge ]
  %dma.1203.i = phi i32 [ %add.i110, %if.end23.i.while.body.i_crit_edge ], [ %dma.0213.i, %if.end14.i108.while.body.i_crit_edge ]
  %tx_desc.1202.i = phi ptr [ %tx_desc.2.i, %if.end23.i.while.body.i_crit_edge ], [ %tx_desc.0211.i, %if.end14.i108.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.fm10k_tx_desc, ptr %tx_desc.1202.i, i32 1
  %inc.i109 = add i16 %i.1205.i, 1
  %181 = and i16 %inc.i109, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp.i166.i = icmp eq i16 %181, 0
  %spec.select.i.i = select i1 %cmp.i166.i, i8 %178, i8 %conv.i.i96
  %conv4.i.i = zext i32 %dma.1203.i to i64
  %182 = call i64 @llvm.bswap.i64(i64 %conv4.i.i) #11
  %183 = ptrtoint ptr %tx_desc.1202.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %tx_desc.1202.i, align 8
  %flags.i.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1202.i, i32 0, i32 5
  %184 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %spec.select.i.i, ptr %flags.i.i, align 1
  %buflen.i.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1202.i, i32 0, i32 1
  %185 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 64, ptr %buflen.i.i, align 8
  %186 = ptrtoint ptr %count.i.i106 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %count.i.i106, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i109, i16 %187)
  %cmp8.i.i = icmp eq i16 %inc.i109, %187
  br i1 %cmp8.i.i, label %if.then20.i, label %while.body.i.if.end23.i_crit_edge

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %desc.i97 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %desc.i97, align 16
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %while.body.i.if.end23.i_crit_edge
  %tx_desc.2.i = phi ptr [ %189, %if.then20.i ], [ %incdec.ptr.i, %while.body.i.if.end23.i_crit_edge ]
  %i.2.i = phi i16 [ 0, %if.then20.i ], [ %inc.i109, %while.body.i.if.end23.i_crit_edge ]
  %add.i110 = add i32 %dma.1203.i, 16384
  %sub.i111 = add i32 %size.1204.i, -16384
  %cmp.i = icmp ugt i32 %sub.i111, 16384
  br i1 %cmp.i, label %if.end23.i.while.body.i_crit_edge, label %if.end23.i.while.end.i_crit_edge, !prof !95

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end23.i.while.end.i_crit_edge, %if.end14.i108.while.end.i_crit_edge
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.0211.i, %if.end14.i108.while.end.i_crit_edge ], [ %tx_desc.2.i, %if.end23.i.while.end.i_crit_edge ]
  %dma.1.lcssa.i = phi i32 [ %dma.0213.i, %if.end14.i108.while.end.i_crit_edge ], [ %add.i110, %if.end23.i.while.end.i_crit_edge ]
  %size.1.lcssa.i = phi i32 [ %size.0215.i, %if.end14.i108.while.end.i_crit_edge ], [ %sub.i111, %if.end23.i.while.end.i_crit_edge ]
  %i.1.lcssa.i = phi i16 [ %i.0216.i, %if.end14.i108.while.end.i_crit_edge ], [ %i.2.i, %if.end23.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0214.i)
  %tobool24.not.i = icmp eq i32 %data_len.0214.i, 0
  br i1 %tobool24.not.i, label %for.end.i, label %if.end34.i, !prof !100

if.end34.i:                                       ; preds = %while.end.i
  %incdec.ptr35.i = getelementptr %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc36.i = add i16 %i.1.lcssa.i, 1
  %190 = and i16 %inc36.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %cmp.i168.i = icmp eq i16 %190, 0
  %spec.select.i169.i = select i1 %cmp.i168.i, i8 %178, i8 %conv.i.i96
  %conv4.i170.i = zext i32 %dma.1.lcssa.i to i64
  %191 = call i64 @llvm.bswap.i64(i64 %conv4.i170.i) #11
  %192 = ptrtoint ptr %tx_desc.1.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %191, ptr %tx_desc.1.lcssa.i, align 8
  %flags.i171.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 5
  %193 = ptrtoint ptr %flags.i171.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %spec.select.i169.i, ptr %flags.i171.i, align 1
  %conv5.i.i = trunc i32 %size.1.lcssa.i to i16
  %194 = call i16 @llvm.bswap.i16(i16 %conv5.i.i) #11
  %buflen.i172.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 1
  %195 = ptrtoint ptr %buflen.i172.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %buflen.i172.i, align 8
  %196 = ptrtoint ptr %count.i.i106 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %count.i.i106, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc36.i, i16 %197)
  %cmp8.i174.i = icmp eq i16 %inc36.i, %197
  br i1 %cmp8.i174.i, label %if.then38.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %desc.i97 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %desc.i97, align 16
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end41.i_crit_edge
  %tx_desc.3.i = phi ptr [ %199, %if.then38.i ], [ %incdec.ptr35.i, %if.end34.i.if.end41.i_crit_edge ]
  %i.3.i = phi i16 [ 0, %if.then38.i ], [ %inc36.i, %if.end34.i.if.end41.i_crit_edge ]
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0212.i, i32 0, i32 1
  %200 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %bv_len.i.i, align 4
  %sub43.i = sub i32 %data_len.0214.i, %201
  %202 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i102, align 8
  %204 = ptrtoint ptr %frag.0212.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %frag.0212.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0212.i, i32 0, i32 2
  %206 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = call i32 @dma_map_page_attrs(ptr noundef %203, ptr noundef %205, i32 noundef %207, i32 noundef %201, i32 noundef 1, i32 noundef 0) #11
  %208 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %20, align 4
  %idxprom46.i = zext i16 %i.3.i to i32
  %arrayidx47.i = getelementptr %struct.fm10k_tx_buffer, ptr %209, i32 %idxprom46.i
  %incdec.ptr48.i = getelementptr %struct.bio_vec, ptr %frag.0212.i, i32 1
  %210 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i102, align 8
  call void @debug_dma_mapping_error(ptr noundef %211, i32 noundef %call2.i.i) #11
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %if.end41.i.do.end71.i_crit_edge, label %if.end41.i.if.end14.i108_crit_edge

if.end41.i.if.end14.i108_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i108

if.end41.i.do.end71.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71.i

for.end.i:                                        ; preds = %while.end.i
  %inc51.i = add i16 %i.1.lcssa.i, 1
  %212 = and i16 %inc51.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %cmp.i176.i = icmp eq i16 %212, 0
  %spec.select.i177.v.i = select i1 %cmp.i176.i, i8 97, i8 64
  %spec.select.i177.i = or i8 %spec.select.i177.v.i, %conv.i.i96
  %conv4.i178.i = zext i32 %dma.1.lcssa.i to i64
  %213 = call i64 @llvm.bswap.i64(i64 %conv4.i178.i) #11
  %214 = ptrtoint ptr %tx_desc.1.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %tx_desc.1.lcssa.i, align 8
  %flags.i179.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 5
  %215 = ptrtoint ptr %flags.i179.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %spec.select.i177.i, ptr %flags.i179.i, align 1
  %conv5.i180.i = trunc i32 %size.1.lcssa.i to i16
  %216 = call i16 @llvm.bswap.i16(i16 %conv5.i180.i) #11
  %buflen.i181.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 0, i32 1
  %217 = ptrtoint ptr %buflen.i181.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %buflen.i181.i, align 8
  %218 = ptrtoint ptr %count.i.i106 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %count.i.i106, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc51.i, i16 %219)
  %cmp8.i183.i = icmp eq i16 %inc51.i, %219
  %spec.select.i = select i1 %cmp8.i183.i, i16 0, i16 %inc51.i
  %netdev.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 1
  %220 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %221, i32 0, i32 103
  %222 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %_tx.i.i, align 128
  %queue_index.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 10
  %224 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %queue_index.i.i, align 8
  %idxprom.i.i = zext i8 %225 to i32
  %226 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %bytecount, align 4
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %223, i32 %idxprom.i.i, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %227)
  %cmp.i.i.i113 = icmp ugt i32 %227, 268435455
  br i1 %cmp.i.i.i113, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !95

do.body2.i.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !101
  unreachable

dql_queued.exit.i.i:                              ; preds = %for.end.i
  %last_obj_cnt.i.i.i = getelementptr %struct.netdev_queue, ptr %223, i32 %idxprom.i.i, i32 15, i32 2
  %228 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %last_obj_cnt.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %229 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i114 = add i32 %230, %227
  store i32 %add.i.i.i114, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %223, i32 %idxprom.i.i, i32 15, i32 1
  %231 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %233 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i115 = sub i32 %232, %233
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i115)
  %cmp.i184.i = icmp sgt i32 %sub.i.i.i115, -1
  br i1 %cmp.i184.i, label %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge, label %if.end.i.i, !prof !100

dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_sent_queue.exit.i

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %223, i32 %idxprom.i.i, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %234 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %236 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %235, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge, !prof !95

if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_sent_queue.exit.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  br label %netdev_tx_sent_queue.exit.i

netdev_tx_sent_queue.exit.i:                      ; preds = %if.then14.i.i, %if.end.i.i.netdev_tx_sent_queue.exit.i_crit_edge, %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge
  %238 = ptrtoint ptr %skb20 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %skb20, align 4
  call void @skb_clone_tx_timestamp(ptr noundef %239) #11
  %end.i.i.i116 = getelementptr inbounds %struct.sk_buff, ptr %239, i32 0, i32 17
  %240 = ptrtoint ptr %end.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %end.i.i.i116, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %tx_flags.i.i, align 1
  %244 = and i8 %243, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i.i = icmp eq i8 %244, 0
  br i1 %tobool.not.i.i, label %netdev_tx_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i185.i

netdev_tx_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge: ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tx_timestamp.exit.i

if.then.i185.i:                                   ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_tstamp_tx(ptr noundef %239, ptr noundef null) #11
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i185.i, %netdev_tx_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @arm_heavy_mb() #11
  %245 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %tx_desc.1.lcssa.i, ptr %arrayidx19, align 4
  %246 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %spec.select.i, ptr %next_to_use.i.i, align 2
  %247 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %next_to_clean.i.i, align 4
  %249 = xor i16 %spec.select.i, -1
  %sub2.i.i.i = add i16 %248, %249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i.i.i)
  %cmp.i.i187.i = icmp slt i16 %sub2.i.i.i, 0
  br i1 %cmp.i.i187.i, label %cond.true.i.i.i, label %skb_tx_timestamp.exit.i.fm10k_desc_unused.exit.i.i_crit_edge, !prof !100

skb_tx_timestamp.exit.i.fm10k_desc_unused.exit.i.i_crit_edge: ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_desc_unused.exit.i.i

cond.true.i.i.i:                                  ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %250 = ptrtoint ptr %count.i.i106 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %count.i.i106, align 2
  %add.i.i188.i = add i16 %251, %sub2.i.i.i
  br label %fm10k_desc_unused.exit.i.i

fm10k_desc_unused.exit.i.i:                       ; preds = %cond.true.i.i.i, %skb_tx_timestamp.exit.i.fm10k_desc_unused.exit.i.i_crit_edge
  %cond.i.i.i = phi i16 [ %add.i.i188.i, %cond.true.i.i.i ], [ %sub2.i.i.i, %skb_tx_timestamp.exit.i.fm10k_desc_unused.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %cond.i.i.i)
  %cmp.not.i.i = icmp ult i16 %cond.i.i.i, 21
  br i1 %cmp.not.i.i, label %if.end.i189.i, label %fm10k_desc_unused.exit.i.i.fm10k_maybe_stop_tx.exit.i_crit_edge, !prof !95

fm10k_desc_unused.exit.i.i.fm10k_maybe_stop_tx.exit.i_crit_edge: ; preds = %fm10k_desc_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_maybe_stop_tx.exit.i

if.end.i189.i:                                    ; preds = %fm10k_desc_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call fastcc i32 @__fm10k_maybe_stop_tx(ptr noundef %tx_ring, i16 noundef zeroext 21) #11
  br label %fm10k_maybe_stop_tx.exit.i

fm10k_maybe_stop_tx.exit.i:                       ; preds = %if.end.i189.i, %fm10k_desc_unused.exit.i.i.fm10k_maybe_stop_tx.exit.i_crit_edge
  %252 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i192.i = getelementptr inbounds %struct.net_device, ptr %253, i32 0, i32 103
  %254 = ptrtoint ptr %_tx.i192.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %_tx.i192.i, align 128
  %256 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %queue_index.i.i, align 8
  %idxprom.i194.i = zext i8 %257 to i32
  %state.i196.i = getelementptr %struct.netdev_queue, ptr %255, i32 %idxprom.i194.i, i32 13
  %258 = ptrtoint ptr %state.i196.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %state.i196.i, align 4
  %and.i197.i = and i32 %259, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool.i.not.i117 = icmp eq i32 %and.i197.i, 0
  br i1 %tobool.i.not.i117, label %lor.lhs.false.i, label %fm10k_maybe_stop_tx.exit.i.do.body64.i_crit_edge

fm10k_maybe_stop_tx.exit.i.do.body64.i_crit_edge: ; preds = %fm10k_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64.i

lor.lhs.false.i:                                  ; preds = %fm10k_maybe_stop_tx.exit.i
  %260 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i = and i32 %260, -16384
  %261 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i198.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %263
  %264 = ptrtoint ptr %arrayidx.i198.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i198.i, align 4
  %add.i.i118 = add i32 %265, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %266 = inttoptr i32 %add.i.i118 to ptr
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.i199.not.i = icmp eq i8 %268, 0
  br i1 %tobool.i199.not.i, label %lor.lhs.false.i.do.body64.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.do.body64.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64.i

do.body64.i:                                      ; preds = %lor.lhs.false.i.do.body64.i_crit_edge, %fm10k_maybe_stop_tx.exit.i.do.body64.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !105
  call void @arm_heavy_mb() #11
  %conv67.i = zext i16 %spec.select.i to i32
  %269 = call i32 @llvm.bswap.i32(i32 %conv67.i) #11
  %tail.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 6
  %270 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %tail.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #11, !srcloc !98
  br label %cleanup

do.end71.i:                                       ; preds = %if.end41.i.do.end71.i_crit_edge, %dma_map_single_attrs.exit.i.do.end71.i_crit_edge
  %idxprom74218.pre-phi.i = phi i32 [ %idxprom.i98, %dma_map_single_attrs.exit.i.do.end71.i_crit_edge ], [ %idxprom46.i, %if.end41.i.do.end71.i_crit_edge ]
  %i.0.lcssa.i = phi i16 [ %148, %dma_map_single_attrs.exit.i.do.end71.i_crit_edge ], [ %i.3.i, %if.end41.i.do.end71.i_crit_edge ]
  %272 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i102, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.22) #14
  %274 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %20, align 4
  %arrayidx75219.i = getelementptr %struct.fm10k_tx_buffer, ptr %275, i32 %idxprom74218.pre-phi.i
  call void @fm10k_unmap_and_free_tx_resource(ptr noundef %tx_ring, ptr noundef %arrayidx75219.i) #11
  %cmp76220.i = icmp eq ptr %arrayidx75219.i, %arrayidx19
  br i1 %cmp76220.i, label %do.end71.i.for.end85.i_crit_edge, label %if.end79.lr.ph.i

do.end71.i.for.end85.i_crit_edge:                 ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85.i

if.end79.lr.ph.i:                                 ; preds = %do.end71.i
  %count.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end84.i.if.end79.i_crit_edge, %if.end79.lr.ph.i
  %i.5221.i = phi i16 [ %i.0.lcssa.i, %if.end79.lr.ph.i ], [ %dec.i, %if.end84.i.if.end79.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i.5221.i)
  %cmp81.i = icmp eq i16 %i.5221.i, 0
  br i1 %cmp81.i, label %if.then83.i, label %if.end79.i.if.end84.i_crit_edge

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  %276 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %count.i, align 2
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end84.i_crit_edge
  %i.6.i = phi i16 [ %277, %if.then83.i ], [ %i.5221.i, %if.end79.i.if.end84.i_crit_edge ]
  %dec.i = add i16 %i.6.i, -1
  %278 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %20, align 4
  %idxprom74.i = zext i16 %dec.i to i32
  %arrayidx75.i = getelementptr %struct.fm10k_tx_buffer, ptr %279, i32 %idxprom74.i
  call void @fm10k_unmap_and_free_tx_resource(ptr noundef %tx_ring, ptr noundef %arrayidx75.i) #11
  %cmp76.i = icmp eq ptr %arrayidx75.i, %arrayidx19
  br i1 %cmp76.i, label %if.end84.i.for.end85.i_crit_edge, label %if.end84.i.if.end79.i_crit_edge

if.end84.i.if.end79.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.end84.i.for.end85.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85.i

for.end85.i:                                      ; preds = %if.end84.i.for.end85.i_crit_edge, %do.end71.i.for.end85.i_crit_edge
  %i.5.lcssa.i = phi i16 [ %i.0.lcssa.i, %do.end71.i.for.end85.i_crit_edge ], [ %dec.i, %if.end84.i.for.end85.i_crit_edge ]
  %280 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %i.5.lcssa.i, ptr %next_to_use.i.i, align 2
  br label %cleanup

out_drop:                                         ; preds = %if.then33.i, %err_vxlan.i.out_drop_crit_edge
  %281 = ptrtoint ptr %skb20 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %skb20, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %282, i32 noundef 1) #11
  %283 = ptrtoint ptr %skb20 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %skb20, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %for.end85.i, %do.body64.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %out_drop ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %do.body64.i ], [ 0, %for.end85.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @fm10k_get_tx_pending(ptr nocapture noundef readonly %ring, i1 noundef zeroext %in_sw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %in_sw, label %if.then, label %if.else, !prof !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %next_to_clean = getelementptr inbounds %struct.fm10k_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 4
  %conv = zext i16 %1 to i32
  %next_to_use = getelementptr inbounds %struct.fm10k_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 2
  %conv5 = zext i16 %3 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %7, i32 0, i32 41
  %reg_idx = getelementptr inbounds %struct.fm10k_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_idx, align 1
  %conv6 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv6, 6
  %add = or i32 %mul, 32772
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw2, i32 noundef %add) #11
  %10 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_idx, align 1
  %conv8 = zext i8 %11 to i32
  %mul9 = shl nuw nsw i32 %conv8, 6
  %add10 = or i32 %mul9, 32773
  %call11 = tail call i32 @fm10k_read_reg(ptr noundef %hw2, i32 noundef %add10) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %head.0 = phi i32 [ %conv, %if.then ], [ %call, %if.else ]
  %tail.0 = phi i32 [ %conv5, %if.then ], [ %call11, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0, i32 %tail.0)
  %cmp.not = icmp ugt i32 %head.0, %tail.0
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 2
  %conv13 = zext i16 %13 to i32
  %add14 = add i32 %tail.0, %conv13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add14, %cond.false ], [ %tail.0, %if.end.cond.end_crit_edge ]
  %sub = sub i32 %cond, %head.0
  %conv15 = zext i32 %sub to i64
  ret i64 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fm10k_check_tx_hang(ptr noundef %tx_ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 18
  %0 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats.i, align 8
  %tx_done_old1 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %tx_done_old1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_done_old1, align 8
  %next_to_clean.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 17
  %4 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_clean.i, align 4
  %conv.i = zext i16 %5 to i32
  %next_to_use.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 16
  %6 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_use.i, align 2
  %conv5.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i = icmp ugt i16 %5, %7
  br i1 %cmp.not.i, label %cond.false.i, label %entry.fm10k_get_tx_pending.exit_crit_edge

entry.fm10k_get_tx_pending.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_get_tx_pending.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %count.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count.i, align 2
  %conv13.i = zext i16 %9 to i32
  %add14.i = add nuw nsw i32 %conv13.i, %conv5.i
  br label %fm10k_get_tx_pending.exit

fm10k_get_tx_pending.exit:                        ; preds = %cond.false.i, %entry.fm10k_get_tx_pending.exit_crit_edge
  %cond.i = phi i32 [ %add14.i, %cond.false.i ], [ %conv5.i, %entry.fm10k_get_tx_pending.exit_crit_edge ]
  %state = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv.i)
  %tobool.not = icmp ne i32 %cond.i, %conv.i
  %conv = trunc i64 %1 to i32
  %conv2 = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv)
  %cmp.not = icmp eq i32 %conv2, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %fm10k_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = and i64 %1, 4294967295
  %10 = ptrtoint ptr %tx_done_old1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv6, ptr %tx_done_old1, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #11
  br label %cleanup

if.end:                                           ; preds = %fm10k_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13 = icmp ne i32 %call12, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool13, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_tx_timeout_reset(ptr noundef %interface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_timeout_count = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 33
  %3 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_timeout_count, align 32
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_timeout_count, align 32
  %flags = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call void @fm10k_service_event_schedule(ptr noundef %interface) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_service_event_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_init_queueing_scheme(ptr noundef %interface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i.i, align 128
  %num_tc.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 140
  %2 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tc.i.i.i, align 4
  %conv.i.i.i = sext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i.i = icmp slt i16 %3, 2
  %ring_feature.i3.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38
  br i1 %cmp.i.i, label %if.end.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %entry
  %indices.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 1, i32 1
  %4 = ptrtoint ptr %indices.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %indices.i.i, align 2
  %sub.i.i = add nsw i32 %conv.i.i.i, -1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #11, !range !106
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %notmask.i.i = shl nsw i32 -1, %sub.i.i.i
  %6 = trunc i32 %notmask.i.i to i16
  %conv3.i.i = xor i16 %6, -1
  %mask.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 1, i32 2
  %7 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i.i, ptr %mask.i.i, align 2
  %max_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 6
  %8 = ptrtoint ptr %max_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_queues.i.i, align 8
  %div7273.i.i = udiv i16 %9, %3
  %div72.zext.i.i = zext i16 %div7273.i.i to i32
  %10 = tail call i32 @llvm.ctlz.i32(i32 %div72.zext.i.i, i1 true) #11, !range !106
  %sub.i67.op.i.i = xor i32 %10, 31
  %sub.i67.op.op.i.i = shl nuw i32 1, %sub.i67.op.i.i
  %11 = ptrtoint ptr %ring_feature.i3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ring_feature.i3.i, align 2
  %conv11.i.i = and i32 %sub.i67.op.op.i.i, 65535
  %conv12.i.i = zext i16 %12 to i32
  %13 = tail call i32 @llvm.umin.i32(i32 %conv11.i.i, i32 %conv12.i.i) #11
  %conv17.i.i = trunc i32 %13 to i16
  %indices18.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 1
  %14 = ptrtoint ptr %indices18.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv17.i.i, ptr %indices18.i.i, align 2
  %sub19.i.i = add nsw i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i.i)
  %tobool.not.i69.i.i = icmp eq i32 %sub19.i.i, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub19.i.i, i1 true) #11, !range !106
  %sub.i70.i.i = sub nuw nsw i32 32, %15
  %sub.i70.op.i.i = shl nsw i32 -1, %sub.i70.i.i
  %16 = trunc i32 %sub.i70.op.i.i to i16
  %.op.i.i = xor i16 %16, -1
  %conv23.i.i = select i1 %tobool.not.i69.i.i, i16 0, i16 %.op.i.i
  %mask24.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 2
  %17 = ptrtoint ptr %mask24.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv23.i.i, ptr %mask24.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.075.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %conv27.i.i = trunc i32 %i.075.i.i to i8
  %mul.i.i = mul nuw nsw i32 %i.075.i.i, %13
  %conv29.i.i = trunc i32 %mul.i.i to i16
  %call30.i.i = tail call i32 @netdev_set_tc_queue(ptr noundef %1, i8 noundef zeroext %conv27.i.i, i16 noundef zeroext %conv17.i.i, i16 noundef zeroext %conv29.i.i) #11
  %inc.i.i = add nuw nsw i32 %i.075.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i, label %fm10k_set_qos_queues.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

fm10k_set_qos_queues.exit.i:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul31.i.i = mul nsw i32 %13, %conv.i.i.i
  br label %fm10k_set_num_queues.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %max_queues.i4.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 6
  %18 = ptrtoint ptr %max_queues.i4.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_queues.i4.i, align 8
  %20 = ptrtoint ptr %ring_feature.i3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ring_feature.i3.i, align 2
  %22 = tail call i16 @llvm.umin.i16(i16 %19, i16 %21) #11
  %indices.i5.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 1
  %23 = ptrtoint ptr %indices.i5.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %indices.i5.i, align 2
  %conv6.i.i = zext i16 %22 to i32
  %sub.i6.i = add nsw i32 %conv6.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i6.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i6.i, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %sub.i6.i, i1 true) #11, !range !106
  %sub.i.i7.i = sub nuw nsw i32 32, %24
  %sub.i.op.i.i = shl nsw i32 -1, %sub.i.i7.i
  %25 = trunc i32 %sub.i.op.i.i to i16
  %.op.i8.i = xor i16 %25, -1
  %conv8.i.i = select i1 %tobool.not.i.i.i, i16 0, i16 %.op.i8.i
  %mask.i9.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 2
  %26 = ptrtoint ptr %mask.i9.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv8.i.i, ptr %mask.i9.i, align 2
  br label %fm10k_set_num_queues.exit

fm10k_set_num_queues.exit:                        ; preds = %if.end.i, %fm10k_set_qos_queues.exit.i
  %mul31.i.sink12.i = phi i32 [ %mul31.i.i, %fm10k_set_qos_queues.exit.i ], [ %conv6.i.i, %if.end.i ]
  %num_rx_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %27 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul31.i.sink12.i, ptr %num_rx_queues.i.i, align 32
  %num_tx_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  %28 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul31.i.sink12.i, ptr %num_tx_queues.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %29 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv4.i = and i32 %mul31.i.sink12.i, 65535
  %conv5.i = and i32 %29, 65535
  %30 = tail call i32 @llvm.umin.i32(i32 %conv4.i, i32 %conv5.i) #11
  %add.i = add nuw nsw i32 %30, 1
  %max_msix_vectors.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 5
  %31 = ptrtoint ptr %max_msix_vectors.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_msix_vectors.i, align 2
  %conv14.i = zext i16 %32 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv14.i) #11
  %34 = shl nuw nsw i32 %33, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #15
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %35 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i.i, ptr %msix_entries.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %fm10k_set_num_queues.exit.do.end_crit_edge, label %for.cond.preheader.i

fm10k_set_num_queues.exit.do.end_crit_edge:       ; preds = %fm10k_set_num_queues.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.preheader.i:                             ; preds = %fm10k_set_num_queues.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2470.not.i = icmp eq i32 %33, 0
  br i1 %cmp2470.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %vector.071.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv26.i = trunc i32 %vector.071.i to i16
  %36 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msix_entries.i, align 4
  %entry28.i = getelementptr %struct.msix_entry, ptr %37, i32 %vector.071.i, i32 1
  %38 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv26.i, ptr %entry28.i, align 4
  %inc.i = add nuw nsw i32 %vector.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %41 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %msix_entries.i, align 4
  %call30.i = tail call i32 @pci_enable_msix_range(ptr noundef %40, ptr noundef %42, i32 noundef 2, i32 noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.then33.i, label %if.end

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msix_entries.i, align 4
  tail call void @kfree(ptr noundef %44) #11
  %45 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %msix_entries.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then33.i, %fm10k_set_num_queues.exit.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %fm10k_set_num_queues.exit.do.end_crit_edge ], [ %call30.i, %if.then33.i ]
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #14
  br label %err_init_msix

if.end:                                           ; preds = %for.end.i
  %sub.i = add nsw i32 %call30.i, -1
  %num_q_vectors.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %48 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i, ptr %num_q_vectors.i, align 8
  %49 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_rx_queues.i.i, align 32
  %51 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_tx_queues.i.i, align 8
  %add.i23 = add i32 %52, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i23)
  %cmp.not.i = icmp ult i32 %sub.i, %add.i23
  br i1 %cmp.not.i, label %if.end.if.end4.i_crit_edge, label %for.cond.preheader.i24

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.cond.preheader.i24:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not87.i = icmp eq i32 %50, 0
  br i1 %tobool.not87.i, label %for.cond.preheader.i24.if.end4.i_crit_edge, label %for.cond.preheader.i24.for.body.i25_crit_edge

for.cond.preheader.i24.for.body.i25_crit_edge:    ; preds = %for.cond.preheader.i24
  br label %for.body.i25

for.cond.preheader.i24.if.end4.i_crit_edge:       ; preds = %for.cond.preheader.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.body.i25:                                     ; preds = %if.end.i27.for.body.i25_crit_edge, %for.cond.preheader.i24.for.body.i25_crit_edge
  %v_idx.090.i = phi i32 [ %inc3.i, %if.end.i27.for.body.i25_crit_edge ], [ 0, %for.cond.preheader.i24.for.body.i25_crit_edge ]
  %rxr_remaining.088.i = phi i32 [ %dec.i, %if.end.i27.for.body.i25_crit_edge ], [ %50, %for.cond.preheader.i24.for.body.i25_crit_edge ]
  %call.i = tail call fastcc i32 @fm10k_alloc_q_vector(ptr noundef %interface, i32 noundef %sub.i, i32 noundef %v_idx.090.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %v_idx.090.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i27, label %for.body.i25.err_out.i_crit_edge

for.body.i25.err_out.i_crit_edge:                 ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

if.end.i27:                                       ; preds = %for.body.i25
  %dec.i = add i32 %rxr_remaining.088.i, -1
  %inc3.i = add nuw i32 %v_idx.090.i, 1
  %tobool.not.i26 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i26, label %if.end.i27.if.end4.i_crit_edge, label %if.end.i27.for.body.i25_crit_edge

if.end.i27.for.body.i25_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i25

if.end.i27.if.end4.i_crit_edge:                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i27.if.end4.i_crit_edge, %for.cond.preheader.i24.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %rxr_remaining.1.i = phi i32 [ %50, %if.end.if.end4.i_crit_edge ], [ 0, %for.cond.preheader.i24.if.end4.i_crit_edge ], [ 0, %if.end.i27.if.end4.i_crit_edge ]
  %rxr_idx.1.i = phi i32 [ 0, %if.end.if.end4.i_crit_edge ], [ 0, %for.cond.preheader.i24.if.end4.i_crit_edge ], [ %50, %if.end.i27.if.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %rxr_idx.1.i)
  %cmp692.i = icmp ugt i32 %sub.i, %rxr_idx.1.i
  br i1 %cmp692.i, label %for.body7.preheader.i, label %if.end4.i.if.end9_crit_edge

if.end4.i.if.end9_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body7.preheader.i:                            ; preds = %if.end4.i
  %53 = sub i32 %sub.i, %rxr_idx.1.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc25.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %v_idx.297.i = phi i32 [ %inc26.i, %for.inc25.i.for.body7.i_crit_edge ], [ %rxr_idx.1.i, %for.body7.preheader.i ]
  %txr_idx.096.i = phi i32 [ %inc23.i, %for.inc25.i.for.body7.i_crit_edge ], [ 0, %for.body7.preheader.i ]
  %txr_remaining.094.i = phi i32 [ %sub21.i, %for.inc25.i.for.body7.i_crit_edge ], [ %52, %for.body7.preheader.i ]
  %rxr_remaining.293.i = phi i32 [ %sub20.i, %for.inc25.i.for.body7.i_crit_edge ], [ %rxr_remaining.1.i, %for.body7.preheader.i ]
  %sub.i28 = sub i32 %sub.i, %v_idx.297.i
  %add8.i = add i32 %sub.i28, -1
  %sub9.i = add i32 %rxr_remaining.293.i, %add8.i
  %div.i = udiv i32 %sub9.i, %sub.i28
  %sub13.i = add i32 %txr_remaining.094.i, %add8.i
  %div15.i = udiv i32 %sub13.i, %sub.i28
  %call16.i = tail call fastcc i32 @fm10k_alloc_q_vector(ptr noundef %interface, i32 noundef %sub.i, i32 noundef %v_idx.297.i, i32 noundef %div15.i, i32 noundef %txr_idx.096.i, i32 noundef %div.i, i32 noundef %v_idx.297.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.inc25.i, label %for.body7.i.err_out.i_crit_edge

for.body7.i.err_out.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

for.inc25.i:                                      ; preds = %for.body7.i
  %sub20.i = sub i32 %rxr_remaining.293.i, %div.i
  %sub21.i = sub i32 %txr_remaining.094.i, %div15.i
  %inc26.i = add nuw i32 %v_idx.297.i, 1
  %inc23.i = add i32 %txr_idx.096.i, 1
  %exitcond.not.i29 = icmp eq i32 %inc23.i, %53
  br i1 %exitcond.not.i29, label %for.inc25.i.if.end9_crit_edge, label %for.inc25.i.for.body7.i_crit_edge

for.inc25.i.for.body7.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i

for.inc25.i.if.end9_crit_edge:                    ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

err_out.i:                                        ; preds = %for.body7.i.err_out.i_crit_edge, %for.body.i25.err_out.i_crit_edge
  %v_idx.3.i = phi i32 [ %v_idx.297.i, %for.body7.i.err_out.i_crit_edge ], [ %v_idx.090.i, %for.body.i25.err_out.i_crit_edge ]
  %54 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_tx_queues.i.i, align 8
  %55 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %num_rx_queues.i.i, align 32
  %56 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %num_q_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_idx.3.i)
  %tobool29.not98.i = icmp eq i32 %v_idx.3.i, 0
  br i1 %tobool29.not98.i, label %err_out.i.do.end6_crit_edge, label %err_out.i.while.body.i_crit_edge

err_out.i.while.body.i_crit_edge:                 ; preds = %err_out.i
  br label %while.body.i

err_out.i.do.end6_crit_edge:                      ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_out.i.while.body.i_crit_edge
  %v_idx.499.i = phi i32 [ %dec28.i, %while.body.i.while.body.i_crit_edge ], [ %v_idx.3.i, %err_out.i.while.body.i_crit_edge ]
  %dec28.i = add i32 %v_idx.499.i, -1
  tail call fastcc void @fm10k_free_q_vector(ptr noundef %interface, i32 noundef %dec28.i) #11
  %tobool29.not.i = icmp eq i32 %dec28.i, 0
  br i1 %tobool29.not.i, label %while.body.i.do.end6_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.end6_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end6:                                          ; preds = %while.body.i.do.end6_crit_edge, %err_out.i.do.end6_crit_edge
  %57 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.6) #14
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %60) #11
  %msix_entries.i32 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %61 = ptrtoint ptr %msix_entries.i32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %msix_entries.i32, align 4
  tail call void @kfree(ptr noundef %62) #11
  %63 = ptrtoint ptr %msix_entries.i32 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %msix_entries.i32, align 4
  br label %err_init_msix

if.end9:                                          ; preds = %for.inc25.i.if.end9_crit_edge, %if.end4.i.if.end9_crit_edge
  %64 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev.i.i, align 128
  %num_tc.i.i.i34 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 140
  %66 = ptrtoint ptr %num_tc.i.i.i34 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_tc.i.i.i34, align 4
  %68 = and i16 %67, 255
  %conv3.i.i35 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp.i.i36 = icmp ult i16 %68, 2
  br i1 %cmp.i.i36, label %if.end.i42, label %for.cond11.preheader.lr.ph.i.i

for.cond11.preheader.lr.ph.i.i:                   ; preds = %if.end9
  %mask.i.i37 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 1, i32 2
  %69 = ptrtoint ptr %mask.i.i37 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mask.i.i37, align 4
  %add.i.i = add i16 %70, 1
  %indices.i.i38 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 1
  %71 = ptrtoint ptr %indices.i.i38 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %indices.i.i38, align 2
  %conv7.i.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp1267.not.i.i = icmp eq i16 %72, 0
  %conv31.i.i = zext i16 %add.i.i to i32
  br label %for.cond11.preheader.i.i

for.cond11.preheader.i.i:                         ; preds = %for.end.i.i.for.cond11.preheader.i.i_crit_edge, %for.cond11.preheader.lr.ph.i.i
  %offset.073.i.i = phi i32 [ 0, %for.cond11.preheader.lr.ph.i.i ], [ %add35.i.i, %for.end.i.i.for.cond11.preheader.i.i_crit_edge ]
  %pc.071.i.i = phi i32 [ 0, %for.cond11.preheader.lr.ph.i.i ], [ %inc34.i.i, %for.end.i.i.for.cond11.preheader.i.i_crit_edge ]
  br i1 %cmp1267.not.i.i, label %for.cond11.preheader.i.i.for.end.i.i_crit_edge, label %for.body14.lr.ph.i.i

for.cond11.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body14.lr.ph.i.i:                             ; preds = %for.cond11.preheader.i.i
  %conv18.i.i = trunc i32 %pc.071.i.i to i8
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %for.body14.lr.ph.i.i
  %q_idx.069.i.i = phi i32 [ %pc.071.i.i, %for.body14.lr.ph.i.i ], [ %add32.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ]
  %i.068.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %inc.i.i39, %for.body14.i.i.for.body14.i.i_crit_edge ]
  %conv15.i.i = trunc i32 %q_idx.069.i.i to i8
  %add16.i.i = add nuw nsw i32 %i.068.i.i, %offset.073.i.i
  %arrayidx17.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %add16.i.i
  %73 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx17.i.i, align 4
  %reg_idx.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv15.i.i, ptr %reg_idx.i.i, align 1
  %76 = load ptr, ptr %arrayidx17.i.i, align 4
  %qos_pc.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %qos_pc.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv18.i.i, ptr %qos_pc.i.i, align 2
  %arrayidx24.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %add16.i.i
  %78 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx24.i.i, align 4
  %reg_idx25.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %reg_idx25.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv15.i.i, ptr %reg_idx25.i.i, align 1
  %81 = load ptr, ptr %arrayidx24.i.i, align 4
  %qos_pc30.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %qos_pc30.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv18.i.i, ptr %qos_pc30.i.i, align 2
  %add32.i.i = add nuw i32 %q_idx.069.i.i, %conv31.i.i
  %inc.i.i39 = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i.i40 = icmp eq i32 %inc.i.i39, %conv7.i.i
  br i1 %exitcond.not.i.i40, label %for.body14.i.i.for.end.i.i_crit_edge, label %for.body14.i.i.for.body14.i.i_crit_edge

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i.i

for.body14.i.i.for.end.i.i_crit_edge:             ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body14.i.i.for.end.i.i_crit_edge, %for.cond11.preheader.i.i.for.end.i.i_crit_edge
  %inc34.i.i = add nuw nsw i32 %pc.071.i.i, 1
  %add35.i.i = add nuw nsw i32 %offset.073.i.i, %conv7.i.i
  %exitcond74.not.i.i = icmp eq i32 %inc34.i.i, %conv3.i.i35
  br i1 %exitcond74.not.i.i, label %for.end.i.i.fm10k_assign_rings.exit_crit_edge, label %for.end.i.i.for.cond11.preheader.i.i_crit_edge

for.end.i.i.for.cond11.preheader.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond11.preheader.i.i

for.end.i.i.fm10k_assign_rings.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_assign_rings.exit

if.end.i42:                                       ; preds = %if.end9
  %83 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_rx_queues.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp21.i.i = icmp sgt i32 %84, 0
  br i1 %cmp21.i.i, label %if.end.i42.for.body.i.i44_crit_edge, label %if.end.i42.for.cond1.preheader.i.i_crit_edge

if.end.i42.for.cond1.preheader.i.i_crit_edge:     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i.i

if.end.i42.for.body.i.i44_crit_edge:              ; preds = %if.end.i42
  br label %for.body.i.i44

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i44.for.cond1.preheader.i.i_crit_edge, %if.end.i42.for.cond1.preheader.i.i_crit_edge
  %85 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp223.i.i = icmp sgt i32 %86, 0
  br i1 %cmp223.i.i, label %for.cond1.preheader.i.i.for.body4.i.i_crit_edge, label %for.cond1.preheader.i.i.fm10k_assign_rings.exit_crit_edge

for.cond1.preheader.i.i.fm10k_assign_rings.exit_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_assign_rings.exit

for.cond1.preheader.i.i.for.body4.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body4.i.i

for.body.i.i44:                                   ; preds = %for.body.i.i44.for.body.i.i44_crit_edge, %if.end.i42.for.body.i.i44_crit_edge
  %i.022.i.i = phi i32 [ %inc.i3.i, %for.body.i.i44.for.body.i.i44_crit_edge ], [ 0, %if.end.i42.for.body.i.i44_crit_edge ]
  %conv.i.i = trunc i32 %i.022.i.i to i8
  %arrayidx.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %i.022.i.i
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i, align 4
  %reg_idx.i2.i = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %reg_idx.i2.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i.i, ptr %reg_idx.i2.i, align 1
  %inc.i3.i = add nuw nsw i32 %i.022.i.i, 1
  %90 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_rx_queues.i.i, align 32
  %cmp.i4.i = icmp slt i32 %inc.i3.i, %91
  br i1 %cmp.i4.i, label %for.body.i.i44.for.body.i.i44_crit_edge, label %for.body.i.i44.for.cond1.preheader.i.i_crit_edge

for.body.i.i44.for.cond1.preheader.i.i_crit_edge: ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i.i

for.body.i.i44.for.body.i.i44_crit_edge:          ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i44

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.cond1.preheader.i.i.for.body4.i.i_crit_edge
  %i.124.i.i = phi i32 [ %inc9.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.for.body4.i.i_crit_edge ]
  %conv5.i.i = trunc i32 %i.124.i.i to i8
  %arrayidx6.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.124.i.i
  %92 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx6.i.i, align 4
  %reg_idx7.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %reg_idx7.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv5.i.i, ptr %reg_idx7.i.i, align 1
  %inc9.i.i = add nuw nsw i32 %i.124.i.i, 1
  %95 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_tx_queues.i.i, align 8
  %cmp2.i.i = icmp slt i32 %inc9.i.i, %96
  br i1 %cmp2.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.fm10k_assign_rings.exit_crit_edge

for.body4.i.i.fm10k_assign_rings.exit_crit_edge:  ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_assign_rings.exit

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i.i

fm10k_assign_rings.exit:                          ; preds = %for.body4.i.i.fm10k_assign_rings.exit_crit_edge, %for.cond1.preheader.i.i.fm10k_assign_rings.exit_crit_edge, %for.end.i.i.fm10k_assign_rings.exit_crit_edge
  %97 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %netdev.i.i, align 128
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 15
  %99 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %100, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %fm10k_assign_rings.exit.repopulate_reta.i_crit_edge, label %for.cond.preheader.i45

fm10k_assign_rings.exit.repopulate_reta.i_crit_edge: ; preds = %fm10k_assign_rings.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %repopulate_reta.i

for.cond.preheader.i45:                           ; preds = %fm10k_assign_rings.exit
  %indices.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 1
  %101 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %indices.i, align 2
  %conv.i = zext i16 %102 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i47.for.cond.i_crit_edge, %for.cond.preheader.i45
  %indvars.iv.i = phi i32 [ 32, %for.cond.preheader.i45 ], [ %indvars.iv.next.i, %for.body.i47.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %tobool.not.i46 = icmp eq i32 %indvars.iv.i, 0
  br i1 %tobool.not.i46, label %for.cond.i.cleanup_crit_edge, label %for.body.i47

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i47:                                     ; preds = %for.cond.i
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  %idxprom.i = and i32 %indvars.iv.next.i, 65535
  %arrayidx2.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 56, i32 %idxprom.i
  %103 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx2.i, align 4
  %shl.i = and i32 %104, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %shl.i, %conv.i
  %105 = lshr i32 %104, 8
  %shr5.i = and i32 %105, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %conv.i)
  %cmp7.i = icmp ult i32 %shr5.i, %conv.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp7.i, i1 false
  %106 = lshr i32 %104, 16
  %shr11.i = and i32 %106, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr11.i, i32 %conv.i)
  %cmp13.i = icmp ult i32 %shr11.i, %conv.i
  %or.cond35.i = select i1 %or.cond.i, i1 %cmp13.i, i1 false
  %shr16.i = lshr i32 %104, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr16.i, i32 %conv.i)
  %cmp18.i = icmp ult i32 %shr16.i, %conv.i
  %or.cond36.i = select i1 %or.cond35.i, i1 %cmp18.i, i1 false
  br i1 %or.cond36.i, label %for.body.i47.for.cond.i_crit_edge, label %do.end.i

for.body.i47.for.cond.i_crit_edge:                ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

do.end.i:                                         ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #14
  br label %repopulate_reta.i

repopulate_reta.i:                                ; preds = %do.end.i, %fm10k_assign_rings.exit.repopulate_reta.i_crit_edge
  tail call void @fm10k_write_reta(ptr noundef %interface, ptr noundef null) #11
  br label %cleanup

err_init_msix:                                    ; preds = %do.end6, %do.end
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -12, %do.end6 ]
  %109 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %num_tx_queues.i.i, align 8
  %110 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %num_rx_queues.i.i, align 32
  %num_q_vectors.i51 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %111 = ptrtoint ptr %num_q_vectors.i51 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %num_q_vectors.i51, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_init_msix, %repopulate_reta.i, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_init_msix ], [ 0, %repopulate_reta.i ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_clear_queueing_scheme(ptr nocapture noundef %interface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_q_vectors.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %0 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_q_vectors.i, align 8
  %num_tx_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  %2 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_tx_queues.i.i, align 8
  %num_rx_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %3 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_rx_queues.i.i, align 32
  store i32 0, ptr %num_q_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not4.i = icmp eq i32 %1, 0
  br i1 %tobool.not4.i, label %entry.fm10k_free_q_vectors.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.fm10k_free_q_vectors.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_free_q_vectors.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %v_idx.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %v_idx.05.i, -1
  tail call fastcc void @fm10k_free_q_vector(ptr noundef %interface, i32 noundef %dec.i) #11
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.fm10k_free_q_vectors.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.fm10k_free_q_vectors.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_free_q_vectors.exit

fm10k_free_q_vectors.exit:                        ; preds = %while.body.i.fm10k_free_q_vectors.exit_crit_edge, %entry.fm10k_free_q_vectors.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %5) #11
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %6 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_entries.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %msix_entries.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_register_pci_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fm10k_maybe_stop_tx(ptr nocapture noundef %tx_ring, i16 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %queue_index = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 10
  %2 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %queue_index, align 8
  %conv.i = zext i8 %3 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %next_to_clean.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 17
  %6 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 16
  %8 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_use.i, align 2
  %10 = xor i16 %9, -1
  %sub2.i = add i16 %7, %10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i)
  %cmp.i = icmp slt i16 %sub2.i, 0
  br i1 %cmp.i, label %cond.true.i, label %entry.fm10k_desc_unused.exit_crit_edge, !prof !100

entry.fm10k_desc_unused.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_desc_unused.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %count.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count.i, align 2
  %add.i = add i16 %12, %sub2.i
  br label %fm10k_desc_unused.exit

fm10k_desc_unused.exit:                           ; preds = %cond.true.i, %entry.fm10k_desc_unused.exit_crit_edge
  %cond.i = phi i16 [ %add.i, %cond.true.i ], [ %sub2.i, %entry.fm10k_desc_unused.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.i, i16 %size)
  %cmp = icmp ult i16 %cond.i, %size
  br i1 %cmp, label %fm10k_desc_unused.exit.return_crit_edge, label %if.end, !prof !100

fm10k_desc_unused.exit.return_crit_edge:          ; preds = %fm10k_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %fm10k_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %15 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %queue_index, align 8
  %conv.i15 = zext i8 %16 to i32
  %_tx.i.i16 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i16, align 128
  %state.i.i17 = getelementptr %struct.netdev_queue, ptr %18, i32 %conv.i15, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i17) #11
  %19 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 20
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %19, align 8
  br label %return

return:                                           ; preds = %if.end, %fm10k_desc_unused.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %fm10k_desc_unused.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_unmap_and_free_tx_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_alloc_q_vector(ptr noundef %interface, i32 noundef %v_count, i32 noundef %v_idx, i32 noundef %txr_count, i32 noundef %txr_idx, i32 noundef %rxr_count, i32 noundef %rxr_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %rxr_count, %txr_count
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 256) #11
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 384) #11
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 128
  %napi = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 5
  tail call void @netif_napi_add(ptr noundef %4, ptr noundef %napi, ptr noundef nonnull @fm10k_poll, i32 noundef 64) #11
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %v_idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %interface, ptr %call9.i.i, align 128
  %conv = trunc i32 %v_idx to i16
  %v_idx4 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %v_idx4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %v_idx4, align 8
  %ring5 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 11
  %tx = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ring5, ptr %tx, align 32
  %work_limit = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %work_limit, align 4
  %tx_itr = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 8
  %10 = ptrtoint ptr %tx_itr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_itr, align 4
  %itr = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %itr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %itr, align 2
  %itr_scale = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 11
  %13 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %itr_scale, align 4
  %itr_scale10 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %itr_scale10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %itr_scale10, align 16
  %conv11 = trunc i32 %txr_count to i8
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txr_count)
  %tobool13.not147 = icmp eq i32 %txr_count, 0
  br i1 %tobool13.not147, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %tx_ring_count = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 46
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %txr_count.addr.0150 = phi i32 [ %txr_count, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %ring.0149 = phi ptr [ %ring5, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %txr_idx.addr.0148 = phi i32 [ %txr_idx, %while.body.lr.ph ], [ %add21, %while.body.while.body_crit_edge ]
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %dev14 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.0149, i32 0, i32 2
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev14, align 8
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 128
  %netdev16 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.0149, i32 0, i32 1
  %22 = ptrtoint ptr %netdev16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %netdev16, align 4
  %23 = ptrtoint ptr %ring.0149 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %ring.0149, align 128
  %24 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_ring_count, align 2
  %count18 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.0149, i32 0, i32 14
  %26 = ptrtoint ptr %count18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %count18, align 2
  %conv19 = trunc i32 %txr_idx.addr.0148 to i8
  %queue_index = getelementptr inbounds %struct.fm10k_ring, ptr %ring.0149, i32 0, i32 10
  %27 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv19, ptr %queue_index, align 8
  %arrayidx20 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %txr_idx.addr.0148
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ring.0149, ptr %arrayidx20, align 4
  %dec = add i32 %txr_count.addr.0150, -1
  %add21 = add i32 %txr_idx.addr.0148, %v_count
  %incdec.ptr = getelementptr %struct.fm10k_ring, ptr %ring.0149, i32 1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %ring.0.lcssa = phi ptr [ %ring5, %if.end.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %rx = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ring.0.lcssa, ptr %rx, align 4
  %rx_itr = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 10
  %30 = ptrtoint ptr %rx_itr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_itr, align 4
  %itr24 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %itr24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %itr24, align 2
  %33 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %itr_scale, align 4
  %itr_scale29 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %itr_scale29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %itr_scale29, align 4
  %conv30 = trunc i32 %rxr_count to i8
  %count32 = getelementptr inbounds %struct.fm10k_q_vector, ptr %call9.i.i, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %count32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv30, ptr %count32, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxr_count)
  %tobool34.not151 = icmp eq i32 %rxr_count, 0
  br i1 %tobool34.not151, label %while.end.while.end84_crit_edge, label %while.body35.lr.ph

while.end.while.end84_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end84

while.body35.lr.ph:                               ; preds = %while.end
  %pdev36 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %l2_accel = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 2
  %rx_ring_count = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 47
  br label %while.body35

while.body35:                                     ; preds = %while.body35.while.body35_crit_edge, %while.body35.lr.ph
  %ring.1154 = phi ptr [ %ring.0.lcssa, %while.body35.lr.ph ], [ %incdec.ptr83, %while.body35.while.body35_crit_edge ]
  %rxr_idx.addr.0153 = phi i32 [ %rxr_idx, %while.body35.lr.ph ], [ %add82, %while.body35.while.body35_crit_edge ]
  %rxr_count.addr.0152 = phi i32 [ %rxr_count, %while.body35.lr.ph ], [ %dec81, %while.body35.while.body35_crit_edge ]
  %37 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %dev38 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.1154, i32 0, i32 2
  %39 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev37, ptr %dev38, align 8
  %40 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev, align 128
  %netdev40 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.1154, i32 0, i32 1
  %42 = ptrtoint ptr %netdev40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %netdev40, align 4
  %43 = ptrtoint ptr %l2_accel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %l2_accel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  %l2_accel64 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.1154, i32 0, i32 3
  %45 = ptrtoint ptr %l2_accel64 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %l2_accel64, align 4
  %46 = ptrtoint ptr %ring.1154 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %ring.1154, align 128
  %47 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_ring_count, align 8
  %count77 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.1154, i32 0, i32 14
  %49 = ptrtoint ptr %count77 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %count77, align 2
  %conv78 = trunc i32 %rxr_idx.addr.0153 to i8
  %queue_index79 = getelementptr inbounds %struct.fm10k_ring, ptr %ring.1154, i32 0, i32 10
  %50 = ptrtoint ptr %queue_index79 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv78, ptr %queue_index79, align 8
  %arrayidx80 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %rxr_idx.addr.0153
  %51 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ring.1154, ptr %arrayidx80, align 4
  %dec81 = add i32 %rxr_count.addr.0152, -1
  %add82 = add i32 %rxr_idx.addr.0153, %v_count
  %incdec.ptr83 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 1
  %tobool34.not = icmp eq i32 %dec81, 0
  br i1 %tobool34.not, label %while.body35.while.end84_crit_edge, label %while.body35.while.body35_crit_edge

while.body35.while.body35_crit_edge:              ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body35

while.body35.while.end84_crit_edge:               ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end84

while.end84:                                      ; preds = %while.body35.while.end84_crit_edge, %while.end.while.end84_crit_edge
  tail call void @fm10k_dbg_q_vector_init(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end84 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_free_q_vector(ptr nocapture noundef %interface, i32 noundef %v_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %v_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @fm10k_dbg_q_vector_exit(ptr noundef %1) #11
  %tx = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 32
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx4 = getelementptr %struct.fm10k_ring, ptr %3, i32 %idxprom
  %incdec.ptr45 = getelementptr %struct.fm10k_ring, ptr %arrayidx4, i32 -1
  %cmp.not46 = icmp ult ptr %incdec.ptr45, %3
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %incdec.ptr48 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %incdec.ptr45, %entry.for.body_crit_edge ]
  %ring.047 = phi ptr [ %incdec.ptr48, %for.body.for.body_crit_edge ], [ %arrayidx4, %entry.for.body_crit_edge ]
  %queue_index = getelementptr %struct.fm10k_ring, ptr %ring.047, i32 -1, i32 10
  %6 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %queue_index, align 8
  %idxprom7 = zext i8 %7 to i32
  %arrayidx8 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %idxprom7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx8, align 4
  %incdec.ptr = getelementptr %struct.fm10k_ring, ptr %incdec.ptr48, i32 -1
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx, align 32
  %cmp.not = icmp ult ptr %incdec.ptr, %10
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx, align 4
  %count11 = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %count11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %count11, align 1
  %idxprom12 = zext i8 %14 to i32
  %arrayidx13 = getelementptr %struct.fm10k_ring, ptr %12, i32 %idxprom12
  %incdec.ptr1549 = getelementptr %struct.fm10k_ring, ptr %arrayidx13, i32 -1
  %cmp18.not50 = icmp ult ptr %incdec.ptr1549, %12
  br i1 %cmp18.not50, label %for.end.for.end23_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end23

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %incdec.ptr1552 = phi ptr [ %incdec.ptr15, %for.body19.for.body19_crit_edge ], [ %incdec.ptr1549, %for.end.for.body19_crit_edge ]
  %ring.151 = phi ptr [ %incdec.ptr1552, %for.body19.for.body19_crit_edge ], [ %arrayidx13, %for.end.for.body19_crit_edge ]
  %queue_index20 = getelementptr %struct.fm10k_ring, ptr %ring.151, i32 -1, i32 10
  %15 = ptrtoint ptr %queue_index20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %queue_index20, align 8
  %idxprom21 = zext i8 %16 to i32
  %arrayidx22 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %idxprom21
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx22, align 4
  %incdec.ptr15 = getelementptr %struct.fm10k_ring, ptr %incdec.ptr1552, i32 -1
  %18 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx, align 4
  %cmp18.not = icmp ult ptr %incdec.ptr15, %19
  br i1 %cmp18.not, label %for.body19.for.end23_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.body19.for.end23_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end23

for.end23:                                        ; preds = %for.body19.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %napi = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 5
  tail call void @__netif_napi_del(ptr noundef %napi) #11
  tail call void @synchronize_net() #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end23.if.end_crit_edge, label %do.end

for.end23.if.end_crit_edge:                       ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr inbounds %struct.fm10k_q_vector, ptr %1, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 316 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end23.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -56
  %tx = getelementptr i8, ptr %napi, i32 -24
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 32
  %count = getelementptr i8, ptr %napi, i32 -7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.fm10k_ring, ptr %1, i32 %idxprom
  %incdec.ptr144 = getelementptr %struct.fm10k_ring, ptr %arrayidx, i32 -1
  %cmp.not145 = icmp ult ptr %incdec.ptr144, %1
  br i1 %cmp.not145, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %work_limit.i = getelementptr i8, ptr %napi, i32 -12
  %total_bytes82.i = getelementptr i8, ptr %napi, i32 -20
  %total_packets85.i = getelementptr i8, ptr %napi, i32 -16
  br label %for.body

for.body:                                         ; preds = %fm10k_clean_tx_irq.exit.for.body_crit_edge, %for.body.lr.ph
  %incdec.ptr149 = phi ptr [ %incdec.ptr144, %for.body.lr.ph ], [ %incdec.ptr, %fm10k_clean_tx_irq.exit.for.body_crit_edge ]
  %ring.0147 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr149, %fm10k_clean_tx_irq.exit.for.body_crit_edge ]
  %clean_complete.0.off0146 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %fm10k_clean_tx_irq.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %6 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %work_limit.i, align 4
  %next_to_clean.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 17
  %8 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_clean.i, align 4
  %state.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.fm10k_clean_tx_irq.exit_crit_edge

for.body.fm10k_clean_tx_irq.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_clean_tx_irq.exit

if.end.i:                                         ; preds = %for.body
  %conv2.i = zext i16 %9 to i32
  %conv.i = zext i16 %7 to i32
  %13 = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %arrayidx.i = getelementptr %struct.fm10k_tx_buffer, ptr %15, i32 %conv2.i
  %desc.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 4
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i, align 16
  %arrayidx3.i = getelementptr %struct.fm10k_tx_desc, ptr %17, i32 %conv2.i
  %count.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 14
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count.i, align 2
  %conv4.i = zext i16 %19 to i32
  %sub.i = sub nsw i32 %conv2.i, %conv4.i
  %dev.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end.i
  %tx_buffer.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %tx_buffer.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_desc.0.i = phi ptr [ %arrayidx3.i, %if.end.i ], [ %tx_desc.3.i, %cleanup.i.do.body.i_crit_edge ]
  %total_bytes.0.i = phi i32 [ 0, %if.end.i ], [ %add.i, %cleanup.i.do.body.i_crit_edge ]
  %total_packets.0.i = phi i32 [ 0, %if.end.i ], [ %add18.i, %cleanup.i.do.body.i_crit_edge ]
  %budget.0.i = phi i32 [ %conv.i, %if.end.i ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ %sub.i, %if.end.i ], [ %i.3.i, %cleanup.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %tx_buffer.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_buffer.0.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %do.body.i.do.end69.i_crit_edge, label %do.end.i

do.body.i.do.end69.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %flags.i = getelementptr inbounds %struct.fm10k_tx_desc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool13.not.i = icmp sgt i8 %23, -1
  br i1 %tobool13.not.i, label %do.end.i.do.end69.i_crit_edge, label %if.end15.i

do.end.i.do.end69.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

if.end15.i:                                       ; preds = %do.end.i
  %24 = ptrtoint ptr %tx_buffer.0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tx_buffer.0.i, align 4
  %bytecount.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytecount.i, align 4
  %add.i = add i32 %26, %total_bytes.0.i
  %gso_segs.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %gso_segs.i, align 4
  %conv17.i = zext i16 %28 to i32
  %add18.i = add i32 %total_packets.0.i, %conv17.i
  %skb.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb.i, align 4
  tail call void @napi_consume_skb(ptr noundef %30, i32 noundef %budget) #11
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0.i, i32 0, i32 5
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.0.i, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 0) #11
  %37 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %skb.i, align 4
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %len.i, align 4
  %cmp.not304.i = icmp eq ptr %tx_desc.0.i, %21
  br i1 %cmp.not304.i, label %if.end15.i.while.end.i_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  br label %while.body.i

if.end15.i.while.end.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end41.i.while.body.i_crit_edge, %if.end15.i.while.body.i_crit_edge
  %i.1307.i = phi i32 [ %i.2.i, %if.end41.i.while.body.i_crit_edge ], [ %i.0.i, %if.end15.i.while.body.i_crit_edge ]
  %tx_desc.1306.i = phi ptr [ %tx_desc.2.i, %if.end41.i.while.body.i_crit_edge ], [ %tx_desc.0.i, %if.end15.i.while.body.i_crit_edge ]
  %tx_buffer.1305.i = phi ptr [ %tx_buffer.2.i, %if.end41.i.while.body.i_crit_edge ], [ %tx_buffer.0.i, %if.end15.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.fm10k_tx_buffer, ptr %tx_buffer.1305.i, i32 1
  %incdec.ptr22.i = getelementptr %struct.fm10k_tx_desc, ptr %tx_desc.1306.i, i32 1
  %inc.i = add i32 %i.1307.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool23.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool23.not.i, label %if.then27.i, label %while.body.i.if.end33.i_crit_edge, !prof !95

while.body.i.if.end33.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count.i, align 2
  %conv29.i = zext i16 %40 to i32
  %sub30.i = sub nsw i32 0, %conv29.i
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %13, align 4
  %43 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc.i, align 16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %while.body.i.if.end33.i_crit_edge
  %tx_buffer.2.i = phi ptr [ %42, %if.then27.i ], [ %incdec.ptr.i, %while.body.i.if.end33.i_crit_edge ]
  %tx_desc.2.i = phi ptr [ %44, %if.then27.i ], [ %incdec.ptr22.i, %while.body.i.if.end33.i_crit_edge ]
  %i.2.i = phi i32 [ %sub30.i, %if.then27.i ], [ %inc.i, %while.body.i.if.end33.i_crit_edge ]
  %len34.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.2.i, i32 0, i32 6
  %45 = ptrtoint ptr %len34.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool35.not.i = icmp eq i32 %46, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end41.i_crit_edge, label %if.then36.i

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  %dma38.i = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer.2.i, i32 0, i32 5
  %49 = ptrtoint ptr %dma38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma38.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %50, i32 noundef %46, i32 noundef 1, i32 noundef 0) #11
  %51 = ptrtoint ptr %len34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %len34.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end41.i_crit_edge
  %cmp.not.i = icmp eq ptr %tx_desc.2.i, %21
  br i1 %cmp.not.i, label %if.end41.i.while.end.i_crit_edge, label %if.end41.i.while.body.i_crit_edge

if.end41.i.while.body.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end41.i.while.end.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end41.i.while.end.i_crit_edge, %if.end15.i.while.end.i_crit_edge
  %tx_buffer.1.lcssa.i = phi ptr [ %tx_buffer.0.i, %if.end15.i.while.end.i_crit_edge ], [ %tx_buffer.2.i, %if.end41.i.while.end.i_crit_edge ]
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.0.i, %if.end15.i.while.end.i_crit_edge ], [ %21, %if.end41.i.while.end.i_crit_edge ]
  %i.1.lcssa.i = phi i32 [ %i.0.i, %if.end15.i.while.end.i_crit_edge ], [ %i.2.i, %if.end41.i.while.end.i_crit_edge ]
  %incdec.ptr42.i = getelementptr %struct.fm10k_tx_buffer, ptr %tx_buffer.1.lcssa.i, i32 1
  %incdec.ptr43.i = getelementptr %struct.fm10k_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc44.i = add i32 %i.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc44.i)
  %tobool45.not.i = icmp eq i32 %inc44.i, 0
  br i1 %tobool45.not.i, label %if.then54.i, label %while.end.i.cleanup.i_crit_edge, !prof !95

while.end.i.cleanup.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then54.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count.i, align 2
  %conv56.i = zext i16 %53 to i32
  %sub57.i = sub nsw i32 0, %conv56.i
  %54 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %13, align 4
  %56 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc.i, align 16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then54.i, %while.end.i.cleanup.i_crit_edge
  %tx_buffer.3.i = phi ptr [ %55, %if.then54.i ], [ %incdec.ptr42.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_desc.3.i = phi ptr [ %57, %if.then54.i ], [ %incdec.ptr43.i, %while.end.i.cleanup.i_crit_edge ]
  %i.3.i = phi i32 [ %sub57.i, %if.then54.i ], [ %inc44.i, %while.end.i.cleanup.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.3.i) #11, !srcloc !110
  %dec.i = add i32 %budget.0.i, -1
  %tobool62.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool62.not.i, label %cleanup.i.do.end69.i_crit_edge, label %cleanup.i.do.body.i_crit_edge, !prof !111

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

cleanup.i.do.end69.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

do.end69.i:                                       ; preds = %cleanup.i.do.end69.i_crit_edge, %do.end.i.do.end69.i_crit_edge, %do.body.i.do.end69.i_crit_edge
  %i.4302.i = phi i32 [ %i.3.i, %cleanup.i.do.end69.i_crit_edge ], [ %i.0.i, %do.body.i.do.end69.i_crit_edge ], [ %i.0.i, %do.end.i.do.end69.i_crit_edge ]
  %budget.1301.i = phi i32 [ 0, %cleanup.i.do.end69.i_crit_edge ], [ %budget.0.i, %do.body.i.do.end69.i_crit_edge ], [ %budget.0.i, %do.end.i.do.end69.i_crit_edge ]
  %total_packets.1300.i = phi i32 [ %add18.i, %cleanup.i.do.end69.i_crit_edge ], [ %total_packets.0.i, %do.body.i.do.end69.i_crit_edge ], [ %total_packets.0.i, %do.end.i.do.end69.i_crit_edge ]
  %total_bytes.1299.i = phi i32 [ %add.i, %cleanup.i.do.end69.i_crit_edge ], [ %total_bytes.0.i, %do.body.i.do.end69.i_crit_edge ], [ %total_bytes.0.i, %do.end.i.do.end69.i_crit_edge ]
  %58 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count.i, align 2
  %conv71.i = zext i16 %59 to i32
  %add72.i = add i32 %i.4302.i, %conv71.i
  %conv73.i = trunc i32 %add72.i to i16
  %60 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv73.i, ptr %next_to_clean.i, align 4
  %syncp.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 19
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #11
  %conv75.i = zext i32 %total_bytes.1299.i to i64
  %stats.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 18
  %bytes.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 18, i32 1
  %61 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bytes.i, align 8
  %add76.i = add i64 %62, %conv75.i
  store i64 %add76.i, ptr %bytes.i, align 8
  %conv77.i = zext i32 %total_packets.1300.i to i64
  %63 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %stats.i, align 8
  %add79.i = add i64 %64, %conv77.i
  store i64 %add79.i, ptr %stats.i, align 8
  %dep_map.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 19, i32 0, i32 1
  %65 = tail call ptr @llvm.returnaddress(i32 0) #11
  %66 = ptrtoint ptr %65 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %66) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %67 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %69 = ptrtoint ptr %total_bytes82.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %total_bytes82.i, align 4
  %add83.i = add i32 %70, %total_bytes.1299.i
  store i32 %add83.i, ptr %total_bytes82.i, align 4
  %71 = ptrtoint ptr %total_packets85.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %total_packets85.i, align 8
  %add86.i = add i32 %72, %total_packets.1300.i
  store i32 %add86.i, ptr %total_packets85.i, align 8
  %state87.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 7
  %73 = ptrtoint ptr %state87.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %state87.i, align 4
  %and1.i270.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i270.i)
  %tobool90.not.i = icmp eq i32 %and1.i270.i, 0
  br i1 %tobool90.not.i, label %do.end69.i.if.end130.i_crit_edge, label %land.lhs.true.i

do.end69.i.if.end130.i_crit_edge:                 ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130.i

land.lhs.true.i:                                  ; preds = %do.end69.i
  %75 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %stats.i, align 8
  %tx_done_old1.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 20, i32 0, i32 0, i32 3
  %77 = ptrtoint ptr %tx_done_old1.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tx_done_old1.i.i, align 8
  %79 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %next_to_clean.i, align 4
  %conv.i.i.i = zext i16 %80 to i32
  %next_to_use.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 16
  %81 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %next_to_use.i.i.i, align 2
  %conv5.i.i.i = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp.not.i.i.i = icmp ugt i16 %80, %82
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %land.lhs.true.i.fm10k_get_tx_pending.exit.i.i_crit_edge

land.lhs.true.i.fm10k_get_tx_pending.exit.i.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_get_tx_pending.exit.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %count.i, align 2
  %conv13.i.i.i = zext i16 %84 to i32
  %add14.i.i.i = add nuw nsw i32 %conv13.i.i.i, %conv5.i.i.i
  br label %fm10k_get_tx_pending.exit.i.i

fm10k_get_tx_pending.exit.i.i:                    ; preds = %cond.false.i.i.i, %land.lhs.true.i.fm10k_get_tx_pending.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %add14.i.i.i, %cond.false.i.i.i ], [ %conv5.i.i.i, %land.lhs.true.i.fm10k_get_tx_pending.exit.i.i_crit_edge ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state87.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %conv.i.i.i)
  %tobool.not.i.i = icmp ne i32 %cond.i.i.i, %conv.i.i.i
  %conv.i.i = trunc i64 %76 to i32
  %conv2.i.i = trunc i64 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %conv2.i.i, %conv.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.not.i.i, i1 false
  br i1 %or.cond.i.i, label %fm10k_check_tx_hang.exit.i, label %fm10k_check_tx_hang.exit.thread.i

fm10k_check_tx_hang.exit.thread.i:                ; preds = %fm10k_get_tx_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i.i = and i64 %76, 4294967295
  %85 = ptrtoint ptr %tx_done_old1.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv6.i.i, ptr %tx_done_old1.i.i, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state87.i) #11
  br label %if.end130.i

fm10k_check_tx_hang.exit.i:                       ; preds = %fm10k_get_tx_pending.exit.i.i
  %call12.i.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state87.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.i.not.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.i.not.i, label %fm10k_check_tx_hang.exit.i.if.end130.i_crit_edge, label %if.then93.i

fm10k_check_tx_hang.exit.i.if.end130.i_crit_edge: ; preds = %fm10k_check_tx_hang.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130.i

if.then93.i:                                      ; preds = %fm10k_check_tx_hang.exit.i
  %msg_enable.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 45
  %86 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %msg_enable.i, align 4
  %88 = and i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool98.not.i = icmp eq i16 %88, 0
  br i1 %tobool98.not.i, label %if.then93.i.do.end112.i_crit_edge, label %if.then99.i

if.then93.i.do.end112.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end112.i

if.then99.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw94.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 41
  %netdev.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 1
  %89 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %netdev.i, align 4
  %queue_index.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 10
  %91 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %queue_index.i, align 8
  %conv100.i = zext i8 %92 to i32
  %reg_idx.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 11
  %93 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %reg_idx.i, align 1
  %conv101.i = zext i8 %94 to i32
  %mul.i = shl nuw nsw i32 %conv101.i, 6
  %add102.i = or i32 %mul.i, 32772
  %call103.i = tail call i32 @fm10k_read_reg(ptr noundef %hw94.i, i32 noundef %add102.i) #11
  %95 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %reg_idx.i, align 1
  %conv105.i = zext i8 %96 to i32
  %mul106.i = shl nuw nsw i32 %conv105.i, 6
  %add107.i = or i32 %mul106.i, 32773
  %call108.i = tail call i32 @fm10k_read_reg(ptr noundef %hw94.i, i32 noundef %add107.i) #11
  %97 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %next_to_use.i.i.i, align 2
  %conv109.i = zext i16 %98 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str.27, i32 noundef %conv100.i, i32 noundef %call103.i, i32 noundef %call108.i, i32 noundef %conv109.i, i32 noundef %add72.i) #14
  br label %do.end112.i

do.end112.i:                                      ; preds = %if.then99.i, %if.then93.i.do.end112.i_crit_edge
  %netdev113.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 1
  %99 = ptrtoint ptr %netdev113.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev113.i, align 4
  %queue_index114.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 10
  %101 = ptrtoint ptr %queue_index114.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %queue_index114.i, align 8
  %conv.i273.i = zext i8 %102 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %104, i32 %conv.i273.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  %105 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %msg_enable.i, align 4
  %107 = and i16 %106, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool120.not.i = icmp eq i16 %107, 0
  br i1 %tobool120.not.i, label %do.end112.i.do.end128.i_crit_edge, label %if.then121.i

do.end112.i.do.end128.i_crit_edge:                ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end128.i

if.then121.i:                                     ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %netdev113.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev113.i, align 4
  %tx_timeout_count.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 33
  %110 = ptrtoint ptr %tx_timeout_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_timeout_count.i, align 32
  %add123.i = add i32 %111, 1
  %112 = ptrtoint ptr %queue_index114.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %queue_index114.i, align 8
  %conv125.i = zext i8 %113 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %109, ptr noundef nonnull @.str.28, i32 noundef %add123.i, i32 noundef %conv125.i) #14
  br label %do.end128.i

do.end128.i:                                      ; preds = %if.then121.i, %do.end112.i.do.end128.i_crit_edge
  %114 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %state.i, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i275.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i275.i, label %if.then.i276.i, label %do.end128.i.fm10k_clean_tx_irq.exit_crit_edge

do.end128.i.fm10k_clean_tx_irq.exit_crit_edge:    ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_clean_tx_irq.exit

if.then.i276.i:                                   ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_timeout_count.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 33
  %117 = ptrtoint ptr %tx_timeout_count.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_timeout_count.i.i, align 32
  %inc.i.i = add i32 %118, 1
  store i32 %inc.i.i, ptr %tx_timeout_count.i.i, align 32
  %flags.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #11
  tail call void @fm10k_service_event_schedule(ptr noundef %5) #11
  br label %fm10k_clean_tx_irq.exit

if.end130.i:                                      ; preds = %fm10k_check_tx_hang.exit.i.if.end130.i_crit_edge, %fm10k_check_tx_hang.exit.thread.i, %do.end69.i.if.end130.i_crit_edge
  %netdev.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 1
  %119 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 103
  %121 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %_tx.i.i, align 128
  %queue_index.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 10
  %123 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %queue_index.i.i, align 8
  %idxprom.i.i = zext i8 %124 to i32
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %122, i32 %idxprom.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1299.i)
  %tobool.not.i278.i = icmp eq i32 %total_bytes.1299.i, 0
  br i1 %tobool.not.i278.i, label %if.end130.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end.i279.i, !prof !95

if.end130.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit.i

if.end.i279.i:                                    ; preds = %if.end130.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %122, i32 %idxprom.i.i, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %total_bytes.1299.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !113
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %122, i32 %idxprom.i.i, i32 15, i32 1
  %125 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %127 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %126, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i279.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end14.i.i, !prof !95

if.end.i279.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end.i279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end.i279.i
  %state.i280.i = getelementptr %struct.netdev_queue, ptr %122, i32 %idxprom.i.i, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i280.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i) #11
  br label %netdev_tx_completed_queue.exit.i

netdev_tx_completed_queue.exit.i:                 ; preds = %if.then17.i.i, %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end.i279.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end130.i.netdev_tx_completed_queue.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_packets.1300.i)
  %tobool132.not.i = icmp eq i32 %total_packets.1300.i, 0
  br i1 %tobool132.not.i, label %netdev_tx_completed_queue.exit.i.if.end170.i_crit_edge, label %land.lhs.true133.i

netdev_tx_completed_queue.exit.i.if.end170.i_crit_edge: ; preds = %netdev_tx_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

land.lhs.true133.i:                               ; preds = %netdev_tx_completed_queue.exit.i
  %129 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %netdev.i.i, align 4
  %state.i281.i = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %state.i281.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state.i281.i, align 4
  %133 = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i282.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i282.i, label %land.rhs.i, label %land.lhs.true133.i.if.end170.i_crit_edge

land.lhs.true133.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

land.rhs.i:                                       ; preds = %land.lhs.true133.i
  %134 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %next_to_clean.i, align 4
  %next_to_use.i.i = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 16
  %136 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %next_to_use.i.i, align 2
  %138 = xor i16 %137, -1
  %sub2.i.i = add i16 %135, %138
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i.i)
  %cmp.i283.i = icmp slt i16 %sub2.i.i, 0
  br i1 %cmp.i283.i, label %cond.true.i.i, label %land.rhs.i.fm10k_desc_unused.exit.i_crit_edge, !prof !100

land.rhs.i.fm10k_desc_unused.exit.i_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_desc_unused.exit.i

cond.true.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %count.i, align 2
  %add.i.i = add i16 %140, %sub2.i.i
  br label %fm10k_desc_unused.exit.i

fm10k_desc_unused.exit.i:                         ; preds = %cond.true.i.i, %land.rhs.i.fm10k_desc_unused.exit.i_crit_edge
  %cond.i.i = phi i16 [ %add.i.i, %cond.true.i.i ], [ %sub2.i.i, %land.rhs.i.fm10k_desc_unused.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %cond.i.i)
  %cmp139.i = icmp ugt i16 %cond.i.i, 41
  br i1 %cmp139.i, label %do.end151.i, label %fm10k_desc_unused.exit.i.if.end170.i_crit_edge, !prof !95

fm10k_desc_unused.exit.i.if.end170.i_crit_edge:   ; preds = %fm10k_desc_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

do.end151.i:                                      ; preds = %fm10k_desc_unused.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  %141 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %netdev.i.i, align 4
  %143 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %queue_index.i.i, align 8
  %conv.i284.i = zext i8 %144 to i32
  %_tx.i.i285.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 103
  %145 = ptrtoint ptr %_tx.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %_tx.i.i285.i, align 128
  %state.i.i286.i = getelementptr %struct.netdev_queue, ptr %146, i32 %conv.i284.i, i32 13
  %147 = ptrtoint ptr %state.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %state.i.i286.i, align 4
  %and1.i.i.i.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end151.i.if.end170.i_crit_edge, label %land.lhs.true159.i

do.end151.i.if.end170.i_crit_edge:                ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

land.lhs.true159.i:                               ; preds = %do.end151.i
  %149 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %state.i, align 4
  %151 = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool163.not.i = icmp eq i32 %151, 0
  br i1 %tobool163.not.i, label %if.then164.i, label %land.lhs.true159.i.if.end170.i_crit_edge

land.lhs.true159.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

if.then164.i:                                     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %146, i32 %conv.i284.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #11
  %152 = getelementptr %struct.fm10k_ring, ptr %ring.0147, i32 -1, i32 20
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %152, align 8
  %inc168.i = add i64 %154, 1
  store i64 %inc168.i, ptr %152, align 8
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then164.i, %land.lhs.true159.i.if.end170.i_crit_edge, %do.end151.i.if.end170.i_crit_edge, %fm10k_desc_unused.exit.i.if.end170.i_crit_edge, %land.lhs.true133.i.if.end170.i_crit_edge, %netdev_tx_completed_queue.exit.i.if.end170.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1301.i)
  %tobool171.i = icmp ne i32 %budget.1301.i, 0
  br label %fm10k_clean_tx_irq.exit

fm10k_clean_tx_irq.exit:                          ; preds = %if.end170.i, %if.then.i276.i, %do.end128.i.fm10k_clean_tx_irq.exit_crit_edge, %for.body.fm10k_clean_tx_irq.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool171.i, %if.end170.i ], [ true, %for.body.fm10k_clean_tx_irq.exit_crit_edge ], [ true, %do.end128.i.fm10k_clean_tx_irq.exit_crit_edge ], [ true, %if.then.i276.i ]
  %spec.select = select i1 %retval.0.i, i1 %clean_complete.0.off0146, i1 false
  %incdec.ptr = getelementptr %struct.fm10k_ring, ptr %incdec.ptr149, i32 -1
  %155 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx, align 32
  %cmp.not = icmp ult ptr %incdec.ptr, %156
  br i1 %cmp.not, label %fm10k_clean_tx_irq.exit.for.end_crit_edge, label %fm10k_clean_tx_irq.exit.for.body_crit_edge

fm10k_clean_tx_irq.exit.for.body_crit_edge:       ; preds = %fm10k_clean_tx_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

fm10k_clean_tx_irq.exit.for.end_crit_edge:        ; preds = %fm10k_clean_tx_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %fm10k_clean_tx_irq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %clean_complete.0.off0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %spec.select, %fm10k_clean_tx_irq.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp5 = icmp slt i32 %budget, 1
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %rx = getelementptr i8, ptr %napi, i32 -44
  %count8 = getelementptr i8, ptr %napi, i32 -27
  %157 = ptrtoint ptr %count8 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %count8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %158)
  %cmp9 = icmp ugt i8 %158, 1
  %conv = zext i8 %158 to i32
  br i1 %cmp9, label %if.then11, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %div127 = udiv i32 %budget, %conv
  %159 = tail call i32 @llvm.umax.i32(i32 %div127, i32 1)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end7.if.end18_crit_edge
  %per_ring_budget.0 = phi i32 [ %159, %if.then11 ], [ %budget, %if.end7.if.end18_crit_edge ]
  %160 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rx, align 4
  %arrayidx24 = getelementptr %struct.fm10k_ring, ptr %161, i32 %conv
  %incdec.ptr26150 = getelementptr %struct.fm10k_ring, ptr %arrayidx24, i32 -1
  %cmp29.not151 = icmp ult ptr %incdec.ptr26150, %161
  br i1 %cmp29.not151, label %if.end18.for.end37_crit_edge, label %for.body31.lr.ph

if.end18.for.end37_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end37

for.body31.lr.ph:                                 ; preds = %if.end18
  %total_packets27.i = getelementptr i8, ptr %napi, i32 -36
  %total_bytes30.i = getelementptr i8, ptr %napi, i32 -40
  br label %for.body31

for.body31:                                       ; preds = %fm10k_clean_rx_irq.exit.for.body31_crit_edge, %for.body31.lr.ph
  %incdec.ptr26158 = phi ptr [ %incdec.ptr26150, %for.body31.lr.ph ], [ %incdec.ptr26, %fm10k_clean_rx_irq.exit.for.body31_crit_edge ]
  %ring.1154 = phi ptr [ %arrayidx24, %for.body31.lr.ph ], [ %incdec.ptr26158, %fm10k_clean_rx_irq.exit.for.body31_crit_edge ]
  %clean_complete.2.off0153 = phi i1 [ %clean_complete.0.off0.lcssa, %for.body31.lr.ph ], [ %spec.select88, %fm10k_clean_rx_irq.exit.for.body31_crit_edge ]
  %work_done.0152 = phi i32 [ 0, %for.body31.lr.ph ], [ %add, %fm10k_clean_rx_irq.exit.for.body31_crit_edge ]
  %skb1.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 1
  %162 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %skb1.i, align 8
  %next_to_clean.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 17
  %164 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i89 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 16
  %166 = ptrtoint ptr %next_to_use.i.i89 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %next_to_use.i.i89, align 2
  %168 = xor i16 %167, -1
  %sub2.i.i90 = add i16 %165, %168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i.i90)
  %cmp.i.i91 = icmp slt i16 %sub2.i.i90, 0
  br i1 %cmp.i.i91, label %cond.true.i.i93, label %for.body31.while.body.lr.ph.i_crit_edge, !prof !100

for.body31.while.body.lr.ph.i_crit_edge:          ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph.i

cond.true.i.i93:                                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  %count.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 14
  %169 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %count.i.i, align 2
  %add.i.i92 = add i16 %170, %sub2.i.i90
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %cond.true.i.i93, %for.body31.while.body.lr.ph.i_crit_edge
  %cond.i.i94 = phi i16 [ %add.i.i92, %cond.true.i.i93 ], [ %sub2.i.i90, %for.body31.while.body.lr.ph.i_crit_edge ]
  %desc.i96 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 4
  %171 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 5
  %dev.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 2
  %next_to_alloc.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 15
  %count.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 14
  %switch_errors.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 4
  %drops.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 5
  %pp_errors.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 6
  %link_errors.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 7
  %length_errors.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 8
  %errors.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 2
  %netdev.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 1
  %csum_err.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 1
  %csum_good.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20, i32 0, i32 0, i32 3
  %vid11.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 13
  %l2_accel1.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 3
  %queue_index.i.i.i = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 10
  br label %while.body.i97

while.body.i97:                                   ; preds = %cleanup.i115.while.body.i97_crit_edge, %while.body.lr.ph.i
  %cleaned_count.0139.i = phi i16 [ %cond.i.i94, %while.body.lr.ph.i ], [ %inc.i109, %cleanup.i115.while.body.i97_crit_edge ]
  %total_packets.0136.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_packets.1.i, %cleanup.i115.while.body.i97_crit_edge ]
  %total_bytes.0133.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_bytes.1.i, %cleanup.i115.while.body.i97_crit_edge ]
  %skb.0132.i = phi ptr [ %163, %while.body.lr.ph.i ], [ %skb.1.i, %cleanup.i115.while.body.i97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %cleaned_count.0139.i)
  %cmp3.i = icmp ugt i16 %cleaned_count.0139.i, 15
  br i1 %cmp3.i, label %if.then.i, label %while.body.i97.if.end.i100_crit_edge

while.body.i97.if.end.i100_crit_edge:             ; preds = %while.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i100

if.then.i:                                        ; preds = %while.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fm10k_alloc_rx_buffers(ptr noundef %incdec.ptr26158, i16 noundef zeroext %cleaned_count.0139.i) #11
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then.i, %while.body.i97.if.end.i100_crit_edge
  %cleaned_count.1.i = phi i16 [ 0, %if.then.i ], [ %cleaned_count.0139.i, %while.body.i97.if.end.i100_crit_edge ]
  %172 = ptrtoint ptr %desc.i96 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %desc.i96, align 16
  %174 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %next_to_clean.i.i, align 4
  %idxprom.i = zext i16 %175 to i32
  %arrayidx.i98 = getelementptr %union.fm10k_rx_desc, ptr %173, i32 %idxprom.i
  %staterr.i = getelementptr inbounds %struct.anon.194, ptr %arrayidx.i98, i32 0, i32 2
  %176 = ptrtoint ptr %staterr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %staterr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool5.not.i99 = icmp eq i32 %177, 0
  br i1 %tobool5.not.i99, label %if.end.i100.fm10k_clean_rx_irq.exit_crit_edge, label %if.end7.i

if.end.i100.fm10k_clean_rx_irq.exit_crit_edge:    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_clean_rx_irq.exit

if.end7.i:                                        ; preds = %if.end.i100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  %length.i.i = getelementptr inbounds %struct.anon.195, ptr %arrayidx.i98, i32 0, i32 6
  %178 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %length.i.i, align 4
  %180 = tail call i16 @llvm.bswap.i16(i16 %179) #11
  %conv.i.i101 = zext i16 %180 to i32
  %181 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %171, align 4
  %183 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %next_to_clean.i.i, align 4
  %idxprom.i.i102 = zext i16 %184 to i32
  %arrayidx.i.i103 = getelementptr %struct.fm10k_rx_buffer, ptr %182, i32 %idxprom.i.i102
  %page1.i.i = getelementptr %struct.fm10k_rx_buffer, ptr %182, i32 %idxprom.i.i102, i32 1
  %185 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %page1.i.i, align 4
  tail call void @llvm.prefetch.p0(ptr %186, i32 1, i32 3, i32 1) #11
  %tobool.not.i.i104 = icmp eq ptr %skb.0132.i, null
  br i1 %tobool.not.i.i104, label %if.then.i.i, label %if.end7.i.if.end16.i.i_crit_edge, !prof !100

if.end7.i.if.end16.i.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then.i.i:                                      ; preds = %if.end7.i
  %call.i.i = tail call ptr @page_address(ptr noundef %186) #11
  %page_offset.i.i = getelementptr %struct.fm10k_rx_buffer, ptr %182, i32 %idxprom.i.i102, i32 2
  %187 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %page_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %188
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i.i) #11, !srcloc !110
  %189 = ptrtoint ptr %incdec.ptr26158 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %incdec.ptr26158, align 128
  %napi.i.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %190, i32 0, i32 5
  %call.i.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi.i.i, i32 noundef 256, i32 noundef 2592) #11
  %tobool6.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool6.not.i.i, label %fm10k_fetch_rx_buffer.exit.thread.i, label %if.end.i.i, !prof !95

fm10k_fetch_rx_buffer.exit.thread.i:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %191 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 20
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %191, align 8
  %inc.i.i105 = add i64 %193, 1
  store i64 %inc.i.i105, ptr %191, align 8
  br label %fm10k_clean_rx_irq.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %194 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data.i.i, align 4
  tail call void @llvm.prefetch.p0(ptr %195, i32 1, i32 3, i32 1) #11
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end.i.i, %if.end7.i.if.end16.i.i_crit_edge
  %skb.addr.0.i.i = phi ptr [ %skb.0132.i, %if.end7.i.if.end16.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i ]
  %196 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i.i, align 8
  %198 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i103, align 4
  %page_offset17.i.i = getelementptr %struct.fm10k_rx_buffer, ptr %182, i32 %idxprom.i.i102, i32 2
  %200 = ptrtoint ptr %page_offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %page_offset17.i.i, align 4
  %add.i.i.i = add i32 %201, %199
  tail call void @dma_sync_single_for_cpu(ptr noundef %197, i32 noundef %add.i.i.i, i32 noundef %conv.i.i101, i32 noundef 2) #11
  %202 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %page1.i.i, align 4
  %call.i47.i.i = tail call ptr @page_address(ptr noundef %203) #11
  %204 = ptrtoint ptr %page_offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %page_offset17.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i47.i.i, i32 %205
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 7
  %206 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.i.not.i.i.i = icmp eq i32 %207, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.i, label %if.end16.i.i.fm10k_add_rx_frag.exit.i.i_crit_edge, !prof !100

if.end16.i.i.fm10k_add_rx_frag.exit.i.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_add_rx_frag.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %180)
  %cmp.i.i.i = icmp ult i16 %180, 257
  br i1 %cmp.i.i.i, label %__skb_put.exit.i.i.i, label %if.end15.i.i.i, !prof !100

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %208 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %209, i32 %conv.i.i101
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %210 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %211, %conv.i.i101
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %add.i48.i.i = add nuw nsw i32 %conv.i.i101, 3
  %and.i.i.i = and i32 %add.i48.i.i, 131068
  %212 = call ptr @memcpy(ptr %209, ptr %add.ptr.i.i.i, i32 %and.i.i.i)
  %213 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %214)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %214, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %dev_page_is_reusable.exit.i.i.i, !prof !95

if.then.i.i.i.i.i:                                ; preds = %__skb_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %203, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !116
  unreachable

dev_page_is_reusable.exit.i.i.i:                  ; preds = %__skb_put.exit.i.i.i
  %215 = getelementptr inbounds %struct.page, ptr %203, i32 0, i32 1
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %218 = ptrtoint ptr %217 to i32
  %and.i.i.i.i.i = and i32 %218, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i1.i.i.i, label %dev_page_is_reusable.exit.i.i.i.if.then19.i.i_crit_edge, label %fm10k_add_rx_frag.exit.thread53.i.i

dev_page_is_reusable.exit.i.i.i.if.then19.i.i_crit_edge: ; preds = %dev_page_is_reusable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i

fm10k_add_rx_frag.exit.thread53.i.i:              ; preds = %dev_page_is_reusable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef %203, i32 noundef 0) #11
  br label %if.else.i.i

if.end15.i.i.i:                                   ; preds = %if.end.i.i.i
  %219 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i.i, i32 0, i32 2
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 8
  %call16.i.i.i = tail call i32 @eth_get_headlen(ptr noundef %221, ptr noundef %add.ptr.i.i.i, i32 noundef 256) #11
  %222 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool.i.not.i3.i.i.i = icmp eq i32 %223, 0
  br i1 %tobool.i.not.i3.i.i.i, label %__skb_put.exit9.i.i.i, label %do.body3.i4.i.i.i, !prof !100

do.body3.i4.i.i.i:                                ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !117
  unreachable

__skb_put.exit9.i.i.i:                            ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i5.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %224 = ptrtoint ptr %tail.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %tail.i.i5.i.i.i, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %225, i32 %call16.i.i.i
  store ptr %add.ptr.i6.i.i.i, ptr %tail.i.i5.i.i.i, align 8
  %len9.i7.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %226 = ptrtoint ptr %len9.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len9.i7.i.i.i, align 4
  %add.i8.i.i.i = add i32 %227, %call16.i.i.i
  store i32 %add.i8.i.i.i, ptr %len9.i7.i.i.i, align 4
  %add18.i.i.i = add i32 %call16.i.i.i, 3
  %and19.i.i.i = and i32 %add18.i.i.i, -4
  %228 = call ptr @memcpy(ptr %225, ptr %add.ptr.i.i.i, i32 %and19.i.i.i)
  %add.ptr20.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %call16.i.i.i
  %sub.i.i.i106 = sub i32 %conv.i.i101, %call16.i.i.i
  br label %fm10k_add_rx_frag.exit.i.i

fm10k_add_rx_frag.exit.i.i:                       ; preds = %__skb_put.exit9.i.i.i, %if.end16.i.i.fm10k_add_rx_frag.exit.i.i_crit_edge
  %size.addr.0.i.i.i = phi i32 [ %conv.i.i101, %if.end16.i.i.fm10k_add_rx_frag.exit.i.i_crit_edge ], [ %sub.i.i.i106, %__skb_put.exit9.i.i.i ]
  %va.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end16.i.i.fm10k_add_rx_frag.exit.i.i_crit_edge ], [ %add.ptr20.i.i.i, %__skb_put.exit9.i.i.i ]
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 17
  %229 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %nr_frags.i.i.i, align 2
  %conv.i.i.i107 = zext i8 %232 to i32
  %233 = ptrtoint ptr %va.0.i.i.i to i32
  %and22.i.i.i = and i32 %233, 4095
  tail call void @skb_add_rx_frag(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef %conv.i.i.i107, ptr noundef %203, i32 noundef %and22.i.i.i, i32 noundef %size.addr.0.i.i.i, i32 noundef 2048) #11
  %call23.i.i.i = tail call fastcc zeroext i1 @fm10k_can_reuse_rx_page(ptr noundef %arrayidx.i.i103, ptr noundef %203) #11
  br i1 %call23.i.i.i, label %fm10k_add_rx_frag.exit.i.i.if.then19.i.i_crit_edge, label %fm10k_add_rx_frag.exit.i.i.if.else.i.i_crit_edge

fm10k_add_rx_frag.exit.i.i.if.else.i.i_crit_edge: ; preds = %fm10k_add_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

fm10k_add_rx_frag.exit.i.i.if.then19.i.i_crit_edge: ; preds = %fm10k_add_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i.i

if.then19.i.i:                                    ; preds = %fm10k_add_rx_frag.exit.i.i.if.then19.i.i_crit_edge, %dev_page_is_reusable.exit.i.i.i.if.then19.i.i_crit_edge
  %234 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %next_to_alloc.i.i.i, align 16
  %236 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %171, align 4
  %inc.i.i.i = add i16 %235, 1
  %238 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %count.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %239)
  %cmp.i49.i.i = icmp ult i16 %inc.i.i.i, %239
  %spec.select.i.i.i = select i1 %cmp.i49.i.i, i16 %inc.i.i.i, i16 0
  %idxprom.i.i.i = zext i16 %235 to i32
  %arrayidx.i.i.i108 = getelementptr %struct.fm10k_rx_buffer, ptr %237, i32 %idxprom.i.i.i
  %240 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %spec.select.i.i.i, ptr %next_to_alloc.i.i.i, align 16
  %241 = call ptr @memcpy(ptr %arrayidx.i.i.i108, ptr %arrayidx.i.i103, i32 12)
  %242 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev.i.i, align 8
  %244 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx.i.i103, align 4
  %246 = ptrtoint ptr %page_offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %page_offset17.i.i, align 4
  %add.i.i51.i.i = add i32 %247, %245
  tail call void @dma_sync_single_for_device(ptr noundef %243, i32 noundef %add.i.i51.i.i, i32 noundef 2048, i32 noundef 2) #11
  br label %if.end11.i

if.else.i.i:                                      ; preds = %fm10k_add_rx_frag.exit.i.i.if.else.i.i_crit_edge, %fm10k_add_rx_frag.exit.thread53.i.i
  %248 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev.i.i, align 8
  %250 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i.i103, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %249, i32 noundef %251, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i.i, %if.then19.i.i
  %252 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %page1.i.i, align 4
  %inc.i109 = add nuw nsw i16 %cleaned_count.1.i, 1
  %253 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %next_to_clean.i.i, align 4
  %conv.i70.i = zext i16 %254 to i32
  %add.i71.i = add nuw nsw i32 %conv.i70.i, 1
  %255 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %count.i.i.i, align 2
  %conv1.i.i = zext i16 %256 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i71.i, i32 %conv1.i.i)
  %cmp.i73.i = icmp ult i32 %add.i71.i, %conv1.i.i
  %spec.select.i.i = select i1 %cmp.i73.i, i32 %add.i71.i, i32 0
  %conv3.i.i = trunc i32 %spec.select.i.i to i16
  %257 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv3.i.i, ptr %next_to_clean.i.i, align 4
  %258 = ptrtoint ptr %desc.i96 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %desc.i96, align 16
  %arrayidx.i74.i = getelementptr %union.fm10k_rx_desc, ptr %259, i32 %spec.select.i.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i74.i) #11, !srcloc !110
  %260 = ptrtoint ptr %staterr.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %staterr.i, align 8
  %and.i.i75.i = and i32 %261, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75.i)
  %tobool.not.i76.i = icmp eq i32 %and.i.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end11.i.cleanup.i115_crit_edge, label %if.end14.i

if.end11.i.cleanup.i115_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i115

if.end14.i:                                       ; preds = %if.end11.i
  %and.i.i78.i = and i32 %261, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end39.i.i, label %if.then.i80.i, !prof !100

if.then.i80.i:                                    ; preds = %if.end14.i
  %csum_err.i.i = getelementptr inbounds %struct.anon.195, ptr %arrayidx.i98, i32 0, i32 5
  %262 = ptrtoint ptr %csum_err.i.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %csum_err.i.i, align 2
  %264 = and i16 %263, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool3.not.i.i = icmp eq i16 %264, 0
  br i1 %tobool3.not.i.i, label %if.then.i80.i.if.end.i82.i_crit_edge, label %if.then4.i.i

if.then.i80.i.if.end.i82.i_crit_edge:             ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i82.i

if.then4.i.i:                                     ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  %265 = ptrtoint ptr %switch_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %switch_errors.i.i, align 8
  %inc.i81.i = add i64 %266, 1
  store i64 %inc.i81.i, ptr %switch_errors.i.i, align 8
  br label %if.end.i82.i

if.end.i82.i:                                     ; preds = %if.then4.i.i, %if.then.i80.i.if.end.i82.i_crit_edge
  %267 = ptrtoint ptr %csum_err.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %csum_err.i.i, align 2
  %269 = and i16 %268, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %tobool8.not.i.i = icmp eq i16 %269, 0
  br i1 %tobool8.not.i.i, label %if.end.i82.i.if.end12.i.i_crit_edge, label %if.then9.i.i

if.end.i82.i.if.end12.i.i_crit_edge:              ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  %270 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %drops.i.i, align 8
  %inc11.i.i = add i64 %271, 1
  store i64 %inc11.i.i, ptr %drops.i.i, align 8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %if.end.i82.i.if.end12.i.i_crit_edge
  %272 = ptrtoint ptr %csum_err.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %csum_err.i.i, align 2
  %274 = and i16 %273, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %274)
  %tobool16.not.i.i110 = icmp eq i16 %274, 0
  br i1 %tobool16.not.i.i110, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i111

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

if.then17.i.i111:                                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %275 = ptrtoint ptr %pp_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %pp_errors.i.i, align 8
  %inc19.i.i = add i64 %276, 1
  store i64 %inc19.i.i, ptr %pp_errors.i.i, align 8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i111, %if.end12.i.i.if.end20.i.i_crit_edge
  %277 = ptrtoint ptr %csum_err.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %csum_err.i.i, align 2
  %279 = and i16 %278, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %279)
  %tobool24.not.i.i = icmp eq i16 %279, 0
  br i1 %tobool24.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.then25.i.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %280 = ptrtoint ptr %link_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %link_errors.i.i, align 8
  %inc27.i.i = add i64 %281, 1
  store i64 %inc27.i.i, ptr %link_errors.i.i, align 8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %if.end20.i.i.if.end28.i.i_crit_edge
  %282 = ptrtoint ptr %csum_err.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %csum_err.i.i, align 2
  %284 = and i16 %283, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %284)
  %tobool32.not.i.i = icmp eq i16 %284, 0
  br i1 %tobool32.not.i.i, label %if.end28.i.i.if.end36.i.i_crit_edge, label %if.then33.i.i

if.end28.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.then33.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %285 = ptrtoint ptr %length_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %length_errors.i.i, align 8
  %inc35.i.i = add i64 %286, 1
  store i64 %inc35.i.i, ptr %length_errors.i.i, align 8
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then33.i.i, %if.end28.i.i.if.end36.i.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef 1) #11
  %287 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %errors.i.i, align 8
  %inc38.i.i = add i64 %288, 1
  store i64 %inc38.i.i, ptr %errors.i.i, align 8
  br label %cleanup.i115

if.end39.i.i:                                     ; preds = %if.end14.i
  %len1.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %289 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %len1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %290)
  %cmp.i.i.i.i.i = icmp ult i32 %290, 60
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i83.i, label %if.end39.i.i.if.end17.i_crit_edge, !prof !95

if.end39.i.i.if.end17.i_crit_edge:                ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then.i.i.i.i83.i:                              ; preds = %if.end39.i.i
  %sub.i.i.i.i.i = sub nuw nsw i32 60, %290
  %call.i.i.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef %sub.i.i.i.i.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i83.i.cleanup.i115_crit_edge

if.then.i.i.i.i83.i.cleanup.i115_crit_edge:       ; preds = %if.then.i.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i115

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i83.i
  %291 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %292, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %__skb_put.exit.i.i.i.i.i, label %do.body3.i.i.i.i.i.i, !prof !100

do.body3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !117
  unreachable

__skb_put.exit.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %293 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %tail.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %294, i32 %sub.i.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  %295 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %296, %sub.i.i.i.i.i
  store i32 %add.i.i.i.i.i.i, ptr %len1.i.i.i.i.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %__skb_put.exit.i.i.i.i.i, %if.end39.i.i.if.end17.i_crit_edge
  %297 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %len1.i.i.i.i.i, align 4
  %299 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %netdev.i.i.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %300, i32 0, i32 23
  %301 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %features.i.i.i, align 16
  %and.i.i84.i = and i64 %302, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i84.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i84.i, 0
  br i1 %tobool.not.i.i.i, label %if.end17.i.fm10k_rx_hash.exit.i.i_crit_edge, label %if.end.i.i85.i

if.end17.i.fm10k_rx_hash.exit.i.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_rx_hash.exit.i.i

if.end.i.i85.i:                                   ; preds = %if.end17.i
  %303 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %arrayidx.i98, align 8
  %305 = lshr i16 %304, 8
  %306 = and i16 %305, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %306)
  %tobool3.not.i.i.i = icmp eq i16 %306, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i85.i.fm10k_rx_hash.exit.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i85.i.fm10k_rx_hash.exit.i.i_crit_edge:  ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_rx_hash.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  %rss.i.i.i = getelementptr inbounds %struct.anon.194, ptr %arrayidx.i98, i32 0, i32 1
  %307 = ptrtoint ptr %rss.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %rss.i.i.i, align 4
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #11
  %conv6.i.i.i = zext i16 %306 to i32
  %shl.i.i.i = shl nuw nsw i32 1, %conv6.i.i.i
  %and7.i.i.i = and i32 %shl.i.i.i, 394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  %l4_hash.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15
  %310 = ptrtoint ptr %l4_hash.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %bf.load.i.i.i.i.i = load i16, ptr %l4_hash.i.i.i.i.i, align 8
  %bf.shl.i.i.i.i.i = select i1 %tobool8.not.not.i.i.i, i16 0, i16 128
  %bf.clear.i.i.i.i.i = and i16 %bf.load.i.i.i.i.i, -193
  %bf.set.i.i.i.i.i = or i16 %bf.clear.i.i.i.i.i, %bf.shl.i.i.i.i.i
  store i16 %bf.set.i.i.i.i.i, ptr %l4_hash.i.i.i.i.i, align 8
  %hash10.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 8
  %311 = ptrtoint ptr %hash10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %309, ptr %hash10.i.i.i.i.i, align 4
  br label %fm10k_rx_hash.exit.i.i

fm10k_rx_hash.exit.i.i:                           ; preds = %if.end5.i.i.i, %if.end.i.i85.i.fm10k_rx_hash.exit.i.i_crit_edge, %if.end17.i.fm10k_rx_hash.exit.i.i_crit_edge
  %312 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %netdev.i.i.i, align 4
  %features.i46.i.i = getelementptr inbounds %struct.net_device, ptr %313, i32 0, i32 23
  %314 = ptrtoint ptr %features.i46.i.i to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %features.i46.i.i, align 16
  %and.i47.i.i = and i64 %315, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i47.i.i)
  %tobool.not.i48.i.i = icmp eq i64 %and.i47.i.i, 0
  br i1 %tobool.not.i48.i.i, label %fm10k_rx_hash.exit.i.i.fm10k_rx_checksum.exit.i.i_crit_edge, label %if.end.i49.i.i

fm10k_rx_hash.exit.i.i.fm10k_rx_checksum.exit.i.i_crit_edge: ; preds = %fm10k_rx_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_rx_checksum.exit.i.i

if.end.i49.i.i:                                   ; preds = %fm10k_rx_hash.exit.i.i
  %316 = ptrtoint ptr %staterr.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %staterr.i, align 8
  %and.i.i.i.i = and i32 %317, 14155776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end3.i.i.i, label %if.end.i49.i.i.return.sink.split.i.i.i_crit_edge

if.end.i49.i.i.return.sink.split.i.i.i_crit_edge: ; preds = %if.end.i49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i49.i.i
  %and.i24.i.i.i = and i32 %317, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.else.i.i.i, label %if.then6.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %encapsulation.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15
  %318 = ptrtoint ptr %encapsulation.i.i.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %bf.load.i.i.i = load i16, ptr %encapsulation.i.i.i, align 8
  %bf.set.i.i.i = or i16 %bf.load.i.i.i, 4
  store i16 %bf.set.i.i.i, ptr %encapsulation.i.i.i, align 8
  br label %if.end11.i.i.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i.i
  %and.i26.i.i.i = and i32 %317, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i26.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.else.i.i.i.fm10k_rx_checksum.exit.i.i_crit_edge, label %if.else.i.i.i.if.end11.i.i.i_crit_edge

if.else.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i.i

if.else.i.i.i.fm10k_rx_checksum.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_rx_checksum.exit.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i.if.end11.i.i.i_crit_edge, %if.then6.i.i.i
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15
  %319 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %bf.load12.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear13.i.i.i = and i16 %bf.load12.i.i.i, -1537
  %bf.set14.i.i.i = or i16 %bf.clear13.i.i.i, 512
  store i16 %bf.set14.i.i.i, ptr %ip_summed.i.i.i, align 8
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.end11.i.i.i, %if.end.i49.i.i.return.sink.split.i.i.i_crit_edge
  %csum_good.sink27.i.i.i = phi ptr [ %csum_good.i.i.i, %if.end11.i.i.i ], [ %csum_err.i.i.i, %if.end.i49.i.i.return.sink.split.i.i.i_crit_edge ]
  %320 = ptrtoint ptr %csum_good.sink27.i.i.i to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %csum_good.sink27.i.i.i, align 8
  %inc16.i.i.i = add i64 %321, 1
  store i64 %inc16.i.i.i, ptr %csum_good.sink27.i.i.i, align 8
  br label %fm10k_rx_checksum.exit.i.i

fm10k_rx_checksum.exit.i.i:                       ; preds = %return.sink.split.i.i.i, %if.else.i.i.i.fm10k_rx_checksum.exit.i.i_crit_edge, %fm10k_rx_hash.exit.i.i.fm10k_rx_checksum.exit.i.i_crit_edge
  %timestamp.i.i = getelementptr inbounds %struct.anon.193, ptr %arrayidx.i98, i32 0, i32 3
  %322 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %timestamp.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 3
  %324 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %323, ptr %cb.i.i, align 8
  %vlan.i.i = getelementptr inbounds %struct.anon.195, ptr %arrayidx.i98, i32 0, i32 7
  %325 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %vlan.i.i, align 2
  %fi.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 3, i32 8
  %vlan4.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 3, i32 12
  %327 = ptrtoint ptr %vlan4.i.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %vlan4.i.i, align 4
  %glort.i.i = getelementptr inbounds %struct.anon.194, ptr %arrayidx.i98, i32 0, i32 4
  %328 = ptrtoint ptr %glort.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %glort.i.i, align 8
  %330 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %fi.i.i, align 8
  %331 = load i16, ptr %vlan.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %331)
  %tobool.not.i86.i = icmp eq i16 %331, 0
  br i1 %tobool.not.i86.i, label %fm10k_rx_checksum.exit.i.i.if.end23.i.i_crit_edge, label %if.then.i88.i

fm10k_rx_checksum.exit.i.i.if.end23.i.i_crit_edge: ; preds = %fm10k_rx_checksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then.i88.i:                                    ; preds = %fm10k_rx_checksum.exit.i.i
  %332 = tail call i16 @llvm.bswap.i16(i16 %331) #11
  %conv.i87.i = zext i16 %332 to i32
  %and.i.i = and i32 %conv.i87.i, 4095
  %333 = ptrtoint ptr %vid11.i.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %vid11.i.i, align 4
  %conv12.i.i = zext i16 %334 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv12.i.i)
  %cmp.not.i.i112 = icmp eq i32 %and.i.i, %conv12.i.i
  br i1 %cmp.not.i.i112, label %if.else.i89.i, label %if.then.i88.i.if.end23.sink.split.i.i_crit_edge

if.then.i88.i.if.end23.sink.split.i.i_crit_edge:  ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i.i

if.else.i89.i:                                    ; preds = %if.then.i88.i
  %and16.i.i = and i32 %conv.i87.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.else.i89.i.if.end23.i.i_crit_edge, label %if.then18.i.i

if.else.i89.i.if.end23.i.i_crit_edge:             ; preds = %if.else.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then18.i.i:                                    ; preds = %if.else.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv21.i.i = trunc i32 %and16.i.i to i16
  br label %if.end23.sink.split.i.i

if.end23.sink.split.i.i:                          ; preds = %if.then18.i.i, %if.then.i88.i.if.end23.sink.split.i.i_crit_edge
  %conv21.sink.i.i = phi i16 [ %conv21.i.i, %if.then18.i.i ], [ %332, %if.then.i88.i.if.end23.sink.split.i.i_crit_edge ]
  %vlan_proto1.i52.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 9
  %335 = ptrtoint ptr %vlan_proto1.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 -32512, ptr %vlan_proto1.i52.i.i, align 8
  %vlan_tci2.i53.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 10
  %336 = ptrtoint ptr %vlan_tci2.i53.i.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv21.sink.i.i, ptr %vlan_tci2.i53.i.i, align 2
  %vlan_present.i54.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 3
  %337 = ptrtoint ptr %vlan_present.i54.i.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %bf.load.i50.i.i = load i32, ptr %vlan_present.i54.i.i, align 2
  %bf.set.i51.i.i = or i32 %bf.load.i50.i.i, -2147483648
  store i32 %bf.set.i51.i.i, ptr %vlan_present.i54.i.i, align 2
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end23.sink.split.i.i, %if.else.i89.i.if.end23.i.i_crit_edge, %fm10k_rx_checksum.exit.i.i.if.end23.i.i_crit_edge
  %338 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %netdev.i.i.i, align 4
  %340 = ptrtoint ptr %l2_accel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load volatile ptr, ptr %l2_accel1.i.i.i, align 4
  %call.i.i90.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %tobool.not.i58.i.i = icmp eq i32 %call.i.i90.i, 0
  br i1 %tobool.not.i58.i.i, label %land.lhs.true.i.i.i, label %if.end23.i.i.do.end8.i.i.i_crit_edge

if.end23.i.i.do.end8.i.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end23.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @fm10k_type_trans.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fm10k_type_trans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 408, ptr noundef nonnull @.str.31) #11
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %if.end23.i.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %341, null
  br i1 %tobool10.not.i.i.i, label %do.end8.i.i.i.if.then29.i.i.i_crit_edge, label %if.then11.i.i.i

do.end8.i.i.i.if.then29.i.i.i_crit_edge:          ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i.i

if.then11.i.i.i:                                  ; preds = %do.end8.i.i.i
  %342 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %fi.i.i, align 8
  %344 = tail call i16 @llvm.bswap.i16(i16 %343) #11
  %dglort13.i.i.i = getelementptr inbounds %struct.fm10k_l2_accel, ptr %341, i32 0, i32 2
  %345 = ptrtoint ptr %dglort13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %dglort13.i.i.i, align 2
  %347 = xor i16 %346, -1
  %sub16.i.i.i = add i16 %344, %347
  %conv18.i.i.i = zext i16 %sub16.i.i.i to i32
  %348 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %341, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %conv18.i.i.i)
  %cmp.i.i91.i = icmp sgt i32 %349, %conv18.i.i.i
  br i1 %cmp.i.i91.i, label %land.lhs.true20.i.i.i, label %if.then11.i.i.i.if.then29.i.i.i_crit_edge

if.then11.i.i.i.if.then29.i.i.i_crit_edge:        ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %if.then11.i.i.i
  %arrayidx.i.i92.i = getelementptr %struct.fm10k_l2_accel, ptr %341, i32 0, i32 4, i32 %conv18.i.i.i
  %350 = ptrtoint ptr %arrayidx.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx.i.i92.i, align 4
  %tobool21.not.i.i.i = icmp eq ptr %351, null
  br i1 %tobool21.not.i.i.i, label %land.lhs.true20.i.i.i.if.then29.i.i.i_crit_edge, label %if.else31.i.i.i

land.lhs.true20.i.i.i.if.then29.i.i.i_crit_edge:  ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i.i.i

if.then29.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i.if.then29.i.i.i_crit_edge, %if.then11.i.i.i.if.then29.i.i.i_crit_edge, %do.end8.i.i.i.if.then29.i.i.i_crit_edge
  %352 = ptrtoint ptr %queue_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %queue_index.i.i.i, align 8
  %conv30.i.i.i = zext i8 %353 to i16
  %add.i.i.i93.i = add nuw nsw i16 %conv30.i.i.i, 1
  %queue_mapping.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 10
  %354 = ptrtoint ptr %queue_mapping.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %add.i.i.i93.i, ptr %queue_mapping.i.i.i.i, align 8
  br label %fm10k_process_skb_fields.exit.i

if.else31.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %355 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add.i.i94.i = add i32 %356, 14
  %357 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i.i.i = and i32 %357, -16384
  %358 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %358, i32 0, i32 1
  %359 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %360, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %pcpu_stats8.i.i.i.i = getelementptr i8, ptr %351, i32 2336
  %361 = ptrtoint ptr %pcpu_stats8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %pcpu_stats8.i.i.i.i, align 8
  %363 = ptrtoint ptr %362 to i32
  %364 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i95.i = and i32 %364, -16384
  %365 = inttoptr i32 %and.i.i.i.i95.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %365, i32 0, i32 3
  %366 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %367
  %368 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i2.i.i.i = add i32 %369, %363
  %370 = inttoptr i32 %add.i2.i.i.i to ptr
  %syncp.i.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %370, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i.i.i) #11
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %370, align 8
  %inc.i.i.i.i113 = add i64 %372, 1
  store i64 %inc.i.i.i.i113, ptr %370, align 8
  %conv.i.i.i.i = zext i32 %add.i.i94.i to i64
  %rx_bytes.i.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %370, i32 0, i32 1
  %373 = ptrtoint ptr %rx_bytes.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %373)
  %374 = load i64, ptr %rx_bytes.i.i.i.i, align 8
  %add10.i.i.i.i = add i64 %374, %conv.i.i.i.i
  store i64 %add10.i.i.i.i, ptr %rx_bytes.i.i.i.i, align 8
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %370, i32 0, i32 5, i32 0, i32 1
  %375 = tail call ptr @llvm.returnaddress(i32 0) #11
  %376 = ptrtoint ptr %375 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %376) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %377 = ptrtoint ptr %syncp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %syncp.i.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %378, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %379 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i1.i.i.i.i = and i32 %379, -16384
  %380 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %preempt_count.i.i2.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %380, i32 0, i32 1
  %381 = ptrtoint ptr %preempt_count.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load volatile i32, ptr %preempt_count.i.i2.i.i.i.i, align 4
  %sub.i.i.i.i96.i = add i32 %382, -1
  store volatile i32 %sub.i.i.i.i96.i, ptr %preempt_count.i.i2.i.i.i.i, align 4
  br label %fm10k_process_skb_fields.exit.i

fm10k_process_skb_fields.exit.i:                  ; preds = %if.else31.i.i.i, %if.then29.i.i.i
  %dev.16.i.i.i = phi ptr [ %351, %if.else31.i.i.i ], [ %339, %if.then29.i.i.i ]
  %call34.i.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.0.i.i, ptr noundef %dev.16.i.i.i) #11
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 18
  %383 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 %call34.i.i.i, ptr %protocol.i.i.i, align 8
  %add.i114 = add i32 %298, %total_bytes.0133.i
  %call.i98.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %skb.addr.0.i.i) #11
  %inc19.i = add nuw i32 %total_packets.0136.i, 1
  br label %cleanup.i115

cleanup.i115:                                     ; preds = %fm10k_process_skb_fields.exit.i, %if.then.i.i.i.i83.i.cleanup.i115_crit_edge, %if.end36.i.i, %if.end11.i.cleanup.i115_crit_edge
  %skb.1.i = phi ptr [ null, %fm10k_process_skb_fields.exit.i ], [ %skb.addr.0.i.i, %if.end11.i.cleanup.i115_crit_edge ], [ null, %if.end36.i.i ], [ null, %if.then.i.i.i.i83.i.cleanup.i115_crit_edge ]
  %total_bytes.1.i = phi i32 [ %add.i114, %fm10k_process_skb_fields.exit.i ], [ %total_bytes.0133.i, %if.end11.i.cleanup.i115_crit_edge ], [ %total_bytes.0133.i, %if.end36.i.i ], [ %total_bytes.0133.i, %if.then.i.i.i.i83.i.cleanup.i115_crit_edge ]
  %total_packets.1.i = phi i32 [ %inc19.i, %fm10k_process_skb_fields.exit.i ], [ %total_packets.0136.i, %if.end11.i.cleanup.i115_crit_edge ], [ %total_packets.0136.i, %if.end36.i.i ], [ %total_packets.0136.i, %if.then.i.i.i.i83.i.cleanup.i115_crit_edge ]
  %cmp.i = icmp ult i32 %total_packets.1.i, %per_ring_budget.0
  br i1 %cmp.i, label %cleanup.i115.while.body.i97_crit_edge, label %cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge, !prof !100

cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge:   ; preds = %cleanup.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_clean_rx_irq.exit

cleanup.i115.while.body.i97_crit_edge:            ; preds = %cleanup.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i97

fm10k_clean_rx_irq.exit:                          ; preds = %cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge, %fm10k_fetch_rx_buffer.exit.thread.i, %if.end.i100.fm10k_clean_rx_irq.exit_crit_edge
  %total_bytes.0124.i = phi i32 [ %total_bytes.0133.i, %fm10k_fetch_rx_buffer.exit.thread.i ], [ %total_bytes.0133.i, %if.end.i100.fm10k_clean_rx_irq.exit_crit_edge ], [ %total_bytes.1.i, %cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge ]
  %total_packets.0119.i = phi i32 [ %total_packets.0136.i, %fm10k_fetch_rx_buffer.exit.thread.i ], [ %total_packets.0136.i, %if.end.i100.fm10k_clean_rx_irq.exit_crit_edge ], [ %total_packets.1.i, %cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge ]
  %skb.2.i = phi ptr [ null, %fm10k_fetch_rx_buffer.exit.thread.i ], [ %skb.0132.i, %if.end.i100.fm10k_clean_rx_irq.exit_crit_edge ], [ %skb.1.i, %cleanup.i115.fm10k_clean_rx_irq.exit_crit_edge ]
  %384 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %skb.2.i, ptr %skb1.i, align 8
  %syncp.i116 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 19
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i116) #11
  %conv21.i = zext i32 %total_packets.0119.i to i64
  %stats.i117 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 18
  %385 = ptrtoint ptr %stats.i117 to i32
  call void @__asan_load8_noabort(i32 %385)
  %386 = load i64, ptr %stats.i117, align 8
  %add22.i = add i64 %386, %conv21.i
  store i64 %add22.i, ptr %stats.i117, align 8
  %conv23.i = zext i32 %total_bytes.0124.i to i64
  %bytes.i118 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 18, i32 1
  %387 = ptrtoint ptr %bytes.i118 to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %bytes.i118, align 8
  %add25.i = add i64 %388, %conv23.i
  store i64 %add25.i, ptr %bytes.i118, align 8
  %dep_map.i.i.i119 = getelementptr %struct.fm10k_ring, ptr %ring.1154, i32 -1, i32 19, i32 0, i32 1
  %389 = tail call ptr @llvm.returnaddress(i32 0) #11
  %390 = ptrtoint ptr %389 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i119, i32 noundef %390) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %391 = ptrtoint ptr %syncp.i116 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %syncp.i116, align 4
  %inc.i.i.i99.i = add i32 %392, 1
  store i32 %inc.i.i.i99.i, ptr %syncp.i116, align 4
  %393 = ptrtoint ptr %total_packets27.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %total_packets27.i, align 4
  %add28.i = add i32 %394, %total_packets.0119.i
  store i32 %add28.i, ptr %total_packets27.i, align 4
  %395 = ptrtoint ptr %total_bytes30.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %total_bytes30.i, align 4
  %add31.i = add i32 %396, %total_bytes.0124.i
  store i32 %add31.i, ptr %total_bytes30.i, align 4
  %add = add i32 %total_packets.0119.i, %work_done.0152
  call void @__sanitizer_cov_trace_cmp4(i32 %total_packets.0119.i, i32 %per_ring_budget.0)
  %cmp33.not = icmp slt i32 %total_packets.0119.i, %per_ring_budget.0
  %spec.select88 = select i1 %cmp33.not, i1 %clean_complete.2.off0153, i1 false
  %incdec.ptr26 = getelementptr %struct.fm10k_ring, ptr %incdec.ptr26158, i32 -1
  %397 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %rx, align 4
  %cmp29.not = icmp ult ptr %incdec.ptr26, %398
  br i1 %cmp29.not, label %fm10k_clean_rx_irq.exit.for.end37_crit_edge, label %fm10k_clean_rx_irq.exit.for.body31_crit_edge

fm10k_clean_rx_irq.exit.for.body31_crit_edge:     ; preds = %fm10k_clean_rx_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

fm10k_clean_rx_irq.exit.for.end37_crit_edge:      ; preds = %fm10k_clean_rx_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end37

for.end37:                                        ; preds = %fm10k_clean_rx_irq.exit.for.end37_crit_edge, %if.end18.for.end37_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %if.end18.for.end37_crit_edge ], [ %add, %fm10k_clean_rx_irq.exit.for.end37_crit_edge ]
  %clean_complete.2.off0.lcssa = phi i1 [ %clean_complete.0.off0.lcssa, %if.end18.for.end37_crit_edge ], [ %spec.select88, %fm10k_clean_rx_irq.exit.for.end37_crit_edge ]
  br i1 %clean_complete.2.off0.lcssa, label %if.end39, label %for.end37.cleanup_crit_edge

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %for.end37
  %call40 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #11
  br i1 %call40, label %if.then43, label %if.end39.if.end44_crit_edge, !prof !100

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then43:                                        ; preds = %if.end39
  %itr.i.i = getelementptr i8, ptr %napi, i32 -10
  %399 = ptrtoint ptr %itr.i.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %itr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %400)
  %tobool.not.i.i121 = icmp sgt i16 %400, -1
  br i1 %tobool.not.i.i121, label %if.then43.fm10k_update_itr.exit.i_crit_edge, label %if.end.i.i122

if.then43.fm10k_update_itr.exit.i_crit_edge:      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_update_itr.exit.i

if.end.i.i122:                                    ; preds = %if.then43
  %total_packets.i.i = getelementptr i8, ptr %napi, i32 -16
  %401 = ptrtoint ptr %total_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %total_packets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %tobool1.not.i.i = icmp eq i32 %402, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i122.fm10k_update_itr.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i122.fm10k_update_itr.exit.i_crit_edge:  ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_update_itr.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i122
  %total_bytes.i.i = getelementptr i8, ptr %napi, i32 -20
  %403 = ptrtoint ptr %total_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %total_bytes.i.i, align 4
  %div.i.i = udiv i32 %404, %402
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %div.i.i)
  %cmp.i.i123 = icmp ult i32 %div.i.i, 361
  br i1 %cmp.i.i123, label %if.then5.i.i, label %if.else.i.i125

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = shl nuw nsw i32 %div.i.i, 3
  %add.i.i124 = add nuw nsw i32 %mul.i.i, 376
  br label %do.end.i.i

if.else.i.i125:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1153, i32 %div.i.i)
  %cmp6.i.i = icmp ult i32 %div.i.i, 1153
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else11.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  %mul9.i.i = mul nuw nsw i32 %div.i.i, 3
  %add10.i.i = add nuw nsw i32 %mul9.i.i, 2176
  br label %do.end.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %div.i.i)
  %cmp12.i.i = icmp ult i32 %div.i.i, 1921
  %add15.i.i = add i32 %div.i.i, 4480
  %spec.select.i.i126 = select i1 %cmp12.i.i, i32 %add15.i.i, i32 6656
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else11.i.i, %if.then8.i.i, %if.then5.i.i
  %avg_wire_size.0.i.i = phi i32 [ %add.i.i124, %if.then5.i.i ], [ %add10.i.i, %if.then8.i.i ], [ %spec.select.i.i126, %if.else11.i.i ]
  %itr_scale.i.i = getelementptr i8, ptr %napi, i32 -8
  %405 = ptrtoint ptr %itr_scale.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load volatile i8, ptr %itr_scale.i.i, align 4
  %conv20.i.i = zext i8 %406 to i32
  %add21.i.i = add nuw nsw i32 %conv20.i.i, 8
  %shl.i.i = shl i32 256, %conv20.i.i
  %sub.i.i = add nsw i32 %avg_wire_size.0.i.i, -1
  %add22.i.i = add i32 %sub.i.i, %shl.i.i
  %shr.i.i = lshr i32 %add22.i.i, %add21.i.i
  %407 = trunc i32 %shr.i.i to i16
  %conv23.i.i = or i16 %407, -32768
  %408 = ptrtoint ptr %itr.i.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %conv23.i.i, ptr %itr.i.i, align 2
  br label %fm10k_update_itr.exit.i

fm10k_update_itr.exit.i:                          ; preds = %do.end.i.i, %if.end.i.i122.fm10k_update_itr.exit.i_crit_edge, %if.then43.fm10k_update_itr.exit.i_crit_edge
  %total_bytes25.i.i = getelementptr i8, ptr %napi, i32 -20
  %409 = ptrtoint ptr %total_bytes25.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 0, ptr %total_bytes25.i.i, align 4
  %total_packets26.i.i = getelementptr i8, ptr %napi, i32 -16
  %410 = ptrtoint ptr %total_packets26.i.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %total_packets26.i.i, align 4
  %itr.i15.i = getelementptr i8, ptr %napi, i32 -30
  %411 = ptrtoint ptr %itr.i15.i to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %itr.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %412)
  %tobool.not.i16.i = icmp sgt i16 %412, -1
  br i1 %tobool.not.i16.i, label %fm10k_update_itr.exit.i.fm10k_qv_enable.exit_crit_edge, label %if.end.i19.i

fm10k_update_itr.exit.i.fm10k_qv_enable.exit_crit_edge: ; preds = %fm10k_update_itr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_qv_enable.exit

if.end.i19.i:                                     ; preds = %fm10k_update_itr.exit.i
  %total_packets.i17.i = getelementptr i8, ptr %napi, i32 -36
  %413 = ptrtoint ptr %total_packets.i17.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %total_packets.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool1.not.i18.i = icmp eq i32 %414, 0
  br i1 %tobool1.not.i18.i, label %if.end.i19.i.fm10k_qv_enable.exit_crit_edge, label %if.end3.i23.i

if.end.i19.i.fm10k_qv_enable.exit_crit_edge:      ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fm10k_qv_enable.exit

if.end3.i23.i:                                    ; preds = %if.end.i19.i
  %total_bytes.i20.i = getelementptr i8, ptr %napi, i32 -40
  %415 = ptrtoint ptr %total_bytes.i20.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %total_bytes.i20.i, align 4
  %div.i21.i = udiv i32 %416, %414
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %div.i21.i)
  %cmp.i22.i = icmp ult i32 %div.i21.i, 361
  br i1 %cmp.i22.i, label %if.then5.i26.i, label %if.else.i28.i

if.then5.i26.i:                                   ; preds = %if.end3.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i24.i = shl nuw nsw i32 %div.i21.i, 3
  %add.i25.i = add nuw nsw i32 %mul.i24.i, 376
  br label %do.end.i45.i

if.else.i28.i:                                    ; preds = %if.end3.i23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1153, i32 %div.i21.i)
  %cmp6.i27.i = icmp ult i32 %div.i21.i, 1153
  br i1 %cmp6.i27.i, label %if.then8.i31.i, label %if.else11.i35.i

if.then8.i31.i:                                   ; preds = %if.else.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul9.i29.i = mul nuw nsw i32 %div.i21.i, 3
  %add10.i30.i = add nuw nsw i32 %mul9.i29.i, 2176
  br label %do.end.i45.i

if.else11.i35.i:                                  ; preds = %if.else.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %div.i21.i)
  %cmp12.i32.i = icmp ult i32 %div.i21.i, 1921
  %add15.i33.i = add i32 %div.i21.i, 4480
  %spec.select.i34.i = select i1 %cmp12.i32.i, i32 %add15.i33.i, i32 6656
  br label %do.end.i45.i

do.end.i45.i:                                     ; preds = %if.else11.i35.i, %if.then8.i31.i, %if.then5.i26.i
  %avg_wire_size.0.i36.i = phi i32 [ %add.i25.i, %if.then5.i26.i ], [ %add10.i30.i, %if.then8.i31.i ], [ %spec.select.i34.i, %if.else11.i35.i ]
  %itr_scale.i37.i = getelementptr i8, ptr %napi, i32 -28
  %417 = ptrtoint ptr %itr_scale.i37.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load volatile i8, ptr %itr_scale.i37.i, align 4
  %conv20.i38.i = zext i8 %418 to i32
  %add21.i39.i = add nuw nsw i32 %conv20.i38.i, 8
  %shl.i40.i = shl i32 256, %conv20.i38.i
  %sub.i41.i = add nsw i32 %avg_wire_size.0.i36.i, -1
  %add22.i42.i = add i32 %sub.i41.i, %shl.i40.i
  %shr.i43.i = lshr i32 %add22.i42.i, %add21.i39.i
  %419 = trunc i32 %shr.i43.i to i16
  %conv23.i44.i = or i16 %419, -32768
  %420 = ptrtoint ptr %itr.i15.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %conv23.i44.i, ptr %itr.i15.i, align 2
  br label %fm10k_qv_enable.exit

fm10k_qv_enable.exit:                             ; preds = %do.end.i45.i, %if.end.i19.i.fm10k_qv_enable.exit_crit_edge, %fm10k_update_itr.exit.i.fm10k_qv_enable.exit_crit_edge
  %total_bytes25.i46.i = getelementptr i8, ptr %napi, i32 -40
  %421 = ptrtoint ptr %total_bytes25.i46.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %total_bytes25.i46.i, align 4
  %total_packets26.i47.i = getelementptr i8, ptr %napi, i32 -36
  %422 = ptrtoint ptr %total_packets26.i47.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %total_packets26.i47.i, align 4
  %423 = ptrtoint ptr %itr.i.i to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %itr.i.i, align 2
  %425 = and i16 %424, 4095
  %and.i = zext i16 %425 to i32
  %426 = ptrtoint ptr %itr.i15.i to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %itr.i15.i, align 2
  %428 = and i16 %427, 4095
  %and6.i = zext i16 %428 to i32
  %shl.i = shl nuw nsw i32 %and6.i, 12
  %or.i = or i32 %shl.i, %and.i
  %or7.i = or i32 %or.i, -1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %429 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #11
  %itr8.i = getelementptr i8, ptr %napi, i32 -52
  %430 = ptrtoint ptr %itr8.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %itr8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %431, i32 %429) #11, !srcloc !98
  br label %if.end44

if.end44:                                         ; preds = %fm10k_qv_enable.exit, %if.end39.if.end44_crit_edge
  %sub = add i32 %budget, -1
  %432 = tail call i32 @llvm.smin.i32(i32 %work_done.0.lcssa, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %for.end37.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %432, %if.end44 ], [ %budget, %for.end.cleanup_crit_edge ], [ %budget, %for.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_q_vector_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %5 = tail call i32 @llvm.read_register.i32(metadata !85) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %14 = tail call i32 @llvm.read_register.i32(metadata !85) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !85) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  %33 = tail call i32 @llvm.read_register.i32(metadata !85) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !100

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fm10k_can_reuse_rx_page(ptr nocapture noundef %rx_buffer, ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %dev_page_is_reusable.exit, !prof !95

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !116
  unreachable

dev_page_is_reusable.exit:                        ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  %and.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end, label %dev_page_is_reusable.exit.return_crit_edge

dev_page_is_reusable.exit.return_crit_edge:       ; preds = %dev_page_is_reusable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %dev_page_is_reusable.exit
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %2, align 4
  %and.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i2, !prof !100

if.then.i.i2:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %7, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %page to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i2
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i2 ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end4, label %page_count.exit.return_crit_edge, !prof !100

page_count.exit.return_crit_edge:                 ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end4:                                          ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  %page_offset = getelementptr inbounds %struct.fm10k_rx_buffer, ptr %rx_buffer, i32 0, i32 2
  %12 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_offset, align 4
  %xor = xor i32 %13, 2048
  store i32 %xor, ptr %page_offset, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #11, !srcloc !126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@fm10k_can_reuse_rx_page, %if.then.i)) #11
          to label %return [label %if.then.i], !srcloc !127

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.then.i, %if.end4, %page_count.exit.return_crit_edge, %dev_page_is_reusable.exit.return_crit_edge
  %retval.0 = phi i1 [ false, %dev_page_is_reusable.exit.return_crit_edge ], [ false, %page_count.exit.return_crit_edge ], [ true, %if.end4 ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_q_vector_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_write_reta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !77, !79, !80, !82, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @fm10k_driver_name, !1, !"fm10k_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 15, i32 6}
!2 = !{ptr @__UNIQUE_ID_author595, !3, !"__UNIQUE_ID_author595", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_description596, !5, !"__UNIQUE_ID_description596", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_file597, !7, !"__UNIQUE_ID_file597", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 22, i32 1}
!8 = !{ptr @__UNIQUE_ID_license598, !7, !"__UNIQUE_ID_license598", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_fm10k__599_48_fm10k_init_module6, !10, !"__initcall__kmod_fm10k__599_48_fm10k_init_module6", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 48, i32 1}
!11 = !{ptr @__exitcall_fm10k_exit_module, !12, !"__exitcall_fm10k_exit_module", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 65, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1963, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fm10k_init_queueing_scheme._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @fm10k_init_queueing_scheme._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1971, i32 3}
!23 = !{ptr @fm10k_init_queueing_scheme._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @fm10k_init_queueing_scheme._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @fm10k_workqueue, !26, !"fm10k_workqueue", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 25, i32 26}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 35, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fm10k_init_module._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @fm10k_init_module._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @fm10k_init_module._entry.10, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 36, i32 2}
!34 = !{ptr @fm10k_init_module._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 39, i32 36}
!37 = !{ptr @fm10k_driver_string, !38, !"fm10k_driver_string", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 16, i32 19}
!39 = !{ptr @fm10k_copyright, !40, !"fm10k_copyright", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 17, i32 19}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 778, i32 7}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 804, i32 5}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fm10k_tx_csum._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @fm10k_tx_csum._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 847, i32 4}
!55 = !{ptr @fm10k_tx_csum._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @fm10k_tx_csum._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1028, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @fm10k_tx_map._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @fm10k_tx_map._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1273, i32 3}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1287, i32 3}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 408, i32 36}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_main.c", i32 1932, i32 4}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @fm10k_init_reta._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @fm10k_init_reta._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2159107378}
!97 = !{i64 2159107586}
!98 = !{i64 6366607}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2155030789, i64 2155031289, i64 2155030826, i64 2155030882, i64 2155030916, i64 2155030940, i64 2155030981, i64 2155031002, i64 2155031030, i64 2155031064}
!102 = !{i64 2155032133}
!103 = !{i64 2155960106}
!104 = !{i64 2159124310}
!105 = !{i64 2159124620}
!106 = !{i32 0, i32 33}
!107 = !{i64 2159123094}
!108 = !{i64 2159153749}
!109 = !{i64 2159129695}
!110 = !{i64 890773}
!111 = !{!"branch_weights", i32 2002, i32 2000}
!112 = !{i64 2150024961}
!113 = !{i64 2155961177}
!114 = !{i64 2159135674}
!115 = !{i64 2159117072}
!116 = !{i64 2153652903, i64 2153653387, i64 2153652940, i64 2153652996, i64 2153653030, i64 2153653054, i64 2153653095, i64 2153653116, i64 2153653144, i64 2153653178}
!117 = !{i64 2154680939, i64 2154681427, i64 2154680976, i64 2154681032, i64 2154681066, i64 2154681090, i64 2154681131, i64 2154681152, i64 2154681180, i64 2154681214}
!118 = !{i64 2158628121}
!119 = !{i64 2158629242}
!120 = !{i64 2159139302}
!121 = !{i64 2149916643}
!122 = !{i64 2149921575}
!123 = !{i64 2149943287}
!124 = !{i64 2149948179}
!125 = !{i64 2150024636}
!126 = !{i64 2148392485, i64 2148392511, i64 2148392540, i64 2148392574, i64 2148392605, i64 2148392628}
!127 = !{i64 2149005862, i64 2149005867, i64 2149005880, i64 2149005924, i64 2149005958, i64 2149005979}
