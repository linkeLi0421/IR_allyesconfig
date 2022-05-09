; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%union.anon.93 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.169, %union.anon.170, [48 x i8], %union.anon.171, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.173, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.169 = type { ptr }
%union.anon.170 = type { i64 }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { i32, ptr }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.175, i32, i32, i32, i16, i16, %union.anon.177, i32, %union.anon.178, %union.anon.179, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.175 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.enetc_ndev_priv = type { ptr, ptr, ptr, i32, [2 x ptr], i16, i16, i16, i16, i16, i32, i32, ptr, [16 x ptr], [16 x ptr], ptr, %struct.psfp_cap, ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.sk_buff_head }
%struct.psfp_cap = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.enetc_bdr = type { ptr, ptr, ptr, %union.anon.191, i16, i32, i32, i32, %union.anon.192, %union.anon.194, ptr, i32, [80 x i8], %struct.enetc_xdp_data, %struct.enetc_ring_stats, i32, i8, i8, ptr, i32, [68 x i8] }
%union.anon.191 = type { ptr }
%union.anon.192 = type { ptr }
%union.anon.194 = type { ptr }
%struct.enetc_xdp_data = type { %struct.xdp_rxq_info, ptr, i32, [120 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.enetc_ring_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.168, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.168 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%union.enetc_tx_bd = type { %struct.anon.195 }
%struct.anon.195 = type { i64, i16, i16, %union.anon.196 }
%union.anon.196 = type { i32 }
%struct.enetc_tx_swbd = type { %union.anon.193, i32, ptr, i16, i16, i32, i8 }
%union.anon.193 = type { ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.anon.197 = type { [3 x i8], i8 }
%struct.enetc_int_vector = type { ptr, ptr, ptr, i32, i32, i32, i16, i8, i8, [100 x i8], %struct.napi_struct, [32 x i8], %struct.dim, [24 x i8], [104 x i8], %struct.enetc_bdr, [0 x %struct.enetc_bdr] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.enetc_rx_swbd = type { i32, ptr, i16, i32, i16 }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.netdev_bpf = type { i32, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [16 x i8] }
%union.anon.3 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%union.enetc_rx_bd = type { %struct.anon.200 }
%struct.anon.200 = type { i64, [8 x i8] }
%struct.anon.201 = type { i16, i16, i32, i16, i16, %union.anon.202 }
%union.anon.202 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.190, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.190 = type { ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { %struct.anon.131, [0 x %struct.sock_filter] }
%struct.anon.131 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@enetc_alloc_msix.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&v->rx_dim.work)\00", [61 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device enable failed\0A\00", [42 x i8] zeroinitializer }, align 32
@enetc_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2900, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA configuration failed: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enetc_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/freescale/enetc/enetc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_pci_probe._entry_ptr = internal global ptr @enetc_pci_probe._entry, section ".printk_index", align 4
@enetc_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2906, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pci_request_regions failed err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@enetc_pci_probe._entry_ptr.9 = internal global ptr @enetc_pci_probe._entry.7, section ".printk_index", align 4
@enetc_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2938, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ioremap() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@enetc_pci_probe._entry_ptr.12 = internal global ptr @enetc_pci_probe._entry.10, section ".printk_index", align 4
@enetc_map_tx_tso_buffs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA map error\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enetc_map_tx_tso_buffs\00", [41 x i8] zeroinitializer }, align 32
@enetc_map_tx_tso_buffs._entry_ptr = internal global ptr @enetc_map_tx_tso_buffs._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMA map error\0A\00", [17 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@enetc_map_tx_buffs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bad packet for one-step timestamping\0A\00", [58 x i8] zeroinitializer }, align 32
@enetc_map_tx_buffs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.19, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_map_tx_buffs\00", [45 x i8] zeroinitializer }, align 32
@enetc_map_tx_buffs._entry_ptr = internal global ptr @enetc_map_tx_buffs._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_hw.h\00", [48 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-rxtx%d\00", [22 x i8] zeroinitializer }, align 32
@enetc_setup_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 2178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request_irq() failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enetc_setup_irqs\00", [47 x i8] zeroinitializer }, align 32
@enetc_setup_irqs._entry_ptr = internal global ptr @enetc_setup_irqs._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@enetc_phylink_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 2280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enetc_phylink_connect\00", [42 x i8] zeroinitializer }, align 32
@enetc_phylink_connect._entry_ptr = internal global ptr @enetc_phylink_connect._entry, section ".printk_index", align 4
@enetc_tx_onestep_tstamp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->tx_onestep_tstamp)\00", [52 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout for tx ring #%d clear\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Max %d traffic classes supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 5, i64 6, i64 10, i64 13]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2801, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2895, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2900, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2906, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2938, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 554, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 385, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 326, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 167, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 306, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [51 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_hw.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 393, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2174, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2178, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2280, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2310, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1984, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2146, i32 30 }
@___asan_gen_.149 = private constant [48 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 2457, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 156, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 613, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 271, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 28, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @enetc_map_tx_buffs._entry, ptr @enetc_map_tx_buffs._entry_ptr, ptr @enetc_map_tx_tso_buffs._entry, ptr @enetc_map_tx_tso_buffs._entry_ptr, ptr @enetc_pci_probe._entry, ptr @enetc_pci_probe._entry.10, ptr @enetc_pci_probe._entry.7, ptr @enetc_pci_probe._entry_ptr, ptr @enetc_pci_probe._entry_ptr.12, ptr @enetc_pci_probe._entry_ptr.9, ptr @enetc_phylink_connect._entry, ptr @enetc_phylink_connect._entry_ptr, ptr @enetc_setup_irqs._entry, ptr @enetc_setup_irqs._entry_ptr, ptr @enetc_alloc_msix.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @enetc_tx_onestep_tstamp_init.__key, ptr @.str.26, ptr @skb_queue_head_init.__key, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_alloc_msix.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_map_tx_tso_buffs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_map_tx_buffs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_setup_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_phylink_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_tx_onestep_tstamp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_xmit(ptr noundef %skb, ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_flags, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %active_offloads = getelementptr i8, ptr %ndev, i32 2340
  %5 = ptrtoint ptr %active_offloads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_offloads, align 4
  %and2 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %conv6 = trunc i32 %6 to i8
  %spec.select = select i1 %tobool3.not, i8 0, i8 %conv6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %.sink = phi i8 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %cb7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %7 = ptrtoint ptr %cb7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %cb7, align 8
  %cb9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = and i8 %.sink, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end.if.end27_crit_edge, label %if.then14

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then14:                                        ; preds = %if.end
  %call.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then14.if.then23_crit_edge, label %if.end.i

if.then14.if.then23_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end.i:                                         ; preds = %if.then14
  %call1.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then23_crit_edge, label %if.end3.i

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end3.i:                                        ; preds = %if.end.i
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !95

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i, i32 0, i32 10
  %9 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %control.i.i, align 1
  br label %lor.lhs.false

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call1.i, align 1
  %13 = and i8 %12, 15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %10, %if.then.i.i ], [ %13, %if.else.i.i ]
  %flag_field.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i, i32 0, i32 5
  %14 = ptrtoint ptr %flag_field.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flag_field.i, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msgtype.0.i.i)
  %cmp.not = icmp eq i8 %msgtype.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp21.not = icmp eq i8 %16, 0
  %or.cond = select i1 %cmp.not, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.end.i.if.then23_crit_edge, %if.then14.if.then23_crit_edge
  %17 = ptrtoint ptr %cb9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cb9, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %lor.lhs.false.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call28 = tail call fastcc i32 @enetc_start_xmit(ptr noundef %skb, ptr noundef %ndev)
  ret i32 %call28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_start_xmit(ptr noundef %skb, ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  %tso.i = alloca %struct.tso_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb, align 8
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %ndev, i32 2520
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #13
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.then.if.then2_crit_edge

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

test_and_set_bit_lock.exit:                       ; preds = %if.then
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #13, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %test_and_set_bit_lock.exit.if.end3_crit_edge, label %test_and_set_bit_lock.exit.if.then2_crit_edge

test_and_set_bit_lock.exit.if.then2_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

test_and_set_bit_lock.exit.if.end3_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %test_and_set_bit_lock.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %tx_skbs = getelementptr i8, ptr %ndev, i32 2568
  tail call void @skb_queue_tail(ptr noundef %tx_skbs, ptr noundef %skb) #13
  br label %cleanup

if.end3:                                          ; preds = %test_and_set_bit_lock.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %7 to i32
  %arrayidx5 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.i.not = icmp eq i16 %13, 0
  br i1 %tobool.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end3
  %next_to_clean.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i = icmp sgt i32 %15, %17
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %18 = xor i32 %17, -1
  %sub3.i = add i32 %15, %18
  br label %enetc_bd_unused.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bd_count.i, align 4
  %21 = xor i32 %17, -1
  %add.i = add i32 %15, %21
  %sub7.i = add i32 %add.i, %20
  br label %enetc_bd_unused.exit

enetc_bd_unused.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %sub7.i, %if.end.i ]
  %call9 = tail call i32 @tso_count_descs(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %call9)
  %cmp = icmp slt i32 %retval.0.i, %call9
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %enetc_bd_unused.exit
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index, align 16
  %conv.i = zext i16 %23 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %cleanup

if.end12:                                         ; preds = %enetc_bd_unused.exit
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tso.i) #13
  %26 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 4
  %29 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 5
  %30 = call ptr @memset(ptr %tso.i, i32 255, i32 20)
  %call.i = call i32 @tso_start(ptr noundef %skb, ptr noundef nonnull %tso.i) #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %32, %call.i
  %33 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next_to_use.i, align 8
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 2
  %35 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 8
  %tso_headers.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 18
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %tso_headers_dma.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 19
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %conv4.i.i = trunc i32 %call.i to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv4.i.i) #13
  %bd_count.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i100237 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i100237, label %if.end12.while.body.i_crit_edge, label %if.end12.while.end47.i_crit_edge

if.end12.while.end47.i_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end47.i

if.end12.while.body.i_crit_edge:                  ; preds = %if.end12
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup44.i.while.body.i_crit_edge, %if.end12.while.body.i_crit_edge
  %count.0.i240 = phi i32 [ %count.1.lcssa.i, %cleanup44.i.while.body.i_crit_edge ], [ 0, %if.end12.while.body.i_crit_edge ]
  %total_len.0.i239 = phi i32 [ %sub5.i, %cleanup44.i.while.body.i_crit_edge ], [ %sub.i, %if.end12.while.body.i_crit_edge ]
  %i.0.i238 = phi i32 [ %i.6.i, %cleanup44.i.while.body.i_crit_edge ], [ %34, %if.end12.while.body.i_crit_edge ]
  %37 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_base.i, align 8
  %arrayidx.i = getelementptr %union.enetc_tx_bd, ptr %38, i32 %i.0.i238
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %35, align 32
  %arrayidx1.i = getelementptr %struct.enetc_tx_swbd, ptr %40, i32 %i.0.i238
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %41 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i, align 4
  %gso_size.i101 = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %gso_size.i101 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %gso_size.i101, align 4
  %conv.i102 = zext i16 %44 to i32
  %45 = call i32 @llvm.umin.i32(i32 %total_len.0.i239, i32 %conv.i102) #13
  %sub5.i = sub nsw i32 %total_len.0.i239, %45
  %46 = ptrtoint ptr %tso_headers.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tso_headers.i, align 4
  %mul.i = shl i32 %i.0.i238, 8
  %add.ptr.i103 = getelementptr i8, ptr %47, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp6.i = icmp eq i32 %sub5.i, 0
  call void @tso_build_hdr(ptr noundef %skb, ptr noundef %add.ptr.i103, ptr noundef nonnull %tso.i, i32 noundef %45, i1 noundef zeroext %cmp6.i) #13
  %48 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i.i, align 8
  %50 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %51 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i.i
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i103, i32 %sub.ptr.sub.i.i.i
  %54 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i24.i.i = zext i16 %55 to i32
  %add.ptr.i.i25.i.i = getelementptr i8, ptr %49, i32 %conv.i.i24.i.i
  %sub.ptr.lhs.cast.i27.i.i = ptrtoint ptr %add.ptr.i.i25.i.i to i32
  %sub.ptr.sub.i29.i.i = sub i32 %sub.ptr.lhs.cast.i27.i.i, %sub.ptr.rhs.cast.i.i.i
  %56 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %57)
  %cmp.not.i.i = icmp eq i8 %57, 8
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %check.i.i, align 4
  br label %if.end.i.i105

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %check3.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %check3.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %check3.i.i, align 2
  br label %if.end.i.i105

if.end.i.i105:                                    ; preds = %if.else.i.i, %if.then.i.i
  %60 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %29, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i104 = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i104, label %if.then4.i.i, label %if.end.i.i105.enetc_tso_hdr_csum.exit.i_crit_edge

if.end.i.i105.enetc_tso_hdr_csum.exit.i_crit_edge: ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tso_hdr_csum.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i103, i32 %sub.ptr.sub.i29.i.i
  %check6.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr5.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %check6.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %check6.i.i, align 2
  %63 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i.i = load i8, ptr %add.ptr5.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %conv7.i.i = zext i8 %bf.clear.i.i to i32
  %64 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr5.i.i, i32 %conv7.i.i) #13, !srcloc !99
  %asmresult.i.i.i = extractvalue { i32, ptr, i32, i32 } %64, 0
  %65 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i.i) #16, !srcloc !100
  %neg.i.i.i.i = xor i32 %65, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i30.i.i = trunc i32 %shr.i.i.i.i to i16
  %66 = ptrtoint ptr %check6.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i30.i.i, ptr %check6.i.i, align 2
  br label %enetc_tso_hdr_csum.exit.i

enetc_tso_hdr_csum.exit.i:                        ; preds = %if.then4.i.i, %if.end.i.i105.enetc_tso_hdr_csum.exit.i_crit_edge
  %67 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i.i.i, align 8
  %69 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i33.i.i = zext i16 %70 to i32
  %add.ptr.i.i34.i.i = getelementptr i8, ptr %68, i32 %conv.i.i33.i.i
  %71 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i36.i.i = ptrtoint ptr %add.ptr.i.i34.i.i to i32
  %sub.ptr.rhs.cast.i37.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i38.neg.i.i = sub i32 %sub.ptr.rhs.cast.i37.i.i, %sub.ptr.lhs.cast.i36.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i38.neg.i.i, %call.i
  %call12.i.i = call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, i32 noundef 0) #13
  %73 = ptrtoint ptr %tso_headers_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tso_headers_dma.i.i, align 8
  %add.i.i = add i32 %74, %mul.i
  %75 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load.i136.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i136.i)
  %tobool.not.i137.i = icmp sgt i32 %bf.load.i136.i, -1
  %76 = lshr i32 %bf.load.i136.i, 25
  %77 = and i32 %76, 64
  %78 = call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %txbd_tmp.sroa.0.sroa.0.0.extract.shift.i.i = zext i32 %78 to i64
  %add5.i.i = add i32 %45, %call.i
  %conv6.i.i = trunc i32 %add5.i.i to i16
  %79 = call i16 @llvm.bswap.i16(i16 %conv6.i.i) #13
  %len.i.i = getelementptr %struct.enetc_tx_swbd, ptr %40, i32 %i.0.i238, i32 4
  %80 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv4.i.i, ptr %len.i.i, align 2
  %do_twostep_tstamp.i.i = getelementptr %struct.enetc_tx_swbd, ptr %40, i32 %i.0.i238, i32 6
  %81 = ptrtoint ptr %do_twostep_tstamp.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load9.i.i = load i8, ptr %do_twostep_tstamp.i.i, align 4
  %bf.clear11.i.i = and i8 %bf.load9.i.i, -97
  store i8 %bf.clear11.i.i, ptr %do_twostep_tstamp.i.i, align 4
  %txbd_tmp.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw i64 %txbd_tmp.sroa.0.sroa.0.0.extract.shift.i.i, 32
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %txbd_tmp.sroa.0.sroa.0.0.insert.shift.i.i, ptr %arrayidx.i, align 8
  %txbd_tmp.sroa.10.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %83 = ptrtoint ptr %txbd_tmp.sroa.10.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %36, ptr %txbd_tmp.sroa.10.0.txbd.sroa_idx.i.i, align 8
  %txbd_tmp.sroa.12.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %84 = ptrtoint ptr %txbd_tmp.sroa.12.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %79, ptr %txbd_tmp.sroa.12.0.txbd.sroa_idx.i.i, align 2
  %txbd_tmp.sroa.14.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %85 = ptrtoint ptr %txbd_tmp.sroa.14.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %77, ptr %txbd_tmp.sroa.14.0.txbd.sroa_idx.i.i, align 4
  br i1 %tobool.not.i137.i, label %enetc_tso_hdr_csum.exit.i.enetc_map_tx_tso_hdr.exit.i_crit_edge, label %if.then15.i.i

enetc_tso_hdr_csum.exit.i.enetc_map_tx_tso_hdr.exit.i_crit_edge: ; preds = %enetc_tso_hdr_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_map_tx_tso_hdr.exit.i

if.then15.i.i:                                    ; preds = %enetc_tso_hdr_csum.exit.i
  %inc.i.i.i = add i32 %i.0.i238, 1
  %86 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %87)
  %cmp.i.i138.i = icmp eq i32 %inc.i.i.i, %87
  br i1 %cmp.i.i138.i, label %if.then.i.i.i, label %if.then15.i.i.enetc_bdr_idx_inc.exit.i.i_crit_edge, !prof !101

if.then15.i.i.enetc_bdr_idx_inc.exit.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i.i

enetc_bdr_idx_inc.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then15.i.i.enetc_bdr_idx_inc.exit.i.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then.i.i.i ], [ %inc.i.i.i, %if.then15.i.i.enetc_bdr_idx_inc.exit.i.i_crit_edge ]
  %88 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bd_base.i, align 8
  %arrayidx.i.i = getelementptr %union.enetc_tx_bd, ptr %89, i32 %i.1.i
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #13
  %90 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vlan_tci.i.i, align 2
  %92 = call i16 @llvm.bswap.i16(i16 %91) #13
  %txbd_tmp.sroa.0.sroa.9.0.insert.ext55.i.i = zext i16 %92 to i64
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %txbd_tmp.sroa.0.sroa.9.0.insert.ext55.i.i, ptr %arrayidx.i.i, align 8
  %txbd_tmp.sroa.10.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %94 = ptrtoint ptr %txbd_tmp.sroa.10.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %txbd_tmp.sroa.10.0.arrayidx.sroa_idx.i.i, align 8
  %txbd_tmp.sroa.12.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 10
  %95 = ptrtoint ptr %txbd_tmp.sroa.12.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %txbd_tmp.sroa.12.0.arrayidx.sroa_idx.i.i, align 2
  %txbd_tmp.sroa.14.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %96 = ptrtoint ptr %txbd_tmp.sroa.14.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 256, ptr %txbd_tmp.sroa.14.0.arrayidx.sroa_idx.i.i, align 4
  br label %enetc_map_tx_tso_hdr.exit.i

enetc_map_tx_tso_hdr.exit.i:                      ; preds = %enetc_bdr_idx_inc.exit.i.i, %enetc_tso_hdr_csum.exit.i.enetc_map_tx_tso_hdr.exit.i_crit_edge
  %i.2.i = phi i32 [ %i.0.i238, %enetc_tso_hdr_csum.exit.i.enetc_map_tx_tso_hdr.exit.i_crit_edge ], [ %i.1.i, %enetc_bdr_idx_inc.exit.i.i ]
  %inc.i = add i32 %count.0.i240, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp10252.not.i = icmp eq i32 %45, 0
  br i1 %cmp10252.not.i, label %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge, label %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge

enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge: ; preds = %enetc_map_tx_tso_hdr.exit.i
  br label %while.body12.i

enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge: ; preds = %enetc_map_tx_tso_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.cond9.i:                                    ; preds = %cleanup.i
  %cmp10.i = icmp sgt i32 %sub30.i, 0
  br i1 %cmp10.i, label %while.cond9.i.while.body12.i_crit_edge, label %while.end.loopexit.i

while.cond9.i.while.body12.i_crit_edge:           ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body12.i

while.body12.i:                                   ; preds = %while.cond9.i.while.body12.i_crit_edge, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge
  %bd_data_num.0258.i = phi i32 [ %inc32.i, %while.cond9.i.while.body12.i_crit_edge ], [ 0, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %count.1257.i = phi i32 [ %inc31.i, %while.cond9.i.while.body12.i_crit_edge ], [ %inc.i, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %csum.0256.i = phi i32 [ %add1.i.i.i, %while.cond9.i.while.body12.i_crit_edge ], [ %call12.i.i, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %data_len.0255.i = phi i32 [ %sub30.i, %while.cond9.i.while.body12.i_crit_edge ], [ %45, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %i.3254.i = phi i32 [ %i.4.i, %while.cond9.i.while.body12.i_crit_edge ], [ %i.2.i, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %pos.0253.i = phi i32 [ %add.i106, %while.cond9.i.while.body12.i_crit_edge ], [ %sub.i.i, %enetc_map_tx_tso_hdr.exit.i.while.body12.i_crit_edge ]
  %97 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %26, align 4
  %99 = call i32 @llvm.smin.i32(i32 %98, i32 %data_len.0255.i) #13
  %inc.i.i = add i32 %i.3254.i, 1
  %100 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %101)
  %cmp.i.i = icmp eq i32 %inc.i.i, %101
  br i1 %cmp.i.i, label %if.then.i139.i, label %while.body12.i.enetc_bdr_idx_inc.exit.i_crit_edge, !prof !101

while.body12.i.enetc_bdr_idx_inc.exit.i_crit_edge: ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i

if.then.i139.i:                                   ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i

enetc_bdr_idx_inc.exit.i:                         ; preds = %if.then.i139.i, %while.body12.i.enetc_bdr_idx_inc.exit.i_crit_edge
  %i.4.i = phi i32 [ 0, %if.then.i139.i ], [ %inc.i.i, %while.body12.i.enetc_bdr_idx_inc.exit.i_crit_edge ]
  %102 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bd_base.i, align 8
  %arrayidx22.i = getelementptr %union.enetc_tx_bd, ptr %103, i32 %i.4.i
  %104 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %35, align 32
  call void @llvm.prefetch.p0(ptr %arrayidx22.i, i32 1, i32 3, i32 1) #13
  %106 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %27, align 4
  %call24.i = call i32 @csum_partial(ptr noundef %107, i32 noundef %99, i32 noundef 0) #13
  %and.i.i.i = and i32 %pos.0253.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %call24.i, i32 %call24.i, i32 24) #13
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %call24.i, i32 %or.i.i.i.i
  %add.i.i.i = add i32 %retval.0.i.i.i, %csum.0256.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %retval.0.i.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %add.i106 = add i32 %99, %pos.0253.i
  %108 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0255.i, i32 %98)
  %cmp27.not.i = icmp sgt i32 %data_len.0255.i, %98
  %110 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %9, align 128
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %109) #13
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %enetc_bdr_idx_inc.exit.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i141.i, !prof !95

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i141.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %111) #13
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i141.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i141.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i141.i
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %111, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i141.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %115, %if.end.i.i.i.i ], [ %113, %if.then.i.i141.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %9, align 128
  call void @debug_dma_mapping_error(ptr noundef %117, i32 noundef -1) #13
  br label %do.end.i

dma_map_single_attrs.exit.i.i:                    ; preds = %enetc_bdr_idx_inc.exit.i
  call void @debug_dma_map_single(ptr noundef %111, ptr noundef %109, i32 noundef %99) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %118 = load ptr, ptr @mem_map, align 4
  %119 = ptrtoint ptr %109 to i32
  %sub.i.i.i = add i32 %119, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %118, i32 %shr.i.i.i
  %and.i.i142.i = and i32 %119, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %111, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i142.i, i32 noundef %99, i32 noundef 1, i32 noundef 0) #13
  %120 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %9, align 128
  call void @debug_dma_mapping_error(ptr noundef %121, i32 noundef %call41.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i143.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i143.i, label %dma_map_single_attrs.exit.i.i.do.end.i_crit_edge, label %if.end.i145.i

dma_map_single_attrs.exit.i.i.do.end.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i145.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  br i1 %cmp27.not.i, label %if.end.i145.i.cleanup.i_crit_edge, label %if.then6.i.i

if.end.i145.i.cleanup.i_crit_edge:                ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then6.i.i:                                     ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #15
  %is_eof.i.i = getelementptr %struct.enetc_tx_swbd, ptr %105, i32 %i.4.i, i32 6
  %122 = ptrtoint ptr %is_eof.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i146.i = load i8, ptr %is_eof.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i146.i, 16
  store i8 %bf.set.i.i, ptr %is_eof.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i.i, %if.end.i145.i.cleanup.i_crit_edge
  %flags.0.i.i = phi i32 [ 128, %if.then6.i.i ], [ 0, %if.end.i145.i.cleanup.i_crit_edge ]
  %conv9.i.i = zext i32 %call41.i.i.i to i64
  %123 = call i64 @llvm.bswap.i64(i64 %conv9.i.i) #13
  %conv11.i.i = trunc i32 %99 to i16
  %124 = call i16 @llvm.bswap.i16(i16 %conv11.i.i) #13
  %dma.i.i = getelementptr %struct.enetc_tx_swbd, ptr %105, i32 %i.4.i, i32 1
  %125 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call41.i.i.i, ptr %dma.i.i, align 4
  %len.i147.i = getelementptr %struct.enetc_tx_swbd, ptr %105, i32 %i.4.i, i32 4
  %126 = ptrtoint ptr %len.i147.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv11.i.i, ptr %len.i147.i, align 2
  %dir.i.i = getelementptr %struct.enetc_tx_swbd, ptr %105, i32 %i.4.i, i32 5
  %127 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %dir.i.i, align 4
  %128 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %123, ptr %arrayidx22.i, align 8
  %txbd_tmp.sroa.6.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i, i32 8
  %129 = ptrtoint ptr %txbd_tmp.sroa.6.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %124, ptr %txbd_tmp.sroa.6.0.txbd.sroa_idx.i.i, align 8
  %txbd_tmp.sroa.8.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i, i32 10
  %130 = ptrtoint ptr %txbd_tmp.sroa.8.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %txbd_tmp.sroa.8.0.txbd.sroa_idx.i.i, align 2
  %txbd_tmp.sroa.9.0.txbd.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx22.i, i32 12
  %131 = ptrtoint ptr %txbd_tmp.sroa.9.0.txbd.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %flags.0.i.i, ptr %txbd_tmp.sroa.9.0.txbd.sroa_idx.i.i, align 4
  %sub30.i = sub i32 %data_len.0255.i, %99
  %inc31.i = add i32 %count.1257.i, 1
  %inc32.i = add i32 %bd_data_num.0258.i, 1
  call void @tso_build_data(ptr noundef %skb, ptr noundef nonnull %tso.i, i32 noundef %99) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inc32.i)
  %cmp33.i = icmp sgt i32 %inc32.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30.i)
  %tobool35.i = icmp ne i32 %sub30.i, 0
  %spec.select.i = select i1 %cmp33.i, i1 %tobool35.i, i1 false
  br i1 %spec.select.i, label %cleanup.i.do.body49.i.preheader_crit_edge, label %while.cond9.i

cleanup.i.do.body49.i.preheader_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.i.preheader

while.end.loopexit.i:                             ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx23.le.i = getelementptr %struct.enetc_tx_swbd, ptr %105, i32 %i.4.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge
  %pos.0.lcssa.i = phi i32 [ %sub.i.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge ], [ %add.i106, %while.end.loopexit.i ]
  %i.3.lcssa.i = phi i32 [ %i.2.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge ], [ %i.4.i, %while.end.loopexit.i ]
  %tx_swbd.0.lcssa.i = phi ptr [ %arrayidx1.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge ], [ %arrayidx23.le.i, %while.end.loopexit.i ]
  %csum.0.lcssa.i = phi i32 [ %call12.i.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge ], [ %add1.i.i.i, %while.end.loopexit.i ]
  %count.1.lcssa.i = phi i32 [ %inc.i, %enetc_map_tx_tso_hdr.exit.i.while.end.i_crit_edge ], [ %inc31.i, %while.end.loopexit.i ]
  %132 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %head.i.i.i.i, align 8
  %134 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i150.i = zext i16 %135 to i32
  %add.ptr.i.i.i151.i = getelementptr i8, ptr %133, i32 %conv.i.i.i150.i
  %136 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i153.i = ptrtoint ptr %add.ptr.i.i.i151.i to i32
  %sub.ptr.rhs.cast.i.i154.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub.i.i155.i = sub i32 %sub.ptr.lhs.cast.i.i153.i, %sub.ptr.rhs.cast.i.i154.i
  %add.ptr.i156.i = getelementptr i8, ptr %add.ptr.i103, i32 %sub.ptr.sub.i.i155.i
  %138 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %29, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i158.i = icmp eq i8 %139, 0
  %140 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i2.i.i = zext i16 %141 to i32
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %133, i32 %conv.i.i2.i.i
  br i1 %tobool.not.i158.i, label %if.else.i.i.i.i, label %if.else.i163.i

if.else.i.i.i.i:                                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 6
  %142 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %protocol.i.i, align 1
  %conv.i.i12.i.i = zext i8 %143 to i32
  %add.i.i.i.i = add i32 %pos.0.lcssa.i, %conv.i.i12.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 9
  %144 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %daddr.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 8
  %146 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %saddr.i.i, align 4
  %148 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %csum.0.lcssa.i, i32 %145, i32 %147, i32 %add.i.i.i.i) #16, !srcloc !102
  %149 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %148) #16, !srcloc !100
  br label %if.end.i166.i

if.else.i163.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %saddr6.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 5
  %daddr8.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 6
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3.i.i, i32 0, i32 3
  %150 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %nexthdr.i.i, align 2
  %conv.i.i161.i = zext i8 %151 to i32
  %call.i.i162.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr6.i.i, ptr noundef %daddr8.i.i, i32 noundef %pos.0.lcssa.i, i32 noundef %conv.i.i161.i, i32 noundef %csum.0.lcssa.i) #13
  %152 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i162.i) #16, !srcloc !100
  br label %if.end.i166.i

if.end.i166.i:                                    ; preds = %if.else.i163.i, %if.else.i.i.i.i
  %csum_final.0.in.in.in.i.i = phi i32 [ %152, %if.else.i163.i ], [ %149, %if.else.i.i.i.i ]
  %csum_final.0.in.in.i.i = xor i32 %csum_final.0.in.in.in.i.i, -1
  %csum_final.0.in.i.i = lshr i32 %csum_final.0.in.in.i.i, 16
  %csum_final.0.i.i = trunc i32 %csum_final.0.in.i.i to i16
  %153 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %154)
  %cmp.not.i165.i = icmp eq i8 %154, 8
  br i1 %cmp.not.i165.i, label %if.else13.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #15
  %check.i167.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i156.i, i32 0, i32 6
  %155 = ptrtoint ptr %check.i167.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %csum_final.0.i.i, ptr %check.i167.i, align 4
  br label %enetc_tso_complete_csum.exit.i

if.else13.i.i:                                    ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #15
  %check14.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i156.i, i32 0, i32 3
  %156 = ptrtoint ptr %check14.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %csum_final.0.i.i, ptr %check14.i.i, align 2
  br label %enetc_tso_complete_csum.exit.i

enetc_tso_complete_csum.exit.i:                   ; preds = %if.else13.i.i, %if.then12.i.i
  br i1 %cmp6.i, label %if.then42.i, label %enetc_tso_complete_csum.exit.i.if.end43.i_crit_edge

enetc_tso_complete_csum.exit.i.if.end43.i_crit_edge: ; preds = %enetc_tso_complete_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.then42.i:                                      ; preds = %enetc_tso_complete_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %tx_swbd.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %skb, ptr %tx_swbd.0.lcssa.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %enetc_tso_complete_csum.exit.i.if.end43.i_crit_edge
  %inc.i168.i = add i32 %i.3.lcssa.i, 1
  %158 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i168.i, i32 %159)
  %cmp.i170.i = icmp eq i32 %inc.i168.i, %159
  br i1 %cmp.i170.i, label %if.then.i171.i, label %if.end43.i.cleanup44.i_crit_edge, !prof !101

if.end43.i.cleanup44.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44.i

if.then.i171.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44.i

cleanup44.i:                                      ; preds = %if.then.i171.i, %if.end43.i.cleanup44.i_crit_edge
  %i.6.i = phi i32 [ 0, %if.then.i171.i ], [ %inc.i168.i, %if.end43.i.cleanup44.i_crit_edge ]
  %cmp.i100 = icmp sgt i32 %sub5.i, 0
  br i1 %cmp.i100, label %cleanup44.i.while.body.i_crit_edge, label %cleanup44.i.while.end47.i_crit_edge

cleanup44.i.while.end47.i_crit_edge:              ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end47.i

cleanup44.i.while.body.i_crit_edge:               ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end47.i:                                    ; preds = %cleanup44.i.while.end47.i_crit_edge, %if.end12.while.end47.i_crit_edge
  %i.0.i.lcssa = phi i32 [ %34, %if.end12.while.end47.i_crit_edge ], [ %i.6.i, %cleanup44.i.while.end47.i_crit_edge ]
  %count.0.i.lcssa = phi i32 [ 0, %if.end12.while.end47.i_crit_edge ], [ %count.1.lcssa.i, %cleanup44.i.while.end47.i_crit_edge ]
  %160 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %i.0.i.lcssa, ptr %next_to_use.i, align 8
  %161 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 3
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %164 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i174.i = icmp eq i32 %164, 0
  br i1 %tobool.not.i.i174.i, label %while.end47.i.enetc_update_tx_ring_tail.exit.i_crit_edge, label %land.rhs.i.i175.i

while.end47.i.enetc_update_tx_ring_tail.exit.i_crit_edge: ; preds = %while.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit.i

land.rhs.i.i175.i:                                ; preds = %while.end47.i
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i175.i.enetc_update_tx_ring_tail.exit.i_crit_edge, !prof !101

land.rhs.i.i175.i.enetc_update_tx_ring_tail.exit.i_crit_edge: ; preds = %land.rhs.i.i175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i175.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_update_tx_ring_tail.exit.i

enetc_update_tx_ring_tail.exit.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i175.i.enetc_update_tx_ring_tail.exit.i_crit_edge, %while.end47.i.enetc_update_tx_ring_tail.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  %165 = call i32 @llvm.bswap.i32(i32 %i.0.i.lcssa) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %165) #13, !srcloc !104
  br label %enetc_map_tx_tso_buffs.exit

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %ndev.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 1
  %166 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ndev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %167, ptr noundef nonnull @.str.15) #17
  %168 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %9, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.13) #17
  br label %do.body49.i.preheader

do.body49.i.preheader:                            ; preds = %do.end.i, %cleanup.i.do.body49.i.preheader_crit_edge
  %count.4.i.ph = phi i32 [ %count.1257.i, %do.end.i ], [ %inc31.i, %cleanup.i.do.body49.i.preheader_crit_edge ]
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.end54.i.do.body49.i_crit_edge, %do.body49.i.preheader
  %i.7.i = phi i32 [ %dec.i, %if.end54.i.do.body49.i_crit_edge ], [ %i.4.i, %do.body49.i.preheader ]
  %count.4.i = phi i32 [ %dec56.i, %if.end54.i.do.body49.i_crit_edge ], [ %count.4.i.ph, %do.body49.i.preheader ]
  %170 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %35, align 32
  %arrayidx50.i = getelementptr %struct.enetc_tx_swbd, ptr %171, i32 %i.7.i
  %is_xdp_redirect.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %171, i32 %i.7.i, i32 6
  %172 = ptrtoint ptr %is_xdp_redirect.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %bf.load.i.i.i = load i8, ptr %is_xdp_redirect.i.i.i, align 4
  %173 = and i8 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i.i176.i = icmp eq i8 %173, 0
  br i1 %tobool.not.i.i176.i, label %do.body49.i.enetc_tx_swbd_get_xdp_frame.exit.i.i_crit_edge, label %if.then.i.i177.i

do.body49.i.enetc_tx_swbd_get_xdp_frame.exit.i.i_crit_edge: ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i

if.then.i.i177.i:                                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  %174 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx50.i, align 4
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i

enetc_tx_swbd_get_xdp_frame.exit.i.i:             ; preds = %if.then.i.i177.i, %do.body49.i.enetc_tx_swbd_get_xdp_frame.exit.i.i_crit_edge
  %retval.0.i.i178.i = phi ptr [ %175, %if.then.i.i177.i ], [ null, %do.body49.i.enetc_tx_swbd_get_xdp_frame.exit.i.i_crit_edge ]
  %176 = and i8 %bf.load.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %if.end.i.i.i, label %enetc_tx_swbd_get_xdp_frame.exit.i.i.enetc_tx_swbd_get_skb.exit.i.i_crit_edge

enetc_tx_swbd_get_xdp_frame.exit.i.i.enetc_tx_swbd_get_skb.exit.i.i_crit_edge: ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_skb.exit.i.i

if.end.i.i.i:                                     ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %178 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx50.i, align 4
  br label %enetc_tx_swbd_get_skb.exit.i.i

enetc_tx_swbd_get_skb.exit.i.i:                   ; preds = %if.end.i.i.i, %enetc_tx_swbd_get_xdp_frame.exit.i.i.enetc_tx_swbd_get_skb.exit.i.i_crit_edge
  %retval.0.i16.i.i = phi ptr [ %179, %if.end.i.i.i ], [ null, %enetc_tx_swbd_get_xdp_frame.exit.i.i.enetc_tx_swbd_get_skb.exit.i.i_crit_edge ]
  %dma.i179.i = getelementptr %struct.enetc_tx_swbd, ptr %171, i32 %i.7.i, i32 1
  %180 = ptrtoint ptr %dma.i179.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma.i179.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.not.i180.i = icmp eq i32 %181, 0
  br i1 %tobool.not.i180.i, label %enetc_tx_swbd_get_skb.exit.i.i.if.end.i182.i_crit_edge, label %if.then.i181.i

enetc_tx_swbd_get_skb.exit.i.i.if.end.i182.i_crit_edge: ; preds = %enetc_tx_swbd_get_skb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i182.i

if.then.i181.i:                                   ; preds = %enetc_tx_swbd_get_skb.exit.i.i
  %182 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %9, align 128
  %184 = and i8 %bf.load.i.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %184)
  %.not.i.i.i = icmp eq i8 %184, -120
  br i1 %.not.i.i.i, label %if.then.i181.i.enetc_unmap_tx_buff.exit.i.i_crit_edge, label %if.end.sink.split.i.i.i

if.then.i181.i.enetc_unmap_tx_buff.exit.i.i_crit_edge: ; preds = %if.then.i181.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i.i

if.end.sink.split.i.i.i:                          ; preds = %if.then.i181.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %171, i32 %i.7.i, i32 4
  %185 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %len.i.i.i, align 2
  %conv4.i.i.i = zext i16 %186 to i32
  br label %enetc_unmap_tx_buff.exit.i.i

enetc_unmap_tx_buff.exit.i.i:                     ; preds = %if.end.sink.split.i.i.i, %if.then.i181.i.enetc_unmap_tx_buff.exit.i.i_crit_edge
  %conv8.sink.i.i.i = phi i32 [ %conv4.i.i.i, %if.end.sink.split.i.i.i ], [ 4096, %if.then.i181.i.enetc_unmap_tx_buff.exit.i.i_crit_edge ]
  %dir9.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %171, i32 %i.7.i, i32 5
  %187 = ptrtoint ptr %dir9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dir9.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %183, i32 noundef %181, i32 noundef %conv8.sink.i.i.i, i32 noundef %188, i32 noundef 0) #13
  %189 = ptrtoint ptr %dma.i179.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %dma.i179.i, align 4
  br label %if.end.i182.i

if.end.i182.i:                                    ; preds = %enetc_unmap_tx_buff.exit.i.i, %enetc_tx_swbd_get_skb.exit.i.i.if.end.i182.i_crit_edge
  %tobool2.not.i.i = icmp eq ptr %retval.0.i.i178.i, null
  br i1 %tobool2.not.i.i, label %if.else.i183.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #15
  %190 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx50.i, align 4
  call void @xdp_return_frame(ptr noundef %191) #13
  br label %if.end7.sink.split.i.i

if.else.i183.i:                                   ; preds = %if.end.i182.i
  %tobool4.not.i.i = icmp eq ptr %retval.0.i16.i.i, null
  br i1 %tobool4.not.i.i, label %if.else.i183.i.enetc_free_tx_frame.exit.i_crit_edge, label %if.then5.i.i

if.else.i183.i.enetc_free_tx_frame.exit.i_crit_edge: ; preds = %if.else.i183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_frame.exit.i

if.then5.i.i:                                     ; preds = %if.else.i183.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__dev_kfree_skb_any(ptr noundef nonnull %retval.0.i16.i.i, i32 noundef 1) #13
  br label %if.end7.sink.split.i.i

if.end7.sink.split.i.i:                           ; preds = %if.then5.i.i, %if.then3.i.i
  %192 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %arrayidx50.i, align 4
  br label %enetc_free_tx_frame.exit.i

enetc_free_tx_frame.exit.i:                       ; preds = %if.end7.sink.split.i.i, %if.else.i183.i.enetc_free_tx_frame.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.7.i)
  %cmp51.i = icmp eq i32 %i.7.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %enetc_free_tx_frame.exit.i.if.end54.i_crit_edge

enetc_free_tx_frame.exit.i.if.end54.i_crit_edge:  ; preds = %enetc_free_tx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

if.then53.i:                                      ; preds = %enetc_free_tx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %193 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bd_count.i.i.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %enetc_free_tx_frame.exit.i.if.end54.i_crit_edge
  %i.8.i = phi i32 [ %194, %if.then53.i ], [ %i.7.i, %enetc_free_tx_frame.exit.i.if.end54.i_crit_edge ]
  %dec.i = add i32 %i.8.i, -1
  %dec56.i = add i32 %count.4.i, -1
  %tobool57.not.i = icmp eq i32 %count.4.i, 0
  br i1 %tobool57.not.i, label %if.end54.i.enetc_map_tx_tso_buffs.exit_crit_edge, label %if.end54.i.do.body49.i_crit_edge

if.end54.i.do.body49.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.i

if.end54.i.enetc_map_tx_tso_buffs.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_map_tx_tso_buffs.exit

enetc_map_tx_tso_buffs.exit:                      ; preds = %if.end54.i.enetc_map_tx_tso_buffs.exit_crit_edge, %enetc_update_tx_ring_tail.exit.i
  %retval.0.i107 = phi i32 [ %count.0.i.lcssa, %enetc_update_tx_ring_tail.exit.i ], [ 0, %if.end54.i.enetc_map_tx_tso_buffs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i) #13
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  br label %if.end52

if.else:                                          ; preds = %if.end3
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %195 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %196)
  %cmp16 = icmp ugt i8 %196, 13
  br i1 %cmp16, label %if.then20, label %if.else.if.end31_crit_edge, !prof !101

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then20:                                        ; preds = %if.else
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %197 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.i.not.i = icmp eq i32 %198, 0
  br i1 %tobool.i.not.i, label %if.then20.if.end31_crit_edge, label %cond.true.i

if.then20.if.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

cond.true.i:                                      ; preds = %if.then20
  %call.i.i108 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %198) #13
  %tobool.not.i.i109 = icmp eq ptr %call.i.i108, null
  br i1 %tobool.not.i.i109, label %cond.true.i.drop_packet_err_crit_edge, label %cond.true.i.if.end31_crit_edge

cond.true.i.if.end31_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

cond.true.i.drop_packet_err_crit_edge:            ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_packet_err

if.end31:                                         ; preds = %cond.true.i.if.end31_crit_edge, %if.then20.if.end31_crit_edge, %if.else.if.end31_crit_edge
  %199 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %end.i.i, align 4
  %nr_frags33 = getelementptr inbounds %struct.skb_shared_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %nr_frags33 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %nr_frags33, align 2
  %conv34 = zext i8 %202 to i32
  %next_to_clean.i111 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 7
  %203 = ptrtoint ptr %next_to_clean.i111 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %next_to_clean.i111, align 4
  %next_to_use.i112 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 6
  %205 = ptrtoint ptr %next_to_use.i112 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %next_to_use.i112, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %204, i32 %206)
  %cmp.i113 = icmp sgt i32 %204, %206
  br i1 %cmp.i113, label %if.then.i115, label %if.end.i119

if.then.i115:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %207 = xor i32 %206, -1
  %sub3.i114 = add i32 %204, %207
  br label %enetc_bd_unused.exit121

if.end.i119:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i116 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %208 = ptrtoint ptr %bd_count.i116 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bd_count.i116, align 4
  %210 = xor i32 %206, -1
  %add.i117 = add i32 %204, %210
  %sub7.i118 = add i32 %add.i117, %209
  br label %enetc_bd_unused.exit121

enetc_bd_unused.exit121:                          ; preds = %if.end.i119, %if.then.i115
  %retval.0.i120 = phi i32 [ %sub3.i114, %if.then.i115 ], [ %sub7.i118, %if.end.i119 ]
  %add36 = add nuw nsw i32 %conv34, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i120, i32 %add36)
  %cmp37 = icmp slt i32 %retval.0.i120, %add36
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %enetc_bd_unused.exit121
  call void @__sanitizer_cov_trace_pc() #15
  %index40 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 4
  %211 = ptrtoint ptr %index40 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %index40, align 16
  %conv.i122 = zext i16 %212 to i32
  %_tx.i.i123 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %213 = ptrtoint ptr %_tx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %_tx.i.i123, align 128
  %state.i.i124 = getelementptr %struct.netdev_queue, ptr %214, i32 %conv.i122, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i124) #13
  br label %cleanup

if.end41:                                         ; preds = %enetc_bd_unused.exit121
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %215 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %215)
  %bf.load = load i16, ptr %ip_summed, align 8
  %216 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %216)
  %cmp43 = icmp eq i16 %216, 1536
  br i1 %cmp43, label %if.then45, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then45:                                        ; preds = %if.end41
  %call46 = tail call i32 @skb_checksum_help(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then45.drop_packet_err_crit_edge

if.then45.drop_packet_err_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_packet_err

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end50:                                         ; preds = %if.then45.if.end50_crit_edge, %if.end41.if.end50_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %ndev.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 1
  %217 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ndev.i, align 4
  %si.i = getelementptr i8, ptr %218, i32 2312
  %219 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %si.i, align 4
  %hw1.i = getelementptr inbounds %struct.enetc_si, ptr %220, i32 0, i32 1
  %len.i.i125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %221 = ptrtoint ptr %len.i.i125 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len.i.i125, align 4
  %data_len.i.i126 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %223 = ptrtoint ptr %data_len.i.i126 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %data_len.i.i126, align 8
  %sub.i.i127 = sub i32 %222, %224
  %225 = ptrtoint ptr %next_to_use.i112 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %next_to_use.i112, align 8
  %bd_base.i129 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 2
  %227 = ptrtoint ptr %bd_base.i129 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bd_base.i129, align 8
  %arrayidx.i130 = getelementptr %union.enetc_tx_bd, ptr %228, i32 %226
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i130, i32 1, i32 3, i32 1) #13
  %229 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %9, align 128
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %231 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %data.i, align 4
  %call.i.i131 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %232) #13
  br i1 %call.i.i131, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end50
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i133, !prof !95

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i133:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %230) #13
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %230, i32 0, i32 3
  %233 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i132 = icmp eq ptr %234, null
  br i1 %tobool.not.i.i.i132, label %if.end.i.i.i134, label %if.then.i.i133.dev_name.exit.i.i_crit_edge

if.then.i.i133.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i134:                                  ; preds = %if.then.i.i133
  call void @__sanitizer_cov_trace_pc() #15
  %235 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %230, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i134, %if.then.i.i133.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i135 = phi ptr [ %236, %if.end.i.i.i134 ], [ %234, %if.then.i.i133.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i135) #13
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %237 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %9, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %238, i32 noundef -1) #13
  br label %do.end452.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end50
  tail call void @debug_dma_map_single(ptr noundef %230, ptr noundef %232, i32 noundef %sub.i.i127) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %239 = load ptr, ptr @mem_map, align 4
  %240 = ptrtoint ptr %232 to i32
  %sub.i670.i = add i32 %240, 1073741824
  %shr.i.i = lshr i32 %sub.i670.i, 12
  %add.ptr.i671.i = getelementptr %struct.page, ptr %239, i32 %shr.i.i
  %and.i.i136 = and i32 %240, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %230, ptr noundef %add.ptr.i671.i, i32 noundef %and.i.i136, i32 noundef %sub.i.i127, i32 noundef 1, i32 noundef 0) #13
  %241 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %9, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %242, i32 noundef %call41.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i137 = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i137, label %dma_map_single_attrs.exit.i.do.end452.i_crit_edge, label %if.end.i138

dma_map_single_attrs.exit.i.do.end452.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end452.i

if.end.i138:                                      ; preds = %dma_map_single_attrs.exit.i
  %243 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #13
  %temp_bd.sroa.0.sroa.0.0.extract.shift.i = zext i32 %243 to i64
  %conv8.i = trunc i32 %sub.i.i127 to i16
  %244 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #13
  %245 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 8
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 32
  %arrayidx9.i = getelementptr %struct.enetc_tx_swbd, ptr %247, i32 %226
  %dma10.i = getelementptr %struct.enetc_tx_swbd, ptr %247, i32 %226, i32 1
  %248 = ptrtoint ptr %dma10.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %call41.i.i, ptr %dma10.i, align 4
  %len12.i = getelementptr %struct.enetc_tx_swbd, ptr %247, i32 %226, i32 4
  %249 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv8.i, ptr %len12.i, align 2
  %is_dma_page.i = getelementptr %struct.enetc_tx_swbd, ptr %247, i32 %226, i32 6
  %250 = ptrtoint ptr %is_dma_page.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %bf.load.i = load i8, ptr %is_dma_page.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %is_dma_page.i, align 4
  %dir.i = getelementptr %struct.enetc_tx_swbd, ptr %247, i32 %226, i32 5
  %251 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %dir.i, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %252 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %bf.load13.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load13.i)
  %tobool14.not.i = icmp sgt i32 %bf.load13.i, -1
  %253 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %cb, align 8
  %conv16.i = zext i8 %254 to i32
  %and.i = and i32 %conv16.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end77.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i138
  %call.i672.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i672.i)
  %cmp.i673.i = icmp eq i32 %call.i672.i, 0
  br i1 %cmp.i673.i, label %if.then18.i.land.end.i_crit_edge, label %if.end.i.i140

if.then18.i.land.end.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

if.end.i.i140:                                    ; preds = %if.then18.i
  %call1.i.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call.i672.i) #13
  %tobool.not.i.i139 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i139, label %if.end.i.i140.land.end.i_crit_edge, label %if.end3.i.i

if.end.i.i140.land.end.i_crit_edge:               ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

if.end3.i.i:                                      ; preds = %if.end.i.i140
  %and.i674.i = and i32 %call.i672.i, 112
  %255 = add nsw i32 %and.i674.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %255)
  %switch.selectcmp.i.i = icmp ult i32 %255, 32
  %256 = zext i1 %switch.selectcmp.i.i to i8
  %and.i.i.i141 = and i32 %call.i672.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i141)
  %tobool.not.i.i675.i = icmp eq i32 %and.i.i.i141, 0
  br i1 %tobool.not.i.i675.i, label %if.else.i.i.i, label %if.then.i.i.i142, !prof !95

if.then.i.i.i142:                                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %control.i.i.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i.i, i32 0, i32 10
  %257 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %control.i.i.i, align 1
  br label %lor.lhs.false.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %259 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %call1.i.i, align 1
  %261 = and i8 %260, 15
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i142
  %msgtype.0.i.i.i = phi i8 [ %258, %if.then.i.i.i142 ], [ %261, %if.else.i.i.i ]
  %flag_field.i.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i.i, i32 0, i32 5
  %262 = ptrtoint ptr %flag_field.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %flag_field.i.i, align 1
  %264 = and i8 %263, 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %265 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %267 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i143 = zext i16 %268 to i32
  %add.ptr.i.i.i144 = getelementptr i8, ptr %266, i32 %conv.i.i.i143
  %correction.i.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i.i, i32 0, i32 6
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %correction.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i144 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv12.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %add.ptr.i676.i = getelementptr i8, ptr %call1.i.i, i32 34
  %sub.ptr.lhs.cast13.i.i = ptrtoint ptr %add.ptr.i676.i to i32
  %sub.ptr.sub15.i.i = sub i32 %sub.ptr.lhs.cast13.i.i, %sub.ptr.rhs.cast.i.i
  %conv16.i.i = trunc i32 %sub.ptr.sub15.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msgtype.0.i.i.i)
  %cmp.not.i = icmp eq i8 %msgtype.0.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool25.not.i = icmp eq i8 %264, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %tobool25.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end77.thread.i_crit_edge, label %lor.lhs.false.i.land.end.i_crit_edge

lor.lhs.false.i.land.end.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

lor.lhs.false.i.if.end77.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.thread.i

land.end.i:                                       ; preds = %lor.lhs.false.i.land.end.i_crit_edge, %if.end.i.i140.land.end.i_crit_edge, %if.then18.i.land.end.i_crit_edge
  %offset2.0792.i = phi i16 [ %conv16.i.i, %lor.lhs.false.i.land.end.i_crit_edge ], [ -1, %if.then18.i.land.end.i_crit_edge ], [ -1, %if.end.i.i140.land.end.i_crit_edge ]
  %offset1.0791.i = phi i16 [ %conv12.i.i, %lor.lhs.false.i.land.end.i_crit_edge ], [ -1, %if.then18.i.land.end.i_crit_edge ], [ -1, %if.end.i.i140.land.end.i_crit_edge ]
  %udp.0790.i = phi i8 [ %256, %lor.lhs.false.i.land.end.i_crit_edge ], [ -1, %if.then18.i.land.end.i_crit_edge ], [ -1, %if.end.i.i140.land.end.i_crit_edge ]
  %.b667.i = load i1, ptr @enetc_map_tx_buffs.__already_done, align 1
  br i1 %.b667.i, label %land.end.i.if.end77.thread.i_crit_edge, label %if.then38.i, !prof !95

land.end.i.if.end77.thread.i_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.thread.i

if.then38.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @enetc_map_tx_buffs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.18) #13
  br label %if.end77.thread.i

if.end77.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #15
  %and73.i = and i32 %conv16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp ne i32 %and73.i, 0
  %269 = trunc i32 %and73.i to i8
  %270 = shl nuw nsw i8 %269, 5
  br label %if.end77.thread.i

if.end77.thread.i:                                ; preds = %if.end77.i, %if.then38.i, %land.end.i.if.end77.thread.i_crit_edge, %lor.lhs.false.i.if.end77.thread.i_crit_edge
  %do_onestep_tstamp.0.off0803.i = phi i1 [ false, %if.end77.i ], [ false, %if.then38.i ], [ false, %land.end.i.if.end77.thread.i_crit_edge ], [ true, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %do_twostep_tstamp.0.off0802.i = phi i1 [ %tobool74.not.i, %if.end77.i ], [ false, %if.then38.i ], [ false, %land.end.i.if.end77.thread.i_crit_edge ], [ false, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %offset2.1801.i = phi i16 [ -1, %if.end77.i ], [ %offset2.0792.i, %if.then38.i ], [ %offset2.0792.i, %land.end.i.if.end77.thread.i_crit_edge ], [ %conv16.i.i, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %offset1.1800.i = phi i16 [ -1, %if.end77.i ], [ %offset1.0791.i, %if.then38.i ], [ %offset1.0791.i, %land.end.i.if.end77.thread.i_crit_edge ], [ %conv12.i.i, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %udp.1799.i = phi i8 [ -1, %if.end77.i ], [ %udp.0790.i, %if.then38.i ], [ %udp.0790.i, %land.end.i.if.end77.thread.i_crit_edge ], [ %256, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %271 = phi i8 [ %270, %if.end77.i ], [ 0, %if.then38.i ], [ 0, %land.end.i.if.end77.thread.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end77.thread.i_crit_edge ]
  %272 = ptrtoint ptr %is_dma_page.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load81804.i = load i8, ptr %is_dma_page.i, align 4
  %bf.clear82.i = and i8 %bf.load81804.i, -97
  %bf.shl90.i = shl nuw nsw i8 %271, 1
  %bf.set83.i = or i8 %bf.shl90.i, %271
  %bf.set92.i = or i8 %bf.set83.i, %bf.clear82.i
  store i8 %bf.set92.i, ptr %is_dma_page.i, align 4
  %tobool14.not.not.i = xor i1 %tobool14.not.i, true
  %brmerge.i = or i1 %do_onestep_tstamp.0.off0803.i, %tobool14.not.not.i
  %brmerge668.i = select i1 %brmerge.i, i1 true, i1 %do_twostep_tstamp.0.off0802.i
  %flags.0.i = select i1 %brmerge668.i, i8 64, i8 0
  %tsd_enable.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 16
  %273 = ptrtoint ptr %tsd_enable.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %tsd_enable.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool105.not.i = icmp eq i8 %274, 0
  %275 = or i8 %flags.0.i, 18
  %flags.1.i = select i1 %tobool105.not.i, i8 %flags.0.i, i8 %275
  %276 = ptrtoint ptr %len.i.i125 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %len.i.i125, align 4
  %conv112.i = trunc i32 %277 to i16
  %278 = tail call i16 @llvm.bswap.i16(i16 %conv112.i) #13
  %temp_bd.sroa.18.15.insert.ext.i = zext i8 %flags.1.i to i32
  %and115.i = and i32 %temp_bd.sroa.18.15.insert.ext.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %if.end77.thread.i.if.end119.i_crit_edge, label %if.then117.i

if.end77.thread.i.if.end119.i_crit_edge:          ; preds = %if.end77.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119.i

if.then117.i:                                     ; preds = %if.end77.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %279 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %279, align 8
  %shl.i.i = shl nuw nsw i32 %temp_bd.sroa.18.15.insert.ext.i, 24
  %282 = trunc i64 %281 to i32
  %283 = lshr i32 %282, 5
  %284 = and i32 %283, 33554431
  %conv2.i.i = or i32 %284, %shl.i.i
  %285 = tail call i32 @llvm.bswap.i32(i32 %conv2.i.i) #13
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then117.i, %if.end77.thread.i.if.end119.i_crit_edge
  %temp_bd.sroa.18.0.i = phi i32 [ %temp_bd.sroa.18.15.insert.ext.i, %if.end77.thread.i.if.end119.i_crit_edge ], [ %285, %if.then117.i ]
  %and121.i = and i32 %temp_bd.sroa.18.15.insert.ext.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %if.end119.i.if.end394.i_crit_edge, label %if.then123.i

if.end119.i.if.end394.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end394.i

if.then123.i:                                     ; preds = %if.end119.i
  %temp_bd.sroa.0.sroa.0.0.insert.shift.i = shl nuw i64 %temp_bd.sroa.0.sroa.0.0.extract.shift.i, 32
  %286 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %temp_bd.sroa.0.sroa.0.0.insert.shift.i, ptr %arrayidx.i130, align 8
  %temp_bd.sroa.13.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i130, i32 8
  %287 = ptrtoint ptr %temp_bd.sroa.13.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %244, ptr %temp_bd.sroa.13.0.arrayidx.sroa_idx.i, align 8
  %temp_bd.sroa.16.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i130, i32 10
  %288 = ptrtoint ptr %temp_bd.sroa.16.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %278, ptr %temp_bd.sroa.16.0.arrayidx.sroa_idx.i, align 2
  %temp_bd.sroa.18.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i130, i32 12
  %289 = ptrtoint ptr %temp_bd.sroa.18.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %temp_bd.sroa.18.0.i, ptr %temp_bd.sroa.18.0.arrayidx.sroa_idx.i, align 4
  %incdec.ptr.i = getelementptr %struct.enetc_tx_swbd, ptr %arrayidx9.i, i32 1
  %incdec.ptr124.i = getelementptr %union.enetc_tx_bd, ptr %arrayidx.i130, i32 1
  %inc125.i = add i32 %226, 1
  %bd_count.i145 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %290 = ptrtoint ptr %bd_count.i145 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %bd_count.i145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc125.i, i32 %291)
  %cmp126.i = icmp eq i32 %inc125.i, %291
  br i1 %cmp126.i, label %if.then134.i, label %if.then123.i.if.end137.i_crit_edge, !prof !101

if.then123.i.if.end137.i_crit_edge:               ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137.i

if.then134.i:                                     ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #15
  %292 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %245, align 32
  %294 = ptrtoint ptr %bd_base.i129 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %bd_base.i129, align 8
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then134.i, %if.then123.i.if.end137.i_crit_edge
  %i.0.i146 = phi i32 [ 0, %if.then134.i ], [ %inc125.i, %if.then123.i.if.end137.i_crit_edge ]
  %tx_swbd.0.i = phi ptr [ %293, %if.then134.i ], [ %incdec.ptr.i, %if.then123.i.if.end137.i_crit_edge ]
  %txbd.0.i = phi ptr [ %295, %if.then134.i ], [ %incdec.ptr124.i, %if.then123.i.if.end137.i_crit_edge ]
  tail call void @llvm.prefetch.p0(ptr %txbd.0.i, i32 1, i32 3, i32 1) #13
  br i1 %tobool14.not.i, label %if.end137.i.if.end143.i_crit_edge, label %if.then139.i

if.end137.i.if.end143.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143.i

if.then139.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %296 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %vlan_tci.i, align 2
  %298 = tail call i16 @llvm.bswap.i16(i16 %297) #13
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then139.i, %if.end137.i.if.end143.i_crit_edge
  %temp_bd.sroa.0.sroa.12.0.i = phi i16 [ 0, %if.end137.i.if.end143.i_crit_edge ], [ %298, %if.then139.i ]
  %e_flags.0.i = phi i8 [ 0, %if.end137.i.if.end143.i_crit_edge ], [ 1, %if.then139.i ]
  br i1 %do_onestep_tstamp.0.off0803.i, label %if.then145.i, label %if.else380.i

if.then145.i:                                     ; preds = %if.end143.i
  %299 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %300, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %301 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool.not.i678.i = icmp eq i32 %301, 0
  br i1 %tobool.not.i678.i, label %if.then145.i.enetc_rd_reg_hot.exit.i_crit_edge, label %land.rhs.i679.i

if.then145.i.enetc_rd_reg_hot.exit.i_crit_edge:   ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i

land.rhs.i679.i:                                  ; preds = %if.then145.i
  %call.i.i.i148 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i148)
  %cmp.not.i.i149 = icmp eq i32 %call.i.i.i148, 0
  br i1 %cmp.not.i.i149, label %do.end.i.i, label %land.rhs.i679.i.enetc_rd_reg_hot.exit.i_crit_edge, !prof !101

land.rhs.i679.i.enetc_rd_reg_hot.exit.i_crit_edge: ; preds = %land.rhs.i679.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i679.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit.i

enetc_rd_reg_hot.exit.i:                          ; preds = %do.end.i.i, %land.rhs.i679.i.enetc_rd_reg_hot.exit.i_crit_edge, %if.then145.i.enetc_rd_reg_hot.exit.i_crit_edge
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #13, !srcloc !105
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %304 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %hw1.i, align 4
  %add.ptr149.i = getelementptr i8, ptr %305, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %306 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.i681.i = icmp eq i32 %306, 0
  br i1 %tobool.not.i681.i, label %enetc_rd_reg_hot.exit.i.if.end347.i_crit_edge, label %land.rhs.i684.i

enetc_rd_reg_hot.exit.i.if.end347.i_crit_edge:    ; preds = %enetc_rd_reg_hot.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end347.i

land.rhs.i684.i:                                  ; preds = %enetc_rd_reg_hot.exit.i
  %call.i.i682.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i682.i)
  %cmp.not.i683.i = icmp eq i32 %call.i.i682.i, 0
  br i1 %cmp.not.i683.i, label %do.end.i685.i, label %land.rhs.i684.i.if.end347.i_crit_edge, !prof !101

land.rhs.i684.i.if.end347.i_crit_edge:            ; preds = %land.rhs.i684.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end347.i

do.end.i685.i:                                    ; preds = %land.rhs.i684.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %if.end347.i

if.end347.i:                                      ; preds = %do.end.i685.i, %land.rhs.i684.i.if.end347.i_crit_edge, %enetc_rd_reg_hot.exit.i.if.end347.i_crit_edge
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %308 = zext i32 %307 to i64
  %309 = zext i32 %302 to i64
  %310 = shl nuw i64 %309, 32
  %311 = or i64 %310, %308
  %312 = tail call i64 @llvm.bswap.i64(i64 %311) #13
  %313 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %312, i32 0) #16, !srcloc !107
  %asmresult.i.i = extractvalue { i64, i32 } %313, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %313, 1
  %314 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %312, i64 %asmresult.i.i, i32 %asmresult4.i.i) #16, !srcloc !108
  %asmresult10.i.i = extractvalue { i64, i32 } %314, 0
  %div323662.i = lshr i64 %asmresult10.i.i, 29
  %conv324.i = trunc i64 %div323662.i to i32
  %mul325.neg.i = mul i32 %conv324.i, -1000000000
  %sub326.i = add i32 %mul325.neg.i, %303
  %extract665.i = lshr i64 %asmresult10.i.i, 61
  %extract.t666.i = trunc i64 %extract665.i to i16
  %and350.i = and i32 %303, 1073741823
  %315 = tail call i32 @llvm.bswap.i32(i32 %and350.i) #13
  %316 = or i8 %e_flags.0.i, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %317 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %319 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %mac_header.i.i, align 2
  %conv.i688.i = zext i16 %320 to i32
  %add.ptr.i689.i = getelementptr i8, ptr %318, i32 %conv.i688.i
  %conv358.i = zext i16 %offset2.1801.i to i32
  %add.ptr359.i = getelementptr i8, ptr %add.ptr.i689.i, i32 %conv358.i
  %321 = ptrtoint ptr %add.ptr359.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %extract.t666.i, ptr %add.ptr359.i, align 2
  %add.ptr364.i = getelementptr i8, ptr %add.ptr359.i, i32 2
  %322 = ptrtoint ptr %add.ptr364.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %conv324.i, ptr %add.ptr364.i, align 4
  %add.ptr368.i = getelementptr i8, ptr %add.ptr359.i, i32 6
  %323 = ptrtoint ptr %add.ptr368.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %sub326.i, ptr %add.ptr368.i, align 4
  %324 = shl i16 %offset1.1800.i, 8
  %shl371.i = zext i16 %324 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %udp.1799.i)
  %tobool373.not.i = icmp eq i8 %udp.1799.i, 0
  %spec.select669.v.i = select i1 %tobool373.not.i, i32 -2147483648, i32 -2147483520
  %spec.select669.i = or i32 %spec.select669.v.i, %shl371.i
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %220, i32 0, i32 1, i32 1
  %325 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %port.i, align 4
  %add.ptr377.i = getelementptr i8, ptr %326, i32 32960
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %327 = tail call i32 @llvm.bswap.i32(i32 %spec.select669.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr377.i, i32 %327) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %328 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %port.i, align 4
  %add.ptr379.i = getelementptr i8, ptr %329, i32 37056
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr379.i, i32 %327) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  br label %if.end391.i

if.else380.i:                                     ; preds = %if.end143.i
  br i1 %do_twostep_tstamp.0.off0802.i, label %if.then382.i, label %if.else380.i.if.end391.i_crit_edge

if.else380.i.if.end391.i_crit_edge:               ; preds = %if.else380.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end391.i

if.then382.i:                                     ; preds = %if.else380.i
  call void @__sanitizer_cov_trace_pc() #15
  %330 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %331, i32 0, i32 3
  %332 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %tx_flags.i, align 1
  %334 = or i8 %333, 4
  store i8 %334, ptr %tx_flags.i, align 1
  %335 = or i8 %e_flags.0.i, 4
  br label %if.end391.i

if.end391.i:                                      ; preds = %if.then382.i, %if.else380.i.if.end391.i_crit_edge, %if.end347.i
  %temp_bd.sroa.0.sroa.0.0.i = phi i32 [ %315, %if.end347.i ], [ 0, %if.then382.i ], [ 0, %if.else380.i.if.end391.i_crit_edge ]
  %e_flags.1.i = phi i8 [ %316, %if.end347.i ], [ %335, %if.then382.i ], [ %e_flags.0.i, %if.else380.i.if.end391.i_crit_edge ]
  %temp_bd.sroa.18.14.insert.ext.i = zext i8 %e_flags.1.i to i32
  %temp_bd.sroa.18.14.insert.shift.i = shl nuw nsw i32 %temp_bd.sroa.18.14.insert.ext.i, 8
  br label %if.end394.i

if.end394.i:                                      ; preds = %if.end391.i, %if.end119.i.if.end394.i_crit_edge
  %temp_bd.sroa.0.sroa.0.1.i = phi i32 [ %243, %if.end119.i.if.end394.i_crit_edge ], [ %temp_bd.sroa.0.sroa.0.0.i, %if.end391.i ]
  %temp_bd.sroa.0.sroa.12.1.i = phi i16 [ 0, %if.end119.i.if.end394.i_crit_edge ], [ %temp_bd.sroa.0.sroa.12.0.i, %if.end391.i ]
  %temp_bd.sroa.13.0.i = phi i16 [ %244, %if.end119.i.if.end394.i_crit_edge ], [ 0, %if.end391.i ]
  %temp_bd.sroa.16.0.i = phi i16 [ %278, %if.end119.i.if.end394.i_crit_edge ], [ 0, %if.end391.i ]
  %temp_bd.sroa.18.1.i = phi i32 [ %temp_bd.sroa.18.0.i, %if.end119.i.if.end394.i_crit_edge ], [ %temp_bd.sroa.18.14.insert.shift.i, %if.end391.i ]
  %i.1.i151 = phi i32 [ %226, %if.end119.i.if.end394.i_crit_edge ], [ %i.0.i146, %if.end391.i ]
  %tx_swbd.1.i = phi ptr [ %arrayidx9.i, %if.end119.i.if.end394.i_crit_edge ], [ %tx_swbd.0.i, %if.end391.i ]
  %txbd.1.i = phi ptr [ %arrayidx.i130, %if.end119.i.if.end394.i_crit_edge ], [ %txbd.0.i, %if.end391.i ]
  %count.0.i152 = phi i32 [ 1, %if.end119.i.if.end394.i_crit_edge ], [ 2, %if.end391.i ]
  %flags.2.i = phi i8 [ %flags.1.i, %if.end119.i.if.end394.i_crit_edge ], [ 0, %if.end391.i ]
  %336 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %end.i.i, align 4
  %nr_frags816.i = getelementptr inbounds %struct.skb_shared_info, ptr %337, i32 0, i32 2
  %338 = ptrtoint ptr %nr_frags816.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %nr_frags816.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %cmp399818.not.i = icmp eq i8 %339, 0
  br i1 %cmp399818.not.i, label %if.end394.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end394.i.for.end.i_crit_edge:                  ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end394.i
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %337, i32 0, i32 12
  %bd_count412.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end424.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %f.0829.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc438.i, %if.end424.i.for.body.i_crit_edge ]
  %frag.0828.i = phi ptr [ %frags.i, %for.body.lr.ph.i ], [ %incdec.ptr439.i, %if.end424.i.for.body.i_crit_edge ]
  %count.1827.i = phi i32 [ %count.0.i152, %for.body.lr.ph.i ], [ %inc437.i, %if.end424.i.for.body.i_crit_edge ]
  %txbd.2826.i = phi ptr [ %txbd.1.i, %for.body.lr.ph.i ], [ %txbd.3.i, %if.end424.i.for.body.i_crit_edge ]
  %tx_swbd.2825.i = phi ptr [ %tx_swbd.1.i, %for.body.lr.ph.i ], [ %tx_swbd.3.i, %if.end424.i.for.body.i_crit_edge ]
  %i.2824.i = phi i32 [ %i.1.i151, %for.body.lr.ph.i ], [ %i.3.i, %if.end424.i.for.body.i_crit_edge ]
  %temp_bd.sroa.18.2823.i = phi i32 [ %temp_bd.sroa.18.1.i, %for.body.lr.ph.i ], [ 0, %if.end424.i.for.body.i_crit_edge ]
  %temp_bd.sroa.16.1822.i = phi i16 [ %temp_bd.sroa.16.0.i, %for.body.lr.ph.i ], [ 0, %if.end424.i.for.body.i_crit_edge ]
  %temp_bd.sroa.13.1821.i = phi i16 [ %temp_bd.sroa.13.0.i, %for.body.lr.ph.i ], [ %361, %if.end424.i.for.body.i_crit_edge ]
  %temp_bd.sroa.0.sroa.12.2820.i = phi i16 [ %temp_bd.sroa.0.sroa.12.1.i, %for.body.lr.ph.i ], [ 0, %if.end424.i.for.body.i_crit_edge ]
  %temp_bd.sroa.0.sroa.0.2819.i = phi i32 [ %temp_bd.sroa.0.sroa.0.1.i, %for.body.lr.ph.i ], [ %360, %if.end424.i.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0828.i, i32 0, i32 1
  %340 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %bv_len.i.i, align 4
  %342 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %9, align 128
  %344 = ptrtoint ptr %frag.0828.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %frag.0828.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0828.i, i32 0, i32 2
  %346 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %343, ptr noundef %345, i32 noundef %347, i32 noundef %341, i32 noundef 1, i32 noundef 0) #13
  %348 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %9, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %349, i32 noundef %call2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i692.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i692.not.i, label %for.body.i.do.end452.i_crit_edge, label %if.end408.i

for.body.i.do.end452.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end452.i

if.end408.i:                                      ; preds = %for.body.i
  %temp_bd.sroa.0.sroa.12.0.insert.ext761.i = zext i16 %temp_bd.sroa.0.sroa.12.2820.i to i64
  %temp_bd.sroa.0.sroa.0.0.insert.ext742.i = zext i32 %temp_bd.sroa.0.sroa.0.2819.i to i64
  %temp_bd.sroa.0.sroa.0.0.insert.shift743.i = shl nuw i64 %temp_bd.sroa.0.sroa.0.0.insert.ext742.i, 32
  %temp_bd.sroa.0.sroa.0.0.insert.insert745.i = or i64 %temp_bd.sroa.0.sroa.0.0.insert.shift743.i, %temp_bd.sroa.0.sroa.12.0.insert.ext761.i
  %350 = ptrtoint ptr %txbd.2826.i to i32
  call void @__asan_store8_noabort(i32 %350)
  store i64 %temp_bd.sroa.0.sroa.0.0.insert.insert745.i, ptr %txbd.2826.i, align 8
  %temp_bd.sroa.13.0.txbd.2.sroa_idx.i = getelementptr inbounds i8, ptr %txbd.2826.i, i32 8
  %351 = ptrtoint ptr %temp_bd.sroa.13.0.txbd.2.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %temp_bd.sroa.13.1821.i, ptr %temp_bd.sroa.13.0.txbd.2.sroa_idx.i, align 8
  %temp_bd.sroa.16.0.txbd.2.sroa_idx.i = getelementptr inbounds i8, ptr %txbd.2826.i, i32 10
  %352 = ptrtoint ptr %temp_bd.sroa.16.0.txbd.2.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %temp_bd.sroa.16.1822.i, ptr %temp_bd.sroa.16.0.txbd.2.sroa_idx.i, align 2
  %temp_bd.sroa.18.0.txbd.2.sroa_idx.i = getelementptr inbounds i8, ptr %txbd.2826.i, i32 12
  %353 = ptrtoint ptr %temp_bd.sroa.18.0.txbd.2.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %temp_bd.sroa.18.2823.i, ptr %temp_bd.sroa.18.0.txbd.2.sroa_idx.i, align 4
  %incdec.ptr409.i = getelementptr %struct.enetc_tx_swbd, ptr %tx_swbd.2825.i, i32 1
  %incdec.ptr410.i = getelementptr %union.enetc_tx_bd, ptr %txbd.2826.i, i32 1
  %inc411.i = add i32 %i.2824.i, 1
  %354 = ptrtoint ptr %bd_count412.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %bd_count412.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc411.i, i32 %355)
  %cmp413.i = icmp eq i32 %inc411.i, %355
  br i1 %cmp413.i, label %if.then421.i, label %if.end408.i.if.end424.i_crit_edge, !prof !101

if.end408.i.if.end424.i_crit_edge:                ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end424.i

if.then421.i:                                     ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #15
  %356 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %245, align 32
  %358 = ptrtoint ptr %bd_base.i129 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %bd_base.i129, align 8
  br label %if.end424.i

if.end424.i:                                      ; preds = %if.then421.i, %if.end408.i.if.end424.i_crit_edge
  %i.3.i = phi i32 [ 0, %if.then421.i ], [ %inc411.i, %if.end408.i.if.end424.i_crit_edge ]
  %tx_swbd.3.i = phi ptr [ %357, %if.then421.i ], [ %incdec.ptr409.i, %if.end408.i.if.end424.i_crit_edge ]
  %txbd.3.i = phi ptr [ %359, %if.then421.i ], [ %incdec.ptr410.i, %if.end408.i.if.end424.i_crit_edge ]
  tail call void @llvm.prefetch.p0(ptr %txbd.3.i, i32 1, i32 3, i32 1) #13
  %360 = tail call i32 @llvm.bswap.i32(i32 %call2.i.i) #13
  %conv427.i = trunc i32 %341 to i16
  %361 = tail call i16 @llvm.bswap.i16(i16 %conv427.i) #13
  %dma429.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.3.i, i32 0, i32 1
  %362 = ptrtoint ptr %dma429.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %call2.i.i, ptr %dma429.i, align 4
  %len431.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.3.i, i32 0, i32 4
  %363 = ptrtoint ptr %len431.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %conv427.i, ptr %len431.i, align 2
  %is_dma_page432.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.3.i, i32 0, i32 6
  %364 = ptrtoint ptr %is_dma_page432.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %bf.load433.i = load i8, ptr %is_dma_page432.i, align 4
  %bf.set435.i = or i8 %bf.load433.i, -128
  store i8 %bf.set435.i, ptr %is_dma_page432.i, align 4
  %dir436.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.3.i, i32 0, i32 5
  %365 = ptrtoint ptr %dir436.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 1, ptr %dir436.i, align 4
  %inc437.i = add nuw nsw i32 %count.1827.i, 1
  %inc438.i = add nuw nsw i32 %f.0829.i, 1
  %incdec.ptr439.i = getelementptr %struct.bio_vec, ptr %frag.0828.i, i32 1
  %366 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %367, i32 0, i32 2
  %368 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %nr_frags.i, align 2
  %conv398.i = zext i8 %369 to i32
  %cmp399.i = icmp ult i32 %inc438.i, %conv398.i
  br i1 %cmp399.i, label %if.end424.i.for.body.i_crit_edge, label %if.end424.i.for.end.i_crit_edge

if.end424.i.for.end.i_crit_edge:                  ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end424.i.for.body.i_crit_edge:                 ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %if.end424.i.for.end.i_crit_edge, %if.end394.i.for.end.i_crit_edge
  %temp_bd.sroa.0.sroa.0.2.lcssa.i = phi i32 [ %temp_bd.sroa.0.sroa.0.1.i, %if.end394.i.for.end.i_crit_edge ], [ %360, %if.end424.i.for.end.i_crit_edge ]
  %temp_bd.sroa.0.sroa.12.2.lcssa.i = phi i16 [ %temp_bd.sroa.0.sroa.12.1.i, %if.end394.i.for.end.i_crit_edge ], [ 0, %if.end424.i.for.end.i_crit_edge ]
  %temp_bd.sroa.13.1.lcssa.i = phi i16 [ %temp_bd.sroa.13.0.i, %if.end394.i.for.end.i_crit_edge ], [ %361, %if.end424.i.for.end.i_crit_edge ]
  %temp_bd.sroa.16.1.lcssa.i = phi i16 [ %temp_bd.sroa.16.0.i, %if.end394.i.for.end.i_crit_edge ], [ 0, %if.end424.i.for.end.i_crit_edge ]
  %temp_bd.sroa.18.2.lcssa.i = phi i32 [ %temp_bd.sroa.18.1.i, %if.end394.i.for.end.i_crit_edge ], [ 0, %if.end424.i.for.end.i_crit_edge ]
  %i.2.lcssa.i = phi i32 [ %i.1.i151, %if.end394.i.for.end.i_crit_edge ], [ %i.3.i, %if.end424.i.for.end.i_crit_edge ]
  %txbd.2.lcssa.i = phi ptr [ %txbd.1.i, %if.end394.i.for.end.i_crit_edge ], [ %txbd.3.i, %if.end424.i.for.end.i_crit_edge ]
  %count.1.lcssa.i153 = phi i32 [ %count.0.i152, %if.end394.i.for.end.i_crit_edge ], [ %inc437.i, %if.end424.i.for.end.i_crit_edge ]
  %flags.3.lcssa.i = phi i8 [ %flags.2.i, %if.end394.i.for.end.i_crit_edge ], [ 0, %if.end424.i.for.end.i_crit_edge ]
  %370 = or i8 %flags.3.lcssa.i, -128
  %temp_bd.sroa.18.15.insert.ext731.i = zext i8 %370 to i32
  %temp_bd.sroa.18.15.insert.mask732.i = and i32 %temp_bd.sroa.18.2.lcssa.i, -256
  %temp_bd.sroa.18.15.insert.insert733.i = or i32 %temp_bd.sroa.18.15.insert.mask732.i, %temp_bd.sroa.18.15.insert.ext731.i
  %temp_bd.sroa.0.sroa.12.0.insert.ext764.i = zext i16 %temp_bd.sroa.0.sroa.12.2.lcssa.i to i64
  %temp_bd.sroa.0.sroa.0.0.insert.ext746.i = zext i32 %temp_bd.sroa.0.sroa.0.2.lcssa.i to i64
  %temp_bd.sroa.0.sroa.0.0.insert.shift747.i = shl nuw i64 %temp_bd.sroa.0.sroa.0.0.insert.ext746.i, 32
  %temp_bd.sroa.0.sroa.0.0.insert.insert749.i = or i64 %temp_bd.sroa.0.sroa.0.0.insert.shift747.i, %temp_bd.sroa.0.sroa.12.0.insert.ext764.i
  %371 = ptrtoint ptr %txbd.2.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 %temp_bd.sroa.0.sroa.0.0.insert.insert749.i, ptr %txbd.2.lcssa.i, align 8
  %temp_bd.sroa.13.0.txbd.2.sroa_idx721.i = getelementptr inbounds i8, ptr %txbd.2.lcssa.i, i32 8
  %372 = ptrtoint ptr %temp_bd.sroa.13.0.txbd.2.sroa_idx721.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %temp_bd.sroa.13.1.lcssa.i, ptr %temp_bd.sroa.13.0.txbd.2.sroa_idx721.i, align 8
  %temp_bd.sroa.16.0.txbd.2.sroa_idx724.i = getelementptr inbounds i8, ptr %txbd.2.lcssa.i, i32 10
  %373 = ptrtoint ptr %temp_bd.sroa.16.0.txbd.2.sroa_idx724.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 %temp_bd.sroa.16.1.lcssa.i, ptr %temp_bd.sroa.16.0.txbd.2.sroa_idx724.i, align 2
  %temp_bd.sroa.18.0.txbd.2.sroa_idx727.i = getelementptr inbounds i8, ptr %txbd.2.lcssa.i, i32 12
  %374 = ptrtoint ptr %temp_bd.sroa.18.0.txbd.2.sroa_idx727.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %temp_bd.sroa.18.15.insert.insert733.i, ptr %temp_bd.sroa.18.0.txbd.2.sroa_idx727.i, align 4
  %375 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %245, align 32
  %is_eof.i = getelementptr %struct.enetc_tx_swbd, ptr %376, i32 %i.2.lcssa.i, i32 6
  %377 = ptrtoint ptr %is_eof.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %bf.load445.i = load i8, ptr %is_eof.i, align 4
  %bf.set447.i = or i8 %bf.load445.i, 16
  store i8 %bf.set447.i, ptr %is_eof.i, align 4
  %378 = load ptr, ptr %245, align 32
  %arrayidx448.i = getelementptr %struct.enetc_tx_swbd, ptr %378, i32 %i.2.lcssa.i
  %379 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %skb, ptr %arrayidx448.i, align 4
  %inc.i.i154 = add i32 %i.2.lcssa.i, 1
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %380 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i154, i32 %381)
  %cmp.i694.i = icmp eq i32 %inc.i.i154, %381
  br i1 %cmp.i694.i, label %if.then.i695.i, label %for.end.i.enetc_bdr_idx_inc.exit.i156_crit_edge, !prof !101

for.end.i.enetc_bdr_idx_inc.exit.i156_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i156

if.then.i695.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i156

enetc_bdr_idx_inc.exit.i156:                      ; preds = %if.then.i695.i, %for.end.i.enetc_bdr_idx_inc.exit.i156_crit_edge
  %i.4.i155 = phi i32 [ 0, %if.then.i695.i ], [ %inc.i.i154, %for.end.i.enetc_bdr_idx_inc.exit.i156_crit_edge ]
  %382 = ptrtoint ptr %next_to_use.i112 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %i.4.i155, ptr %next_to_use.i112, align 8
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #13
  %383 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %384, i32 0, i32 3
  %385 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %tx_flags.i.i, align 1
  %387 = and i8 %386, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i697.i = icmp eq i8 %387, 0
  br i1 %tobool.not.i697.i, label %enetc_bdr_idx_inc.exit.i156.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i698.i

enetc_bdr_idx_inc.exit.i156.skb_tx_timestamp.exit.i_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tx_timestamp.exit.i

if.then.i698.i:                                   ; preds = %enetc_bdr_idx_inc.exit.i156
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #13
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i698.i, %enetc_bdr_idx_inc.exit.i156.skb_tx_timestamp.exit.i_crit_edge
  %388 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 3
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %391 = ptrtoint ptr %next_to_use.i112 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %next_to_use.i112, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %393 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool.not.i.i700.i = icmp eq i32 %393, 0
  br i1 %tobool.not.i.i700.i, label %skb_tx_timestamp.exit.i.enetc_update_tx_ring_tail.exit.i161_crit_edge, label %land.rhs.i.i.i159

skb_tx_timestamp.exit.i.enetc_update_tx_ring_tail.exit.i161_crit_edge: ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit.i161

land.rhs.i.i.i159:                                ; preds = %skb_tx_timestamp.exit.i
  %call.i.i.i.i157 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i157)
  %cmp.not.i.i.i158 = icmp eq i32 %call.i.i.i.i157, 0
  br i1 %cmp.not.i.i.i158, label %do.end.i.i.i160, label %land.rhs.i.i.i159.enetc_update_tx_ring_tail.exit.i161_crit_edge, !prof !101

land.rhs.i.i.i159.enetc_update_tx_ring_tail.exit.i161_crit_edge: ; preds = %land.rhs.i.i.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit.i161

do.end.i.i.i160:                                  ; preds = %land.rhs.i.i.i159
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_update_tx_ring_tail.exit.i161

enetc_update_tx_ring_tail.exit.i161:              ; preds = %do.end.i.i.i160, %land.rhs.i.i.i159.enetc_update_tx_ring_tail.exit.i161_crit_edge, %skb_tx_timestamp.exit.i.enetc_update_tx_ring_tail.exit.i161_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %394 = tail call i32 @llvm.bswap.i32(i32 %392) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %394) #13, !srcloc !104
  br label %enetc_map_tx_buffs.exit

do.end452.i:                                      ; preds = %for.body.i.do.end452.i_crit_edge, %dma_map_single_attrs.exit.i.do.end452.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %i.5.i = phi i32 [ %226, %dma_map_single_attrs.exit.i.do.end452.i_crit_edge ], [ %226, %dma_map_single_attrs.exit.thread.i ], [ %i.2824.i, %for.body.i.do.end452.i_crit_edge ]
  %count.2.i = phi i32 [ 0, %dma_map_single_attrs.exit.i.do.end452.i_crit_edge ], [ 0, %dma_map_single_attrs.exit.thread.i ], [ %count.1827.i, %for.body.i.do.end452.i_crit_edge ]
  %395 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %396, ptr noundef nonnull @.str.13) #17
  %397 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 8
  %bd_count459.i = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  br label %do.body454.i

do.body454.i:                                     ; preds = %if.end460.i.do.body454.i_crit_edge, %do.end452.i
  %i.6.i162 = phi i32 [ %i.5.i, %do.end452.i ], [ %dec.i184, %if.end460.i.do.body454.i_crit_edge ]
  %count.3.i = phi i32 [ %count.2.i, %do.end452.i ], [ %dec462.i, %if.end460.i.do.body454.i_crit_edge ]
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 32
  %arrayidx455.i = getelementptr %struct.enetc_tx_swbd, ptr %399, i32 %i.6.i162
  %is_xdp_redirect.i.i.i163 = getelementptr %struct.enetc_tx_swbd, ptr %399, i32 %i.6.i162, i32 6
  %400 = ptrtoint ptr %is_xdp_redirect.i.i.i163 to i32
  call void @__asan_load1_noabort(i32 %400)
  %bf.load.i.i.i164 = load i8, ptr %is_xdp_redirect.i.i.i163, align 4
  %401 = and i8 %bf.load.i.i.i164, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool.not.i.i701.i = icmp eq i8 %401, 0
  br i1 %tobool.not.i.i701.i, label %do.body454.i.enetc_tx_swbd_get_xdp_frame.exit.i.i165_crit_edge, label %if.then.i.i702.i

do.body454.i.enetc_tx_swbd_get_xdp_frame.exit.i.i165_crit_edge: ; preds = %do.body454.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i165

if.then.i.i702.i:                                 ; preds = %do.body454.i
  call void @__sanitizer_cov_trace_pc() #15
  %402 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx455.i, align 4
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i165

enetc_tx_swbd_get_xdp_frame.exit.i.i165:          ; preds = %if.then.i.i702.i, %do.body454.i.enetc_tx_swbd_get_xdp_frame.exit.i.i165_crit_edge
  %retval.0.i.i703.i = phi ptr [ %403, %if.then.i.i702.i ], [ null, %do.body454.i.enetc_tx_swbd_get_xdp_frame.exit.i.i165_crit_edge ]
  %404 = and i8 %bf.load.i.i.i164, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %if.end.i.i704.i, label %enetc_tx_swbd_get_xdp_frame.exit.i.i165.enetc_tx_swbd_get_skb.exit.i.i168_crit_edge

enetc_tx_swbd_get_xdp_frame.exit.i.i165.enetc_tx_swbd_get_skb.exit.i.i168_crit_edge: ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_skb.exit.i.i168

if.end.i.i704.i:                                  ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i165
  call void @__sanitizer_cov_trace_pc() #15
  %406 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx455.i, align 4
  br label %enetc_tx_swbd_get_skb.exit.i.i168

enetc_tx_swbd_get_skb.exit.i.i168:                ; preds = %if.end.i.i704.i, %enetc_tx_swbd_get_xdp_frame.exit.i.i165.enetc_tx_swbd_get_skb.exit.i.i168_crit_edge
  %retval.0.i16.i.i166 = phi ptr [ %407, %if.end.i.i704.i ], [ null, %enetc_tx_swbd_get_xdp_frame.exit.i.i165.enetc_tx_swbd_get_skb.exit.i.i168_crit_edge ]
  %dma.i.i167 = getelementptr %struct.enetc_tx_swbd, ptr %399, i32 %i.6.i162, i32 1
  %408 = ptrtoint ptr %dma.i.i167 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %dma.i.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool.not.i705.i = icmp eq i32 %409, 0
  br i1 %tobool.not.i705.i, label %enetc_tx_swbd_get_skb.exit.i.i168.if.end.i707.i_crit_edge, label %if.then.i706.i

enetc_tx_swbd_get_skb.exit.i.i168.if.end.i707.i_crit_edge: ; preds = %enetc_tx_swbd_get_skb.exit.i.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i707.i

if.then.i706.i:                                   ; preds = %enetc_tx_swbd_get_skb.exit.i.i168
  %410 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %9, align 128
  %412 = and i8 %bf.load.i.i.i164, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %412)
  %.not.i.i.i169 = icmp eq i8 %412, -120
  br i1 %.not.i.i.i169, label %if.then.i706.i.enetc_unmap_tx_buff.exit.i.i175_crit_edge, label %if.end.sink.split.i.i.i172

if.then.i706.i.enetc_unmap_tx_buff.exit.i.i175_crit_edge: ; preds = %if.then.i706.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i.i175

if.end.sink.split.i.i.i172:                       ; preds = %if.then.i706.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i.i170 = getelementptr %struct.enetc_tx_swbd, ptr %399, i32 %i.6.i162, i32 4
  %413 = ptrtoint ptr %len.i.i.i170 to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %len.i.i.i170, align 2
  %conv4.i.i.i171 = zext i16 %414 to i32
  br label %enetc_unmap_tx_buff.exit.i.i175

enetc_unmap_tx_buff.exit.i.i175:                  ; preds = %if.end.sink.split.i.i.i172, %if.then.i706.i.enetc_unmap_tx_buff.exit.i.i175_crit_edge
  %conv8.sink.i.i.i173 = phi i32 [ %conv4.i.i.i171, %if.end.sink.split.i.i.i172 ], [ 4096, %if.then.i706.i.enetc_unmap_tx_buff.exit.i.i175_crit_edge ]
  %dir9.i.i.i174 = getelementptr %struct.enetc_tx_swbd, ptr %399, i32 %i.6.i162, i32 5
  %415 = ptrtoint ptr %dir9.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %dir9.i.i.i174, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %411, i32 noundef %409, i32 noundef %conv8.sink.i.i.i173, i32 noundef %416, i32 noundef 0) #13
  %417 = ptrtoint ptr %dma.i.i167 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %dma.i.i167, align 4
  br label %if.end.i707.i

if.end.i707.i:                                    ; preds = %enetc_unmap_tx_buff.exit.i.i175, %enetc_tx_swbd_get_skb.exit.i.i168.if.end.i707.i_crit_edge
  %tobool2.not.i.i176 = icmp eq ptr %retval.0.i.i703.i, null
  br i1 %tobool2.not.i.i176, label %if.else.i.i179, label %if.then3.i.i177

if.then3.i.i177:                                  ; preds = %if.end.i707.i
  call void @__sanitizer_cov_trace_pc() #15
  %418 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx455.i, align 4
  tail call void @xdp_return_frame(ptr noundef %419) #13
  br label %if.end7.sink.split.i.i181

if.else.i.i179:                                   ; preds = %if.end.i707.i
  %tobool4.not.i.i178 = icmp eq ptr %retval.0.i16.i.i166, null
  br i1 %tobool4.not.i.i178, label %if.else.i.i179.enetc_free_tx_frame.exit.i182_crit_edge, label %if.then5.i.i180

if.else.i.i179.enetc_free_tx_frame.exit.i182_crit_edge: ; preds = %if.else.i.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_frame.exit.i182

if.then5.i.i180:                                  ; preds = %if.else.i.i179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %retval.0.i16.i.i166, i32 noundef 1) #13
  br label %if.end7.sink.split.i.i181

if.end7.sink.split.i.i181:                        ; preds = %if.then5.i.i180, %if.then3.i.i177
  %420 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr null, ptr %arrayidx455.i, align 4
  br label %enetc_free_tx_frame.exit.i182

enetc_free_tx_frame.exit.i182:                    ; preds = %if.end7.sink.split.i.i181, %if.else.i.i179.enetc_free_tx_frame.exit.i182_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.6.i162)
  %cmp456.i = icmp eq i32 %i.6.i162, 0
  br i1 %cmp456.i, label %if.then458.i, label %enetc_free_tx_frame.exit.i182.if.end460.i_crit_edge

enetc_free_tx_frame.exit.i182.if.end460.i_crit_edge: ; preds = %enetc_free_tx_frame.exit.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end460.i

if.then458.i:                                     ; preds = %enetc_free_tx_frame.exit.i182
  call void @__sanitizer_cov_trace_pc() #15
  %421 = ptrtoint ptr %bd_count459.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %bd_count459.i, align 4
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.then458.i, %enetc_free_tx_frame.exit.i182.if.end460.i_crit_edge
  %i.7.i183 = phi i32 [ %422, %if.then458.i ], [ %i.6.i162, %enetc_free_tx_frame.exit.i182.if.end460.i_crit_edge ]
  %dec.i184 = add i32 %i.7.i183, -1
  %dec462.i = add nsw i32 %count.3.i, -1
  %tobool463.not.i = icmp eq i32 %count.3.i, 0
  br i1 %tobool463.not.i, label %if.end460.i.enetc_map_tx_buffs.exit_crit_edge, label %if.end460.i.do.body454.i_crit_edge

if.end460.i.do.body454.i_crit_edge:               ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body454.i

if.end460.i.enetc_map_tx_buffs.exit_crit_edge:    ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_map_tx_buffs.exit

enetc_map_tx_buffs.exit:                          ; preds = %if.end460.i.enetc_map_tx_buffs.exit_crit_edge, %enetc_update_tx_ring_tail.exit.i161
  %retval.0.i185 = phi i32 [ %count.1.lcssa.i153, %enetc_update_tx_ring_tail.exit.i161 ], [ 0, %if.end460.i.enetc_map_tx_buffs.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  br label %if.end52

if.end52:                                         ; preds = %enetc_map_tx_buffs.exit, %enetc_map_tx_tso_buffs.exit
  %count.0 = phi i32 [ %retval.0.i107, %enetc_map_tx_tso_buffs.exit ], [ %retval.0.i185, %enetc_map_tx_buffs.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool53.not = icmp eq i32 %count.0, 0
  br i1 %tobool53.not, label %if.end52.drop_packet_err_crit_edge, label %if.end63, !prof !101

if.end52.drop_packet_err_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_packet_err

if.end63:                                         ; preds = %if.end52
  %next_to_clean.i187 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 7
  %423 = ptrtoint ptr %next_to_clean.i187 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %next_to_clean.i187, align 4
  %next_to_use.i188 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 6
  %425 = ptrtoint ptr %next_to_use.i188 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %next_to_use.i188, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %424, i32 %426)
  %cmp.i189 = icmp sgt i32 %424, %426
  br i1 %cmp.i189, label %if.then.i191, label %if.end.i195

if.then.i191:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %427 = xor i32 %426, -1
  %sub3.i190 = add i32 %424, %427
  br label %enetc_bd_unused.exit197

if.end.i195:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i192 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 5
  %428 = ptrtoint ptr %bd_count.i192 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %bd_count.i192, align 4
  %430 = xor i32 %426, -1
  %add.i193 = add i32 %424, %430
  %sub7.i194 = add i32 %add.i193, %429
  br label %enetc_bd_unused.exit197

enetc_bd_unused.exit197:                          ; preds = %if.end.i195, %if.then.i191
  %retval.0.i196 = phi i32 [ %sub3.i190, %if.then.i191 ], [ %sub7.i194, %if.end.i195 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i196)
  %cmp65 = icmp slt i32 %retval.0.i196, 16
  br i1 %cmp65, label %if.then67, label %enetc_bd_unused.exit197.cleanup_crit_edge

enetc_bd_unused.exit197.cleanup_crit_edge:        ; preds = %enetc_bd_unused.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then67:                                        ; preds = %enetc_bd_unused.exit197
  call void @__sanitizer_cov_trace_pc() #15
  %index68 = getelementptr inbounds %struct.enetc_bdr, ptr %9, i32 0, i32 4
  %431 = ptrtoint ptr %index68 to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %index68, align 16
  %conv.i198 = zext i16 %432 to i32
  %_tx.i.i199 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %433 = ptrtoint ptr %_tx.i.i199 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %_tx.i.i199, align 128
  %state.i.i200 = getelementptr %struct.netdev_queue, ptr %434, i32 %conv.i198, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i200) #13
  br label %cleanup

drop_packet_err:                                  ; preds = %if.end52.drop_packet_err_crit_edge, %if.then45.drop_packet_err_crit_edge, %cond.true.i.drop_packet_err_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %drop_packet_err, %if.then67, %enetc_bd_unused.exit197.cleanup_crit_edge, %if.then39, %if.then11, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 16, %if.then11 ], [ 0, %drop_packet_err ], [ 16, %if.then39 ], [ 0, %if.then67 ], [ 0, %enetc_bd_unused.exit197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_xdp_xmit(ptr nocapture noundef readonly %ndev, i32 noundef %num_frames, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %xdp_redirect_arr = alloca [13 x %struct.enetc_tx_swbd], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %xdp_redirect_arr) #13
  %0 = call ptr @memset(ptr %xdp_redirect_arr, i32 0, i32 312)
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %xdp_tx_ring = getelementptr i8, ptr %ndev, i32 2348
  %1 = ptrtoint ptr %xdp_tx_ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xdp_tx_ring, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %bd_base = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_base, align 8
  %next_to_use = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_to_use, align 8
  %arrayidx2 = getelementptr %union.enetc_tx_bd, ptr %10, i32 %12
  tail call void @llvm.prefetch.p0(ptr %arrayidx2, i32 1, i32 3, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_frames)
  %cmp86 = icmp sgt i32 %num_frames, 0
  br i1 %cmp86, label %for.body.lr.ph, label %entry.for.end27_crit_edge

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.body.lr.ph:                                   ; preds = %entry
  %dma7.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 0, i32 1
  %dir.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 0, i32 5
  %len9.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 0, i32 4
  %is_xdp_redirect.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 0, i32 6
  %arrayidx13.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %xdp_tx_frm_cnt.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %if.end23.for.body_crit_edge ]
  %arrayidx3 = getelementptr ptr, ptr %frames, i32 %xdp_tx_frm_cnt.088
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %len2.i = getelementptr inbounds %struct.xdp_frame, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len2.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 128
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #13
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %for.body
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !95

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %20) #13
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef -1) #13
  br label %if.then.i

dma_map_single_attrs.exit.i:                      ; preds = %for.body
  %conv.i = zext i16 %18 to i32
  tail call void @debug_dma_map_single(ptr noundef %20, ptr noundef %16, i32 noundef %conv.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %16 to i32
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %28, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #13
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %8, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %30, i32 noundef %call41.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then.i_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then.i_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %dma_map_single_attrs.exit.i.if.then.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %ndev.i = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 1
  %31 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.15) #17
  br label %for.end27

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %33 = ptrtoint ptr %dma7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call41.i.i, ptr %dma7.i, align 4
  %34 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %dir.i, align 4
  %35 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %18, ptr %len9.i, align 2
  %36 = ptrtoint ptr %is_xdp_redirect.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %is_xdp_redirect.i, align 4
  %bf.set.i = and i8 %bf.load.i, -21
  %bf.clear11.i = or i8 %bf.set.i, 4
  store i8 %bf.clear11.i, ptr %is_xdp_redirect.i, align 4
  %37 = ptrtoint ptr %xdp_redirect_arr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %xdp_redirect_arr, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %14, align 4
  %headroom.i.i = getelementptr inbounds %struct.xdp_frame, ptr %14, i32 0, i32 2
  %40 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %headroom.i.i, align 2
  %conv.i.i = zext i16 %41 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %39, i32 -280
  %frame_sz.i.i = getelementptr inbounds %struct.xdp_frame, ptr %14, i32 0, i32 3
  %42 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i.i = load i32, ptr %frame_sz.i.i, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %idx.neg.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %bf.clear.i.i
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %add.ptr3.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp153.not.i = icmp eq i8 %44, 0
  br i1 %cmp153.not.i, label %if.end.i.if.end_crit_edge, label %for.body.preheader.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end.i
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %add.ptr3.i.i, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end36.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.0157.i = phi i32 [ %inc49.i, %if.end36.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %f.0156.i = phi i32 [ %inc51.i, %if.end36.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %frag.0155.i = phi ptr [ %incdec.ptr.i, %if.end36.i.for.body.i_crit_edge ], [ %frags.i, %for.body.preheader.i ]
  %xdp_tx_swbd.0154.i = phi ptr [ %arrayidx50.i, %if.end36.i.for.body.i_crit_edge ], [ %arrayidx13.i, %for.body.preheader.i ]
  %45 = ptrtoint ptr %frag.0155.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %frag.0155.i, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %46) #13
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0155.i, i32 0, i32 2
  %47 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %call1.i.i, i32 %48
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0155.i, i32 0, i32 1
  %49 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bv_len.i.i, align 4
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %8, align 128
  %call.i112.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i111.i) #13
  br i1 %call.i112.i, label %land.rhs.i114.i, label %dma_map_single_attrs.exit129.i

land.rhs.i114.i:                                  ; preds = %for.body.i
  %.b1.i113.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i113.i, label %land.rhs.i114.i.dma_map_single_attrs.exit129.thread.i_crit_edge, label %if.then.i118.i, !prof !95

land.rhs.i114.i.dma_map_single_attrs.exit129.thread.i_crit_edge: ; preds = %land.rhs.i114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit129.thread.i

if.then.i118.i:                                   ; preds = %land.rhs.i114.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i115.i = tail call ptr @dev_driver_string(ptr noundef %52) #13
  %init_name.i.i116.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %init_name.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i116.i, align 8
  %tobool.not.i.i117.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i117.i, label %if.end.i.i119.i, label %if.then.i118.i.dev_name.exit.i121.i_crit_edge

if.then.i118.i.dev_name.exit.i121.i_crit_edge:    ; preds = %if.then.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i121.i

if.end.i.i119.i:                                  ; preds = %if.then.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  br label %dev_name.exit.i121.i

dev_name.exit.i121.i:                             ; preds = %if.end.i.i119.i, %if.then.i118.i.dev_name.exit.i121.i_crit_edge
  %retval.0.i.i120.i = phi ptr [ %56, %if.end.i.i119.i ], [ %54, %if.then.i118.i.dev_name.exit.i121.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i115.i, ptr noundef %retval.0.i.i120.i) #13
  br label %dma_map_single_attrs.exit129.thread.i

dma_map_single_attrs.exit129.thread.i:            ; preds = %dev_name.exit.i121.i, %land.rhs.i114.i.dma_map_single_attrs.exit129.thread.i_crit_edge
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %8, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %58, i32 noundef -1) #13
  br label %while.body.i.preheader

dma_map_single_attrs.exit129.i:                   ; preds = %for.body.i
  tail call void @debug_dma_map_single(ptr noundef %52, ptr noundef %add.ptr.i111.i, i32 noundef %50) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %add.ptr.i111.i to i32
  %sub.i122.i = add i32 %60, 1073741824
  %shr.i123.i = lshr i32 %sub.i122.i, 12
  %add.ptr.i124.i = getelementptr %struct.page, ptr %59, i32 %shr.i123.i
  %and.i125.i = and i32 %60, 4095
  %call41.i126.i = tail call i32 @dma_map_page_attrs(ptr noundef %52, ptr noundef %add.ptr.i124.i, i32 noundef %and.i125.i, i32 noundef %50, i32 noundef 1, i32 noundef 0) #13
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %8, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %call41.i126.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i126.i)
  %cmp.i130.i = icmp eq i32 %call41.i126.i, -1
  br i1 %cmp.i130.i, label %dma_map_single_attrs.exit129.i.while.body.i.preheader_crit_edge, label %if.end36.i

dma_map_single_attrs.exit129.i.while.body.i.preheader_crit_edge: ; preds = %dma_map_single_attrs.exit129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %dma_map_single_attrs.exit129.i.while.body.i.preheader_crit_edge, %dma_map_single_attrs.exit129.thread.i
  br label %while.body.i

while.body.i:                                     ; preds = %enetc_unmap_tx_buff.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec160.in.i = phi i32 [ %dec160.i, %enetc_unmap_tx_buff.exit.i.while.body.i_crit_edge ], [ %n.0157.i, %while.body.i.preheader ]
  %dec160.i = add nsw i32 %dec160.in.i, -1
  %is_dma_page.i.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %dec160.i, i32 6
  %63 = ptrtoint ptr %is_dma_page.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i132.i = load i8, ptr %is_dma_page.i.i, align 4
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %8, align 128
  %dma6.i.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %dec160.i, i32 1
  %66 = ptrtoint ptr %dma6.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma6.i.i, align 4
  %68 = and i8 %bf.load.i132.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %68)
  %.not.i.i = icmp eq i8 %68, -120
  br i1 %.not.i.i, label %while.body.i.enetc_unmap_tx_buff.exit.i_crit_edge, label %if.end.sink.split.i.i

while.body.i.enetc_unmap_tx_buff.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i

if.end.sink.split.i.i:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %dec160.i, i32 4
  %69 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len.i.i, align 2
  %conv4.i.i = zext i16 %70 to i32
  br label %enetc_unmap_tx_buff.exit.i

enetc_unmap_tx_buff.exit.i:                       ; preds = %if.end.sink.split.i.i, %while.body.i.enetc_unmap_tx_buff.exit.i_crit_edge
  %conv8.sink.i.i = phi i32 [ %conv4.i.i, %if.end.sink.split.i.i ], [ 4096, %while.body.i.enetc_unmap_tx_buff.exit.i_crit_edge ]
  %dir9.i.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %dec160.i, i32 5
  %71 = ptrtoint ptr %dir9.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dir9.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %67, i32 noundef %conv8.sink.i.i, i32 noundef %72, i32 noundef 0) #13
  %73 = ptrtoint ptr %dma6.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %dma6.i.i, align 4
  %cmp32.i = icmp sgt i32 %dec160.in.i, 1
  br i1 %cmp32.i, label %enetc_unmap_tx_buff.exit.i.while.body.i_crit_edge, label %while.end.i

enetc_unmap_tx_buff.exit.i.while.body.i_crit_edge: ; preds = %enetc_unmap_tx_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %enetc_unmap_tx_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev35.i = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 1
  %74 = ptrtoint ptr %ndev35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndev35.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.15) #17
  br label %for.end27

if.end36.i:                                       ; preds = %dma_map_single_attrs.exit129.i
  %dma37.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_swbd.0154.i, i32 0, i32 1
  %76 = ptrtoint ptr %dma37.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call41.i126.i, ptr %dma37.i, align 4
  %dir38.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_swbd.0154.i, i32 0, i32 5
  %77 = ptrtoint ptr %dir38.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %dir38.i, align 4
  %conv39.i = trunc i32 %50 to i16
  %len40.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_swbd.0154.i, i32 0, i32 4
  %78 = ptrtoint ptr %len40.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv39.i, ptr %len40.i, align 2
  %is_xdp_redirect41.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_swbd.0154.i, i32 0, i32 6
  %79 = ptrtoint ptr %is_xdp_redirect41.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load42.i = load i8, ptr %is_xdp_redirect41.i, align 4
  %bf.set44.i = and i8 %bf.load42.i, -21
  %bf.clear47.i = or i8 %bf.set44.i, 4
  store i8 %bf.clear47.i, ptr %is_xdp_redirect41.i, align 4
  %80 = ptrtoint ptr %xdp_tx_swbd.0154.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %xdp_tx_swbd.0154.i, align 4
  %inc49.i = add nuw nsw i32 %n.0157.i, 1
  %arrayidx50.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %inc49.i
  %inc51.i = add nuw nsw i32 %f.0156.i, 1
  %incdec.ptr.i = getelementptr %struct.bio_vec, ptr %frag.0155.i, i32 1
  %81 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nr_frags.i, align 2
  %conv16.i = zext i8 %82 to i32
  %cmp.i = icmp ult i32 %inc51.i, %conv16.i
  br i1 %cmp.i, label %if.end36.i.for.body.i_crit_edge, label %if.end36.i.if.end_crit_edge

if.end36.i.if.end_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end:                                           ; preds = %if.end36.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %n.0.lcssa.i = phi i32 [ 1, %if.end.i.if.end_crit_edge ], [ %inc49.i, %if.end36.i.if.end_crit_edge ]
  %sub.i = add i32 %n.0.lcssa.i, -1
  %arrayidx52.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %sub.i
  %is_eof53.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_redirect_arr, i32 %sub.i, i32 6
  %83 = ptrtoint ptr %is_eof53.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load54.i = load i8, ptr %is_eof53.i, align 4
  %bf.set56.i = or i8 %bf.load54.i, 16
  store i8 %bf.set56.i, ptr %is_eof53.i, align 4
  %84 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %14, ptr %arrayidx52.i, align 4
  %call8 = call fastcc zeroext i1 @enetc_xdp_tx(ptr noundef %8, ptr noundef nonnull %xdp_redirect_arr, i32 noundef %n.0.lcssa.i)
  br i1 %call8, label %if.end23, label %if.end.for.body20_crit_edge, !prof !95

if.end.for.body20_crit_edge:                      ; preds = %if.end
  br label %for.body20

for.body20:                                       ; preds = %enetc_unmap_tx_buff.exit.for.body20_crit_edge, %if.end.for.body20_crit_edge
  %i.090 = phi i32 [ %inc, %enetc_unmap_tx_buff.exit.for.body20_crit_edge ], [ 0, %if.end.for.body20_crit_edge ]
  %is_dma_page.i = getelementptr [13 x %struct.enetc_tx_swbd], ptr %xdp_redirect_arr, i32 0, i32 %i.090, i32 6
  %85 = ptrtoint ptr %is_dma_page.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i56 = load i8, ptr %is_dma_page.i, align 4
  %86 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %8, align 128
  %dma6.i = getelementptr [13 x %struct.enetc_tx_swbd], ptr %xdp_redirect_arr, i32 0, i32 %i.090, i32 1
  %88 = ptrtoint ptr %dma6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma6.i, align 4
  %90 = and i8 %bf.load.i56, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %90)
  %.not.i = icmp eq i8 %90, -120
  br i1 %.not.i, label %for.body20.enetc_unmap_tx_buff.exit_crit_edge, label %if.end.sink.split.i

for.body20.enetc_unmap_tx_buff.exit_crit_edge:    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit

if.end.sink.split.i:                              ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  %len.i = getelementptr [13 x %struct.enetc_tx_swbd], ptr %xdp_redirect_arr, i32 0, i32 %i.090, i32 4
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %len.i, align 2
  %conv4.i = zext i16 %92 to i32
  br label %enetc_unmap_tx_buff.exit

enetc_unmap_tx_buff.exit:                         ; preds = %if.end.sink.split.i, %for.body20.enetc_unmap_tx_buff.exit_crit_edge
  %conv8.sink.i = phi i32 [ %conv4.i, %if.end.sink.split.i ], [ 4096, %for.body20.enetc_unmap_tx_buff.exit_crit_edge ]
  %dir9.i = getelementptr [13 x %struct.enetc_tx_swbd], ptr %xdp_redirect_arr, i32 0, i32 %i.090, i32 5
  %93 = ptrtoint ptr %dir9.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dir9.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %87, i32 noundef %89, i32 noundef %conv8.sink.i, i32 noundef %94, i32 noundef 0) #13
  %95 = ptrtoint ptr %dma6.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %dma6.i, align 4
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond117.not = icmp eq i32 %inc, %n.0.lcssa.i
  br i1 %exitcond117.not, label %for.end, label %enetc_unmap_tx_buff.exit.for.body20_crit_edge

enetc_unmap_tx_buff.exit.for.body20_crit_edge:    ; preds = %enetc_unmap_tx_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

for.end:                                          ; preds = %enetc_unmap_tx_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_tx_drops = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 14, i32 5
  %96 = ptrtoint ptr %xdp_tx_drops to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %xdp_tx_drops, align 4
  %inc22 = add i32 %97, 1
  store i32 %inc22, ptr %xdp_tx_drops, align 4
  br label %for.end27

if.end23:                                         ; preds = %if.end
  %inc24 = add nuw nsw i32 %xdp_tx_frm_cnt.088, 1
  %exitcond.not = icmp eq i32 %inc24, %num_frames
  br i1 %exitcond.not, label %if.end23.for.end27_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end23.for.end27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.end27:                                        ; preds = %if.end23.for.end27_crit_edge, %for.end, %while.end.i, %if.then.i, %entry.for.end27_crit_edge
  %k.078 = phi i32 [ %xdp_tx_frm_cnt.088, %while.end.i ], [ %xdp_tx_frm_cnt.088, %if.then.i ], [ %xdp_tx_frm_cnt.088, %for.end ], [ 0, %entry.for.end27_crit_edge ], [ %num_frames, %if.end23.for.end27_crit_edge ]
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not.not = icmp eq i32 %and, 0
  br i1 %tobool28.not.not, label %for.end27.if.end37_crit_edge, label %if.then36, !prof !95

for.end27.if.end37_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @enetc_update_tx_ring_tail(ptr noundef %8)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.end27.if.end37_crit_edge
  %xdp_tx = getelementptr inbounds %struct.enetc_bdr, ptr %8, i32 0, i32 14, i32 4
  %98 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %xdp_tx, align 16
  %add = add i32 %99, %k.078
  store i32 %add, ptr %xdp_tx, align 16
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %xdp_redirect_arr) #13
  ret i32 %k.078
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @enetc_xdp_tx(ptr nocapture noundef %tx_ring, ptr nocapture noundef readonly %xdp_tx_arr, i32 noundef %num_tx_swbd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 0, i32 4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 2
  %conv = zext i16 %1 to i32
  %next_to_clean.i = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 7
  %2 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 6
  %4 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp sgt i32 %3, %5
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = xor i32 %5, -1
  %sub3.i = add i32 %3, %6
  br label %enetc_bd_unused.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 5
  %7 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_count.i, align 4
  %9 = xor i32 %5, -1
  %add.i = add i32 %3, %9
  %sub7.i = add i32 %add.i, %8
  br label %enetc_bd_unused.exit

enetc_bd_unused.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %sub7.i, %if.end.i ]
  %add = add i32 %num_tx_swbd, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %add)
  %cmp = icmp slt i32 %retval.0.i, %add
  br i1 %cmp, label %enetc_bd_unused.exit.cleanup_crit_edge, label %while.cond.preheader, !prof !101

enetc_bd_unused.exit.cleanup_crit_edge:           ; preds = %enetc_bd_unused.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %enetc_bd_unused.exit
  %is_eof51 = getelementptr inbounds %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 0, i32 6
  %10 = ptrtoint ptr %is_eof51 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load52 = load i8, ptr %is_eof51, align 4
  %11 = and i8 %bf.load52, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not53 = icmp eq i8 %11, 0
  br i1 %tobool3.not53, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.for.cond.preheader_crit_edge, !prof !101

while.cond.preheader.for.cond.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %while.cond.preheader.for.cond.preheader_crit_edge
  %frm_len.0.lcssa = phi i32 [ %conv, %while.cond.preheader.for.cond.preheader_crit_edge ], [ %add14, %while.body.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_tx_swbd)
  %cmp1556 = icmp sgt i32 %num_tx_swbd, 0
  br i1 %cmp1556, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 2
  %conv2.i = trunc i32 %frm_len.0.lcssa to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #13
  %13 = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 8
  %bd_count.i44 = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 5
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %tmp_tx_swbd.055 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %xdp_tx_arr, %while.cond.preheader.while.body_crit_edge ]
  %frm_len.054 = phi i32 [ %add14, %while.body.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.enetc_tx_swbd, ptr %tmp_tx_swbd.055, i32 1
  %len12 = getelementptr %struct.enetc_tx_swbd, ptr %tmp_tx_swbd.055, i32 1, i32 4
  %14 = ptrtoint ptr %len12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len12, align 2
  %conv13 = zext i16 %15 to i32
  %add14 = add i32 %frm_len.054, %conv13
  %is_eof = getelementptr %struct.enetc_tx_swbd, ptr %tmp_tx_swbd.055, i32 1, i32 6
  %16 = ptrtoint ptr %is_eof to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %is_eof, align 4
  %17 = and i8 %bf.load, 16
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %while.body.while.body_crit_edge, label %while.body.for.cond.preheader_crit_edge, !prof !101

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.body:                                         ; preds = %enetc_bdr_idx_inc.exit.for.body_crit_edge, %for.body.lr.ph
  %k.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %enetc_bdr_idx_inc.exit.for.body_crit_edge ]
  %i.057 = phi i32 [ %5, %for.body.lr.ph ], [ %i.1, %enetc_bdr_idx_inc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %k.059
  %18 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_base.i, align 8
  %arrayidx.i = getelementptr %union.enetc_tx_bd, ptr %19, i32 %i.057
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %20 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  %dma.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %k.059, i32 1
  %21 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i, align 4
  %page_offset.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %k.059, i32 3
  %23 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %page_offset.i, align 4
  %conv.i = zext i16 %24 to i32
  %add.i43 = add i32 %22, %conv.i
  %conv1.i = zext i32 %add.i43 to i64
  %25 = tail call i64 @llvm.bswap.i64(i64 %conv1.i) #13
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx.i, align 8
  %len.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %k.059, i32 4
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #13
  %buf_len.i = getelementptr inbounds %struct.anon.195, ptr %arrayidx.i, i32 0, i32 1
  %30 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %buf_len.i, align 8
  %frm_len3.i = getelementptr inbounds %struct.anon.195, ptr %arrayidx.i, i32 0, i32 2
  %31 = ptrtoint ptr %frm_len3.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %12, ptr %frm_len3.i, align 2
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %13, align 32
  %arrayidx4.i = getelementptr %struct.enetc_tx_swbd, ptr %33, i32 %i.057
  %34 = call ptr @memcpy(ptr %arrayidx4.i, ptr %arrayidx, i32 24)
  %is_eof17 = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %k.059, i32 6
  %35 = ptrtoint ptr %is_eof17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load18 = load i8, ptr %is_eof17, align 4
  %36 = and i8 %bf.load18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool21.not = icmp eq i8 %36, 0
  br i1 %tobool21.not, label %for.body.if.end24_crit_edge, label %if.then22

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_base.i, align 8
  %39 = getelementptr %union.enetc_tx_bd, ptr %38, i32 %i.057, i32 0, i32 3
  %flags = getelementptr inbounds %struct.anon.197, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -128, ptr %flags, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body.if.end24_crit_edge
  %inc.i = add i32 %i.057, 1
  %41 = ptrtoint ptr %bd_count.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bd_count.i44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %42)
  %cmp.i45 = icmp eq i32 %inc.i, %42
  br i1 %cmp.i45, label %if.then.i46, label %if.end24.enetc_bdr_idx_inc.exit_crit_edge, !prof !101

if.end24.enetc_bdr_idx_inc.exit_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

if.then.i46:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

enetc_bdr_idx_inc.exit:                           ; preds = %if.then.i46, %if.end24.enetc_bdr_idx_inc.exit_crit_edge
  %i.1 = phi i32 [ 0, %if.then.i46 ], [ %inc.i, %if.end24.enetc_bdr_idx_inc.exit_crit_edge ]
  %inc = add nuw nsw i32 %k.059, 1
  %exitcond.not = icmp eq i32 %inc, %num_tx_swbd
  br i1 %exitcond.not, label %enetc_bdr_idx_inc.exit.for.end_crit_edge, label %enetc_bdr_idx_inc.exit.for.body_crit_edge

enetc_bdr_idx_inc.exit.for.body_crit_edge:        ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

enetc_bdr_idx_inc.exit.for.end_crit_edge:         ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %enetc_bdr_idx_inc.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %5, %for.cond.preheader.for.end_crit_edge ], [ %i.1, %enetc_bdr_idx_inc.exit.for.end_crit_edge ]
  %43 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.0.lcssa, ptr %next_to_use.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %enetc_bd_unused.exit.cleanup_crit_edge
  %44 = xor i1 %cmp, true
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_update_tx_ring_tail(ptr nocapture noundef readonly %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %next_to_use = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring, i32 0, i32 6
  %3 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_to_use, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.enetc_wr_reg_hot.exit_crit_edge, label %land.rhs.i

entry.enetc_wr_reg_hot.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, !prof !101

land.rhs.i.enetc_wr_reg_hot.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit

enetc_wr_reg_hot.exit:                            ; preds = %do.end.i, %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, %entry.enetc_wr_reg_hot.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %6) #13, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_get_si_caps(ptr nocapture noundef %si) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2304
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !105
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %num_rx_rings = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 5
  %4 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %num_rx_rings, align 4
  %and2 = and i32 %3, 255
  %num_tx_rings = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 6
  %5 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %num_tx_rings, align 4
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4608
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #13, !srcloc !105
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %and6 = and i32 %9, 127
  %num_fs_entries = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 7
  %10 = tail call i32 @llvm.umin.i32(i32 %and6, i32 64)
  %11 = ptrtoint ptr %num_fs_entries to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_fs_entries, align 4
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 8
  %12 = ptrtoint ptr %num_rss to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_rss, align 4
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 32
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #13, !srcloc !105
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %and12 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 5632
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #13, !srcloc !105
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %and16 = and i32 %20, 15
  %mul = shl nuw nsw i32 32, %and16
  %21 = ptrtoint ptr %num_rss to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %num_rss, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and18 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end.if.end21_crit_edge, label %if.then20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hw_features = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 10
  %22 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_features, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %hw_features, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  %and22 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %hw_features25 = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 10
  %24 = ptrtoint ptr %hw_features25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_features25, align 4
  %or26 = or i32 %25, 2
  store i32 %or26, ptr %hw_features25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_configure_si(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %si1 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %si1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si1, align 4
  %hw2 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 661072683) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 68
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 805318656) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw2, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 128) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %num_rx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %11 to i32
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #13
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.then.cleanup_crit_edge, label %if.end7.i.i, !prof !101

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #18
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.i = icmp sgt i32 %16, 0
  br i1 %cmp16.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.enetc_setup_default_rss_table.exit_crit_edge

for.cond.preheader.i.enetc_setup_default_rss_table.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_setup_default_rss_table.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.017.i, %conv
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %i.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rem.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %18 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rss, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.enetc_setup_default_rss_table.exit_crit_edge

for.body.i.enetc_setup_default_rss_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_setup_default_rss_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

enetc_setup_default_rss_table.exit:               ; preds = %for.body.i.enetc_setup_default_rss_table.exit_crit_edge, %for.cond.preheader.i.enetc_setup_default_rss_table.exit_crit_edge
  %.lcssa.i = phi i32 [ %16, %for.cond.preheader.i.enetc_setup_default_rss_table.exit_crit_edge ], [ %19, %for.body.i.enetc_setup_default_rss_table.exit_crit_edge ]
  %call3.i = tail call i32 @enetc_set_rss_table(ptr noundef %1, ptr noundef nonnull %call8.i.i, i32 noundef %.lcssa.i) #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %enetc_setup_default_rss_table.exit, %if.end7.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %enetc_setup_default_rss_table.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_init_si_rings_params(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %si1 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %si1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %tx_bd_count = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %tx_bd_count to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %tx_bd_count, align 2
  %rx_bd_count = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %rx_bd_count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %rx_bd_count, align 4
  %num_rx_rings = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_rings, align 4
  %7 = tail call i32 @llvm.smin.i32(i32 %2, i32 %6)
  %conv = trunc i32 %7 to i16
  %num_rx_rings2 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %num_rx_rings2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %num_rx_rings2, align 4
  %num_tx_rings = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_rings, align 4
  %conv3 = trunc i32 %10 to i16
  %num_tx_rings4 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 6
  %11 = ptrtoint ptr %num_tx_rings4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3, ptr %num_tx_rings4, align 2
  %bdr_int_num = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %bdr_int_num, align 4
  %ic_mode = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 18
  %13 = ptrtoint ptr %ic_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %ic_mode, align 4
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 240000000000) #16, !srcloc !109
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 240000000000, i64 %14, i32 0) #16, !srcloc !108
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv1.i = trunc i64 %div1581.i.i.i to i32
  %tx_ictt = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 19
  %16 = ptrtoint ptr %tx_ictt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv1.i, ptr %tx_ictt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_alloc_si_resources(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %si1 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %si1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si1, align 4
  %num_fs_entries = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_fs_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fs_entries, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 176) #13
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !101

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #18
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  %cls_rules = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 15
  %7 = ptrtoint ptr %cls_rules to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i.i, ptr %cls_rules, align 4
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_free_si_resources(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cls_rules = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cls_rules, align 4
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_start(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si.i, align 4
  %hw1.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %ic_mode.i = getelementptr i8, ptr %ndev, i32 2508
  %num_rx_rings.i = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp67.not.i = icmp eq i16 %3, 0
  br i1 %cmp67.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %ic_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ic_mode.i, align 4
  %and.i = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 -2147483647, i32 -2147483392
  %6 = select i1 %tobool.not.i, i32 0, i32 16777216
  %7 = tail call i32 @llvm.bswap.i32(i32 %..i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 4
  %mul.i = shl i32 %i.068.i, 9
  %add3.i = add nuw nsw i32 %mul.i, 33196
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 %add3.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %6) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %10 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1.i, align 4
  %add7.i = add nuw nsw i32 %mul.i, 33192
  %add.ptr8.i = getelementptr i8, ptr %11, i32 %add7.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %7) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 4
  %add12.i = add nuw nsw i32 %mul.i, 33184
  %add.ptr13.i = getelementptr i8, ptr %13, i32 %add12.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %14 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i = zext i16 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %num_tx_rings.i = getelementptr i8, ptr %ndev, i32 2330
  %16 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2270.not.i = icmp eq i16 %17, 0
  br i1 %cmp2270.not.i, label %for.end.i.enetc_setup_interrupts.exit_crit_edge, label %for.body24.lr.ph.i

for.end.i.enetc_setup_interrupts.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_setup_interrupts.exit

for.body24.lr.ph.i:                               ; preds = %for.end.i
  %18 = ptrtoint ptr %ic_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ic_mode.i, align 4
  %and15.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %.65.i = select i1 %tobool16.not.i, i32 -2147483647, i32 -2147483640
  %tx_ictt.i = getelementptr i8, ptr %ndev, i32 2512
  %20 = tail call i32 @llvm.bswap.i32(i32 %.65.i) #13
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.body24.lr.ph.i
  %i.171.i = phi i32 [ 0, %for.body24.lr.ph.i ], [ %inc42.i, %for.body24.i.for.body24.i_crit_edge ]
  %21 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1.i, align 4
  %mul26.i = shl i32 %i.171.i, 9
  %add28.i = add nuw nsw i32 %mul26.i, 32940
  %add.ptr29.i = getelementptr i8, ptr %22, i32 %add28.i
  %23 = ptrtoint ptr %tx_ictt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_ictt.i, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %25) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %26 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1.i, align 4
  %add33.i = add nuw nsw i32 %mul26.i, 32936
  %add.ptr34.i = getelementptr i8, ptr %27, i32 %add33.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %20) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %28 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1.i, align 4
  %add39.i = add nuw nsw i32 %mul26.i, 32928
  %add.ptr40.i = getelementptr i8, ptr %29, i32 %add39.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 16777216) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc42.i = add nuw nsw i32 %i.171.i, 1
  %30 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tx_rings.i, align 2
  %conv21.i = zext i16 %31 to i32
  %cmp22.i = icmp ult i32 %inc42.i, %conv21.i
  br i1 %cmp22.i, label %for.body24.i.for.body24.i_crit_edge, label %for.body24.i.enetc_setup_interrupts.exit_crit_edge

for.body24.i.enetc_setup_interrupts.exit_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_setup_interrupts.exit

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24.i

enetc_setup_interrupts.exit:                      ; preds = %for.body24.i.enetc_setup_interrupts.exit_crit_edge, %for.end.i.enetc_setup_interrupts.exit_crit_edge
  %bdr_int_num = getelementptr i8, ptr %ndev, i32 2316
  %32 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bdr_int_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp19 = icmp sgt i32 %33, 0
  br i1 %cmp19, label %enetc_setup_interrupts.exit.for.body_crit_edge, label %enetc_setup_interrupts.exit.for.end_crit_edge

enetc_setup_interrupts.exit.for.end_crit_edge:    ; preds = %enetc_setup_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

enetc_setup_interrupts.exit.for.body_crit_edge:   ; preds = %enetc_setup_interrupts.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %enetc_setup_interrupts.exit.for.body_crit_edge
  %i.020 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %enetc_setup_interrupts.exit.for.body_crit_edge ]
  %34 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %si.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add = add nuw nsw i32 %i.020, 1
  %call1 = tail call i32 @pci_irq_vector(ptr noundef %37, i32 noundef %add) #13
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.020
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %napi = getelementptr inbounds %struct.enetc_int_vector, ptr %39, i32 0, i32 10
  tail call void @napi_enable(ptr noundef %napi) #13
  tail call void @enable_irq(i32 noundef %call1) #13
  %40 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bdr_int_num, align 4
  %cmp = icmp slt i32 %add, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %enetc_setup_interrupts.exit.for.end_crit_edge
  %phylink = getelementptr i8, ptr %ndev, i32 2504
  %42 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @phylink_start(ptr noundef nonnull %43) #13
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_on(ptr noundef %ndev) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %44 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp4.not.i = icmp eq i32 %45, 0
  br i1 %cmp4.not.i, label %if.end.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i14

if.end.netif_tx_start_all_queues.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i14:                               ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %for.body.lr.ph.i14
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %inc.i15, %for.body.i17.for.body.i17_crit_edge ]
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %47, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %inc.i15 = add nuw i32 %i.05.i, 1
  %48 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i16 = icmp ult i32 %inc.i15, %49
  br i1 %cmp.i16, label %for.body.i17.for.body.i17_crit_edge, label %for.body.i17.netif_tx_start_all_queues.exit_crit_edge

for.body.i17.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_start_all_queues.exit

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i17

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i17.netif_tx_start_all_queues.exit_crit_edge, %if.end.netif_tx_start_all_queues.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_open(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %edata.i = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bdr_int_num.i = getelementptr i8, ptr %ndev, i32 2316
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdr_int_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i183 = icmp sgt i32 %5, 0
  br i1 %cmp.i183, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.0.i184 = phi i32 [ %add.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.0.i184, 1
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %add.i) #13
  %arrayidx.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0.i184
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si.i, align 4
  %hw5.i = getelementptr inbounds %struct.enetc_si, ptr %9, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.enetc_int_vector, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 24, ptr noundef nonnull @.str.21, ptr noundef %11, i32 noundef %i.0.i184) #13
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @enetc_msix, ptr noundef null, i32 noundef 0, ptr noundef %name.i, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.cond.preheader.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @disable_irq(i32 noundef %call.i) #13
  %12 = ptrtoint ptr %hw5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw5.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %13, i32 32928
  %tbier_base.i = getelementptr inbounds %struct.enetc_int_vector, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %tbier_base.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i51, ptr %tbier_base.i, align 4
  %15 = load ptr, ptr %hw5.i, align 4
  %mul.i = shl i32 %i.0.i184, 9
  %add14.i = add i32 %mul.i, 33184
  %add.ptr15.i = getelementptr i8, ptr %15, i32 %add14.i
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr15.i, ptr %7, align 128
  %17 = load ptr, ptr %hw5.i, align 4
  %add19.i = add i32 %mul.i, 33196
  %add.ptr20.i = getelementptr i8, ptr %17, i32 %add19.i
  %ricr1.i = getelementptr inbounds %struct.enetc_int_vector, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %ricr1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr20.i, ptr %ricr1.i, align 8
  %19 = load ptr, ptr %hw5.i, align 4
  %mul22.i = shl i32 %i.0.i184, 2
  %add23.i = add i32 %mul22.i, 2944
  %add.ptr24.i = getelementptr i8, ptr %19, i32 %add23.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %20) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %count_tx_rings.i = getelementptr inbounds %struct.enetc_int_vector, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %count_tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_tx_rings.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2694.i = icmp sgt i32 %22, 0
  br i1 %cmp2694.i, label %if.end.i.for.body27.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i.for.body27.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %if.end.i.for.body27.i_crit_edge
  %j.095.i = phi i32 [ %inc.i, %for.body27.i.for.body27.i_crit_edge ], [ 0, %if.end.i.for.body27.i_crit_edge ]
  %index.i = getelementptr %struct.enetc_int_vector, ptr %7, i32 0, i32 16, i32 %j.095.i, i32 4
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %index.i, align 16
  %conv.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %hw5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw5.i, align 4
  %mul30.i = shl nuw nsw i32 %conv.i, 2
  %add31.i = add nuw nsw i32 %mul30.i, 2816
  %add.ptr32.i = getelementptr i8, ptr %26, i32 %add31.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %20) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i = add nuw nsw i32 %j.095.i, 1
  %27 = ptrtoint ptr %count_tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_tx_rings.i, align 16
  %cmp26.i = icmp slt i32 %inc.i, %28
  br i1 %cmp26.i, label %for.body27.i.for.body27.i_crit_edge, label %for.body27.i.cleanup.i_crit_edge

for.body27.i.cleanup.i_crit_edge:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27.i

cleanup.i:                                        ; preds = %for.body27.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %29 = load volatile i32, ptr @__num_online_cpus, align 4
  %rem.i = urem i32 %i.0.i184, %29
  %rem.i.i = and i32 %rem.i, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %rem.i, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call.i, ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #13
  %30 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bdr_int_num.i, align 4
  %cmp.i = icmp slt i32 %add.i, %31
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i184)
  %tobool42.not96.i = icmp eq i32 %i.0.i184, 0
  br i1 %tobool42.not96.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.197.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.0.i184, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.197.i, -1
  %call45.i = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %i.197.i) #13
  %call.i.i91.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call45.i, ptr noundef null, i1 noundef zeroext true) #13
  %arrayidx48.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %dec.i
  %34 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx48.i, align 4
  %call49.i = tail call ptr @free_irq(i32 noundef %call45.i, ptr noundef %35) #13
  %tobool42.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool42.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %edata.i) #13
  %phylink.i = getelementptr i8, ptr %ndev, i32 2504
  %36 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phylink.i, align 4
  %tobool.not.i52 = icmp eq ptr %37, null
  br i1 %tobool.not.i52, label %if.end.if.end5_crit_edge, label %if.end.i54

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end.i54:                                       ; preds = %if.end
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call i32 @phylink_of_phy_connect(ptr noundef nonnull %37, ptr noundef %41, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %enetc_phylink_connect.exit

if.end6.i:                                        ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  %42 = call ptr @memset(ptr %edata.i, i32 0, i32 40)
  %43 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phylink.i, align 4
  %call8.i55 = call i32 @phylink_ethtool_set_eee(ptr noundef %44, ptr noundef nonnull %edata.i) #13
  br label %if.end5

enetc_phylink_connect.exit:                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  %dev5.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.24) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %edata.i) #13
  br label %err_phy_connect

if.end5:                                          ; preds = %if.end6.i, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %edata.i) #13
  %num_tx_rings.i = getelementptr i8, ptr %ndev, i32 2330
  %45 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp46.not.i = icmp eq i16 %46, 0
  br i1 %cmp46.not.i, label %if.end5.if.end9_crit_edge, label %if.end5.for.body.i60_crit_edge

if.end5.for.body.i60_crit_edge:                   ; preds = %if.end5
  br label %for.body.i60

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.body.i60:                                     ; preds = %for.inc.i.for.body.i60_crit_edge, %if.end5.for.body.i60_crit_edge
  %i.047.i = phi i32 [ %inc.i63, %for.inc.i.for.body.i60_crit_edge ], [ 0, %if.end5.for.body.i60_crit_edge ]
  %arrayidx.i58 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.047.i
  %47 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i58, align 4
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bd_count.i.i, align 4
  %mul.i.i = mul i32 %50, 24
  %call.i.i59 = call noalias ptr @vzalloc(i32 noundef %mul.i.i) #18
  %51 = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i59, ptr %51, align 32
  %tobool.not.i.i = icmp eq ptr %call.i.i59, null
  br i1 %tobool.not.i.i, label %for.body.i60.enetc_alloc_txbdr.exit.i_crit_edge, label %if.end.i.i

for.body.i60.enetc_alloc_txbdr.exit.i_crit_edge:  ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_alloc_txbdr.exit.i

if.end.i.i:                                       ; preds = %for.body.i60
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 128
  %55 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bd_count.i.i, align 4
  %mul.i.i.i = shl i32 %56, 4
  %bd_dma_base.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 15
  %call.i.i.i.i61 = call ptr @dma_alloc_attrs(ptr noundef %54, i32 noundef %mul.i.i.i, ptr noundef %bd_dma_base.i.i.i, i32 noundef 3264, i32 noundef 0) #13
  %bd_base.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 2
  %57 = ptrtoint ptr %bd_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i.i.i61, ptr %bd_base.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i61, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.err_alloc_bdr.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.err_alloc_bdr.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_bdr.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %58 = ptrtoint ptr %bd_dma_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bd_dma_base.i.i.i, align 4
  %and.i.i.i = and i32 %59, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  %60 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %48, align 128
  %62 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bd_count.i.i, align 4
  br i1 %cmp.i.i.i, label %if.end4.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul6.i.i.i = shl i32 %63, 4
  call void @dma_free_attrs(ptr noundef %61, i32 noundef %mul6.i.i.i, ptr noundef nonnull %call.i.i.i.i61, i32 noundef %59, i32 noundef 0) #13
  br label %err_alloc_bdr.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i.i
  %mul6.i.i = shl i32 %63, 8
  %tso_headers_dma.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 19
  %call.i.i.i62 = call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef %mul6.i.i, ptr noundef %tso_headers_dma.i.i, i32 noundef 3264, i32 noundef 0) #13
  %tso_headers.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 18
  %64 = ptrtoint ptr %tso_headers.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i.i62, ptr %tso_headers.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call.i.i.i62, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %for.inc.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bd_base.i.i.i.le = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 2
  %65 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %48, align 128
  %67 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bd_count.i.i, align 4
  %mul14.i.i = shl i32 %68, 4
  %69 = ptrtoint ptr %bd_base.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bd_base.i.i.i.le, align 8
  %71 = ptrtoint ptr %bd_dma_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bd_dma_base.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %66, i32 noundef %mul14.i.i, ptr noundef %70, i32 noundef %72, i32 noundef 0) #13
  %73 = ptrtoint ptr %bd_base.i.i.i.le to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %bd_base.i.i.i.le, align 8
  br label %err_alloc_bdr.i.i

err_alloc_bdr.i.i:                                ; preds = %if.then10.i.i, %if.then3.i.i.i, %if.end.i.i.err_alloc_bdr.i.i_crit_edge
  %err.0.i.i = phi i32 [ -12, %if.then10.i.i ], [ -22, %if.then3.i.i.i ], [ -12, %if.end.i.i.err_alloc_bdr.i.i_crit_edge ]
  %74 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %51, align 32
  call void @vfree(ptr noundef %75) #13
  %76 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %51, align 32
  br label %enetc_alloc_txbdr.exit.i

enetc_alloc_txbdr.exit.i:                         ; preds = %err_alloc_bdr.i.i, %for.body.i60.enetc_alloc_txbdr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.0.i.i, %err_alloc_bdr.i.i ], [ -12, %for.body.i60.enetc_alloc_txbdr.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.047.i)
  %cmp248.not.i = icmp eq i32 %i.047.i, 0
  br i1 %cmp248.not.i, label %enetc_alloc_txbdr.exit.i.err_alloc_tx_crit_edge, label %enetc_alloc_txbdr.exit.i.while.body.i67_crit_edge

enetc_alloc_txbdr.exit.i.while.body.i67_crit_edge: ; preds = %enetc_alloc_txbdr.exit.i
  br label %while.body.i67

enetc_alloc_txbdr.exit.i.err_alloc_tx_crit_edge:  ; preds = %enetc_alloc_txbdr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_tx

for.inc.i:                                        ; preds = %if.end4.i.i
  %next_to_clean.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 7
  %77 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %48, i32 0, i32 6
  %78 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %next_to_use.i.i, align 8
  %inc.i63 = add nuw nsw i32 %i.047.i, 1
  %79 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i64 = zext i16 %80 to i32
  %cmp.i65 = icmp ult i32 %inc.i63, %conv.i64
  br i1 %cmp.i65, label %for.inc.i.for.body.i60_crit_edge, label %for.inc.i.if.end9_crit_edge

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.inc.i.for.body.i60_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i60

while.body.i67:                                   ; preds = %while.body.i67.while.body.i67_crit_edge, %enetc_alloc_txbdr.exit.i.while.body.i67_crit_edge
  %i.149.i = phi i32 [ %dec.i66, %while.body.i67.while.body.i67_crit_edge ], [ %i.047.i, %enetc_alloc_txbdr.exit.i.while.body.i67_crit_edge ]
  %dec.i66 = add nsw i32 %i.149.i, -1
  %arrayidx5.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %dec.i66
  %81 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx5.i, align 4
  call fastcc void @enetc_free_txbdr(ptr noundef %82) #13
  %cmp2.i = icmp sgt i32 %i.149.i, 1
  br i1 %cmp2.i, label %while.body.i67.while.body.i67_crit_edge, label %while.body.i67.err_alloc_tx_crit_edge

while.body.i67.err_alloc_tx_crit_edge:            ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_tx

while.body.i67.while.body.i67_crit_edge:          ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i67

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %num_rx_rings.i = getelementptr i8, ptr %ndev, i32 2328
  %83 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp40.not.i = icmp eq i16 %84, 0
  br i1 %cmp40.not.i, label %if.end9.if.end13_crit_edge, label %for.body.lr.ph.i

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.body.lr.ph.i:                                 ; preds = %if.end9
  %active_offloads.i = getelementptr i8, ptr %ndev, i32 2340
  %85 = ptrtoint ptr %active_offloads.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %active_offloads.i, align 4
  %and.i = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i70 = icmp eq i32 %and.i, 0
  %and.lobit.i = lshr exact i32 %and.i, 8
  %87 = trunc i32 %and.lobit.i to i8
  %spec.select.i.i = select i1 %tobool.not.i70, i32 16, i32 32
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.inc.i94.for.body.i76_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i91, %for.inc.i94.for.body.i76_crit_edge ]
  %arrayidx.i71 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.041.i
  %88 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i71, align 4
  %bd_count.i.i72 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %bd_count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bd_count.i.i72, align 4
  %mul.i.i73 = mul i32 %91, 20
  %call.i.i74 = call noalias ptr @vzalloc(i32 noundef %mul.i.i73) #18
  %92 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i74, ptr %92, align 32
  %tobool.not.i.i75 = icmp eq ptr %call.i.i74, null
  br i1 %tobool.not.i.i75, label %for.body.i76.enetc_alloc_rxbdr.exit.i_crit_edge, label %if.end.i.i82

for.body.i76.enetc_alloc_rxbdr.exit.i_crit_edge:  ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_alloc_rxbdr.exit.i

if.end.i.i82:                                     ; preds = %for.body.i76
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %89, align 128
  %96 = ptrtoint ptr %bd_count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bd_count.i.i72, align 4
  %mul.i.i.i77 = mul i32 %97, %spec.select.i.i
  %bd_dma_base.i.i.i78 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 15
  %call.i.i.i.i79 = call ptr @dma_alloc_attrs(ptr noundef %95, i32 noundef %mul.i.i.i77, ptr noundef %bd_dma_base.i.i.i78, i32 noundef 3264, i32 noundef 0) #13
  %bd_base.i.i.i80 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 2
  %98 = ptrtoint ptr %bd_base.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i.i.i.i79, ptr %bd_base.i.i.i80, align 8
  %tobool.not.i.i.i81 = icmp eq ptr %call.i.i.i.i79, null
  br i1 %tobool.not.i.i.i81, label %if.end.i.i82.if.then7.i.i_crit_edge, label %if.end.i.i.i85

if.end.i.i82.if.then7.i.i_crit_edge:              ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

if.end.i.i.i85:                                   ; preds = %if.end.i.i82
  %99 = ptrtoint ptr %bd_dma_base.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bd_dma_base.i.i.i78, align 4
  %and.i.i.i83 = and i32 %100, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i83)
  %cmp.i.i.i84 = icmp eq i32 %and.i.i.i83, 0
  br i1 %cmp.i.i.i84, label %for.inc.i94, label %if.then3.i.i.i87

if.then3.i.i.i87:                                 ; preds = %if.end.i.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %89, align 128
  %103 = ptrtoint ptr %bd_count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bd_count.i.i72, align 4
  %mul6.i.i.i86 = mul i32 %104, %spec.select.i.i
  call void @dma_free_attrs(ptr noundef %102, i32 noundef %mul6.i.i.i86, ptr noundef nonnull %call.i.i.i.i79, i32 noundef %100, i32 noundef 0) #13
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.then3.i.i.i87, %if.end.i.i82.if.then7.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -22, %if.then3.i.i.i87 ], [ -12, %if.end.i.i82.if.then7.i.i_crit_edge ]
  %105 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %92, align 32
  call void @vfree(ptr noundef %106) #13
  br label %enetc_alloc_rxbdr.exit.i

enetc_alloc_rxbdr.exit.i:                         ; preds = %if.then7.i.i, %for.body.i76.enetc_alloc_rxbdr.exit.i_crit_edge
  %retval.0.i.i88 = phi i32 [ %retval.0.i.ph.i.i, %if.then7.i.i ], [ -12, %for.body.i76.enetc_alloc_rxbdr.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041.i)
  %cmp542.not.i = icmp eq i32 %i.041.i, 0
  br i1 %cmp542.not.i, label %enetc_alloc_rxbdr.exit.i.err_alloc_rx_crit_edge, label %enetc_alloc_rxbdr.exit.i.while.body.i96_crit_edge

enetc_alloc_rxbdr.exit.i.while.body.i96_crit_edge: ; preds = %enetc_alloc_rxbdr.exit.i
  br label %while.body.i96

enetc_alloc_rxbdr.exit.i.err_alloc_rx_crit_edge:  ; preds = %enetc_alloc_rxbdr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_rx

for.inc.i94:                                      ; preds = %if.end.i.i.i85
  %next_to_clean.i.i89 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 7
  %107 = ptrtoint ptr %next_to_clean.i.i89 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %next_to_clean.i.i89, align 4
  %next_to_use.i.i90 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 6
  %108 = ptrtoint ptr %next_to_use.i.i90 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %next_to_use.i.i90, align 8
  %109 = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 9
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %109, align 4
  %ext_en.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %89, i32 0, i32 17
  %111 = ptrtoint ptr %ext_en.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %87, ptr %ext_en.i.i, align 1
  %inc.i91 = add nuw nsw i32 %i.041.i, 1
  %112 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i92 = zext i16 %113 to i32
  %cmp.i93 = icmp ult i32 %inc.i91, %conv.i92
  br i1 %cmp.i93, label %for.inc.i94.for.body.i76_crit_edge, label %for.inc.i94.if.end13_crit_edge

for.inc.i94.if.end13_crit_edge:                   ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.inc.i94.for.body.i76_crit_edge:               ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i76

while.body.i96:                                   ; preds = %while.body.i96.while.body.i96_crit_edge, %enetc_alloc_rxbdr.exit.i.while.body.i96_crit_edge
  %i.143.i = phi i32 [ %dec.i95, %while.body.i96.while.body.i96_crit_edge ], [ %i.041.i, %enetc_alloc_rxbdr.exit.i.while.body.i96_crit_edge ]
  %dec.i95 = add nsw i32 %i.143.i, -1
  %arrayidx8.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %dec.i95
  %114 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx8.i, align 4
  %bd_count.i19.i = getelementptr inbounds %struct.enetc_bdr, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %bd_count.i19.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bd_count.i19.i, align 4
  %mul.i20.i = shl i32 %117, 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 128
  %bd_base.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %115, i32 0, i32 2
  %120 = ptrtoint ptr %bd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bd_base.i.i, align 8
  %bd_dma_base.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %115, i32 0, i32 15
  %122 = ptrtoint ptr %bd_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bd_dma_base.i.i, align 4
  call void @dma_free_attrs(ptr noundef %119, i32 noundef %mul.i20.i, ptr noundef %121, i32 noundef %123, i32 noundef 0) #13
  %124 = ptrtoint ptr %bd_base.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %bd_base.i.i, align 8
  %125 = getelementptr inbounds %struct.enetc_bdr, ptr %115, i32 0, i32 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 32
  call void @vfree(ptr noundef %127) #13
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %125, align 32
  %cmp5.i = icmp sgt i32 %i.143.i, 1
  br i1 %cmp5.i, label %while.body.i96.while.body.i96_crit_edge, label %while.body.i96.err_alloc_rx_crit_edge

while.body.i96.err_alloc_rx_crit_edge:            ; preds = %while.body.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_rx

while.body.i96.while.body.i96_crit_edge:          ; preds = %while.body.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i96

if.end13:                                         ; preds = %for.inc.i94.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %call14 = call fastcc i32 @enetc_num_stack_tx_queues(ptr noundef %add.ptr.i)
  %call15 = call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %call14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.err_set_queues_crit_edge

if.end13.err_set_queues_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_set_queues

if.end18:                                         ; preds = %if.end13
  %129 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %num_rx_rings.i, align 4
  %conv = zext i16 %130 to i32
  %call19 = call i32 @netif_set_real_num_rx_queues(ptr noundef %ndev, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_set_queues_crit_edge

if.end18.err_set_queues_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_set_queues

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @enetc_tx_onestep_tstamp_init(ptr noundef %add.ptr.i)
  call fastcc void @enetc_setup_bdrs(ptr noundef %add.ptr.i)
  call void @enetc_start(ptr noundef %ndev)
  br label %cleanup

err_set_queues:                                   ; preds = %if.end18.err_set_queues_crit_edge, %if.end13.err_set_queues_crit_edge
  %err.0 = phi i32 [ %call15, %if.end13.err_set_queues_crit_edge ], [ %call19, %if.end18.err_set_queues_crit_edge ]
  call fastcc void @enetc_free_rx_resources(ptr noundef %add.ptr.i)
  br label %err_alloc_rx

err_alloc_rx:                                     ; preds = %err_set_queues, %while.body.i96.err_alloc_rx_crit_edge, %enetc_alloc_rxbdr.exit.i.err_alloc_rx_crit_edge
  %err.1 = phi i32 [ %err.0, %err_set_queues ], [ %retval.0.i.i88, %enetc_alloc_rxbdr.exit.i.err_alloc_rx_crit_edge ], [ %retval.0.i.i88, %while.body.i96.err_alloc_rx_crit_edge ]
  %131 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp6.not.i = icmp eq i16 %132, 0
  br i1 %cmp6.not.i, label %err_alloc_rx.err_alloc_tx_crit_edge, label %err_alloc_rx.for.body.i104_crit_edge

err_alloc_rx.for.body.i104_crit_edge:             ; preds = %err_alloc_rx
  br label %for.body.i104

err_alloc_rx.err_alloc_tx_crit_edge:              ; preds = %err_alloc_rx
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_tx

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %err_alloc_rx.for.body.i104_crit_edge
  %i.07.i = phi i32 [ %inc.i101, %for.body.i104.for.body.i104_crit_edge ], [ 0, %err_alloc_rx.for.body.i104_crit_edge ]
  %arrayidx.i100 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.07.i
  %133 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i100, align 4
  call fastcc void @enetc_free_txbdr(ptr noundef %134) #13
  %inc.i101 = add nuw nsw i32 %i.07.i, 1
  %135 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i102 = zext i16 %136 to i32
  %cmp.i103 = icmp ult i32 %inc.i101, %conv.i102
  br i1 %cmp.i103, label %for.body.i104.for.body.i104_crit_edge, label %for.body.i104.err_alloc_tx_crit_edge

for.body.i104.err_alloc_tx_crit_edge:             ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_tx

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i104

err_alloc_tx:                                     ; preds = %for.body.i104.err_alloc_tx_crit_edge, %err_alloc_rx.err_alloc_tx_crit_edge, %while.body.i67.err_alloc_tx_crit_edge, %enetc_alloc_txbdr.exit.i.err_alloc_tx_crit_edge
  %err.2 = phi i32 [ %retval.0.i.i, %enetc_alloc_txbdr.exit.i.err_alloc_tx_crit_edge ], [ %err.1, %err_alloc_rx.err_alloc_tx_crit_edge ], [ %err.1, %for.body.i104.err_alloc_tx_crit_edge ], [ %retval.0.i.i, %while.body.i67.err_alloc_tx_crit_edge ]
  %137 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %phylink.i, align 4
  %tobool23.not = icmp eq ptr %138, null
  br i1 %tobool23.not, label %err_alloc_tx.err_phy_connect_crit_edge, label %if.then24

err_alloc_tx.err_phy_connect_crit_edge:           ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_phy_connect

if.then24:                                        ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #15
  call void @phylink_disconnect_phy(ptr noundef nonnull %138) #13
  br label %err_phy_connect

err_phy_connect:                                  ; preds = %if.then24, %err_alloc_tx.err_phy_connect_crit_edge, %enetc_phylink_connect.exit
  %err.3 = phi i32 [ %call2.i, %enetc_phylink_connect.exit ], [ %err.2, %if.then24 ], [ %err.2, %err_alloc_tx.err_phy_connect_crit_edge ]
  %139 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %si.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bdr_int_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp10.i = icmp sgt i32 %144, 0
  br i1 %cmp10.i, label %err_phy_connect.for.body.i112_crit_edge, label %err_phy_connect.cleanup_crit_edge

err_phy_connect.cleanup_crit_edge:                ; preds = %err_phy_connect
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_phy_connect.for.body.i112_crit_edge:          ; preds = %err_phy_connect
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.body.i112.for.body.i112_crit_edge, %err_phy_connect.for.body.i112_crit_edge
  %i.011.i = phi i32 [ %add.i107, %for.body.i112.for.body.i112_crit_edge ], [ 0, %err_phy_connect.for.body.i112_crit_edge ]
  %add.i107 = add nuw nsw i32 %i.011.i, 1
  %call.i108 = call i32 @pci_irq_vector(ptr noundef %142, i32 noundef %add.i107) #13
  %call.i.i.i109 = call i32 @__irq_apply_affinity_hint(i32 noundef %call.i108, ptr noundef null, i1 noundef zeroext true) #13
  %arrayidx.i110 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.011.i
  %145 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i110, align 4
  %call3.i = call ptr @free_irq(i32 noundef %call.i108, ptr noundef %146) #13
  %147 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bdr_int_num.i, align 4
  %cmp.i111 = icmp slt i32 %add.i107, %148
  br i1 %cmp.i111, label %for.body.i112.for.body.i112_crit_edge, label %for.body.i112.cleanup_crit_edge

for.body.i112.cleanup_crit_edge:                  ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i112.for.body.i112_crit_edge:            ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i112

cleanup:                                          ; preds = %for.body.i112.cleanup_crit_edge, %err_phy_connect.cleanup_crit_edge, %if.end22, %while.body.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %err.3, %err_phy_connect.cleanup_crit_edge ], [ %call.i.i, %while.cond.preheader.i.cleanup_crit_edge ], [ %err.3, %for.body.i112.cleanup_crit_edge ], [ %call.i.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_num_stack_tx_queues(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_rings1 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %num_tx_rings1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings1, align 2
  %conv = zext i16 %1 to i32
  %num_rx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings, align 4
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp10.not = icmp eq i16 %3, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 14, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %prog = getelementptr inbounds %struct.enetc_bdr, ptr %5, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog, align 128
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %8) #13
  %sub = sub i32 %conv, %call4.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end.i.i ], [ %conv, %entry.cleanup_crit_edge ], [ %conv, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_tx_onestep_tstamp_init(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_onestep_tstamp = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 22
  tail call void @__init_work(ptr noundef %tx_onestep_tstamp, i32 noundef 0) #13
  %0 = ptrtoint ptr %tx_onestep_tstamp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %tx_onestep_tstamp, align 4
  %lockdep_map = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 22, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @enetc_tx_onestep_tstamp_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 22, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 22, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 22, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @enetc_tx_onestep_tstamp, ptr %func, align 4
  %tx_skbs = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 23
  %lock.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 23, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %4 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_skbs, ptr %tx_skbs, align 4
  %prev.i.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 23, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_skbs, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_setup_bdrs(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp44.not = icmp eq i16 %1, 0
  br i1 %cmp44.not, label %entry.for.cond2.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  br label %for.body

for.cond2.preheader:                              ; preds = %enetc_setup_txbdr.exit.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %num_rx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp447.not = icmp eq i16 %3, 0
  br i1 %cmp447.not, label %for.cond2.preheader.for.end12_crit_edge, label %for.body6.lr.ph

for.cond2.preheader.for.end12_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end12

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %si7 = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  br label %for.body6

for.body:                                         ; preds = %enetc_setup_txbdr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %enetc_setup_txbdr.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si, align 4
  %hw = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 13, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %index.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index.i, align 16
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 9
  %add1.i = add nuw nsw i32 %mul.i, 32784
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add1.i
  %bd_dma_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %bd_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd_dma_base.i, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add5.i = add nuw nsw i32 %mul.i, 32788
  %add.ptr6.i = getelementptr i8, ptr %16, i32 %add5.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bd_count.i, align 4
  %and9.i = and i32 %18, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.not.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.not.i, label %for.body.enetc_setup_txbdr.exit_crit_edge, label %do.end.i, !prof !95

for.body.enetc_setup_txbdr.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_setup_txbdr.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2044, i32 noundef 9, ptr noundef null) #13
  br label %enetc_setup_txbdr.exit

enetc_setup_txbdr.exit:                           ; preds = %do.end.i, %for.body.enetc_setup_txbdr.exit_crit_edge
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add33.i = add nuw nsw i32 %mul.i, 32800
  %add.ptr34.i = getelementptr i8, ptr %20, i32 %add33.i
  %21 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bd_count.i, align 4
  %and36.i = and i32 %22, -8
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %and36.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %23) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add40.i = add nuw nsw i32 %mul.i, 32792
  %add.ptr41.i = getelementptr i8, ptr %25, i32 %add40.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #13, !srcloc !105
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %next_to_use.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 6
  %28 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %next_to_use.i, align 8
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add45.i = add nuw nsw i32 %mul.i, 32796
  %add.ptr46.i = getelementptr i8, ptr %30, i32 %add45.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #13, !srcloc !105
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %next_to_clean.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 7
  %33 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %next_to_clean.i, align 4
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add51.i = add nuw nsw i32 %mul.i, 32936
  %add.ptr52.i = getelementptr i8, ptr %35, i32 %add51.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 16777344) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %ndev.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 1
  %36 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 23
  %38 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %features.i, align 16
  %and53.i = and i64 %39, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53.i)
  %tobool54.not.i = icmp eq i64 %and53.i, 0
  %spec.select.i = select i1 %tobool54.not.i, i32 -2147483648, i32 -2147483136
  %add.i = add nuw nsw i32 %mul.i, 32768
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %add.ptr61.i = getelementptr i8, ptr %41, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %42 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %42) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %add.ptr66.i = getelementptr i8, ptr %44, i32 %add40.i
  %45 = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr66.i, ptr %45, align 4
  %47 = load ptr, ptr %hw, align 4
  %add.ptr71.i = getelementptr i8, ptr %47, i32 %add45.i
  %48 = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 9
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr71.i, ptr %48, align 4
  %50 = load ptr, ptr %hw, align 4
  %add.ptr73.i = getelementptr i8, ptr %50, i32 2584
  %idr.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 10
  %51 = ptrtoint ptr %idr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr73.i, ptr %idr.i, align 8
  %inc = add nuw nsw i32 %i.045, 1
  %52 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %53 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %enetc_setup_txbdr.exit.for.body_crit_edge, label %enetc_setup_txbdr.exit.for.cond2.preheader_crit_edge

enetc_setup_txbdr.exit.for.cond2.preheader_crit_edge: ; preds = %enetc_setup_txbdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader

enetc_setup_txbdr.exit.for.body_crit_edge:        ; preds = %enetc_setup_txbdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body6:                                        ; preds = %enetc_setup_rxbdr.exit.for.body6_crit_edge, %for.body6.lr.ph
  %i.148 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc11, %enetc_setup_rxbdr.exit.for.body6_crit_edge ]
  %54 = ptrtoint ptr %si7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %si7, align 4
  %hw8 = getelementptr inbounds %struct.enetc_si, ptr %55, i32 0, i32 1
  %arrayidx9 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 14, i32 %i.148
  %56 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx9, align 4
  %index.i23 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %index.i23 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %index.i23, align 16
  %conv.i24 = zext i16 %59 to i32
  %60 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw8, align 4
  %mul.i25 = shl nuw nsw i32 %conv.i24, 9
  %add1.i26 = add nuw nsw i32 %mul.i25, 33040
  %add.ptr.i27 = getelementptr i8, ptr %61, i32 %add1.i26
  %bd_dma_base.i28 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 15
  %62 = ptrtoint ptr %bd_dma_base.i28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bd_dma_base.i28, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %64) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %65 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw8, align 4
  %add5.i29 = add nuw nsw i32 %mul.i25, 33044
  %add.ptr6.i30 = getelementptr i8, ptr %66, i32 %add5.i29
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i30, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %bd_count.i31 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 5
  %67 = ptrtoint ptr %bd_count.i31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bd_count.i31, align 4
  %and9.i32 = and i32 %68, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i32)
  %cmp.not.i33 = icmp eq i32 %and9.i32, 0
  br i1 %cmp.not.i33, label %for.body6.if.end.i_crit_edge, label %do.end.i34, !prof !95

for.body6.if.end.i_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i34:                                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2078, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i34, %for.body6.if.end.i_crit_edge
  %69 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw8, align 4
  %add33.i35 = add nuw nsw i32 %mul.i25, 33056
  %add.ptr34.i36 = getelementptr i8, ptr %70, i32 %add33.i35
  %71 = ptrtoint ptr %bd_count.i31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bd_count.i31, align 4
  %and36.i37 = and i32 %72, -8
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %73 = tail call i32 @llvm.bswap.i32(i32 %and36.i37) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i36, i32 %73) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %prog.i = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prog.i, align 128
  %tobool37.not.i = icmp eq ptr %75, null
  %76 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw8, align 4
  %add47.i = add nuw nsw i32 %mul.i25, 33032
  %add.ptr48.i = getelementptr i8, ptr %77, i32 %add47.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool37.not.i, label %if.else.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 393216) #13, !srcloc !104
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 -2147090432) #13, !srcloc !104
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then38.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %78 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw8, align 4
  %add53.i = add nuw nsw i32 %mul.i25, 33048
  %add.ptr54.i = getelementptr i8, ptr %79, i32 %add53.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %80 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw8, align 4
  %add58.i = add nuw nsw i32 %mul.i25, 33192
  %add.ptr59.i = getelementptr i8, ptr %81, i32 %add58.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 16777344) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %ext_en.i = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 17
  %82 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ext_en.i, align 1, !range !98
  %ndev.i38 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 1
  %84 = ptrtoint ptr %ndev.i38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev.i38, align 4
  %features.i39 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 23
  %86 = ptrtoint ptr %features.i39 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %features.i39, align 16
  %88 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw8, align 4
  %add71.i = add nuw nsw i32 %mul.i25, 33036
  %add.ptr72.i = getelementptr i8, ptr %89, i32 %add71.i
  %90 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 3
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr72.i, ptr %90, align 4
  %92 = load ptr, ptr %hw8, align 4
  %add.ptr74.i = getelementptr i8, ptr %92, i32 2600
  %idr.i40 = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 10
  %93 = ptrtoint ptr %idr.i40 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr74.i, ptr %idr.i40, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %next_to_clean.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 7
  %94 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %57, i32 0, i32 6
  %96 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %next_to_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.i.i = icmp sgt i32 %95, %97
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = xor i32 %97, -1
  %sub3.i.i = add i32 %95, %98
  br label %enetc_setup_rxbdr.exit

if.end.i.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %bd_count.i31 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bd_count.i31, align 4
  %101 = xor i32 %97, -1
  %add.i.i = add i32 %95, %101
  %sub7.i.i = add i32 %add.i.i, %100
  br label %enetc_setup_rxbdr.exit

enetc_setup_rxbdr.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub3.i.i, %if.then.i.i ], [ %sub7.i.i, %if.end.i.i ]
  %add.i41 = add nuw nsw i32 %mul.i25, 33024
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool60.not.i = icmp eq i8 %83, 0
  %spec.select.i42 = select i1 %tobool60.not.i, i32 -2147483648, i32 -2147483644
  %102 = trunc i64 %87 to i32
  %103 = lshr i32 %102, 3
  %104 = and i32 %103, 32
  %105 = or i32 %104, %spec.select.i42
  %call75.i = tail call fastcc i32 @enetc_refill_rx_ring(ptr noundef %57, i32 noundef %retval.0.i.i) #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %106 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw8, align 4
  %add.ptr80.i = getelementptr i8, ptr %107, i32 %add.i41
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %108 = tail call i32 @llvm.bswap.i32(i32 %105) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %108) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc11 = add nuw nsw i32 %i.148, 1
  %109 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %num_rx_rings, align 4
  %conv3 = zext i16 %110 to i32
  %cmp4 = icmp ult i32 %inc11, %conv3
  br i1 %cmp4, label %enetc_setup_rxbdr.exit.for.body6_crit_edge, label %enetc_setup_rxbdr.exit.for.end12_crit_edge

enetc_setup_rxbdr.exit.for.end12_crit_edge:       ; preds = %enetc_setup_rxbdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end12

enetc_setup_rxbdr.exit.for.body6_crit_edge:       ; preds = %enetc_setup_rxbdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6

for.end12:                                        ; preds = %enetc_setup_rxbdr.exit.for.end12_crit_edge, %for.cond2.preheader.for.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_free_rx_resources(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6.not = icmp eq i16 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 14, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_count.i, align 4
  %mul.i = shl i32 %5, 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_base.i, align 8
  %bd_dma_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %bd_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_dma_base.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %mul.i, ptr noundef %9, i32 noundef %11, i32 noundef 0) #13
  %12 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bd_base.i, align 8
  %13 = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 32
  tail call void @vfree(ptr noundef %15) #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %13, align 32
  %inc = add nuw nsw i32 %i.07, 1
  %17 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_stop(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #13
  %bdr_int_num = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bdr_int_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19 = icmp sgt i32 %1, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %si = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body

for.body:                                         ; preds = %napi_synchronize.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %napi_synchronize.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add = add nuw nsw i32 %i.020, 1
  %call1 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %add) #13
  tail call void @disable_irq(i32 noundef %call1) #13
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.enetc_int_vector, ptr %7, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %for.body.napi_synchronize.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.napi_synchronize.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #13
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %for.body.napi_synchronize.exit_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %napi4 = getelementptr inbounds %struct.enetc_int_vector, ptr %13, i32 0, i32 10
  tail call void @napi_disable(ptr noundef %napi4) #13
  %14 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bdr_int_num, align 4
  %cmp = icmp slt i32 %add, %15
  br i1 %cmp, label %napi_synchronize.exit.for.body_crit_edge, label %napi_synchronize.exit.for.end_crit_edge

napi_synchronize.exit.for.end_crit_edge:          ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

napi_synchronize.exit.for.body_crit_edge:         ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %napi_synchronize.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %phylink = getelementptr i8, ptr %ndev, i32 2504
  %16 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @phylink_stop(ptr noundef nonnull %17) #13
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_off(ptr noundef %ndev) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %num_tx_rings.i = getelementptr i8, ptr %ndev, i32 2330
  %18 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp27.not.i = icmp eq i16 %19, 0
  br i1 %cmp27.not.i, label %if.end.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.for.cond3.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body.i

for.cond3.preheader.i:                            ; preds = %for.body.i.for.cond3.preheader.i_crit_edge, %if.end.for.cond3.preheader.i_crit_edge
  %num_rx_rings.i = getelementptr i8, ptr %ndev, i32 2328
  %20 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp530.not.i = icmp eq i16 %21, 0
  br i1 %cmp530.not.i, label %for.cond3.preheader.i.enetc_clear_interrupts.exit_crit_edge, label %for.body7.lr.ph.i

for.cond3.preheader.i.enetc_clear_interrupts.exit_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_interrupts.exit

for.body7.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %si8.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %si.i, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 4
  %mul.i = shl i32 %i.028.i, 9
  %add2.i = add nuw nsw i32 %mul.i, 32928
  %add.ptr.i18 = getelementptr i8, ptr %25, i32 %add2.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %26 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i = zext i16 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond3.preheader.i_crit_edge

for.body.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond3.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.131.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc16.i, %for.body7.i.for.body7.i_crit_edge ]
  %28 = ptrtoint ptr %si8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %si8.i, align 4
  %hw9.i = getelementptr inbounds %struct.enetc_si, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %hw9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw9.i, align 4
  %mul11.i = shl i32 %i.131.i, 9
  %add13.i = add nuw nsw i32 %mul11.i, 33184
  %add.ptr14.i = getelementptr i8, ptr %31, i32 %add13.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc16.i = add nuw nsw i32 %i.131.i, 1
  %32 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_rx_rings.i, align 4
  %conv4.i = zext i16 %33 to i32
  %cmp5.i = icmp ult i32 %inc16.i, %conv4.i
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.enetc_clear_interrupts.exit_crit_edge

for.body7.i.enetc_clear_interrupts.exit_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_interrupts.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i

enetc_clear_interrupts.exit:                      ; preds = %for.body7.i.enetc_clear_interrupts.exit_crit_edge, %for.cond3.preheader.i.enetc_clear_interrupts.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_close(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @enetc_stop(ptr noundef %ndev)
  %num_tx_rings.i = getelementptr i8, ptr %ndev, i32 2330
  %0 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp29.not.i = icmp eq i16 %1, 0
  br i1 %cmp29.not.i, label %entry.for.cond2.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond2.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %enetc_clear_txbdr.exit.i.for.cond2.preheader.i_crit_edge, %entry.for.cond2.preheader.i_crit_edge
  %num_rx_rings.i = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp432.not.i = icmp eq i16 %3, 0
  br i1 %cmp432.not.i, label %for.cond2.preheader.i.enetc_clear_bdrs.exit_crit_edge, label %for.body6.lr.ph.i

for.cond2.preheader.i.enetc_clear_bdrs.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_bdrs.exit

for.body6.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %si7.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body6.i

for.body.i:                                       ; preds = %enetc_clear_txbdr.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %enetc_clear_txbdr.exit.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si.i, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.030.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %index.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index.i.i, align 16
  %conv.i.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 9
  %add.i.i = add nuw nsw i32 %mul.i.i, 32768
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %add6.i.i = add nuw nsw i32 %mul.i.i, 32772
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %13, i32 %add6.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.body.i.enetc_clear_txbdr.exit.i_crit_edge, label %while.body.i.i

for.body.i.enetc_clear_txbdr.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_txbdr.exit.i

while.body.i.i:                                   ; preds = %for.body.i
  tail call void @msleep(i32 noundef 8) #13
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 4
  %add.ptr7.1.i.i = getelementptr i8, ptr %17, i32 %add6.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i, label %while.body.i.i.enetc_clear_txbdr.exit.i_crit_edge, label %while.body.1.i.i

while.body.i.i.enetc_clear_txbdr.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_txbdr.exit.i

while.body.1.i.i:                                 ; preds = %while.body.i.i
  tail call void @msleep(i32 noundef 16) #13
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 4
  %add.ptr7.2.i.i = getelementptr i8, ptr %21, i32 %add6.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.2.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.2.i.i, label %while.body.1.i.i.enetc_clear_txbdr.exit.i_crit_edge, label %while.body.2.i.i

while.body.1.i.i.enetc_clear_txbdr.exit.i_crit_edge: ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_txbdr.exit.i

while.body.2.i.i:                                 ; preds = %while.body.1.i.i
  tail call void @msleep(i32 noundef 32) #13
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 4
  %add.ptr7.3.i.i = getelementptr i8, ptr %25, i32 %add6.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.3.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.3.i.i, label %while.body.2.i.i.enetc_clear_txbdr.exit.i_crit_edge, label %while.body.3.i.i

while.body.2.i.i.enetc_clear_txbdr.exit.i_crit_edge: ; preds = %while.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_txbdr.exit.i

while.body.3.i.i:                                 ; preds = %while.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 64) #13
  %ndev.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef %conv.i.i) #17
  br label %enetc_clear_txbdr.exit.i

enetc_clear_txbdr.exit.i:                         ; preds = %while.body.3.i.i, %while.body.2.i.i.enetc_clear_txbdr.exit.i_crit_edge, %while.body.1.i.i.enetc_clear_txbdr.exit.i_crit_edge, %while.body.i.i.enetc_clear_txbdr.exit.i_crit_edge, %for.body.i.enetc_clear_txbdr.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %30 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i = zext i16 %31 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %enetc_clear_txbdr.exit.i.for.body.i_crit_edge, label %enetc_clear_txbdr.exit.i.for.cond2.preheader.i_crit_edge

enetc_clear_txbdr.exit.i.for.cond2.preheader.i_crit_edge: ; preds = %enetc_clear_txbdr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

enetc_clear_txbdr.exit.i.for.body.i_crit_edge:    ; preds = %enetc_clear_txbdr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %i.133.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc11.i, %for.body6.i.for.body6.i_crit_edge ]
  %32 = ptrtoint ptr %si7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %si7.i, align 4
  %hw8.i = getelementptr inbounds %struct.enetc_si, ptr %33, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.133.i
  %34 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx9.i, align 4
  %index.i23.i = getelementptr inbounds %struct.enetc_bdr, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %index.i23.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index.i23.i, align 16
  %conv.i24.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %hw8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw8.i, align 4
  %mul.i25.i = shl nuw nsw i32 %conv.i24.i, 9
  %add.i26.i = add nuw nsw i32 %mul.i25.i, 33024
  %add.ptr.i27.i = getelementptr i8, ptr %39, i32 %add.i26.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc11.i = add nuw nsw i32 %i.133.i, 1
  %40 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_rx_rings.i, align 4
  %conv3.i = zext i16 %41 to i32
  %cmp4.i = icmp ult i32 %inc11.i, %conv3.i
  br i1 %cmp4.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.enetc_clear_bdrs.exit_crit_edge

for.body6.i.enetc_clear_bdrs.exit_crit_edge:      ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clear_bdrs.exit

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i

enetc_clear_bdrs.exit:                            ; preds = %for.body6.i.enetc_clear_bdrs.exit_crit_edge, %for.cond2.preheader.i.enetc_clear_bdrs.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #13
  %phylink = getelementptr i8, ptr %ndev, i32 2504
  %43 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %enetc_clear_bdrs.exit.if.end_crit_edge, label %if.then

enetc_clear_bdrs.exit.if.end_crit_edge:           ; preds = %enetc_clear_bdrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %enetc_clear_bdrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @phylink_disconnect_phy(ptr noundef nonnull %44) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %enetc_clear_bdrs.exit.if.end_crit_edge
  %45 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp31.not.i = icmp eq i16 %46, 0
  br i1 %cmp31.not.i, label %if.end.for.cond2.preheader.i11_crit_edge, label %if.end.for.body.i14_crit_edge

if.end.for.body.i14_crit_edge:                    ; preds = %if.end
  br label %for.body.i14

if.end.for.cond2.preheader.i11_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i11

for.cond2.preheader.i11:                          ; preds = %enetc_free_rx_ring.exit.i.for.cond2.preheader.i11_crit_edge, %if.end.for.cond2.preheader.i11_crit_edge
  %47 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp434.not.i = icmp eq i16 %48, 0
  br i1 %cmp434.not.i, label %for.cond2.preheader.i11.enetc_free_rxtx_rings.exit_crit_edge, label %for.cond2.preheader.i11.for.body6.i18_crit_edge

for.cond2.preheader.i11.for.body6.i18_crit_edge:  ; preds = %for.cond2.preheader.i11
  br label %for.body6.i18

for.cond2.preheader.i11.enetc_free_rxtx_rings.exit_crit_edge: ; preds = %for.cond2.preheader.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_rxtx_rings.exit

for.body.i14:                                     ; preds = %enetc_free_rx_ring.exit.i.for.body.i14_crit_edge, %if.end.for.body.i14_crit_edge
  %i.032.i = phi i32 [ %inc.i15, %enetc_free_rx_ring.exit.i.for.body.i14_crit_edge ], [ 0, %if.end.for.body.i14_crit_edge ]
  %arrayidx.i12 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.032.i
  %49 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i12, align 4
  %51 = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 32
  %tobool.not.i.i13 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i13, label %for.body.i14.enetc_free_rx_ring.exit.i_crit_edge, label %for.cond.preheader.i.i

for.body.i14.enetc_free_rx_ring.exit.i_crit_edge: ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_rx_ring.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i14
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 5
  %54 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp21.i.i = icmp sgt i32 %55, 0
  br i1 %cmp21.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 32
  %page.i.i = getelementptr %struct.enetc_rx_swbd, ptr %57, i32 %i.022.i.i, i32 1
  %58 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end3.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.enetc_rx_swbd, ptr %57, i32 %i.022.i.i
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %50, align 128
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i, align 4
  %dir.i.i = getelementptr %struct.enetc_rx_swbd, ptr %57, i32 %i.022.i.i, i32 3
  %64 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dir.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %63, i32 noundef 4096, i32 noundef %65, i32 noundef 0) #13
  %66 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page.i.i, align 4
  tail call void @__free_pages(ptr noundef %67, i32 noundef 0) #13
  %68 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %page.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end3.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %69 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bd_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %70
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.for.end.i.i_crit_edge

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %next_to_clean.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 7
  %71 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 6
  %72 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %next_to_use.i.i, align 8
  %73 = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 9
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  br label %enetc_free_rx_ring.exit.i

enetc_free_rx_ring.exit.i:                        ; preds = %for.end.i.i, %for.body.i14.enetc_free_rx_ring.exit.i_crit_edge
  %inc.i15 = add nuw nsw i32 %i.032.i, 1
  %75 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i16 = zext i16 %76 to i32
  %cmp.i17 = icmp ult i32 %inc.i15, %conv.i16
  br i1 %cmp.i17, label %enetc_free_rx_ring.exit.i.for.body.i14_crit_edge, label %enetc_free_rx_ring.exit.i.for.cond2.preheader.i11_crit_edge

enetc_free_rx_ring.exit.i.for.cond2.preheader.i11_crit_edge: ; preds = %enetc_free_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i11

enetc_free_rx_ring.exit.i.for.body.i14_crit_edge: ; preds = %enetc_free_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i14

for.body6.i18:                                    ; preds = %enetc_free_tx_ring.exit.i.for.body6.i18_crit_edge, %for.cond2.preheader.i11.for.body6.i18_crit_edge
  %i.135.i = phi i32 [ %inc9.i, %enetc_free_tx_ring.exit.i.for.body6.i18_crit_edge ], [ 0, %for.cond2.preheader.i11.for.body6.i18_crit_edge ]
  %arrayidx7.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.135.i
  %77 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx7.i, align 4
  %79 = getelementptr inbounds %struct.enetc_bdr, ptr %78, i32 0, i32 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 32
  %tobool.not.i19.i = icmp eq ptr %81, null
  br i1 %tobool.not.i19.i, label %for.body6.i18.enetc_free_tx_ring.exit.i_crit_edge, label %for.cond.preheader.i21.i

for.body6.i18.enetc_free_tx_ring.exit.i_crit_edge: ; preds = %for.body6.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_ring.exit.i

for.cond.preheader.i21.i:                         ; preds = %for.body6.i18
  %bd_count.i20.i = getelementptr inbounds %struct.enetc_bdr, ptr %78, i32 0, i32 5
  %82 = ptrtoint ptr %bd_count.i20.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bd_count.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp8.i.i = icmp sgt i32 %83, 0
  br i1 %cmp8.i.i, label %for.cond.preheader.i21.i.for.body.i23.i_crit_edge, label %for.cond.preheader.i21.i.for.end.i28.i_crit_edge

for.cond.preheader.i21.i.for.end.i28.i_crit_edge: ; preds = %for.cond.preheader.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i28.i

for.cond.preheader.i21.i.for.body.i23.i_crit_edge: ; preds = %for.cond.preheader.i21.i
  br label %for.body.i23.i

for.body.i23.i:                                   ; preds = %enetc_free_tx_frame.exit.i.i.for.body.i23.i_crit_edge, %for.cond.preheader.i21.i.for.body.i23.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i24.i, %enetc_free_tx_frame.exit.i.i.for.body.i23.i_crit_edge ], [ 0, %for.cond.preheader.i21.i.for.body.i23.i_crit_edge ]
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %79, align 32
  %arrayidx.i22.i = getelementptr %struct.enetc_tx_swbd, ptr %85, i32 %i.09.i.i
  %is_xdp_redirect.i.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %85, i32 %i.09.i.i, i32 6
  %86 = ptrtoint ptr %is_xdp_redirect.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i.i.i.i = load i8, ptr %is_xdp_redirect.i.i.i.i, align 4
  %87 = and i8 %bf.load.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i23.i.enetc_tx_swbd_get_xdp_frame.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i23.i.enetc_tx_swbd_get_xdp_frame.exit.i.i.i_crit_edge: ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i22.i, align 4
  br label %enetc_tx_swbd_get_xdp_frame.exit.i.i.i

enetc_tx_swbd_get_xdp_frame.exit.i.i.i:           ; preds = %if.then.i.i.i.i, %for.body.i23.i.enetc_tx_swbd_get_xdp_frame.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %89, %if.then.i.i.i.i ], [ null, %for.body.i23.i.enetc_tx_swbd_get_xdp_frame.exit.i.i.i_crit_edge ]
  %90 = and i8 %bf.load.i.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %if.end.i.i.i.i, label %enetc_tx_swbd_get_xdp_frame.exit.i.i.i.enetc_tx_swbd_get_skb.exit.i.i.i_crit_edge

enetc_tx_swbd_get_xdp_frame.exit.i.i.i.enetc_tx_swbd_get_skb.exit.i.i.i_crit_edge: ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_skb.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i22.i, align 4
  br label %enetc_tx_swbd_get_skb.exit.i.i.i

enetc_tx_swbd_get_skb.exit.i.i.i:                 ; preds = %if.end.i.i.i.i, %enetc_tx_swbd_get_xdp_frame.exit.i.i.i.enetc_tx_swbd_get_skb.exit.i.i.i_crit_edge
  %retval.0.i16.i.i.i = phi ptr [ %93, %if.end.i.i.i.i ], [ null, %enetc_tx_swbd_get_xdp_frame.exit.i.i.i.enetc_tx_swbd_get_skb.exit.i.i.i_crit_edge ]
  %dma.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %85, i32 %i.09.i.i, i32 1
  %94 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i.i, label %enetc_tx_swbd_get_skb.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

enetc_tx_swbd_get_skb.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %enetc_tx_swbd_get_skb.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %enetc_tx_swbd_get_skb.exit.i.i.i
  %96 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %78, align 128
  %98 = and i8 %bf.load.i.i.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %98)
  %.not.i.i.i.i = icmp eq i8 %98, -120
  br i1 %.not.i.i.i.i, label %if.then.i.i.i.enetc_unmap_tx_buff.exit.i.i.i_crit_edge, label %if.end.sink.split.i.i.i.i

if.then.i.i.i.enetc_unmap_tx_buff.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i.i.i

if.end.sink.split.i.i.i.i:                        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %85, i32 %i.09.i.i, i32 4
  %99 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %len.i.i.i.i, align 2
  %conv4.i.i.i.i = zext i16 %100 to i32
  br label %enetc_unmap_tx_buff.exit.i.i.i

enetc_unmap_tx_buff.exit.i.i.i:                   ; preds = %if.end.sink.split.i.i.i.i, %if.then.i.i.i.enetc_unmap_tx_buff.exit.i.i.i_crit_edge
  %conv8.sink.i.i.i.i = phi i32 [ %conv4.i.i.i.i, %if.end.sink.split.i.i.i.i ], [ 4096, %if.then.i.i.i.enetc_unmap_tx_buff.exit.i.i.i_crit_edge ]
  %dir9.i.i.i.i = getelementptr %struct.enetc_tx_swbd, ptr %85, i32 %i.09.i.i, i32 5
  %101 = ptrtoint ptr %dir9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dir9.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %97, i32 noundef %95, i32 noundef %conv8.sink.i.i.i.i, i32 noundef %102, i32 noundef 0) #13
  %103 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %dma.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %enetc_unmap_tx_buff.exit.i.i.i, %enetc_tx_swbd_get_skb.exit.i.i.i.if.end.i.i.i_crit_edge
  %tobool2.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i22.i, align 4
  tail call void @xdp_return_frame(ptr noundef %105) #13
  br label %if.end7.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %tobool4.not.i.i.i = icmp eq ptr %retval.0.i16.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.enetc_free_tx_frame.exit.i.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.enetc_free_tx_frame.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_frame.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %retval.0.i16.i.i.i, i32 noundef 1) #13
  br label %if.end7.sink.split.i.i.i

if.end7.sink.split.i.i.i:                         ; preds = %if.then5.i.i.i, %if.then3.i.i.i
  %106 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %arrayidx.i22.i, align 4
  br label %enetc_free_tx_frame.exit.i.i

enetc_free_tx_frame.exit.i.i:                     ; preds = %if.end7.sink.split.i.i.i, %if.else.i.i.i.enetc_free_tx_frame.exit.i.i_crit_edge
  %inc.i24.i = add nuw nsw i32 %i.09.i.i, 1
  %107 = ptrtoint ptr %bd_count.i20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bd_count.i20.i, align 4
  %cmp.i25.i = icmp slt i32 %inc.i24.i, %108
  br i1 %cmp.i25.i, label %enetc_free_tx_frame.exit.i.i.for.body.i23.i_crit_edge, label %enetc_free_tx_frame.exit.i.i.for.end.i28.i_crit_edge

enetc_free_tx_frame.exit.i.i.for.end.i28.i_crit_edge: ; preds = %enetc_free_tx_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i28.i

enetc_free_tx_frame.exit.i.i.for.body.i23.i_crit_edge: ; preds = %enetc_free_tx_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i23.i

for.end.i28.i:                                    ; preds = %enetc_free_tx_frame.exit.i.i.for.end.i28.i_crit_edge, %for.cond.preheader.i21.i.for.end.i28.i_crit_edge
  %next_to_clean.i26.i = getelementptr inbounds %struct.enetc_bdr, ptr %78, i32 0, i32 7
  %109 = ptrtoint ptr %next_to_clean.i26.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %next_to_clean.i26.i, align 4
  %next_to_use.i27.i = getelementptr inbounds %struct.enetc_bdr, ptr %78, i32 0, i32 6
  %110 = ptrtoint ptr %next_to_use.i27.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %next_to_use.i27.i, align 8
  br label %enetc_free_tx_ring.exit.i

enetc_free_tx_ring.exit.i:                        ; preds = %for.end.i28.i, %for.body6.i18.enetc_free_tx_ring.exit.i_crit_edge
  %inc9.i = add nuw nsw i32 %i.135.i, 1
  %111 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %num_tx_rings.i, align 2
  %conv3.i19 = zext i16 %112 to i32
  %cmp4.i20 = icmp ult i32 %inc9.i, %conv3.i19
  br i1 %cmp4.i20, label %enetc_free_tx_ring.exit.i.for.body6.i18_crit_edge, label %enetc_free_tx_ring.exit.i.enetc_free_rxtx_rings.exit_crit_edge

enetc_free_tx_ring.exit.i.enetc_free_rxtx_rings.exit_crit_edge: ; preds = %enetc_free_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_rxtx_rings.exit

enetc_free_tx_ring.exit.i.for.body6.i18_crit_edge: ; preds = %enetc_free_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i18

enetc_free_rxtx_rings.exit:                       ; preds = %enetc_free_tx_ring.exit.i.enetc_free_rxtx_rings.exit_crit_edge, %for.cond2.preheader.i11.enetc_free_rxtx_rings.exit_crit_edge
  %113 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp6.not.i = icmp eq i16 %114, 0
  br i1 %cmp6.not.i, label %enetc_free_rxtx_rings.exit.enetc_free_rx_resources.exit_crit_edge, label %enetc_free_rxtx_rings.exit.for.body.i28_crit_edge

enetc_free_rxtx_rings.exit.for.body.i28_crit_edge: ; preds = %enetc_free_rxtx_rings.exit
  br label %for.body.i28

enetc_free_rxtx_rings.exit.enetc_free_rx_resources.exit_crit_edge: ; preds = %enetc_free_rxtx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_rx_resources.exit

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %enetc_free_rxtx_rings.exit.for.body.i28_crit_edge
  %i.07.i = phi i32 [ %inc.i25, %for.body.i28.for.body.i28_crit_edge ], [ 0, %enetc_free_rxtx_rings.exit.for.body.i28_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.07.i
  %115 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i22, align 4
  %bd_count.i.i23 = getelementptr inbounds %struct.enetc_bdr, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %bd_count.i.i23 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bd_count.i.i23, align 4
  %mul.i.i24 = shl i32 %118, 4
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %116, align 128
  %bd_base.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %116, i32 0, i32 2
  %121 = ptrtoint ptr %bd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bd_base.i.i, align 8
  %bd_dma_base.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %116, i32 0, i32 15
  %123 = ptrtoint ptr %bd_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bd_dma_base.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %120, i32 noundef %mul.i.i24, ptr noundef %122, i32 noundef %124, i32 noundef 0) #13
  %125 = ptrtoint ptr %bd_base.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %bd_base.i.i, align 8
  %126 = getelementptr inbounds %struct.enetc_bdr, ptr %116, i32 0, i32 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 32
  tail call void @vfree(ptr noundef %128) #13
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %126, align 32
  %inc.i25 = add nuw nsw i32 %i.07.i, 1
  %130 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i26 = zext i16 %131 to i32
  %cmp.i27 = icmp ult i32 %inc.i25, %conv.i26
  br i1 %cmp.i27, label %for.body.i28.for.body.i28_crit_edge, label %for.body.i28.enetc_free_rx_resources.exit_crit_edge

for.body.i28.enetc_free_rx_resources.exit_crit_edge: ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_rx_resources.exit

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i28

enetc_free_rx_resources.exit:                     ; preds = %for.body.i28.enetc_free_rx_resources.exit_crit_edge, %enetc_free_rxtx_rings.exit.enetc_free_rx_resources.exit_crit_edge
  %132 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp6.not.i30 = icmp eq i16 %133, 0
  br i1 %cmp6.not.i30, label %enetc_free_rx_resources.exit.enetc_free_tx_resources.exit_crit_edge, label %enetc_free_rx_resources.exit.for.body.i36_crit_edge

enetc_free_rx_resources.exit.for.body.i36_crit_edge: ; preds = %enetc_free_rx_resources.exit
  br label %for.body.i36

enetc_free_rx_resources.exit.enetc_free_tx_resources.exit_crit_edge: ; preds = %enetc_free_rx_resources.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_resources.exit

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %enetc_free_rx_resources.exit.for.body.i36_crit_edge
  %i.07.i31 = phi i32 [ %inc.i33, %for.body.i36.for.body.i36_crit_edge ], [ 0, %enetc_free_rx_resources.exit.for.body.i36_crit_edge ]
  %arrayidx.i32 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.07.i31
  %134 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i32, align 4
  tail call fastcc void @enetc_free_txbdr(ptr noundef %135) #13
  %inc.i33 = add nuw nsw i32 %i.07.i31, 1
  %136 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i34 = zext i16 %137 to i32
  %cmp.i35 = icmp ult i32 %inc.i33, %conv.i34
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.enetc_free_tx_resources.exit_crit_edge

for.body.i36.enetc_free_tx_resources.exit_crit_edge: ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_resources.exit

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i36

enetc_free_tx_resources.exit:                     ; preds = %for.body.i36.enetc_free_tx_resources.exit_crit_edge, %enetc_free_rx_resources.exit.enetc_free_tx_resources.exit_crit_edge
  %si.i37 = getelementptr i8, ptr %ndev, i32 2312
  %138 = ptrtoint ptr %si.i37 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %si.i37, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %bdr_int_num.i = getelementptr i8, ptr %ndev, i32 2316
  %142 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bdr_int_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp10.i = icmp sgt i32 %143, 0
  br i1 %cmp10.i, label %enetc_free_tx_resources.exit.for.body.i40_crit_edge, label %enetc_free_tx_resources.exit.enetc_free_irqs.exit_crit_edge

enetc_free_tx_resources.exit.enetc_free_irqs.exit_crit_edge: ; preds = %enetc_free_tx_resources.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_irqs.exit

enetc_free_tx_resources.exit.for.body.i40_crit_edge: ; preds = %enetc_free_tx_resources.exit
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %enetc_free_tx_resources.exit.for.body.i40_crit_edge
  %i.011.i = phi i32 [ %add.i, %for.body.i40.for.body.i40_crit_edge ], [ 0, %enetc_free_tx_resources.exit.for.body.i40_crit_edge ]
  %add.i = add nuw nsw i32 %i.011.i, 1
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %141, i32 noundef %add.i) #13
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call.i, ptr noundef null, i1 noundef zeroext true) #13
  %arrayidx.i38 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.011.i
  %144 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i38, align 4
  %call3.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %145) #13
  %146 = ptrtoint ptr %bdr_int_num.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bdr_int_num.i, align 4
  %cmp.i39 = icmp slt i32 %add.i, %147
  br i1 %cmp.i39, label %for.body.i40.for.body.i40_crit_edge, label %for.body.i40.enetc_free_irqs.exit_crit_edge

for.body.i40.enetc_free_irqs.exit_crit_edge:      ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_irqs.exit

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i40

enetc_free_irqs.exit:                             ; preds = %for.body.i40.enetc_free_irqs.exit_crit_edge, %enetc_free_tx_resources.exit.enetc_free_irqs.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_tc(ptr noundef %ndev, i32 noundef %type, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 13, label %sw.bb1
    i32 6, label %sw.bb3
    i32 10, label %sw.bb5
    i32 5, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tx_rings1.i.i = getelementptr i8, ptr %ndev, i32 2330
  %1 = ptrtoint ptr %num_tx_rings1.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_tx_rings1.i.i, align 2
  %conv.i.i = zext i16 %2 to i32
  %num_rx_rings.i.i = getelementptr i8, ptr %ndev, i32 2328
  %3 = ptrtoint ptr %num_rx_rings.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_rx_rings.i.i, align 4
  %conv2.i.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp10.not.i.i = icmp eq i16 %4, 0
  br i1 %cmp10.not.i.i, label %sw.bb.enetc_num_stack_tx_queues.exit.i_crit_edge, label %sw.bb.for.body.i.i_crit_edge

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

sw.bb.enetc_num_stack_tx_queues.exit.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_num_stack_tx_queues.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv2.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.enetc_num_stack_tx_queues.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.enetc_num_stack_tx_queues.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_num_stack_tx_queues.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i, i32 0, i32 14, i32 %i.011.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %prog.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %6, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prog.i.i, align 128
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #13
  %sub.i.i = sub i32 %conv.i.i, %call4.i.i.i.i
  br label %enetc_num_stack_tx_queues.exit.i

enetc_num_stack_tx_queues.exit.i:                 ; preds = %if.end.i.i.i.i, %for.cond.i.i.enetc_num_stack_tx_queues.exit.i_crit_edge, %sw.bb.enetc_num_stack_tx_queues.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end.i.i.i.i ], [ %conv.i.i, %sw.bb.enetc_num_stack_tx_queues.exit.i_crit_edge ], [ %conv.i.i, %for.cond.i.i.enetc_num_stack_tx_queues.exit.i_crit_edge ]
  %hw.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %hw.i, align 1
  %11 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type_data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %enetc_num_stack_tx_queues.exit.i
  tail call void @netdev_reset_tc(ptr noundef %ndev) #13
  %call3.i = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %retval.0.i.i) #13
  %13 = ptrtoint ptr %num_tx_rings1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_tx_rings1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp87.not.i = icmp eq i16 %14, 0
  br i1 %cmp87.not.i, label %if.then.i.return_crit_edge, label %for.body.lr.ph.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i, i32 0, i32 13, i32 %i.088.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si.i, align 4
  %hw6.i = getelementptr inbounds %struct.enetc_si, ptr %18, i32 0, i32 1
  %index.i = getelementptr inbounds %struct.enetc_bdr, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index.i, align 16
  %conv7.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %hw6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw6.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv7.i, 9
  %add.i.i = add nuw nsw i32 %mul.i.i, 32768
  %add.ptr.i78.i = getelementptr i8, ptr %22, i32 %add.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %24 = and i32 %23, -117440513
  %25 = ptrtoint ptr %hw6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw6.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %24) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %27 = ptrtoint ptr %num_tx_rings1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_tx_rings1.i.i, align 2
  %conv.i = zext i16 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i:                                         ; preds = %enetc_num_stack_tx_queues.exit.i
  %conv8.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv8.i)
  %cmp9.i = icmp slt i32 %retval.0.i.i, %conv8.i
  br i1 %cmp9.i, label %if.then11.i, label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %if.end.i
  %si22.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body19.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %num_tx_rings1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_tx_rings1.i.i, align 2
  %conv13.i = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.30, i32 noundef %conv13.i) #17
  br label %return

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond15.preheader.i
  %i.184.i = phi i32 [ 0, %for.cond15.preheader.i ], [ %inc27.i, %for.body19.i.for.body19.i_crit_edge ]
  %arrayidx21.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i, i32 0, i32 13, i32 %i.184.i
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21.i, align 4
  %33 = ptrtoint ptr %si22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %si22.i, align 4
  %hw23.i = getelementptr inbounds %struct.enetc_si, ptr %34, i32 0, i32 1
  %index24.i = getelementptr inbounds %struct.enetc_bdr, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %index24.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %index24.i, align 16
  %conv25.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %hw23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw23.i, align 4
  %mul.i79.i = shl nuw nsw i32 %conv25.i, 9
  %add.i80.i = add nuw nsw i32 %mul.i79.i, 32768
  %add.ptr.i81.i = getelementptr i8, ptr %38, i32 %add.i80.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %40 = and i32 %39, -117440513
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %and2.i.i = and i32 %i.184.i, 7
  %or.i.i = or i32 %41, %and2.i.i
  %42 = ptrtoint ptr %hw23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw23.i, align 4
  %add.ptr7.i82.i = getelementptr i8, ptr %43, i32 %add.i80.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i82.i, i32 %44) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc27.i = add nuw nsw i32 %i.184.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, %conv8.i
  br i1 %exitcond.not.i, label %for.end28.i, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19.i

for.end28.i:                                      ; preds = %for.body19.i
  %call30.i = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %conv8.i) #13
  %call31.i = tail call i32 @netdev_set_num_tc(ptr noundef %ndev, i8 noundef zeroext %12) #13
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %for.end28.i
  %i.285.i = phi i32 [ 0, %for.end28.i ], [ %inc41.i, %for.body36.i.for.body36.i_crit_edge ]
  %conv37.i = trunc i32 %i.285.i to i8
  %conv38.i = trunc i32 %i.285.i to i16
  %call39.i = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext %conv37.i, i16 noundef zeroext 1, i16 noundef zeroext %conv38.i) #13
  %inc41.i = add nuw nsw i32 %i.285.i, 1
  %exitcond90.not.i = icmp eq i32 %inc41.i, %conv8.i
  br i1 %exitcond90.not.i, label %for.body36.i.return_crit_edge, label %for.body36.i.for.body36.i_crit_edge

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36.i

for.body36.i.return_crit_edge:                    ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @enetc_setup_tc_taprio(ptr noundef %ndev, ptr noundef %type_data) #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @enetc_setup_tc_cbs(ptr noundef %ndev, ptr noundef %type_data) #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @enetc_setup_tc_txtime(ptr noundef %ndev, ptr noundef %type_data) #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @enetc_setup_tc_psfp(ptr noundef %ndev, ptr noundef %type_data) #13
  br label %return

return:                                           ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %for.body36.i.return_crit_edge, %if.then11.i, %for.body.i.return_crit_edge, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ -95, %entry.return_crit_edge ], [ -22, %if.then11.i ], [ 0, %if.then.i.return_crit_edge ], [ 0, %for.body.i.return_crit_edge ], [ 0, %for.body36.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc_taprio(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc_cbs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc_txtime(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc_psfp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_bpf(ptr noundef %dev, ptr nocapture noundef readonly %xdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %extack = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_close(ptr noundef %dev) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %xdp_prog.i = getelementptr i8, ptr %dev, i32 2516
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  %8 = ptrtoint ptr %3 to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %8, ptr %xdp_prog.i) #13, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool17.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then18.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %10) #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end.i.if.end19.i_crit_edge
  %num_rx_rings.i = getelementptr i8, ptr %dev, i32 2328
  %11 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_rx_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp49.not.i = icmp eq i16 %12, 0
  br i1 %cmp49.not.i, label %if.end19.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %tobool23.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool23.not.i, i32 128, i32 256
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i, i32 0, i32 14, i32 %i.050.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %prog22.i = getelementptr inbounds %struct.enetc_bdr, ptr %14, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %prog22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %prog22.i, align 128
  %16 = getelementptr inbounds %struct.enetc_bdr, ptr %14, i32 0, i32 11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 4
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %18 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i = zext i16 %19 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  br i1 %tobool.i.not.i, label %for.end.i.return_crit_edge, label %if.then28.i

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call29.i = tail call i32 @dev_open(ptr noundef %dev, ptr noundef %5) #13
  br label %return

return:                                           ; preds = %if.then28.i, %for.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call29.i, %if.then28.i ], [ 0, %for.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @enetc_get_stats(ptr noundef %ndev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %stats1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %0 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp50.not = icmp eq i16 %1, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bytes.052 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %packets.051 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.053
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %stats3 = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats3, align 128
  %add = add i32 %5, %packets.051
  %bytes8 = getelementptr inbounds %struct.enetc_bdr, ptr %3, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %bytes8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes8, align 4
  %add9 = add i32 %7, %bytes.052
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %packets.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %bytes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add9, %for.body.for.end_crit_edge ]
  %8 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %packets.0.lcssa, ptr %stats1, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bytes.0.lcssa, ptr %rx_bytes, align 4
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %10 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_tx_rings, align 2
  %conv11 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1255.not = icmp eq i16 %11, 0
  br i1 %cmp1255.not, label %for.end.for.end26_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %i.158 = phi i32 [ %inc25, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %bytes.157 = phi i32 [ %add23, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %packets.156 = phi i32 [ %add18, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.158
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  %stats16 = getelementptr inbounds %struct.enetc_bdr, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %stats16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats16, align 128
  %add18 = add i32 %15, %packets.156
  %bytes22 = getelementptr inbounds %struct.enetc_bdr, ptr %13, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %bytes22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes22, align 4
  %add23 = add i32 %17, %bytes.157
  %inc25 = add nuw nsw i32 %i.158, 1
  %exitcond61.not = icmp eq i32 %inc25, %conv11
  br i1 %exitcond61.not, label %for.body14.for.end26_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.body14.for.end26_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.end26:                                        ; preds = %for.body14.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %packets.1.lcssa = phi i32 [ 0, %for.end.for.end26_crit_edge ], [ %add18, %for.body14.for.end26_crit_edge ]
  %bytes.1.lcssa = phi i32 [ 0, %for.end.for.end26_crit_edge ], [ %add23, %for.body14.for.end26_crit_edge ]
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %18 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %packets.1.lcssa, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bytes.1.lcssa, ptr %tx_bytes, align 4
  ret ptr %stats1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_set_features(ptr noundef %ndev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si.i, align 4
  %hw1.i = getelementptr inbounds %struct.enetc_si, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 56
  %num_rx_rings.i = getelementptr i8, ptr %ndev, i32 2328
  %6 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_rx_rings.i, align 4
  %conv.i = zext i16 %7 to i32
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %9 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1.i, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %12 = and i32 %11, -16777217
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %14 = lshr i64 %features, 39
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 1
  %or.i = or i32 %13, %16
  %17 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1.i, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %num_rx_rings.i47 = getelementptr i8, ptr %ndev, i32 2328
  %20 = ptrtoint ptr %num_rx_rings.i47 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_rx_rings.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp7.not.i = icmp eq i16 %21, 0
  br i1 %cmp7.not.i, label %if.then7.if.end14_crit_edge, label %for.body.lr.ph.i

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then7
  %si.i48 = getelementptr i8, ptr %ndev, i32 2312
  %22 = trunc i64 %features to i32
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %si.i48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %si.i48, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  %mul.i.i = shl i32 %i.08.i, 9
  %add.i.i = add nuw nsw i32 %mul.i.i, 33024
  %add.ptr.i5.i = getelementptr i8, ptr %28, i32 %add.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %30 = and i32 %29, -536870913
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %or.i.i = or i32 %31, %24
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %33, i32 %add.i.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %34) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %35 = ptrtoint ptr %num_rx_rings.i47 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_rx_rings.i47, align 4
  %conv.i49 = zext i16 %36 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i49
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end14_crit_edge

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end14:                                         ; preds = %for.body.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i64 %xor, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %if.then17

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17:                                        ; preds = %if.end14
  %num_tx_rings.i = getelementptr i8, ptr %ndev, i32 2330
  %37 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_tx_rings.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp7.not.i50 = icmp eq i16 %38, 0
  br i1 %cmp7.not.i50, label %if.then17.if.end24_crit_edge, label %for.body.lr.ph.i53

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.lr.ph.i53:                               ; preds = %if.then17
  %si.i51 = getelementptr i8, ptr %ndev, i32 2312
  %39 = trunc i64 %features to i32
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 512
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %for.body.lr.ph.i53
  %i.08.i54 = phi i32 [ 0, %for.body.lr.ph.i53 ], [ %inc.i61, %for.body.i64.for.body.i64_crit_edge ]
  %42 = ptrtoint ptr %si.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %si.i51, align 4
  %hw.i55 = getelementptr inbounds %struct.enetc_si, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %hw.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i55, align 4
  %mul.i.i56 = shl i32 %i.08.i54, 9
  %add.i.i57 = add nuw nsw i32 %mul.i.i56, 32768
  %add.ptr.i5.i58 = getelementptr i8, ptr %45, i32 %add.i.i57
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i58) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %47 = and i32 %46, -131073
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %or.i.i59 = or i32 %48, %41
  %49 = ptrtoint ptr %hw.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw.i55, align 4
  %add.ptr6.i.i60 = getelementptr i8, ptr %50, i32 %add.i.i57
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i.i59) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i60, i32 %51) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %inc.i61 = add nuw nsw i32 %i.08.i54, 1
  %52 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_tx_rings.i, align 2
  %conv.i62 = zext i16 %53 to i32
  %cmp.i63 = icmp ult i32 %inc.i61, %conv.i62
  br i1 %cmp.i63, label %for.body.i64.for.body.i64_crit_edge, label %for.body.i64.if.end24_crit_edge

for.body.i64.if.end24_crit_edge:                  ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i64

if.end24:                                         ; preds = %for.body.i64.if.end24_crit_edge, %if.then17.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %and25 = and i64 %xor, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.then27

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then27:                                        ; preds = %if.end24
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %54 = and i64 %features, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool.not.i65 = icmp eq i64 %54, 0
  %si.i18.i = getelementptr i8, ptr %ndev, i32 2312
  %55 = ptrtoint ptr %si.i18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %si.i18.i, align 4
  br i1 %tobool.not.i65, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.then27
  %port.i.i.i = getelementptr inbounds %struct.enetc_si, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 6920
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %60 = and i32 %59, -65536
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  %psfp_cap.i.i.i = getelementptr i8, ptr %ndev, i32 2484
  %62 = ptrtoint ptr %psfp_cap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %psfp_cap.i.i.i, align 4
  %63 = ptrtoint ptr %si.i18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %si.i18.i, align 4
  %port3.i.i.i = getelementptr inbounds %struct.enetc_si, ptr %64, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port3.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %66, i32 6936
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %68 = and i32 %67, -65536
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #13
  %max_psfp_filter.i.i.i = getelementptr i8, ptr %ndev, i32 2488
  %70 = ptrtoint ptr %max_psfp_filter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %max_psfp_filter.i.i.i, align 4
  %71 = ptrtoint ptr %si.i18.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %si.i18.i, align 4
  %port10.i.i.i = getelementptr inbounds %struct.enetc_si, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %port10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port10.i.i.i, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %74, i32 6952
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i.i) #13, !srcloc !105
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %and13.i.i.i = and i32 %76, 65535
  %max_psfp_gate.i.i.i = getelementptr i8, ptr %ndev, i32 2492
  %77 = ptrtoint ptr %max_psfp_gate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and13.i.i.i, ptr %max_psfp_gate.i.i.i, align 4
  %and15.i.i.i = lshr i32 %76, 16
  %shr.i.i.i = and i32 %and15.i.i.i, 7
  %max_psfp_gatelist.i.i.i = getelementptr i8, ptr %ndev, i32 2496
  %78 = ptrtoint ptr %max_psfp_gatelist.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shr.i.i.i, ptr %max_psfp_gatelist.i.i.i, align 4
  %79 = ptrtoint ptr %si.i18.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %si.i18.i, align 4
  %port19.i.i.i = getelementptr inbounds %struct.enetc_si, ptr %80, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %port19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port19.i.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %82, i32 6968
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %84 = and i32 %83, -65536
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #13
  %max_psfp_meter.i.i.i = getelementptr i8, ptr %ndev, i32 2500
  %86 = ptrtoint ptr %max_psfp_meter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %max_psfp_meter.i.i.i, align 4
  %call.i.i = tail call i32 @enetc_psfp_init(ptr noundef %add.ptr.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then.i.if.end35_crit_edge

if.then.i.if.end35_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw1.i.i = getelementptr inbounds %struct.enetc_si, ptr %56, i32 0, i32 1
  %87 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw1.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %88, i32 72448
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %90 = or i32 %89, 251658240
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %90) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %active_offloads.i = getelementptr i8, ptr %ndev, i32 2340
  %91 = ptrtoint ptr %active_offloads.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %active_offloads.i, align 4
  %or.i66 = or i32 %92, 1024
  store i32 %or.i66, ptr %active_offloads.i, align 4
  br label %if.end35

if.end4.i:                                        ; preds = %if.then27
  %call.i19.i = tail call i32 @enetc_psfp_clean(ptr noundef %add.ptr.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.end8.i, label %if.end4.i.if.end35_crit_edge

if.end4.i.if.end35_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw1.i21.i = getelementptr inbounds %struct.enetc_si, ptr %56, i32 0, i32 1
  %93 = ptrtoint ptr %hw1.i21.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw1.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %94, i32 72448
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #13, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %96 = and i32 %95, -251658241
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %96) #13, !srcloc !104
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %psfp_cap.i.i = getelementptr i8, ptr %ndev, i32 2484
  %97 = call ptr @memset(ptr %psfp_cap.i.i, i32 0, i32 20)
  %active_offloads9.i = getelementptr i8, ptr %ndev, i32 2340
  %98 = ptrtoint ptr %active_offloads9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %active_offloads9.i, align 4
  %and.i = and i32 %99, -1025
  store i32 %and.i, ptr %active_offloads9.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end8.i, %if.end4.i.if.end35_crit_edge, %if.end.i, %if.then.i.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %err.0 = phi i32 [ 0, %if.end24.if.end35_crit_edge ], [ 0, %if.end.i ], [ 0, %if.end8.i ], [ %call.i.i, %if.then.i.if.end35_crit_edge ], [ %call.i19.i, %if.end4.i.if.end35_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_ioctl(ptr noundef %ndev, ptr noundef %rq, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %config.i17 = alloca %struct.hwtstamp_config, align 4
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cmd, label %if.end5 [
    i32 35248, label %if.then
    i32 35249, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #13
  %1 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %config.i, align 4, !annotation !113
  %2 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !113
  %4 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !113
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.if.then11.i.i.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 12, i32 -1226833920) #16, !srcloc !114
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !95

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i, i32 noundef 12) #13
  %9 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !115
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i, ptr noundef %7, i32 noundef 12) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !95

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.then.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %enetc_hwtstamp_set.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %14, label %if.end.i.enetc_hwtstamp_set.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

if.end.i.enetc_hwtstamp_set.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_hwtstamp_set.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %active_offloads.i = getelementptr i8, ptr %ndev, i32 2340
  %16 = ptrtoint ptr %active_offloads.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_offloads.i, align 4
  %and.i = and i32 %17, -256
  store i32 %and.i, ptr %active_offloads.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %active_offloads3.i = getelementptr i8, ptr %ndev, i32 2340
  %18 = ptrtoint ptr %active_offloads3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_offloads3.i, align 4
  %and4.i = and i32 %19, -256
  %or.i = or i32 %and4.i, 1
  store i32 %or.i, ptr %active_offloads3.i, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %active_offloads7.i = getelementptr i8, ptr %ndev, i32 2340
  %20 = ptrtoint ptr %active_offloads7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_offloads7.i, align 4
  %and8.i = and i32 %21, -256
  %or10.i = or i32 %and8.i, 2
  store i32 %or10.i, ptr %active_offloads7.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %active_offloads11.i = getelementptr i8, ptr %ndev, i32 2340
  %22 = ptrtoint ptr %active_offloads11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_offloads11.i, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cond31.i = icmp eq i32 %25, 0
  br i1 %cond31.i, label %sw.bb12.i, label %sw.default15.i

sw.bb12.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %and14.i = and i32 %23, -257
  %26 = ptrtoint ptr %active_offloads11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and14.i, ptr %active_offloads11.i, align 4
  br label %sw.epilog19.i

sw.default15.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %or17.i = or i32 %23, 256
  %27 = ptrtoint ptr %active_offloads11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or17.i, ptr %active_offloads11.i, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %4, align 4
  br label %sw.epilog19.i

sw.epilog19.i:                                    ; preds = %sw.default15.i, %sw.bb12.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %sw.epilog19.i.if.then.i47.i_crit_edge, label %land.lhs.true.i

sw.epilog19.i.if.then.i47.i_crit_edge:            ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i47.i

land.lhs.true.i:                                  ; preds = %sw.epilog19.i
  %31 = ptrtoint ptr %active_offloads11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active_offloads11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %32)
  %cmp.not.i = icmp eq i32 %23, %32
  br i1 %cmp.not.i, label %land.lhs.true.i.if.then.i47.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.then.i47.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i47.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = call i32 @enetc_close(ptr noundef %ndev) #13
  %call24.i = call i32 @enetc_open(ptr noundef %ndev) #13
  br label %if.then.i47.i

if.then.i47.i:                                    ; preds = %if.then22.i, %land.lhs.true.i.if.then.i47.i_crit_edge, %sw.epilog19.i.if.then.i47.i_crit_edge
  %33 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #13
  %call.i.i46.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i46.i, label %if.then.i47.i.enetc_hwtstamp_set.exit_crit_edge, label %if.end.i.i50.i

if.then.i47.i.enetc_hwtstamp_set.exit_crit_edge:  ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_hwtstamp_set.exit

if.end.i.i50.i:                                   ; preds = %if.then.i47.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 12, i32 -1226833920) #16, !srcloc !118
  %asmresult.i.i48.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i48.i)
  %cmp.i.i49.i = icmp eq i32 %asmresult.i.i48.i, 0
  br i1 %cmp.i.i49.i, label %copy_to_user.exit.i, label %if.end.i.i50.i.enetc_hwtstamp_set.exit_crit_edge

if.end.i.i50.i.enetc_hwtstamp_set.exit_crit_edge: ; preds = %if.end.i.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_hwtstamp_set.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i51.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i, i32 noundef 12) #13
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %config.i, i32 noundef 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool28.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool28.not.i, i32 0, i32 -14
  br label %enetc_hwtstamp_set.exit

enetc_hwtstamp_set.exit:                          ; preds = %copy_to_user.exit.i, %if.end.i.i50.i.enetc_hwtstamp_set.exit_crit_edge, %if.then.i47.i.enetc_hwtstamp_set.exit_crit_edge, %if.end.i.enetc_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -34, %if.end.i.enetc_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i47.i.enetc_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i50.i.enetc_hwtstamp_set.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #13
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i17) #13
  %36 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i17, i32 0, i32 1
  %37 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i17, i32 0, i32 2
  %38 = ptrtoint ptr %config.i17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %config.i17, align 4
  %active_offloads.i18 = getelementptr i8, ptr %ndev, i32 2340
  %39 = ptrtoint ptr %active_offloads.i18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active_offloads.i18, align 4
  %and.i19 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i = icmp eq i32 %and.i19, 0
  %and2.i = and i32 %40, 1
  %.sink.i = select i1 %tobool.not.i, i32 %and2.i, i32 2
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i, ptr %36, align 4
  %and10.i = lshr i32 %40, 8
  %and10.lobit.i = and i32 %and10.i, 1
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and10.lobit.i, ptr %37, align 4
  %ifr_ifru.i20 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %43 = ptrtoint ptr %ifr_ifru.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ifr_ifru.i20, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #13
  %call.i.i.i21 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i21, label %if.then3.enetc_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i24

if.then3.enetc_hwtstamp_get.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_hwtstamp_get.exit

if.end.i.i.i24:                                   ; preds = %if.then3
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 12, i32 -1226833920) #16, !srcloc !118
  %asmresult.i.i.i22 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i22)
  %cmp.i.i.i23 = icmp eq i32 %asmresult.i.i.i22, 0
  br i1 %cmp.i.i.i23, label %copy_to_user.exit.i28, label %if.end.i.i.i24.enetc_hwtstamp_get.exit_crit_edge

if.end.i.i.i24.enetc_hwtstamp_get.exit_crit_edge: ; preds = %if.end.i.i.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_hwtstamp_get.exit

copy_to_user.exit.i28:                            ; preds = %if.end.i.i.i24
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i17, i32 noundef 12) #13
  %call.i1.i.i.i26 = call i32 @arm_copy_to_user(ptr noundef %44, ptr noundef nonnull %config.i17, i32 noundef 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i26)
  %tobool13.not.i = icmp eq i32 %call.i1.i.i.i26, 0
  %spec.select.i27 = select i1 %tobool13.not.i, i32 0, i32 -14
  br label %enetc_hwtstamp_get.exit

enetc_hwtstamp_get.exit:                          ; preds = %copy_to_user.exit.i28, %if.end.i.i.i24.enetc_hwtstamp_get.exit_crit_edge, %if.then3.enetc_hwtstamp_get.exit_crit_edge
  %46 = phi i32 [ -14, %if.then3.enetc_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i24.enetc_hwtstamp_get.exit_crit_edge ], [ %spec.select.i27, %copy_to_user.exit.i28 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i17) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %phylink = getelementptr i8, ptr %ndev, i32 2504
  %47 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @phylink_mii_ioctl(ptr noundef nonnull %48, ptr noundef %rq, i32 noundef %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end5.cleanup_crit_edge, %enetc_hwtstamp_get.exit, %enetc_hwtstamp_set.exit
  %retval.0 = phi i32 [ %retval.0.i, %enetc_hwtstamp_set.exit ], [ %46, %enetc_hwtstamp_get.exit ], [ %call9, %if.end7 ], [ -95, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_alloc_msix(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bdr_int_num = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdr_int_num, align 4
  %add = add i32 %5, 1
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef %add, i32 noundef %add, i32 noundef 4, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp2.not = icmp eq i32 %call.i, %add
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup86_crit_edge

if.end.cleanup86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end4:                                          ; preds = %if.end
  %num_tx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bdr_int_num, align 4
  %div = sdiv i32 %conv, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7182 = icmp sgt i32 %9, 0
  br i1 %cmp7182, label %for.body.lr.ph, label %if.end4.for.end66_crit_edge

if.end4.for.end66_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end66

for.body.lr.ph:                                   ; preds = %if.end4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 512) #13
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 1152) #13
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %dev = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 1
  %rx_bd_count = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 7
  %ic_mode = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp46180 = icmp sgt i32 %div, 0
  %tx_bd_count = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc64.if.end8.i.i_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc65, %for.inc64.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.i
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 4, i32 %i.0183
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15
  %conv13 = trunc i32 %i.0183 to i16
  %index = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15, i32 4
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %index, align 16
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %ndev14 = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %ndev14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ndev14, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %rx_ring, align 128
  %21 = ptrtoint ptr %rx_bd_count to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_bd_count, align 4
  %conv16 = zext i16 %22 to i32
  %bd_count = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15, i32 5
  %23 = ptrtoint ptr %bd_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv16, ptr %bd_count, align 4
  %buffer_offset = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15, i32 11
  %24 = ptrtoint ptr %buffer_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %buffer_offset, align 4
  %arrayidx18 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 14, i32 %i.0183
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx_ring, ptr %arrayidx18, align 4
  %xdp = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 15, i32 13
  %26 = load ptr, ptr %priv, align 4
  %call20 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp, ptr noundef %26, i32 noundef %i.0183, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end12
  %call26 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp) #13
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %ic_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ic_mode, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end31.do.body_crit_edge, label %if.then33

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %rx_ictt = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %rx_ictt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rx_ictt, align 4
  %rx_dim_en = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %rx_dim_en to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %rx_dim_en, align 2
  br label %do.body

do.body:                                          ; preds = %if.then33, %if.end31.do.body_crit_edge
  %work = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 12, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %31 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 12, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @enetc_alloc_msix.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry41 = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 12, i32 4, i32 1
  %32 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 12, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry41, ptr %prev.i, align 16
  %func = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 12, i32 4, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @enetc_rx_dim_work, ptr %func, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %napi = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 10
  tail call void @netif_napi_add(ptr noundef %36, ptr noundef %napi, ptr noundef nonnull @enetc_poll, i32 noundef 64) #13
  %count_tx_rings = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %count_tx_rings to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %count_tx_rings, align 16
  br i1 %cmp46180, label %for.body48.lr.ph, label %do.body.for.inc64_crit_edge

do.body.for.inc64_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc64

for.body48.lr.ph:                                 ; preds = %do.body
  %tx_rings_map = getelementptr inbounds %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 3
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body48.lr.ph
  %j.0181 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc, %for.body48.for.body48_crit_edge ]
  %38 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bdr_int_num, align 4
  %mul = mul i32 %39, %j.0181
  %add50 = add i32 %mul, %i.0183
  %rem.i = and i32 %add50, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %add50, 5
  %add.ptr.i = getelementptr i32, ptr %tx_rings_map, i32 %div2.i
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %41
  store i32 %or.i, ptr %add.ptr.i, align 4
  %arrayidx51 = getelementptr %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 16, i32 %j.0181
  %conv52 = trunc i32 %add50 to i16
  %index53 = getelementptr %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 16, i32 %j.0181, i32 4
  %42 = ptrtoint ptr %index53 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv52, ptr %index53, align 16
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  %ndev55 = getelementptr %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 16, i32 %j.0181, i32 1
  %45 = ptrtoint ptr %ndev55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %ndev55, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx51, align 128
  %49 = ptrtoint ptr %tx_bd_count to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tx_bd_count, align 2
  %conv58 = zext i16 %50 to i32
  %bd_count59 = getelementptr %struct.enetc_int_vector, ptr %call9.i.i, i32 0, i32 16, i32 %j.0181, i32 5
  %51 = ptrtoint ptr %bd_count59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv58, ptr %bd_count59, align 4
  %arrayidx61 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 13, i32 %add50
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx51, ptr %arrayidx61, align 4
  %inc = add nuw nsw i32 %j.0181, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body48.for.inc64_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

for.body48.for.inc64_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc64

cleanup.sink.split:                               ; preds = %if.then28, %if.end12.cleanup.sink.split_crit_edge
  %err.0.ph = phi i32 [ %call26, %if.then28 ], [ %call20, %if.end12.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.i.i.cleanup_crit_edge
  %err.0 = phi i32 [ %err.0.ph, %cleanup.sink.split ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0183)
  %tobool72.not185 = icmp eq i32 %i.0183, 0
  br i1 %tobool72.not185, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.inc64:                                        ; preds = %for.body48.for.inc64_crit_edge, %do.body.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.0183, 1
  %53 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bdr_int_num, align 4
  %cmp7 = icmp slt i32 %inc65, %54
  br i1 %cmp7, label %for.inc64.if.end8.i.i_crit_edge, label %for.inc64.for.end66_crit_edge

for.inc64.for.end66_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end66

for.inc64.if.end8.i.i_crit_edge:                  ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

for.end66:                                        ; preds = %for.inc64.for.end66_crit_edge, %if.end4.for.end66_crit_edge
  %55 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_tx_rings, align 2
  %conv68 = zext i16 %56 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %57) #13
  %sub = sub i32 %conv68, %call4.i.i
  %arrayidx71 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 13, i32 %sub
  %xdp_tx_ring = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 12
  %58 = ptrtoint ptr %xdp_tx_ring to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx71, ptr %xdp_tx_ring, align 4
  br label %cleanup86

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cleanup.while.body_crit_edge
  %i.1186 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0183, %cleanup.while.body_crit_edge ]
  %dec = add nsw i32 %i.1186, -1
  %arrayidx75 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 4, i32 %dec
  %59 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx75, align 4
  %xdp78 = getelementptr inbounds %struct.enetc_int_vector, ptr %60, i32 0, i32 15, i32 13
  tail call void @xdp_rxq_info_unreg_mem_model(ptr noundef %xdp78) #13
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp78) #13
  %napi82 = getelementptr inbounds %struct.enetc_int_vector, ptr %60, i32 0, i32 10
  tail call void @__netif_napi_del(ptr noundef %napi82) #13
  tail call void @synchronize_net() #13
  %work84 = getelementptr inbounds %struct.enetc_int_vector, ptr %60, i32 0, i32 12, i32 4
  %call85 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work84) #13
  tail call void @kfree(ptr noundef %60) #13
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %cleanup.while.end_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %3) #13
  br label %cleanup86

cleanup86:                                        ; preds = %while.end, %for.end66, %if.end.cleanup86_crit_edge, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ %err.0, %while.end ], [ 0, %for.end66 ], [ %call.i, %entry.cleanup86_crit_edge ], [ -1, %if.end.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_rx_dim_work(ptr nocapture noundef %w) #0 align 64 {
entry:
  %moder = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %moder) #13
  %0 = ptrtoint ptr %moder to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %moder, align 8, !annotation !113
  %mode = getelementptr i8, ptr %w, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %w, i32 48
  %3 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %4 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %moder, i8 noundef zeroext %2, i32 noundef %conv) #13
  %5 = ptrtoint ptr %moder to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %moder, align 8
  %conv.i = zext i16 %6 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 400000000
  %7 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #16, !srcloc !109
  %8 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %7, i32 0) #16, !srcloc !108
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv1.i = trunc i64 %div1581.i.i.i to i32
  %rx_ictt = getelementptr i8, ptr %w, i32 -436
  %9 = ptrtoint ptr %rx_ictt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1.i, ptr %rx_ictt, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %moder) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %cleaned_cnt.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %rxbd.i = alloca ptr, align 4
  %shhwtstamps.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -128
  %rx_ring1 = getelementptr i8, ptr %napi, i32 512
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %count_tx_rings = getelementptr i8, ptr %napi, i32 -112
  %0 = ptrtoint ptr %count_tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_tx_rings, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp132 = icmp sgt i32 %1, 0
  br i1 %cmp132, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring = getelementptr i8, ptr %napi, i32 1024
  br label %for.body

for.body:                                         ; preds = %enetc_clean_tx_ring.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %enetc_clean_tx_ring.exit.for.body_crit_edge ]
  %complete.0.off0133 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %enetc_clean_tx_ring.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.enetc_bdr], ptr %tx_ring, i32 0, i32 %i.0134
  %ndev1.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 7
  %4 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_clean.i, align 4
  %6 = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 32
  %arrayidx.i = getelementptr %struct.enetc_tx_swbd, ptr %8, i32 %5
  %9 = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %for.body.enetc_rd_reg_hot.exit.i.i_crit_edge, label %land.rhs.i.i.i

for.body.enetc_rd_reg_hot.exit.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.body
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge, !prof !101

land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit.i.i

enetc_rd_reg_hot.exit.i.i:                        ; preds = %do.end.i.i.i, %land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge, %for.body.enetc_rd_reg_hot.exit.i.i_crit_edge
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #13, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %14 = and i32 %13, -65536
  %15 = call i32 @llvm.bswap.i32(i32 %14) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp.not.i.i = icmp slt i32 %15, %5
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %enetc_rd_reg_hot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %15, %5
  br label %enetc_bd_ready_count.exit.i

cond.false.i.i:                                   ; preds = %enetc_rd_reg_hot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 5
  %16 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_count.i.i, align 4
  %sub1.i.i = sub i32 %15, %5
  %add.i.i = add i32 %sub1.i.i, %17
  br label %enetc_bd_ready_count.exit.i

enetc_bd_ready_count.exit.i:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ %add.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not215.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not215.not.i, label %enetc_bd_ready_count.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

enetc_bd_ready_count.exit.i.while.end.i_crit_edge: ; preds = %enetc_bd_ready_count.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %enetc_bd_ready_count.exit.i
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 2
  %si.i = getelementptr i8, ptr %3, i32 2312
  %index2.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 4
  %tx_onestep_tstamp.i = getelementptr i8, ptr %3, i32 2524
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 5
  %idr.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end99.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tstamp.i.0 = phi i64 [ 0, %while.body.lr.ph.i ], [ %tstamp.i.1, %if.end99.i.while.body.i_crit_edge ]
  %do_twostep_tstamp.0.off0222.i = phi i1 [ false, %while.body.lr.ph.i ], [ %do_twostep_tstamp.4.off0.i, %if.end99.i.while.body.i_crit_edge ]
  %bds_to_clean.0221.i = phi i32 [ %cond.i.i, %while.body.lr.ph.i ], [ %bds_to_clean.1.i, %if.end99.i.while.body.i_crit_edge ]
  %i.0220.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %i.1.i, %if.end99.i.while.body.i_crit_edge ]
  %tx_swbd.0218.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %tx_swbd.1.i, %if.end99.i.while.body.i_crit_edge ]
  %tx_byte_cnt.0217.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end99.i.while.body.i_crit_edge ]
  %tx_frm_cnt.0216.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %tx_frm_cnt.1.i, %if.end99.i.while.body.i_crit_edge ]
  %is_xdp_redirect.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 6
  %18 = ptrtoint ptr %is_xdp_redirect.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %is_xdp_redirect.i.i, align 4
  %19 = and i8 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %while.body.i.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge, label %if.then.i.i

while.body.i.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_xdp_frame.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %tx_swbd.0218.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_swbd.0218.i, align 4
  br label %enetc_tx_swbd_get_xdp_frame.exit.i

enetc_tx_swbd_get_xdp_frame.exit.i:               ; preds = %if.then.i.i, %while.body.i.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.then.i.i ], [ null, %while.body.i.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge ]
  %22 = and i8 %bf.load.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %if.end.i.i, label %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge

enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge: ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_skb.exit.i

if.end.i.i:                                       ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %tx_swbd.0218.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_swbd.0218.i, align 4
  br label %enetc_tx_swbd_get_skb.exit.i

enetc_tx_swbd_get_skb.exit.i:                     ; preds = %if.end.i.i, %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge
  %retval.0.i192.i = phi ptr [ %25, %if.end.i.i ], [ null, %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge ]
  %26 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not.i = icmp eq i8 %26, 0
  %27 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %enetc_tx_swbd_get_skb.exit.i.if.end22.i_crit_edge, label %if.then.i, !prof !95

enetc_tx_swbd_get_skb.exit.i.if.end22.i_crit_edge: ; preds = %enetc_tx_swbd_get_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then.i:                                        ; preds = %enetc_tx_swbd_get_skb.exit.i
  %28 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_base.i, align 8
  %arrayidx13.i = getelementptr %union.enetc_tx_bd, ptr %29, i32 %i.0220.i
  %30 = getelementptr inbounds %struct.anon.195, ptr %arrayidx13.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.anon.197, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags.i, align 1
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not.i = icmp eq i8 %33, 0
  %34 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool20.not.i = icmp eq i8 %34, 0
  %or.cond188.i = select i1 %tobool14.not.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond188.i, label %if.then.i.if.end22.i_crit_edge, label %if.then21.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.then.i
  %35 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %si.i, align 4
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i119 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i119, label %if.then21.i.enetc_rd_reg_hot.exit.i124_crit_edge, label %land.rhs.i.i122

if.then21.i.enetc_rd_reg_hot.exit.i124_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i124

land.rhs.i.i122:                                  ; preds = %if.then21.i
  %call.i.i.i120 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i120)
  %cmp.not.i.i121 = icmp eq i32 %call.i.i.i120, 0
  br i1 %cmp.not.i.i121, label %do.end.i.i123, label %land.rhs.i.i122.enetc_rd_reg_hot.exit.i124_crit_edge, !prof !101

land.rhs.i.i122.enetc_rd_reg_hot.exit.i124_crit_edge: ; preds = %land.rhs.i.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i124

do.end.i.i123:                                    ; preds = %land.rhs.i.i122
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit.i124

enetc_rd_reg_hot.exit.i124:                       ; preds = %do.end.i.i123, %land.rhs.i.i122.enetc_rd_reg_hot.exit.i124_crit_edge, %if.then21.i.enetc_rd_reg_hot.exit.i124_crit_edge
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %41 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %43 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i9.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i9.i, label %enetc_rd_reg_hot.exit.i124.enetc_get_tx_tstamp.exit_crit_edge, label %land.rhs.i12.i

enetc_rd_reg_hot.exit.i124.enetc_get_tx_tstamp.exit_crit_edge: ; preds = %enetc_rd_reg_hot.exit.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_get_tx_tstamp.exit

land.rhs.i12.i:                                   ; preds = %enetc_rd_reg_hot.exit.i124
  %call.i.i10.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i.i10.i, 0
  br i1 %cmp.not.i11.i, label %do.end.i13.i, label %land.rhs.i12.i.enetc_get_tx_tstamp.exit_crit_edge, !prof !101

land.rhs.i12.i.enetc_get_tx_tstamp.exit_crit_edge: ; preds = %land.rhs.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_get_tx_tstamp.exit

do.end.i13.i:                                     ; preds = %land.rhs.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_get_tx_tstamp.exit

enetc_get_tx_tstamp.exit:                         ; preds = %do.end.i13.i, %land.rhs.i12.i.enetc_get_tx_tstamp.exit_crit_edge, %enetc_rd_reg_hot.exit.i124.enetc_get_tx_tstamp.exit_crit_edge
  %add.ptr2.i = getelementptr i8, ptr %42, i32 28
  %44 = call i32 @llvm.bswap.i32(i32 %40) #13
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !105
  %46 = call i32 @llvm.bswap.i32(i32 %45) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx13.i, align 8
  %49 = call i32 @llvm.bswap.i32(i32 %48) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %49)
  %cmp.not.i125 = icmp ule i32 %44, %49
  %sub.i126 = sext i1 %cmp.not.i125 to i32
  %spec.select.i = add i32 %46, %sub.i126
  %conv.i127 = zext i32 %spec.select.i to i64
  %shl.i128 = shl nuw i64 %conv.i127, 32
  %conv5.i = zext i32 %49 to i64
  %or.i129 = or i64 %shl.i128, %conv5.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %enetc_get_tx_tstamp.exit, %if.then.i.if.end22.i_crit_edge, %enetc_tx_swbd_get_skb.exit.i.if.end22.i_crit_edge
  %tstamp.i.1 = phi i64 [ %tstamp.i.0, %enetc_tx_swbd_get_skb.exit.i.if.end22.i_crit_edge ], [ %tstamp.i.0, %if.then.i.if.end22.i_crit_edge ], [ %or.i129, %enetc_get_tx_tstamp.exit ]
  %do_twostep_tstamp.2.off0.i = phi i1 [ %do_twostep_tstamp.0.off0222.i, %enetc_tx_swbd_get_skb.exit.i.if.end22.i_crit_edge ], [ %do_twostep_tstamp.0.off0222.i, %if.then.i.if.end22.i_crit_edge ], [ true, %enetc_get_tx_tstamp.exit ]
  %50 = ptrtoint ptr %is_xdp_redirect.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load23.i = load i8, ptr %is_xdp_redirect.i.i, align 4
  %51 = and i8 %bf.load23.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool26.not.i = icmp eq i8 %51, 0
  br i1 %tobool26.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end22.i
  %52 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev1.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 2304
  %dma1.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 1
  %54 = ptrtoint ptr %dma1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma1.i.i, align 4
  %page2.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 2
  %56 = ptrtoint ptr %page2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page2.i.i, align 4
  %page_offset3.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 3
  %58 = ptrtoint ptr %page_offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %page_offset3.i.i, align 4
  %dir4.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 5
  %60 = ptrtoint ptr %dir4.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dir4.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 4
  %62 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len5.i.i, align 2
  %64 = ptrtoint ptr %index2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %index2.i.i.i, align 16
  %idxprom.i.i.i = zext i16 %65 to i32
  %arrayidx.i.i.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i.i, i32 0, i32 13, i32 %idxprom.i.i.i
  %xdp_tx_ring.i.i.i = getelementptr i8, ptr %53, i32 2348
  %66 = ptrtoint ptr %xdp_tx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xdp_tx_ring.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %arrayidx.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 2
  %arrayidx3.i.i.i = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i.i.i, i32 0, i32 14, i32 %sub.ptr.div.i.i.i
  %68 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx3.i.i.i, align 4
  %next_to_clean.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next_to_clean.i.i.i, align 4
  %72 = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 9
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %74)
  %cmp.i.i.i = icmp sgt i32 %71, %74
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = xor i32 %74, -1
  %sub2.i.i.i = add i32 %71, %75
  br label %enetc_swbd_unused.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 5
  %76 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bd_count.i.i.i, align 4
  %78 = xor i32 %74, -1
  %add.i.i.i = add i32 %71, %78
  %sub5.i.i.i = add i32 %add.i.i.i, %77
  br label %enetc_swbd_unused.exit.i.i

enetc_swbd_unused.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub2.i.i.i, %if.then.i.i.i ], [ %sub5.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i193.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i193.i, label %if.else.i.i, label %if.then.i194.i, !prof !101

if.then.i194.i:                                   ; preds = %enetc_swbd_unused.exit.i.i
  %79 = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 32
  %inc.i.i.i.i = add i32 %74, 1
  %82 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %inc.i.i.i.i, ptr %72, align 4
  %bd_count.i.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 5
  %83 = ptrtoint ptr %bd_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bd_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %84)
  %cmp.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %84
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i194.i.enetc_reuse_page.exit.i.i_crit_edge, !prof !101

if.then.i194.i.enetc_reuse_page.exit.i.i_crit_edge: ; preds = %if.then.i194.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_reuse_page.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i194.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %72, align 4
  br label %enetc_reuse_page.exit.i.i

enetc_reuse_page.exit.i.i:                        ; preds = %if.then.i.i.i.i, %if.then.i194.i.enetc_reuse_page.exit.i.i_crit_edge
  %arrayidx.i30.i.i = getelementptr %struct.enetc_rx_swbd, ptr %81, i32 %74
  %86 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %55, ptr %arrayidx.i30.i.i, align 4
  %rx_swbd.sroa.7.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 4
  %87 = ptrtoint ptr %rx_swbd.sroa.7.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %57, ptr %rx_swbd.sroa.7.0.arrayidx.i30.sroa_idx.i.i, align 4
  %rx_swbd.sroa.9.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 8
  %88 = ptrtoint ptr %rx_swbd.sroa.9.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %59, ptr %rx_swbd.sroa.9.0.arrayidx.i30.sroa_idx.i.i, align 4
  %rx_swbd.sroa.11.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 10
  %89 = ptrtoint ptr %rx_swbd.sroa.11.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %rx_swbd.sroa.11.0.arrayidx.i30.sroa_idx.i.i, align 2
  %rx_swbd.sroa.1136.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 12
  %90 = ptrtoint ptr %rx_swbd.sroa.1136.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %61, ptr %rx_swbd.sroa.1136.0.arrayidx.i30.sroa_idx.i.i, align 4
  %rx_swbd.sroa.14.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 16
  %91 = ptrtoint ptr %rx_swbd.sroa.14.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %63, ptr %rx_swbd.sroa.14.0.arrayidx.i30.sroa_idx.i.i, align 4
  %rx_swbd.sroa.15.0.arrayidx.i30.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i30.i.i, i32 18
  %92 = ptrtoint ptr %rx_swbd.sroa.15.0.arrayidx.i30.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %rx_swbd.sroa.15.0.arrayidx.i30.sroa_idx.i.i, align 2
  %93 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %69, align 128
  %conv.i.i = zext i16 %59 to i32
  %add.i31.i.i = add i32 %55, %conv.i.i
  call void @dma_sync_single_for_device(ptr noundef %94, i32 noundef %add.i31.i.i, i32 noundef 1536, i32 noundef %61) #13
  %recycles.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 14, i32 9
  %95 = ptrtoint ptr %recycles.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %recycles.i.i, align 4
  %inc.i.i = add i32 %96, 1
  store i32 %inc.i.i, ptr %recycles.i.i, align 4
  br label %enetc_recycle_xdp_tx_buff.exit.i

if.else.i.i:                                      ; preds = %enetc_swbd_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %recycle_failures.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 14, i32 10
  %97 = ptrtoint ptr %recycle_failures.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %recycle_failures.i.i, align 8
  %inc14.i.i = add i32 %98, 1
  store i32 %inc14.i.i, ptr %recycle_failures.i.i, align 8
  %99 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %69, align 128
  call void @dma_unmap_page_attrs(ptr noundef %100, i32 noundef %55, i32 noundef 4096, i32 noundef %61, i32 noundef 0) #13
  call void @__free_pages(ptr noundef %57, i32 noundef 0) #13
  br label %enetc_recycle_xdp_tx_buff.exit.i

enetc_recycle_xdp_tx_buff.exit.i:                 ; preds = %if.else.i.i, %enetc_reuse_page.exit.i.i
  %xdp_tx_in_flight.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %69, i32 0, i32 13, i32 2
  %101 = ptrtoint ptr %xdp_tx_in_flight.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %xdp_tx_in_flight.i.i, align 4
  %dec.i.i = add i32 %102, -1
  store i32 %dec.i.i, ptr %xdp_tx_in_flight.i.i, align 4
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end22.i
  %dma.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 1
  %103 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool28.not.i = icmp eq i32 %104, 0
  br i1 %tobool28.not.i, label %if.else.i.if.end37.i_crit_edge, label %if.then35.i, !prof !101

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.else.i
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx, align 128
  %107 = and i8 %bf.load23.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %107)
  %.not.i.i = icmp eq i8 %107, -120
  br i1 %.not.i.i, label %if.then35.i.enetc_unmap_tx_buff.exit.i_crit_edge, label %if.end.sink.split.i.i

if.then35.i.enetc_unmap_tx_buff.exit.i_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i

if.end.sink.split.i.i:                            ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 4
  %108 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %len.i.i, align 2
  %conv4.i.i = zext i16 %109 to i32
  br label %enetc_unmap_tx_buff.exit.i

enetc_unmap_tx_buff.exit.i:                       ; preds = %if.end.sink.split.i.i, %if.then35.i.enetc_unmap_tx_buff.exit.i_crit_edge
  %conv8.sink.i.i = phi i32 [ %conv4.i.i, %if.end.sink.split.i.i ], [ 4096, %if.then35.i.enetc_unmap_tx_buff.exit.i_crit_edge ]
  %dir9.i.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 5
  %110 = ptrtoint ptr %dir9.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dir9.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %106, i32 noundef %104, i32 noundef %conv8.sink.i.i, i32 noundef %111, i32 noundef 0) #13
  %112 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %dma.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %enetc_unmap_tx_buff.exit.i, %if.else.i.if.end37.i_crit_edge, %enetc_recycle_xdp_tx_buff.exit.i
  %tobool38.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool38.not.i, label %if.else40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_return_frame(ptr noundef nonnull %retval.0.i.i) #13
  br label %if.end67.i

if.else40.i:                                      ; preds = %if.end37.i
  %tobool41.not.i = icmp eq ptr %retval.0.i192.i, null
  br i1 %tobool41.not.i, label %if.else40.i.if.end67.i_crit_edge, label %if.then42.i

if.else40.i.if.end67.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

if.then42.i:                                      ; preds = %if.else40.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i192.i, i32 0, i32 3
  %113 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cb.i, align 8
  %115 = and i8 %114, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool46.not.i = icmp eq i8 %115, 0
  br i1 %tobool46.not.i, label %if.else55.i, label %if.then53.i, !prof !95

if.then53.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %116 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %tx_onestep_tstamp.i) #13
  br label %if.end65.i

if.else55.i:                                      ; preds = %if.then42.i
  br i1 %do_twostep_tstamp.2.off0.i, label %if.then63.i, label %if.else55.i.if.end65.i_crit_edge, !prof !101

if.else55.i.if.end65.i_crit_edge:                 ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65.i

if.then63.i:                                      ; preds = %if.else55.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i192.i, i32 0, i32 17
  %117 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %tx_flags.i.i, align 1
  %121 = and i8 %120, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i198.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i198.i, label %if.then63.i.enetc_tstamp_tx.exit.i_crit_edge, label %if.then.i199.i

if.then63.i.enetc_tstamp_tx.exit.i_crit_edge:     ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tstamp_tx.exit.i

if.then.i199.i:                                   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %shhwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %tstamp.i.1, ptr %shhwtstamps.i.i, align 8
  %123 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i192.i, i32 0, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 0, ptr %123, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %retval.0.i192.i, ptr noundef nonnull %shhwtstamps.i.i) #13
  br label %enetc_tstamp_tx.exit.i

enetc_tstamp_tx.exit.i:                           ; preds = %if.then.i199.i, %if.then63.i.enetc_tstamp_tx.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #13
  br label %if.end65.i

if.end65.i:                                       ; preds = %enetc_tstamp_tx.exit.i, %if.else55.i.if.end65.i_crit_edge, %if.then53.i
  %do_twostep_tstamp.3.off0.i = phi i1 [ %do_twostep_tstamp.2.off0.i, %if.then53.i ], [ false, %enetc_tstamp_tx.exit.i ], [ false, %if.else55.i.if.end65.i_crit_edge ]
  call void @napi_consume_skb(ptr noundef nonnull %retval.0.i192.i, i32 noundef %budget) #13
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end65.i, %if.else40.i.if.end67.i_crit_edge, %if.then39.i
  %do_twostep_tstamp.4.off0.i = phi i1 [ %do_twostep_tstamp.2.off0.i, %if.then39.i ], [ %do_twostep_tstamp.3.off0.i, %if.end65.i ], [ %do_twostep_tstamp.2.off0.i, %if.else40.i.if.end67.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 0, i32 4
  %125 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %len.i, align 2
  %conv68.i = zext i16 %126 to i32
  %add.i = add i32 %tx_byte_cnt.0217.i, %conv68.i
  %127 = call ptr @memset(ptr %tx_swbd.0218.i, i32 0, i32 24)
  %dec.i = add i32 %bds_to_clean.0221.i, -1
  %incdec.ptr.i = getelementptr %struct.enetc_tx_swbd, ptr %tx_swbd.0218.i, i32 1
  %inc.i = add i32 %i.0220.i, 1
  %128 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %129)
  %cmp69.i = icmp eq i32 %inc.i, %129
  br i1 %cmp69.i, label %if.then77.i, label %if.end67.i.if.end78.i_crit_edge, !prof !101

if.end67.i.if.end78.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78.i

if.then77.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %6, align 32
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %if.end67.i.if.end78.i_crit_edge
  %tx_swbd.1.i = phi ptr [ %131, %if.then77.i ], [ %incdec.ptr.i, %if.end67.i.if.end78.i_crit_edge ]
  %i.1.i = phi i32 [ 0, %if.then77.i ], [ %inc.i, %if.end67.i.if.end78.i_crit_edge ]
  br i1 %tobool6.not.i, label %if.end78.i.if.end87.i_crit_edge, label %if.then80.i

if.end78.i.if.end87.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.i

if.then80.i:                                      ; preds = %if.end78.i
  %inc81.i = add nsw i32 %tx_frm_cnt.0216.i, 1
  %132 = ptrtoint ptr %idr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %idr.i, align 8
  %134 = ptrtoint ptr %index2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %index2.i.i.i, align 16
  %conv82.i = zext i16 %135 to i32
  %or.i = shl i32 65537, %conv82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %136 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i201.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i201.i, label %if.then80.i.enetc_wr_reg_hot.exit.i_crit_edge, label %land.rhs.i.i

if.then80.i.enetc_wr_reg_hot.exit.i_crit_edge:    ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit.i

land.rhs.i.i:                                     ; preds = %if.then80.i
  %call.i.i202.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202.i)
  %cmp.not.i203.i = icmp eq i32 %call.i.i202.i, 0
  br i1 %cmp.not.i203.i, label %do.end.i.i, label %land.rhs.i.i.enetc_wr_reg_hot.exit.i_crit_edge, !prof !101

land.rhs.i.i.enetc_wr_reg_hot.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit.i

enetc_wr_reg_hot.exit.i:                          ; preds = %do.end.i.i, %land.rhs.i.i.enetc_wr_reg_hot.exit.i_crit_edge, %if.then80.i.enetc_wr_reg_hot.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  %137 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %137) #13, !srcloc !104
  br label %if.end87.i

if.end87.i:                                       ; preds = %enetc_wr_reg_hot.exit.i, %if.end78.i.if.end87.i_crit_edge
  %tx_frm_cnt.1.i = phi i32 [ %inc81.i, %enetc_wr_reg_hot.exit.i ], [ %tx_frm_cnt.0216.i, %if.end78.i.if.end87.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool88.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool88.not.i, label %if.then97.i, label %if.end87.i.if.end99.i_crit_edge, !prof !101

if.end87.i.if.end99.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

if.then97.i:                                      ; preds = %if.end87.i
  %138 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %140 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.i110 = icmp eq i32 %140, 0
  br i1 %tobool.not.i.i110, label %if.then97.i.enetc_rd_reg_hot.exit.i_crit_edge, label %land.rhs.i.i113

if.then97.i.enetc_rd_reg_hot.exit.i_crit_edge:    ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i

land.rhs.i.i113:                                  ; preds = %if.then97.i
  %call.i.i.i111 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i111)
  %cmp.not.i.i112 = icmp eq i32 %call.i.i.i111, 0
  br i1 %cmp.not.i.i112, label %do.end.i.i114, label %land.rhs.i.i113.enetc_rd_reg_hot.exit.i_crit_edge, !prof !101

land.rhs.i.i113.enetc_rd_reg_hot.exit.i_crit_edge: ; preds = %land.rhs.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i

do.end.i.i114:                                    ; preds = %land.rhs.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit.i

enetc_rd_reg_hot.exit.i:                          ; preds = %do.end.i.i114, %land.rhs.i.i113.enetc_rd_reg_hot.exit.i_crit_edge, %if.then97.i.enetc_rd_reg_hot.exit.i_crit_edge
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #13, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %142 = and i32 %141, -65536
  %143 = call i32 @llvm.bswap.i32(i32 %142) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %i.1.i)
  %cmp.not.i115 = icmp slt i32 %143, %i.1.i
  br i1 %cmp.not.i115, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %enetc_rd_reg_hot.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i116 = sub i32 %143, %i.1.i
  br label %if.end99.i

cond.false.i:                                     ; preds = %enetc_rd_reg_hot.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %144 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bd_count.i, align 4
  %sub1.i = sub i32 %143, %i.1.i
  %add.i118 = add i32 %sub1.i, %145
  br label %if.end99.i

if.end99.i:                                       ; preds = %cond.false.i, %cond.true.i, %if.end87.i.if.end99.i_crit_edge
  %bds_to_clean.1.i = phi i32 [ %dec.i, %if.end87.i.if.end99.i_crit_edge ], [ %sub.i116, %cond.true.i ], [ %add.i118, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bds_to_clean.1.i)
  %tobool.not.i = icmp ne i32 %bds_to_clean.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %tx_frm_cnt.1.i)
  %cmp.i = icmp slt i32 %tx_frm_cnt.1.i, 1024
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end99.i.while.body.i_crit_edge, label %if.end99.i.while.end.i_crit_edge

if.end99.i.while.end.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end99.i.while.body.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end99.i.while.end.i_crit_edge, %enetc_bd_ready_count.exit.i.while.end.i_crit_edge
  %tx_frm_cnt.0.lcssa.i = phi i32 [ 0, %enetc_bd_ready_count.exit.i.while.end.i_crit_edge ], [ %tx_frm_cnt.1.i, %if.end99.i.while.end.i_crit_edge ]
  %tx_byte_cnt.0.lcssa.i = phi i32 [ 0, %enetc_bd_ready_count.exit.i.while.end.i_crit_edge ], [ %add.i, %if.end99.i.while.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ %5, %enetc_bd_ready_count.exit.i.while.end.i_crit_edge ], [ %i.1.i, %if.end99.i.while.end.i_crit_edge ]
  %146 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %i.0.lcssa.i, ptr %next_to_clean.i, align 4
  %stats.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 14
  %147 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %stats.i, align 128
  %add101.i = add i32 %148, %tx_frm_cnt.0.lcssa.i
  store i32 %add101.i, ptr %stats.i, align 128
  %bytes.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 14, i32 1
  %149 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bytes.i, align 4
  %add103.i = add i32 %150, %tx_byte_cnt.0.lcssa.i
  store i32 %add103.i, ptr %bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_frm_cnt.0.lcssa.i)
  %tobool104.not.i = icmp eq i32 %tx_frm_cnt.0.lcssa.i, 0
  br i1 %tobool104.not.i, label %while.end.i.enetc_clean_tx_ring.exit_crit_edge, label %land.lhs.true105.i

while.end.i.enetc_clean_tx_ring.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_tx_ring.exit

land.lhs.true105.i:                               ; preds = %while.end.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %151 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %state.i.i, align 4
  %153 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i205.i = icmp eq i32 %153, 0
  br i1 %tobool.not.i205.i, label %land.lhs.true108.i, label %land.lhs.true105.i.enetc_clean_tx_ring.exit_crit_edge

land.lhs.true105.i.enetc_clean_tx_ring.exit_crit_edge: ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_tx_ring.exit

land.lhs.true108.i:                               ; preds = %land.lhs.true105.i
  %index109.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 4
  %154 = ptrtoint ptr %index109.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %index109.i, align 16
  %conv.i206.i = zext i16 %155 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %156 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %157, i32 %conv.i206.i, i32 13
  %158 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true108.i.enetc_clean_tx_ring.exit_crit_edge, label %land.rhs112.i

land.lhs.true108.i.enetc_clean_tx_ring.exit_crit_edge: ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_tx_ring.exit

land.rhs112.i:                                    ; preds = %land.lhs.true108.i
  %next_to_use.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 6
  %160 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %next_to_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %161)
  %cmp.i.i = icmp sgt i32 %i.0.lcssa.i, %161
  br i1 %cmp.i.i, label %if.then.i207.i, label %if.end.i210.i

if.then.i207.i:                                   ; preds = %land.rhs112.i
  call void @__sanitizer_cov_trace_pc() #15
  %162 = xor i32 %161, -1
  %sub3.i.i = add i32 %i.0.lcssa.i, %162
  br label %enetc_bd_unused.exit.i

if.end.i210.i:                                    ; preds = %land.rhs112.i
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i208.i = getelementptr inbounds %struct.enetc_bdr, ptr %arrayidx, i32 0, i32 5
  %163 = ptrtoint ptr %bd_count.i208.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bd_count.i208.i, align 4
  %165 = xor i32 %161, -1
  %add.i209.i = add i32 %i.0.lcssa.i, %165
  %sub7.i.i = add i32 %add.i209.i, %164
  br label %enetc_bd_unused.exit.i

enetc_bd_unused.exit.i:                           ; preds = %if.end.i210.i, %if.then.i207.i
  %retval.0.i211.i = phi i32 [ %sub3.i.i, %if.then.i207.i ], [ %sub7.i.i, %if.end.i210.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %retval.0.i211.i)
  %cmp114.i = icmp sgt i32 %retval.0.i211.i, 15
  br i1 %cmp114.i, label %if.then123.i, label %enetc_bd_unused.exit.i.enetc_clean_tx_ring.exit_crit_edge, !prof !101

enetc_bd_unused.exit.i.enetc_clean_tx_ring.exit_crit_edge: ; preds = %enetc_bd_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_tx_ring.exit

if.then123.i:                                     ; preds = %enetc_bd_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i214.i = getelementptr %struct.netdev_queue, ptr %157, i32 %conv.i206.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i214.i) #13
  br label %enetc_clean_tx_ring.exit

enetc_clean_tx_ring.exit:                         ; preds = %if.then123.i, %enetc_bd_unused.exit.i.enetc_clean_tx_ring.exit_crit_edge, %land.lhs.true108.i.enetc_clean_tx_ring.exit_crit_edge, %land.lhs.true105.i.enetc_clean_tx_ring.exit_crit_edge, %while.end.i.enetc_clean_tx_ring.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %tx_frm_cnt.0.lcssa.i)
  %cmp126.i = icmp ne i32 %tx_frm_cnt.0.lcssa.i, 1024
  %spec.select = select i1 %cmp126.i, i1 %complete.0.off0133, i1 false
  %inc = add nuw nsw i32 %i.0134, 1
  %166 = ptrtoint ptr %count_tx_rings to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %count_tx_rings, align 16
  %cmp = icmp slt i32 %inc, %167
  br i1 %cmp, label %enetc_clean_tx_ring.exit.for.body_crit_edge, label %enetc_clean_tx_ring.exit.for.end_crit_edge

enetc_clean_tx_ring.exit.for.end_crit_edge:       ; preds = %enetc_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

enetc_clean_tx_ring.exit.for.body_crit_edge:      ; preds = %enetc_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %enetc_clean_tx_ring.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %complete.0.off0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %spec.select, %enetc_clean_tx_ring.exit.for.end_crit_edge ]
  %prog2 = getelementptr i8, ptr %napi, i32 768
  %168 = ptrtoint ptr %prog2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prog2, align 128
  %tobool.not = icmp eq ptr %169, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call fastcc i32 @enetc_clean_rx_ring_xdp(ptr noundef %rx_ring1, ptr noundef %napi, i32 noundef %budget, ptr noundef nonnull %169)
  br label %if.end6

if.else:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cleaned_cnt.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #13
  %next_to_clean.i.i = getelementptr i8, ptr %napi, i32 540
  %170 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i68 = getelementptr i8, ptr %napi, i32 536
  %172 = ptrtoint ptr %next_to_use.i.i68 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %next_to_use.i.i68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp.i.i69 = icmp sgt i32 %171, %173
  br i1 %cmp.i.i69, label %if.then.i.i71, label %if.end.i.i75

if.then.i.i71:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %174 = xor i32 %173, -1
  %sub3.i.i70 = add i32 %171, %174
  br label %enetc_bd_unused.exit.i77

if.end.i.i75:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i.i72 = getelementptr i8, ptr %napi, i32 532
  %175 = ptrtoint ptr %bd_count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bd_count.i.i72, align 4
  %177 = xor i32 %173, -1
  %add.i.i73 = add i32 %171, %177
  %sub7.i.i74 = add i32 %add.i.i73, %176
  br label %enetc_bd_unused.exit.i77

enetc_bd_unused.exit.i77:                         ; preds = %if.end.i.i75, %if.then.i.i71
  %retval.0.i.i76 = phi i32 [ %sub3.i.i70, %if.then.i.i71 ], [ %sub7.i.i74, %if.end.i.i75 ]
  %178 = ptrtoint ptr %cleaned_cnt.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %retval.0.i.i76, ptr %cleaned_cnt.i, align 4
  %179 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %171, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp54.i = icmp sgt i32 %budget, 0
  br i1 %cmp54.i, label %while.body.lr.ph.i79, label %enetc_bd_unused.exit.i77.enetc_clean_rx_ring.exit_crit_edge, !prof !95

enetc_bd_unused.exit.i77.enetc_clean_rx_ring.exit_crit_edge: ; preds = %enetc_bd_unused.exit.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_rx_ring.exit

while.body.lr.ph.i79:                             ; preds = %enetc_bd_unused.exit.i77
  %ext_en.i.i = getelementptr i8, ptr %napi, i32 945
  %bd_base.i.i = getelementptr i8, ptr %napi, i32 520
  %idr.i78 = getelementptr i8, ptr %napi, i32 552
  %index.i = getelementptr i8, ptr %napi, i32 528
  br label %while.body.i80

while.body.i80:                                   ; preds = %cleanup.i.while.body.i80_crit_edge, %while.body.lr.ph.i79
  %rx_byte_cnt.056.i = phi i32 [ 0, %while.body.lr.ph.i79 ], [ %add.i89, %cleanup.i.while.body.i80_crit_edge ]
  %rx_frm_cnt.055.i = phi i32 [ 0, %while.body.lr.ph.i79 ], [ %inc.i90, %cleanup.i.while.body.i80_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxbd.i) #13
  %180 = ptrtoint ptr %cleaned_cnt.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cleaned_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %181)
  %cmp2.i = icmp sgt i32 %181, 15
  br i1 %cmp2.i, label %if.then.i81, label %while.body.i80.if.end.i_crit_edge

while.body.i80.if.end.i_crit_edge:                ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i81:                                      ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = call fastcc i32 @enetc_refill_rx_ring(ptr noundef %rx_ring1, i32 noundef %181) #13
  %sub.i = sub i32 %181, %call3.i
  %182 = ptrtoint ptr %cleaned_cnt.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub.i, ptr %cleaned_cnt.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i81, %while.body.i80.if.end.i_crit_edge
  %183 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %i.i, align 4
  %185 = ptrtoint ptr %ext_en.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ext_en.i.i, align 1, !range !98
  %187 = zext i8 %186 to i32
  %spec.select.i.i = shl i32 %184, %187
  %188 = ptrtoint ptr %bd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bd_base.i.i, align 8
  %arrayidx.i.i = getelementptr %union.enetc_rx_bd, ptr %189, i32 %spec.select.i.i
  %190 = ptrtoint ptr %rxbd.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %arrayidx.i.i, ptr %rxbd.i, align 4
  %191 = getelementptr inbounds %struct.anon.201, ptr %arrayidx.i.i, i32 0, i32 5
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %194 = call i32 @llvm.bswap.i32(i32 %193) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool5.not.i = icmp eq i32 %193, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup.thread.i_crit_edge, label %if.end7.i

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

if.end7.i:                                        ; preds = %if.end.i
  %195 = ptrtoint ptr %idr.i78 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %idr.i78, align 8
  %197 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %index.i, align 16
  %conv.i = zext i16 %198 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %199 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i.i82 = icmp eq i32 %199, 0
  br i1 %tobool.not.i.i82, label %if.end7.i.enetc_wr_reg_hot.exit.i87_crit_edge, label %land.rhs.i.i85

if.end7.i.enetc_wr_reg_hot.exit.i87_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit.i87

land.rhs.i.i85:                                   ; preds = %if.end7.i
  %call.i.i.i83 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i83)
  %cmp.not.i.i84 = icmp eq i32 %call.i.i.i83, 0
  br i1 %cmp.not.i.i84, label %do.end.i.i86, label %land.rhs.i.i85.enetc_wr_reg_hot.exit.i87_crit_edge, !prof !101

land.rhs.i.i85.enetc_wr_reg_hot.exit.i87_crit_edge: ; preds = %land.rhs.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit.i87

do.end.i.i86:                                     ; preds = %land.rhs.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit.i87

enetc_wr_reg_hot.exit.i87:                        ; preds = %do.end.i.i86, %land.rhs.i.i85.enetc_wr_reg_hot.exit.i87_crit_edge, %if.end7.i.enetc_wr_reg_hot.exit.i87_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  %200 = call i32 @llvm.bswap.i32(i32 %shl.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %200) #13, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !119
  %call8.i = call fastcc zeroext i1 @enetc_check_bd_errors_and_consume(ptr noundef %rx_ring1, i32 noundef %194, ptr noundef nonnull %rxbd.i, ptr noundef nonnull %i.i) #13
  br i1 %call8.i, label %enetc_wr_reg_hot.exit.i87.cleanup.thread.i_crit_edge, label %if.end10.i

enetc_wr_reg_hot.exit.i87.cleanup.thread.i_crit_edge: ; preds = %enetc_wr_reg_hot.exit.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

if.end10.i:                                       ; preds = %enetc_wr_reg_hot.exit.i87
  %call11.i = call fastcc ptr @enetc_build_skb(ptr noundef %rx_ring1, i32 noundef %194, ptr noundef nonnull %rxbd.i, ptr noundef nonnull %i.i, ptr noundef nonnull %cleaned_cnt.i, i32 noundef 1664) #13
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end10.i.cleanup.thread.i_crit_edge:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end10.i.cleanup.thread.i_crit_edge, %enetc_wr_reg_hot.exit.i87.cleanup.thread.i_crit_edge, %if.end.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxbd.i) #13
  br label %enetc_clean_rx_ring.exit

cleanup.i:                                        ; preds = %if.end10.i
  %len.i88 = getelementptr inbounds %struct.sk_buff, ptr %call11.i, i32 0, i32 6
  %201 = ptrtoint ptr %len.i88 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len.i88, align 4
  %add.i89 = add i32 %202, %rx_byte_cnt.056.i
  %inc.i90 = add nuw nsw i32 %rx_frm_cnt.055.i, 1
  %call15.i = call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call11.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxbd.i) #13
  %exitcond.not.i = icmp eq i32 %inc.i90, %budget
  br i1 %exitcond.not.i, label %cleanup.i.enetc_clean_rx_ring.exit_crit_edge, label %cleanup.i.while.body.i80_crit_edge, !prof !101

cleanup.i.while.body.i80_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i80

cleanup.i.enetc_clean_rx_ring.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_clean_rx_ring.exit

enetc_clean_rx_ring.exit:                         ; preds = %cleanup.i.enetc_clean_rx_ring.exit_crit_edge, %cleanup.thread.i, %enetc_bd_unused.exit.i77.enetc_clean_rx_ring.exit_crit_edge
  %rx_frm_cnt.053.i = phi i32 [ %rx_frm_cnt.055.i, %cleanup.thread.i ], [ 0, %enetc_bd_unused.exit.i77.enetc_clean_rx_ring.exit_crit_edge ], [ %budget, %cleanup.i.enetc_clean_rx_ring.exit_crit_edge ]
  %rx_byte_cnt.051.i = phi i32 [ %rx_byte_cnt.056.i, %cleanup.thread.i ], [ 0, %enetc_bd_unused.exit.i77.enetc_clean_rx_ring.exit_crit_edge ], [ %add.i89, %cleanup.i.enetc_clean_rx_ring.exit_crit_edge ]
  %203 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %i.i, align 4
  %205 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %next_to_clean.i.i, align 4
  %stats.i91 = getelementptr i8, ptr %napi, i32 896
  %206 = ptrtoint ptr %stats.i91 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %stats.i91, align 128
  %add19.i = add i32 %207, %rx_frm_cnt.053.i
  store i32 %add19.i, ptr %stats.i91, align 128
  %bytes.i92 = getelementptr i8, ptr %napi, i32 900
  %208 = ptrtoint ptr %bytes.i92 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bytes.i92, align 4
  %add21.i = add i32 %209, %rx_byte_cnt.051.i
  store i32 %add21.i, ptr %bytes.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cleaned_cnt.i) #13
  br label %if.end6

if.end6:                                          ; preds = %enetc_clean_rx_ring.exit, %if.then3
  %work_done.0 = phi i32 [ %call4, %if.then3 ], [ %rx_frm_cnt.053.i, %enetc_clean_rx_ring.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp7 = icmp ne i32 %work_done.0, %budget
  %spec.select67 = select i1 %cmp7, i1 %complete.0.off0.lcssa, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0)
  %tobool10.not = icmp eq i32 %work_done.0, 0
  br i1 %tobool10.not, label %if.end6.if.end12_crit_edge, label %if.then11

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %rx_napi_work = getelementptr i8, ptr %napi, i32 -101
  %210 = ptrtoint ptr %rx_napi_work to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %rx_napi_work, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6.if.end12_crit_edge
  br i1 %spec.select67, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0) #13
  %rx_dim_en = getelementptr i8, ptr %napi, i32 -102
  %211 = ptrtoint ptr %rx_dim_en to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %rx_dim_en, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool17.not = icmp eq i8 %212, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then20, !prof !101

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  %comp_cnt.i = getelementptr i8, ptr %napi, i32 -104
  %213 = ptrtoint ptr %comp_cnt.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %comp_cnt.i, align 8
  %inc.i94 = add i16 %214, 1
  store i16 %inc.i94, ptr %comp_cnt.i, align 8
  %rx_napi_work.i = getelementptr i8, ptr %napi, i32 -101
  %215 = ptrtoint ptr %rx_napi_work.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %rx_napi_work.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i95 = icmp eq i8 %216, 0
  br i1 %tobool.not.i95, label %if.then20.if.end21_crit_edge, label %if.end.i98

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end.i98:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i96 = getelementptr i8, ptr %napi, i32 896
  %217 = ptrtoint ptr %stats.i96 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %stats.i96, align 128
  %bytes.i97 = getelementptr i8, ptr %napi, i32 900
  %219 = ptrtoint ptr %bytes.i97 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %bytes.i97, align 4
  %call.i.i = call i64 @ktime_get() #13
  %dim_sample.sroa.8.16.insert.ext.i = zext i16 %inc.i94 to i64
  %dim_sample.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i, 48
  %rx_dim.i = getelementptr i8, ptr %napi, i32 256
  %.fca.0.insert.i = insertvalue [3 x i64] poison, i64 %call.i.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i = zext i32 %220 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i = zext i32 %218 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext.i, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift.i, %dim_sample.sroa.5.sroa.5.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [3 x i64] %.fca.0.insert.i, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert.i = insertvalue [3 x i64] %.fca.1.insert.i, i64 %dim_sample.sroa.8.16.insert.shift.i, 2
  call void @net_dim(ptr noundef %rx_dim.i, [3 x i64] %.fca.2.insert.i) #13
  br label %if.end21

if.end21:                                         ; preds = %if.end.i98, %if.then20.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %rx_napi_work22 = getelementptr i8, ptr %napi, i32 -101
  %221 = ptrtoint ptr %rx_napi_work22 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %rx_napi_work22, align 1
  %222 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %add.ptr, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %224 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i100 = icmp eq i32 %224, 0
  br i1 %tobool.not.i100, label %if.end21.enetc_wr_reg_hot.exit_crit_edge, label %land.rhs.i

if.end21.enetc_wr_reg_hot.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

land.rhs.i:                                       ; preds = %if.end21
  %call.i.i101 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.not.i = icmp eq i32 %call.i.i101, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, !prof !101

land.rhs.i.enetc_wr_reg_hot.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit

enetc_wr_reg_hot.exit:                            ; preds = %do.end.i, %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, %if.end21.enetc_wr_reg_hot.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 16777216) #13, !srcloc !104
  %tx_rings_map = getelementptr i8, ptr %napi, i32 -116
  %call23 = call i32 @_find_next_bit_be(ptr noundef %tx_rings_map, i32 noundef 8, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call23)
  %cmp25135 = icmp slt i32 %call23, 8
  br i1 %cmp25135, label %for.body26.lr.ph, label %enetc_wr_reg_hot.exit.cleanup_crit_edge

enetc_wr_reg_hot.exit.cleanup_crit_edge:          ; preds = %enetc_wr_reg_hot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body26.lr.ph:                                 ; preds = %enetc_wr_reg_hot.exit
  %tbier_base = getelementptr i8, ptr %napi, i32 -124
  br label %for.body26

for.body26:                                       ; preds = %enetc_wr_reg_hot.exit109.for.body26_crit_edge, %for.body26.lr.ph
  %i.1136 = phi i32 [ %call23, %for.body26.lr.ph ], [ %call30, %enetc_wr_reg_hot.exit109.for.body26_crit_edge ]
  %225 = ptrtoint ptr %tbier_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %tbier_base, align 4
  %mul = shl i32 %i.1136, 9
  %add.ptr27 = getelementptr i8, ptr %226, i32 %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %227 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i103 = icmp eq i32 %227, 0
  br i1 %tobool.not.i103, label %for.body26.enetc_wr_reg_hot.exit109_crit_edge, label %land.rhs.i106

for.body26.enetc_wr_reg_hot.exit109_crit_edge:    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit109

land.rhs.i106:                                    ; preds = %for.body26
  %call.i.i104 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %cmp.not.i105 = icmp eq i32 %call.i.i104, 0
  br i1 %cmp.not.i105, label %do.end.i107, label %land.rhs.i106.enetc_wr_reg_hot.exit109_crit_edge, !prof !101

land.rhs.i106.enetc_wr_reg_hot.exit109_crit_edge: ; preds = %land.rhs.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit109

do.end.i107:                                      ; preds = %land.rhs.i106
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit109

enetc_wr_reg_hot.exit109:                         ; preds = %do.end.i107, %land.rhs.i106.enetc_wr_reg_hot.exit109_crit_edge, %for.body26.enetc_wr_reg_hot.exit109_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16777216) #13, !srcloc !104
  %add = add nsw i32 %i.1136, 1
  %call30 = call i32 @_find_next_bit_be(ptr noundef %tx_rings_map, i32 noundef 8, i32 noundef %add) #13
  %cmp25 = icmp slt i32 %call30, 8
  br i1 %cmp25, label %enetc_wr_reg_hot.exit109.for.body26_crit_edge, label %enetc_wr_reg_hot.exit109.cleanup_crit_edge

enetc_wr_reg_hot.exit109.cleanup_crit_edge:       ; preds = %enetc_wr_reg_hot.exit109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

enetc_wr_reg_hot.exit109.for.body26_crit_edge:    ; preds = %enetc_wr_reg_hot.exit109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

cleanup:                                          ; preds = %enetc_wr_reg_hot.exit109.cleanup_crit_edge, %enetc_wr_reg_hot.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %if.end12.cleanup_crit_edge ], [ %work_done.0, %enetc_wr_reg_hot.exit.cleanup_crit_edge ], [ %work_done.0, %enetc_wr_reg_hot.exit109.cleanup_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg_mem_model(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_free_msix(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdr_int_num = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bdr_int_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp58 = icmp sgt i32 %1, 0
  br i1 %cmp58, label %entry.for.body_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %num_rx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp561.not = icmp eq i16 %3, 0
  br i1 %cmp561.not, label %for.cond4.preheader.for.cond13.preheader_crit_edge, label %for.cond4.preheader.for.body7_crit_edge

for.cond4.preheader.for.body7_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body7

for.cond4.preheader.for.cond13.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 4, i32 %i.059
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %xdp = getelementptr inbounds %struct.enetc_int_vector, ptr %5, i32 0, i32 15, i32 13
  tail call void @xdp_rxq_info_unreg_mem_model(ptr noundef %xdp) #13
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp) #13
  %napi = getelementptr inbounds %struct.enetc_int_vector, ptr %5, i32 0, i32 10
  tail call void @__netif_napi_del(ptr noundef %napi) #13
  tail call void @synchronize_net() #13
  %work = getelementptr inbounds %struct.enetc_int_vector, ptr %5, i32 0, i32 12, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %inc = add nuw nsw i32 %i.059, 1
  %6 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bdr_int_num, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond4.preheader_crit_edge

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body7.for.cond13.preheader_crit_edge, %for.cond4.preheader.for.cond13.preheader_crit_edge
  %num_tx_rings = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1564.not = icmp eq i16 %9, 0
  br i1 %cmp1564.not, label %for.cond13.preheader.for.cond22.preheader_crit_edge, label %for.cond13.preheader.for.body17_crit_edge

for.cond13.preheader.for.body17_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body17

for.cond13.preheader.for.cond22.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond22.preheader

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader.for.body7_crit_edge
  %i.162 = phi i32 [ %inc11, %for.body7.for.body7_crit_edge ], [ 0, %for.cond4.preheader.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 14, i32 %i.162
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx9, align 4
  %inc11 = add nuw nsw i32 %i.162, 1
  %11 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %12 to i32
  %cmp5 = icmp ult i32 %inc11, %conv
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.cond13.preheader_crit_edge

for.body7.for.cond13.preheader_crit_edge:         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13.preheader

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.cond22.preheader:                             ; preds = %for.body17.for.cond22.preheader_crit_edge, %for.cond13.preheader.for.cond22.preheader_crit_edge
  %13 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bdr_int_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2466 = icmp sgt i32 %14, 0
  br i1 %cmp2466, label %for.cond22.preheader.for.body26_crit_edge, label %for.cond22.preheader.for.end33_crit_edge

for.cond22.preheader.for.end33_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.cond22.preheader.for.body26_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body26

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond13.preheader.for.body17_crit_edge
  %i.265 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ 0, %for.cond13.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 13, i32 %i.265
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx18, align 4
  %inc20 = add nuw nsw i32 %i.265, 1
  %16 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_tx_rings, align 2
  %conv14 = zext i16 %17 to i32
  %cmp15 = icmp ult i32 %inc20, %conv14
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.cond22.preheader_crit_edge

for.body17.for.cond22.preheader_crit_edge:        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond22.preheader

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond22.preheader.for.body26_crit_edge
  %i.367 = phi i32 [ %inc32, %for.body26.for.body26_crit_edge ], [ 0, %for.cond22.preheader.for.body26_crit_edge ]
  %arrayidx28 = getelementptr %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 4, i32 %i.367
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  tail call void @kfree(ptr noundef %19) #13
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx28, align 4
  %inc32 = add nuw nsw i32 %i.367, 1
  %21 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bdr_int_num, align 4
  %cmp24 = icmp slt i32 %inc32, %22
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end33_crit_edge

for.body26.for.end33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.end33:                                        ; preds = %for.body26.for.end33_crit_edge, %for.cond22.preheader.for.end33_crit_edge
  %si = getelementptr inbounds %struct.enetc_ndev_priv, ptr %priv, i32 0, i32 2
  %23 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %si, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %26) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_pci_probe(ptr noundef %pdev, ptr noundef %name, i32 noundef %sizeof_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_flr(ptr noundef %pdev) #13
  %call1 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev3, i32 noundef %call1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev3, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.2, i32 noundef %call.i) #17
  br label %err_dma

if.end8:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev3, i64 noundef -1) #13
  %call.i106 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  %call1.i107 = tail call i32 @pci_request_selected_regions(ptr noundef %pdev, i32 noundef %call.i106, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool10.not = icmp eq i32 %call1.i107, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.8, i32 noundef %call1.i107) #17
  br label %err_dma

if.end16:                                         ; preds = %if.end8
  tail call void @pci_set_master(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_priv)
  %tobool17.not = icmp eq i32 %sizeof_priv, 0
  %phi.bo = add i32 %sizeof_priv, 127
  %spec.select = select i1 %tobool17.not, i32 115, i32 %phi.bo
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3520) #18
  %tobool23.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool23.not, label %if.end16.err_alloc_si_crit_edge, label %if.end25

if.end16.err_alloc_si_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc_si

if.end25:                                         ; preds = %if.end16
  %pad = getelementptr inbounds %struct.enetc_si, ptr %call9.i.i, i32 0, i32 9
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %pad, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call9.i.i, align 128
  %hw29 = getelementptr inbounds %struct.enetc_si, ptr %call9.i.i, i32 0, i32 1
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end25.cond.end_crit_edge, label %cond.false

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %sub = add i32 %4, 1
  %add36 = sub i32 %sub, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end25.cond.end_crit_edge
  %cond = phi i32 [ %add36, %cond.false ], [ 0, %if.end25.cond.end_crit_edge ]
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %call40 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %cond) #13
  %9 = ptrtoint ptr %hw29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call40, ptr %hw29, align 4
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %if.then43, label %if.end48

if.then43:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11) #17
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pad, align 4
  %conv.i = zext i16 %11 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %idx.neg.i
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  br label %err_alloc_si

if.end48:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cond)
  %cmp49 = icmp sgt i32 %cond, 65536
  br i1 %cmp49, label %if.end53, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.end53:                                         ; preds = %if.end48
  %add.ptr = getelementptr i8, ptr %call40, i32 65536
  %port = getelementptr inbounds %struct.enetc_si, ptr %call9.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %cond)
  %cmp54 = icmp ugt i32 %cond, 131072
  br i1 %cmp54, label %if.then56, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %hw29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw29, align 4
  %add.ptr58 = getelementptr i8, ptr %14, i32 131072
  %global = getelementptr inbounds %struct.enetc_si, ptr %call9.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %global to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr58, ptr %global, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge, %if.end48.if.end59_crit_edge
  %16 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call9.i.i, align 128
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i108 = icmp eq i8 %19, 1
  br i1 %cmp.i108, label %if.then.i109, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i109:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %errata.i = getelementptr inbounds %struct.enetc_si, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %errata.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %errata.i, align 16
  br label %cleanup

err_alloc_si:                                     ; preds = %if.then43, %if.end16.err_alloc_si_crit_edge
  %err.0 = phi i32 [ -6, %if.then43 ], [ -12, %if.end16.err_alloc_si_crit_edge ]
  %call.i110 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i110) #13
  br label %err_dma

err_dma:                                          ; preds = %err_alloc_si, %do.end14, %do.end
  %err.1 = phi i32 [ %call.i, %do.end ], [ %call1.i107, %do.end14 ], [ %err.0, %err_alloc_si ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.then.i109, %if.end59.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %err.1, %err_dma ], [ 0, %if.end59.cleanup_crit_edge ], [ 0, %if.then.i109 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_flr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_pci_remove(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw1 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  tail call void @iounmap(ptr noundef %3) #13
  %pad.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %pad.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pad.i, align 4
  %conv.i = zext i16 %5 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  %call.i = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_rss_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_msix(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.enetc_wr_reg_hot.exit_crit_edge, label %land.rhs.i

entry.enetc_wr_reg_hot.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, !prof !101

land.rhs.i.enetc_wr_reg_hot.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit

enetc_wr_reg_hot.exit:                            ; preds = %do.end.i, %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, %entry.enetc_wr_reg_hot.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !104
  %ricr1 = getelementptr inbounds %struct.enetc_int_vector, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %ricr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ricr1, align 8
  %rx_ictt = getelementptr inbounds %struct.enetc_int_vector, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %rx_ictt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ictt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i11 = icmp eq i32 %7, 0
  br i1 %tobool.not.i11, label %enetc_wr_reg_hot.exit.enetc_wr_reg_hot.exit16_crit_edge, label %land.rhs.i14

enetc_wr_reg_hot.exit.enetc_wr_reg_hot.exit16_crit_edge: ; preds = %enetc_wr_reg_hot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit16

land.rhs.i14:                                     ; preds = %enetc_wr_reg_hot.exit
  %call.i.i12 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.not.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %cmp.not.i13, label %do.end.i15, label %land.rhs.i14.enetc_wr_reg_hot.exit16_crit_edge, !prof !101

land.rhs.i14.enetc_wr_reg_hot.exit16_crit_edge:   ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit16

do.end.i15:                                       ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit16

enetc_wr_reg_hot.exit16:                          ; preds = %do.end.i15, %land.rhs.i14.enetc_wr_reg_hot.exit16_crit_edge, %enetc_wr_reg_hot.exit.enetc_wr_reg_hot.exit16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %8) #13, !srcloc !104
  %tx_rings_map = getelementptr inbounds %struct.enetc_int_vector, ptr %data, i32 0, i32 3
  %call = tail call i32 @_find_next_bit_be(ptr noundef %tx_rings_map, i32 noundef 8, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp23 = icmp slt i32 %call, 8
  br i1 %cmp23, label %for.body.lr.ph, label %enetc_wr_reg_hot.exit16.for.end_crit_edge

enetc_wr_reg_hot.exit16.for.end_crit_edge:        ; preds = %enetc_wr_reg_hot.exit16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %enetc_wr_reg_hot.exit16
  %tbier_base = getelementptr inbounds %struct.enetc_int_vector, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %enetc_wr_reg_hot.exit22.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ %call, %for.body.lr.ph ], [ %call2, %enetc_wr_reg_hot.exit22.for.body_crit_edge ]
  %9 = ptrtoint ptr %tbier_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tbier_base, align 4
  %mul = shl i32 %i.024, 9
  %add.ptr = getelementptr i8, ptr %10, i32 %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i17 = icmp eq i32 %11, 0
  br i1 %tobool.not.i17, label %for.body.enetc_wr_reg_hot.exit22_crit_edge, label %land.rhs.i20

for.body.enetc_wr_reg_hot.exit22_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit22

land.rhs.i20:                                     ; preds = %for.body
  %call.i.i18 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.not.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %cmp.not.i19, label %do.end.i21, label %land.rhs.i20.enetc_wr_reg_hot.exit22_crit_edge, !prof !101

land.rhs.i20.enetc_wr_reg_hot.exit22_crit_edge:   ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit22

do.end.i21:                                       ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit22

enetc_wr_reg_hot.exit22:                          ; preds = %do.end.i21, %land.rhs.i20.enetc_wr_reg_hot.exit22_crit_edge, %for.body.enetc_wr_reg_hot.exit22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !104
  %add = add nsw i32 %i.024, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %tx_rings_map, i32 noundef 8, i32 noundef %add) #13
  %cmp = icmp slt i32 %call2, 8
  br i1 %cmp, label %enetc_wr_reg_hot.exit22.for.body_crit_edge, label %enetc_wr_reg_hot.exit22.for.end_crit_edge

enetc_wr_reg_hot.exit22.for.end_crit_edge:        ; preds = %enetc_wr_reg_hot.exit22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

enetc_wr_reg_hot.exit22.for.body_crit_edge:       ; preds = %enetc_wr_reg_hot.exit22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %enetc_wr_reg_hot.exit22.for.end_crit_edge, %enetc_wr_reg_hot.exit16.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %napi = getelementptr inbounds %struct.enetc_int_vector, ptr %data, i32 0, i32 10
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call.i, label %if.then.i, label %for.end.napi_schedule.exit_crit_edge

for.end.napi_schedule.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.end.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_free_txbdr(ptr nocapture noundef %txr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_count = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 5
  %0 = ptrtoint ptr %bd_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %enetc_free_tx_frame.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %enetc_free_tx_frame.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 32
  %arrayidx = getelementptr %struct.enetc_tx_swbd, ptr %4, i32 %i.024
  %is_xdp_redirect.i.i = getelementptr %struct.enetc_tx_swbd, ptr %4, i32 %i.024, i32 6
  %5 = ptrtoint ptr %is_xdp_redirect.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %is_xdp_redirect.i.i, align 4
  %6 = and i8 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %for.body.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge, label %if.then.i.i

for.body.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_xdp_frame.exit.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  br label %enetc_tx_swbd_get_xdp_frame.exit.i

enetc_tx_swbd_get_xdp_frame.exit.i:               ; preds = %if.then.i.i, %for.body.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.then.i.i ], [ null, %for.body.enetc_tx_swbd_get_xdp_frame.exit.i_crit_edge ]
  %9 = and i8 %bf.load.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %if.end.i.i, label %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge

enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge: ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_tx_swbd_get_skb.exit.i

if.end.i.i:                                       ; preds = %enetc_tx_swbd_get_xdp_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  br label %enetc_tx_swbd_get_skb.exit.i

enetc_tx_swbd_get_skb.exit.i:                     ; preds = %if.end.i.i, %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge
  %retval.0.i16.i = phi ptr [ %12, %if.end.i.i ], [ null, %enetc_tx_swbd_get_xdp_frame.exit.i.enetc_tx_swbd_get_skb.exit.i_crit_edge ]
  %dma.i = getelementptr %struct.enetc_tx_swbd, ptr %4, i32 %i.024, i32 1
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %enetc_tx_swbd_get_skb.exit.i.if.end.i_crit_edge, label %if.then.i

enetc_tx_swbd_get_skb.exit.i.if.end.i_crit_edge:  ; preds = %enetc_tx_swbd_get_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %enetc_tx_swbd_get_skb.exit.i
  %15 = ptrtoint ptr %txr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txr, align 128
  %17 = and i8 %bf.load.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %17)
  %.not.i.i = icmp eq i8 %17, -120
  br i1 %.not.i.i, label %if.then.i.enetc_unmap_tx_buff.exit.i_crit_edge, label %if.end.sink.split.i.i

if.then.i.enetc_unmap_tx_buff.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_unmap_tx_buff.exit.i

if.end.sink.split.i.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i.i = getelementptr %struct.enetc_tx_swbd, ptr %4, i32 %i.024, i32 4
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i.i, align 2
  %conv4.i.i = zext i16 %19 to i32
  br label %enetc_unmap_tx_buff.exit.i

enetc_unmap_tx_buff.exit.i:                       ; preds = %if.end.sink.split.i.i, %if.then.i.enetc_unmap_tx_buff.exit.i_crit_edge
  %conv8.sink.i.i = phi i32 [ %conv4.i.i, %if.end.sink.split.i.i ], [ 4096, %if.then.i.enetc_unmap_tx_buff.exit.i_crit_edge ]
  %dir9.i.i = getelementptr %struct.enetc_tx_swbd, ptr %4, i32 %i.024, i32 5
  %20 = ptrtoint ptr %dir9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dir9.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %14, i32 noundef %conv8.sink.i.i, i32 noundef %21, i32 noundef 0) #13
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %enetc_unmap_tx_buff.exit.i, %enetc_tx_swbd_get_skb.exit.i.if.end.i_crit_edge
  %tobool2.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  tail call void @xdp_return_frame(ptr noundef %24) #13
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %retval.0.i16.i, null
  br i1 %tobool4.not.i, label %if.else.i.enetc_free_tx_frame.exit_crit_edge, label %if.then5.i

if.else.i.enetc_free_tx_frame.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_free_tx_frame.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %retval.0.i16.i, i32 noundef 1) #13
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then5.i, %if.then3.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  br label %enetc_free_tx_frame.exit

enetc_free_tx_frame.exit:                         ; preds = %if.end7.sink.split.i, %if.else.i.enetc_free_tx_frame.exit_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %26 = ptrtoint ptr %bd_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bd_count, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %enetc_free_tx_frame.exit.for.body_crit_edge, label %enetc_free_tx_frame.exit.for.end_crit_edge

enetc_free_tx_frame.exit.for.end_crit_edge:       ; preds = %enetc_free_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

enetc_free_tx_frame.exit.for.body_crit_edge:      ; preds = %enetc_free_tx_frame.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %enetc_free_tx_frame.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %27, %enetc_free_tx_frame.exit.for.end_crit_edge ]
  %mul = shl i32 %.lcssa, 4
  %28 = ptrtoint ptr %txr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txr, align 128
  %mul3 = shl i32 %.lcssa, 8
  %tso_headers = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 18
  %30 = ptrtoint ptr %tso_headers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tso_headers, align 4
  %tso_headers_dma = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 19
  %32 = ptrtoint ptr %tso_headers_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tso_headers_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %mul3, ptr noundef %31, i32 noundef %33, i32 noundef 0) #13
  %34 = ptrtoint ptr %tso_headers to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tso_headers, align 4
  %35 = ptrtoint ptr %txr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txr, align 128
  %bd_base = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 2
  %37 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_base, align 8
  %bd_dma_base = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 15
  %39 = ptrtoint ptr %bd_dma_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bd_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %mul, ptr noundef %38, i32 noundef %40, i32 noundef 0) #13
  %41 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bd_base, align 8
  %42 = getelementptr inbounds %struct.enetc_bdr, ptr %txr, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 32
  tail call void @vfree(ptr noundef %44) #13
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %42, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_tx_onestep_tstamp(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -220
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @netif_tx_lock(ptr noundef %1) #13
  %flags = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #13, !srcloc !121
  %tx_skbs = getelementptr i8, ptr %work, i32 44
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_skbs) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call fastcc i32 @enetc_start_xmit(ptr noundef nonnull %call, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  tail call void @netif_tx_unlock(ptr noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_refill_rx_ring(ptr nocapture noundef %rx_ring, i32 noundef %buff_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 6
  %0 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %ext_en.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 17
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buff_cnt)
  %cmp56 = icmp sgt i32 %buff_cnt, 0
  br i1 %cmp56, label %for.body.lr.ph, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next_to_use, align 8
  %3 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_base.i, align 8
  %5 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ext_en.i, align 1, !range !98
  %7 = zext i8 %6 to i32
  %spec.select.i = shl i32 %2, %7
  %arrayidx.i = getelementptr %union.enetc_rx_bd, ptr %4, i32 %spec.select.i
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 32
  %arrayidx = getelementptr %struct.enetc_rx_swbd, ptr %9, i32 %2
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %enetc_rxbd_next.exit.for.body_crit_edge, %for.body.lr.ph
  %j.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %enetc_rxbd_next.exit.for.body_crit_edge ]
  %rx_swbd.060 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %arrayidx16, %enetc_rxbd_next.exit.for.body_crit_edge ]
  %i.058 = phi i32 [ %2, %for.body.lr.ph ], [ %new_index.0.i, %enetc_rxbd_next.exit.for.body_crit_edge ]
  %rxbd.057 = phi ptr [ %arrayidx.i, %for.body.lr.ph ], [ %new_rxbd.1.i, %enetc_rxbd_next.exit.for.body_crit_edge ]
  %page = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd.060, i32 0, i32 1
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end14_crit_edge, !prof !101

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %for.body
  %call4 = tail call fastcc zeroext i1 @enetc_new_page(ptr noundef %rx_ring, ptr noundef %rx_swbd.060)
  br i1 %call4, label %if.then.if.end14_crit_edge, label %if.then13, !prof !95

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %rx_alloc_errs = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %rx_alloc_errs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_alloc_errs, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rx_alloc_errs, align 8
  br label %for.end

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %14 = ptrtoint ptr %rx_swbd.060 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_swbd.060, align 4
  %page_offset = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd.060, i32 0, i32 2
  %16 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page_offset, align 4
  %conv = zext i16 %17 to i32
  %add = add i32 %15, %conv
  %conv15 = zext i32 %add to i64
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv15)
  %19 = ptrtoint ptr %rxbd.057 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rxbd.057, align 8
  %20 = getelementptr inbounds %struct.anon.201, ptr %rxbd.057, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 1, i32 2
  %spec.select.i46 = getelementptr %union.enetc_rx_bd, ptr %rxbd.057, i32 %spec.select.v.i
  %inc.i = add i32 %i.058, 1
  %24 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %25)
  %cmp.i = icmp eq i32 %inc.i, %25
  br i1 %cmp.i, label %if.then4.i, label %if.end14.enetc_rxbd_next.exit_crit_edge, !prof !101

if.end14.enetc_rxbd_next.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit

if.then4.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_base.i, align 8
  br label %enetc_rxbd_next.exit

enetc_rxbd_next.exit:                             ; preds = %if.then4.i, %if.end14.enetc_rxbd_next.exit_crit_edge
  %new_rxbd.1.i = phi ptr [ %27, %if.then4.i ], [ %spec.select.i46, %if.end14.enetc_rxbd_next.exit_crit_edge ]
  %new_index.0.i = phi i32 [ 0, %if.then4.i ], [ %inc.i, %if.end14.enetc_rxbd_next.exit_crit_edge ]
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 32
  %arrayidx16 = getelementptr %struct.enetc_rx_swbd, ptr %29, i32 %new_index.0.i
  %inc17 = add nuw nsw i32 %j.061, 1
  %exitcond.not = icmp eq i32 %inc17, %buff_cnt
  br i1 %exitcond.not, label %enetc_rxbd_next.exit.for.end_crit_edge, label %enetc_rxbd_next.exit.for.body_crit_edge

enetc_rxbd_next.exit.for.body_crit_edge:          ; preds = %enetc_rxbd_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

enetc_rxbd_next.exit.for.end_crit_edge:           ; preds = %enetc_rxbd_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %enetc_rxbd_next.exit.for.end_crit_edge, %if.then13
  %i.055 = phi i32 [ %i.058, %if.then13 ], [ %new_index.0.i, %enetc_rxbd_next.exit.for.end_crit_edge ]
  %j.053 = phi i32 [ %j.061, %if.then13 ], [ %buff_cnt, %enetc_rxbd_next.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.053)
  %tobool18.not = icmp eq i32 %j.053, 0
  br i1 %tobool18.not, label %for.end.if.end28_crit_edge, label %if.then25, !prof !101

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then25:                                        ; preds = %for.end
  %30 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 9
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.055, ptr %30, align 4
  %32 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.055, ptr %next_to_use, align 8
  %33 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i48 = icmp eq i32 %36, 0
  br i1 %tobool.not.i48, label %if.then25.enetc_wr_reg_hot.exit_crit_edge, label %land.rhs.i

if.then25.enetc_wr_reg_hot.exit_crit_edge:        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

land.rhs.i:                                       ; preds = %if.then25
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, !prof !101

land.rhs.i.enetc_wr_reg_hot.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit

enetc_wr_reg_hot.exit:                            ; preds = %do.end.i, %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, %if.then25.enetc_wr_reg_hot.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  tail call void @arm_heavy_mb() #13
  %37 = tail call i32 @llvm.bswap.i32(i32 %i.055) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #13, !srcloc !104
  br label %if.end28

if.end28:                                         ; preds = %enetc_wr_reg_hot.exit, %for.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  %j.05369 = phi i32 [ %j.053, %enetc_wr_reg_hot.exit ], [ 0, %for.end.if.end28_crit_edge ], [ 0, %entry.if.end28_crit_edge ]
  ret i32 %j.05369
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @enetc_new_page(ptr nocapture noundef readonly %rx_ring, ptr nocapture noundef writeonly %rx_swbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 128
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %tobool3.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end, !prof !101

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 2, i32 0
  %dir = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 3
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %dir, align 4
  %3 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ring, align 128
  %call10 = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef %cond, i32 noundef 0) #13
  %5 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ring, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %6, i32 noundef %call10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp.i.not = icmp eq i32 %call10, -1
  br i1 %cmp.i.not, label %if.then20, label %if.end21, !prof !101

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rx_swbd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %rx_swbd, align 4
  %page22 = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 1
  %8 = ptrtoint ptr %page22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38.i.i.i.i.i, ptr %page22, align 4
  %buffer_offset = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %9 = ptrtoint ptr %buffer_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_offset, align 4
  %conv = trunc i32 %10 to i16
  %page_offset = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 2
  %11 = ptrtoint ptr %page_offset to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %page_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then20 ], [ true, %if.end21 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_psfp_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_psfp_clean(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_clean_rx_ring_xdp(ptr noundef %rx_ring, ptr noundef %napi, i32 noundef %work_limit, ptr noundef %prog) unnamed_addr #0 align 64 {
entry:
  %xdp_tx_arr = alloca [13 x %struct.enetc_tx_swbd], align 4
  %cleaned_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %rxbd = alloca ptr, align 4
  %xdp_buff = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %xdp_tx_arr) #13
  %0 = call ptr @memset(ptr %xdp_tx_arr, i32 0, i32 312)
  %ndev = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 1
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cleaned_cnt) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #13
  %next_to_clean.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 7
  %3 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 6
  %5 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i172 = icmp sgt i32 %4, %6
  br i1 %cmp.i172, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = xor i32 %6, -1
  %sub3.i = add i32 %4, %7
  br label %enetc_bd_unused.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %8 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_count.i, align 4
  %10 = xor i32 %6, -1
  %add.i = add i32 %4, %10
  %sub7.i = add i32 %add.i, %9
  br label %enetc_bd_unused.exit

enetc_bd_unused.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %sub7.i, %if.end.i ]
  %11 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %cleaned_cnt, align 4
  %12 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %4, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_limit)
  %cmp285 = icmp sgt i32 %work_limit, 0
  br i1 %cmp285, label %while.body.lr.ph, label %enetc_bd_unused.exit.out_crit_edge, !prof !95

enetc_bd_unused.exit.out_crit_edge:               ; preds = %enetc_bd_unused.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body.lr.ph:                                 ; preds = %enetc_bd_unused.exit
  %13 = getelementptr inbounds %struct.xdp_buff, ptr %xdp_buff, i32 0, i32 1
  %14 = getelementptr inbounds %struct.xdp_buff, ptr %xdp_buff, i32 0, i32 2
  %15 = getelementptr inbounds %struct.xdp_buff, ptr %xdp_buff, i32 0, i32 3
  %16 = getelementptr inbounds %struct.xdp_buff, ptr %xdp_buff, i32 0, i32 4
  %17 = getelementptr inbounds %struct.xdp_buff, ptr %xdp_buff, i32 0, i32 6
  %ext_en.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 17
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  %idr = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 10
  %index = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 4
  %xdp.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 13
  %18 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %buffer_offset.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %xdp_redirect_sg = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 8
  %xdp_redirect = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 6
  %19 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 9
  %xdp_drops.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 3
  %xdp_tx_ring = getelementptr i8, ptr %2, i32 2348
  %xdp_tx_in_flight = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 13, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tx_ring.0293 = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph ], [ %tx_ring.1, %cleanup.while.body_crit_edge ]
  %rx_frm_cnt.0290 = phi i32 [ 0, %while.body.lr.ph ], [ %inc75, %cleanup.while.body_crit_edge ]
  %xdp_redirect_frm_cnt.0288 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_redirect_frm_cnt.1, %cleanup.while.body_crit_edge ]
  %xdp_tx_frm_cnt.0286 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_tx_frm_cnt.1, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxbd) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp_buff) #13
  %20 = call ptr @memset(ptr %xdp_buff, i32 255, i32 28)
  %21 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i, align 4
  %23 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ext_en.i, align 1, !range !98
  %25 = zext i8 %24 to i32
  %spec.select.i = shl i32 %22, %25
  %26 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_base.i, align 8
  %arrayidx.i = getelementptr %union.enetc_rx_bd, ptr %27, i32 %spec.select.i
  %28 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i, ptr %rxbd, align 4
  %29 = getelementptr inbounds %struct.anon.201, ptr %arrayidx.i, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not = icmp eq i32 %31, 0
  br i1 %tobool4.not, label %while.body.cleanup.thread_crit_edge, label %if.end

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %33 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %idr, align 8
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %index, align 16
  %conv = zext i16 %36 to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %37 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.enetc_wr_reg_hot.exit_crit_edge, label %land.rhs.i

if.end.enetc_wr_reg_hot.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, !prof !101

land.rhs.i.enetc_wr_reg_hot.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_wr_reg_hot.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_wr_reg_hot.exit

enetc_wr_reg_hot.exit:                            ; preds = %do.end.i, %land.rhs.i.enetc_wr_reg_hot.exit_crit_edge, %if.end.enetc_wr_reg_hot.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  %38 = call i32 @llvm.bswap.i32(i32 %shl) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %38) #13, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  %call5 = call fastcc zeroext i1 @enetc_check_bd_errors_and_consume(ptr noundef %rx_ring, i32 noundef %32, ptr noundef nonnull %rxbd, ptr noundef nonnull %i)
  br i1 %call5, label %enetc_wr_reg_hot.exit.cleanup.thread_crit_edge, label %if.end7

enetc_wr_reg_hot.exit.cleanup.thread_crit_edge:   ; preds = %enetc_wr_reg_hot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end7:                                          ; preds = %enetc_wr_reg_hot.exit
  %39 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rxbd, align 4
  %41 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cleaned_cnt, align 4
  %43 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i, align 4
  %buf_len.i = getelementptr inbounds %struct.anon.201, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %buf_len.i, align 8
  %47 = call i16 @llvm.bswap.i16(i16 %46) #13
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2048, ptr %17, align 4
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %xdp.i, ptr %16, align 4
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %18, align 32
  %arrayidx.i.i.i = getelementptr %struct.enetc_rx_swbd, ptr %51, i32 %44
  %52 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_ring, align 128
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i.i, align 4
  %page_offset.i.i.i = getelementptr %struct.enetc_rx_swbd, ptr %51, i32 %44, i32 2
  %56 = ptrtoint ptr %page_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %page_offset.i.i.i, align 4
  %conv.i.i.i174 = zext i16 %57 to i32
  %conv1.i.i.i = zext i16 %47 to i32
  %dir.i.i.i = getelementptr %struct.enetc_rx_swbd, ptr %51, i32 %44, i32 3
  %58 = ptrtoint ptr %dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dir.i.i.i, align 4
  %add.i.i.i.i175 = add i32 %55, %conv.i.i.i174
  call void @dma_sync_single_for_cpu(ptr noundef %53, i32 noundef %add.i.i.i.i175, i32 noundef %conv1.i.i.i, i32 noundef %59) #13
  %page.i.i = getelementptr %struct.enetc_rx_swbd, ptr %51, i32 %44, i32 1
  %60 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page.i.i, align 4
  %call1.i.i = call ptr @page_address(ptr noundef %61) #13
  %62 = ptrtoint ptr %page_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %page_offset.i.i.i, align 4
  %conv.i.i = zext i16 %63 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %conv.i.i
  %len.i.i = getelementptr %struct.enetc_rx_swbd, ptr %51, i32 %44, i32 4
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %47, ptr %len.i.i, align 4
  %65 = ptrtoint ptr %buffer_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buffer_offset.i.i, align 4
  %idx.neg.i.i = sub i32 0, %66
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %66
  %67 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr2.i.i, ptr %15, align 4
  %68 = ptrtoint ptr %xdp_buff to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i.i, ptr %xdp_buff, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr2.i.i.i, ptr %13, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %70 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr3.i.i.i, ptr %14, align 4
  %71 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %17, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 -256
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i14.i.i, i32 %72
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %add.ptr1.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %nr_frags.i.i, align 2
  %inc.i = add i32 %42, 1
  %74 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.i, ptr %cleaned_cnt, align 4
  %75 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i, align 4
  %77 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i176 = icmp eq i8 %78, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i176, i32 1, i32 2
  %spec.select.i.i = getelementptr %union.enetc_rx_bd, ptr %40, i32 %spec.select.v.i.i
  %inc.i.i = add i32 %76, 1
  %79 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %80)
  %cmp.i.i = icmp eq i32 %inc.i.i, %80
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end7.enetc_rxbd_next.exit.i_crit_edge, !prof !101

if.end7.enetc_rxbd_next.exit.i_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit.i

if.then4.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bd_base.i, align 8
  br label %enetc_rxbd_next.exit.i

enetc_rxbd_next.exit.i:                           ; preds = %if.then4.i.i, %if.end7.enetc_rxbd_next.exit.i_crit_edge
  %new_rxbd.1.i.i = phi ptr [ %82, %if.then4.i.i ], [ %spec.select.i.i, %if.end7.enetc_rxbd_next.exit.i_crit_edge ]
  %new_index.0.i.i = phi i32 [ 0, %if.then4.i.i ], [ %inc.i.i, %if.end7.enetc_rxbd_next.exit.i_crit_edge ]
  %83 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %new_rxbd.1.i.i, ptr %rxbd, align 4
  %84 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %new_index.0.i.i, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool.not49.i = icmp sgt i32 %32, -1
  br i1 %tobool.not49.i, label %while.body.i.preheader, label %enetc_rxbd_next.exit.i.enetc_build_xdp_buff.exit_crit_edge

enetc_rxbd_next.exit.i.enetc_build_xdp_buff.exit_crit_edge: ; preds = %enetc_rxbd_next.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_build_xdp_buff.exit

while.body.i.preheader:                           ; preds = %enetc_rxbd_next.exit.i
  %85 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %85)
  %rxbd.promoted = load ptr, ptr %rxbd, align 4
  %86 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %86)
  %cleaned_cnt.promoted = load i32, ptr %cleaned_cnt, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %enetc_rxbd_next.exit47.i.while.body.i_crit_edge, %while.body.i.preheader
  %inc4.i280 = phi i32 [ %cleaned_cnt.promoted, %while.body.i.preheader ], [ %inc4.i, %enetc_rxbd_next.exit47.i.while.body.i_crit_edge ]
  %new_rxbd.1.i45.i279 = phi ptr [ %rxbd.promoted, %while.body.i.preheader ], [ %new_rxbd.1.i45.i, %enetc_rxbd_next.exit47.i.while.body.i_crit_edge ]
  %87 = getelementptr inbounds %struct.anon.201, ptr %new_rxbd.1.i45.i279, i32 0, i32 5
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %.mask.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool2.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end.i179_crit_edge, label %if.then.i177

while.body.i.if.end.i179_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i179

if.then.i177:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !123
  %buf_len3.i = getelementptr inbounds %struct.anon.201, ptr %new_rxbd.1.i45.i279, i32 0, i32 3
  %90 = ptrtoint ptr %buf_len3.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %buf_len3.i, align 8
  %92 = call i16 @llvm.bswap.i16(i16 %91) #13
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i177, %while.body.i.if.end.i179_crit_edge
  %size.0.i = phi i16 [ %92, %if.then.i177 ], [ 1536, %while.body.i.if.end.i179_crit_edge ]
  %93 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i, align 4
  %95 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %15, align 4
  %97 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %17, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %96, i32 -256
  %add.ptr1.i.i24.i = getelementptr i8, ptr %add.ptr.i.i23.i, i32 %98
  %99 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %18, align 32
  %arrayidx.i.i25.i = getelementptr %struct.enetc_rx_swbd, ptr %100, i32 %94
  %101 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_ring, align 128
  %103 = ptrtoint ptr %arrayidx.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i25.i, align 4
  %page_offset.i.i26.i = getelementptr %struct.enetc_rx_swbd, ptr %100, i32 %94, i32 2
  %105 = ptrtoint ptr %page_offset.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %page_offset.i.i26.i, align 4
  %conv.i.i27.i = zext i16 %106 to i32
  %conv1.i.i28.i = zext i16 %size.0.i to i32
  %dir.i.i29.i = getelementptr %struct.enetc_rx_swbd, ptr %100, i32 %94, i32 3
  %107 = ptrtoint ptr %dir.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dir.i.i29.i, align 4
  %add.i.i.i30.i = add i32 %104, %conv.i.i27.i
  call void @dma_sync_single_for_cpu(ptr noundef %102, i32 noundef %add.i.i.i30.i, i32 noundef %conv1.i.i28.i, i32 noundef %108) #13
  %nr_frags.i31.i = getelementptr inbounds %struct.skb_shared_info, ptr %add.ptr1.i.i24.i, i32 0, i32 2
  %109 = ptrtoint ptr %nr_frags.i31.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nr_frags.i31.i, align 2
  %idxprom.i.i = zext i8 %110 to i32
  %arrayidx.i.i178 = getelementptr %struct.skb_shared_info, ptr %add.ptr1.i.i24.i, i32 0, i32 12, i32 %idxprom.i.i
  %len.i32.i = getelementptr %struct.enetc_rx_swbd, ptr %100, i32 %94, i32 4
  %111 = ptrtoint ptr %len.i32.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %size.0.i, ptr %len.i32.i, align 4
  %112 = ptrtoint ptr %page_offset.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %page_offset.i.i26.i, align 4
  %conv.i33.i = zext i16 %113 to i32
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %arrayidx.i.i178, i32 0, i32 2
  %114 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i33.i, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %arrayidx.i.i178, i32 0, i32 1
  %115 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv1.i.i28.i, ptr %bv_len.i.i.i, align 4
  %page.i34.i = getelementptr %struct.enetc_rx_swbd, ptr %100, i32 %94, i32 1
  %116 = ptrtoint ptr %page.i34.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %page.i34.i, align 4
  %118 = ptrtoint ptr %arrayidx.i.i178 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %arrayidx.i.i178, align 4
  %119 = load i8, ptr %nr_frags.i31.i, align 2
  %inc.i35.i = add i8 %119, 1
  store i8 %inc.i35.i, ptr %nr_frags.i31.i, align 2
  %inc4.i = add i32 %inc4.i280, 1
  %120 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i, align 4
  %122 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i37.i = icmp eq i8 %123, 0
  %spec.select.v.i38.i = select i1 %tobool.not.i37.i, i32 1, i32 2
  %spec.select.i39.i = getelementptr %union.enetc_rx_bd, ptr %new_rxbd.1.i45.i279, i32 %spec.select.v.i38.i
  %inc.i40.i = add i32 %121, 1
  %124 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i40.i, i32 %125)
  %cmp.i42.i = icmp eq i32 %inc.i40.i, %125
  br i1 %cmp.i42.i, label %if.then4.i44.i, label %if.end.i179.enetc_rxbd_next.exit47.i_crit_edge, !prof !101

if.end.i179.enetc_rxbd_next.exit47.i_crit_edge:   ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit47.i

if.then4.i44.i:                                   ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bd_base.i, align 8
  br label %enetc_rxbd_next.exit47.i

enetc_rxbd_next.exit47.i:                         ; preds = %if.then4.i44.i, %if.end.i179.enetc_rxbd_next.exit47.i_crit_edge
  %new_rxbd.1.i45.i = phi ptr [ %127, %if.then4.i44.i ], [ %spec.select.i39.i, %if.end.i179.enetc_rxbd_next.exit47.i_crit_edge ]
  %new_index.0.i46.i = phi i32 [ 0, %if.then4.i44.i ], [ %inc.i40.i, %if.end.i179.enetc_rxbd_next.exit47.i_crit_edge ]
  %128 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %new_index.0.i46.i, ptr %i, align 4
  br i1 %tobool2.not.i, label %enetc_rxbd_next.exit47.i.while.body.i_crit_edge, label %enetc_build_xdp_buff.exit.loopexit

enetc_rxbd_next.exit47.i.while.body.i_crit_edge:  ; preds = %enetc_rxbd_next.exit47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

enetc_build_xdp_buff.exit.loopexit:               ; preds = %enetc_rxbd_next.exit47.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %new_rxbd.1.i45.i, ptr %rxbd, align 4
  %130 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %inc4.i, ptr %cleaned_cnt, align 4
  br label %enetc_build_xdp_buff.exit

enetc_build_xdp_buff.exit:                        ; preds = %enetc_build_xdp_buff.exit.loopexit, %enetc_rxbd_next.exit.i.enetc_build_xdp_buff.exit_crit_edge
  call void @__cant_migrate(ptr noundef nonnull @.str.34, i32 noundef 613) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@enetc_clean_rx_ring_xdp, %if.then.i.i)) #13
          to label %if.else.i.i [label %if.then.i.i], !srcloc !124

if.then.i.i:                                      ; preds = %enetc_build_xdp_buff.exit
  %call3.i.i = call i64 @sched_clock() #13
  %131 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp_buff, ptr noundef %insnsi.i.i, ptr noundef %132) #13
  %133 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %stats9.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  %136 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %141, %135
  %142 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %142, i32 0, i32 3
  %143 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !125
  %and.i.i.i.i = and i32 %143, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_off() #13
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %144 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i.i.i = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %145 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %148, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %149 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %154, ptrtoint (ptr @lockdep_recursion to i32)
  %155 = inttoptr i32 %add.i.i.i.i to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %155, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !127
  %158 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i7.i.i.i.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %161, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool20.not.i.i.i.i = icmp eq i32 %157, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %162 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.i.i.i.i = icmp eq i32 %165, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %166 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i9.i.i.i.i = and i32 %166, -16384
  %167 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %169, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !128
  %170 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %173, ptrtoint (ptr @hardirqs_enabled to i32)
  %174 = inttoptr i32 %add47.i.i.i.i to ptr
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  %177 = call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i12.i.i.i.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %180, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool54.not.i.i.i.i = icmp eq i32 %176, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !95

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %181 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %182, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %142, i32 0, i32 3, i32 0, i32 1
  %183 = call ptr @llvm.returnaddress(i32 0) #13
  %184 = ptrtoint ptr %183 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %184) #13
  %185 = ptrtoint ptr %142 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %142, align 8
  %inc.i.i.i = add i64 %186, 1
  store i64 %inc.i.i.i, ptr %142, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %142, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #13
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %187 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %188
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %184) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  %189 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %190, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_on() #13
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %191 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !132
  %and.i.i.i3.i.i = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !101

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #13, !srcloc !133
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %enetc_build_xdp_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  %192 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bpf_func.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp_buff, ptr noundef %insnsi.i.i, ptr noundef %193) #13
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@enetc_clean_rx_ring_xdp, %l_yes.i.i)) #13
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !124

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %194 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %16, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %197, i32 0, i32 14
  %198 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %199, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb26_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb26_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %197, i32 0, i32 15
  %200 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %201, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb26_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb26_crit_edge:     ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp_buff) #13
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %202 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %act.0.i, label %sw.default [
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb11_crit_edge
    i32 2, label %sw.bb12
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb26_crit_edge
    i32 4, label %sw.bb41
  ]

bpf_prog_run_xdp.exit.sw.bb26_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb26

bpf_prog_run_xdp.exit.sw.bb11_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  %203 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ndev, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %204, ptr noundef %prog, i32 noundef %act.0.i) #13
  br label %sw.bb

sw.bb:                                            ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb_crit_edge
  %205 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ndev, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %206, ptr noundef %prog, i32 noundef %act.0.i)
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %bpf_prog_run_xdp.exit.sw.bb11_crit_edge
  %207 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %208)
  %cmp.not5.i = icmp eq i32 %44, %208
  br i1 %cmp.not5.i, label %sw.bb11.enetc_xdp_drop.exit_crit_edge, label %sw.bb11.while.body.i184_crit_edge

sw.bb11.while.body.i184_crit_edge:                ; preds = %sw.bb11
  br label %while.body.i184

sw.bb11.enetc_xdp_drop.exit_crit_edge:            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_xdp_drop.exit

while.body.i184:                                  ; preds = %enetc_bdr_idx_inc.exit.i.while.body.i184_crit_edge, %sw.bb11.while.body.i184_crit_edge
  %rx_ring_first.addr.06.i = phi i32 [ %rx_ring_first.addr.1.i, %enetc_bdr_idx_inc.exit.i.while.body.i184_crit_edge ], [ %44, %sw.bb11.while.body.i184_crit_edge ]
  %209 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %18, align 32
  %arrayidx.i182 = getelementptr %struct.enetc_rx_swbd, ptr %210, i32 %rx_ring_first.addr.06.i
  %211 = ptrtoint ptr %buffer_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %buffer_offset.i.i, align 4
  %213 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %19, align 4
  %inc.i.i.i.i = add i32 %214, 1
  store i32 %inc.i.i.i.i, ptr %19, align 4
  %215 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %216)
  %cmp.i.i.i.i183 = icmp eq i32 %inc.i.i.i.i, %216
  br i1 %cmp.i.i.i.i183, label %if.then.i.i.i.i185, label %while.body.i184.enetc_put_rx_buff.exit.i_crit_edge, !prof !101

while.body.i184.enetc_put_rx_buff.exit.i_crit_edge: ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_put_rx_buff.exit.i

if.then.i.i.i.i185:                               ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  %217 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %19, align 4
  br label %enetc_put_rx_buff.exit.i

enetc_put_rx_buff.exit.i:                         ; preds = %if.then.i.i.i.i185, %while.body.i184.enetc_put_rx_buff.exit.i_crit_edge
  %sub.i.i186 = sub i32 2048, %212
  %arrayidx.i.i.i187 = getelementptr %struct.enetc_rx_swbd, ptr %210, i32 %214
  %218 = call ptr @memcpy(ptr %arrayidx.i.i.i187, ptr %arrayidx.i182, i32 20)
  %219 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rx_ring, align 128
  %221 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i182, align 4
  %page_offset.i.i = getelementptr %struct.enetc_rx_swbd, ptr %210, i32 %rx_ring_first.addr.06.i, i32 2
  %223 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %page_offset.i.i, align 4
  %conv.i.i188 = zext i16 %224 to i32
  %dir.i.i = getelementptr %struct.enetc_rx_swbd, ptr %210, i32 %rx_ring_first.addr.06.i, i32 3
  %225 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dir.i.i, align 4
  %add.i.i.i189 = add i32 %222, %conv.i.i188
  call void @dma_sync_single_for_device(ptr noundef %220, i32 noundef %add.i.i.i189, i32 noundef %sub.i.i186, i32 noundef %226) #13
  %page.i.i190 = getelementptr %struct.enetc_rx_swbd, ptr %210, i32 %rx_ring_first.addr.06.i, i32 1
  %227 = ptrtoint ptr %page.i.i190 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %page.i.i190, align 4
  %inc.i.i191 = add i32 %rx_ring_first.addr.06.i, 1
  %228 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i191, i32 %229)
  %cmp.i.i192 = icmp eq i32 %inc.i.i191, %229
  br i1 %cmp.i.i192, label %if.then.i.i193, label %enetc_put_rx_buff.exit.i.enetc_bdr_idx_inc.exit.i_crit_edge, !prof !101

enetc_put_rx_buff.exit.i.enetc_bdr_idx_inc.exit.i_crit_edge: ; preds = %enetc_put_rx_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i

if.then.i.i193:                                   ; preds = %enetc_put_rx_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i

enetc_bdr_idx_inc.exit.i:                         ; preds = %if.then.i.i193, %enetc_put_rx_buff.exit.i.enetc_bdr_idx_inc.exit.i_crit_edge
  %rx_ring_first.addr.1.i = phi i32 [ 0, %if.then.i.i193 ], [ %inc.i.i191, %enetc_put_rx_buff.exit.i.enetc_bdr_idx_inc.exit.i_crit_edge ]
  %cmp.not.i194 = icmp eq i32 %rx_ring_first.addr.1.i, %208
  br i1 %cmp.not.i194, label %enetc_bdr_idx_inc.exit.i.enetc_xdp_drop.exit_crit_edge, label %enetc_bdr_idx_inc.exit.i.while.body.i184_crit_edge

enetc_bdr_idx_inc.exit.i.while.body.i184_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i184

enetc_bdr_idx_inc.exit.i.enetc_xdp_drop.exit_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_xdp_drop.exit

enetc_xdp_drop.exit:                              ; preds = %enetc_bdr_idx_inc.exit.i.enetc_xdp_drop.exit_crit_edge, %sw.bb11.enetc_xdp_drop.exit_crit_edge
  %230 = ptrtoint ptr %xdp_drops.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %xdp_drops.i, align 4
  %inc.i195 = add i32 %231, 1
  store i32 %inc.i195, ptr %xdp_drops.i, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %bpf_prog_run_xdp.exit
  %232 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %40, ptr %rxbd, align 4
  %233 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %42, ptr %cleaned_cnt, align 4
  %234 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %44, ptr %i, align 4
  %call13 = call fastcc ptr @enetc_build_skb(ptr noundef %rx_ring, i32 noundef %32, ptr noundef nonnull %rxbd, ptr noundef nonnull %i, ptr noundef nonnull %cleaned_cnt, i32 noundef 1536)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %sw.bb12.cleanup.thread_crit_edge, label %if.end24, !prof !101

sw.bb12.cleanup.thread_crit_edge:                 ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end24:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call13) #13
  br label %cleanup

sw.bb26:                                          ; preds = %bpf_prog_run_xdp.exit.sw.bb26_crit_edge, %netif_is_bond_slave.exit.i.sw.bb26_crit_edge, %land.lhs.true.i.sw.bb26_crit_edge
  %235 = ptrtoint ptr %xdp_tx_ring to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %xdp_tx_ring, align 4
  %237 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %index, align 16
  %idxprom = zext i16 %238 to i32
  %arrayidx = getelementptr ptr, ptr %236, i32 %idxprom
  %239 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx, align 4
  %241 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %242)
  %cmp.not35.i = icmp eq i32 %44, %242
  br i1 %cmp.not35.i, label %sw.bb26.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge, label %for.body.i.preheader

sw.bb26.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rx_swbd_to_xdp_tx_swbd.exit

for.body.i.preheader:                             ; preds = %sw.bb26
  %243 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %18, align 32
  %245 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %bd_count.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %enetc_bdr_idx_inc.exit.i204.for.body.i_crit_edge, %for.body.i.preheader
  %n.037.i = phi i32 [ %inc.i198, %enetc_bdr_idx_inc.exit.i204.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %rx_ring_first.addr.036.i = phi i32 [ %rx_ring_first.addr.1.i202, %enetc_bdr_idx_inc.exit.i204.for.body.i_crit_edge ], [ %44, %for.body.i.preheader ]
  %arrayidx.i197 = getelementptr %struct.enetc_rx_swbd, ptr %244, i32 %rx_ring_first.addr.036.i
  %247 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.i197, align 4
  %dma2.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 1
  %249 = ptrtoint ptr %dma2.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %dma2.i, align 4
  %dir.i = getelementptr %struct.enetc_rx_swbd, ptr %244, i32 %rx_ring_first.addr.036.i, i32 3
  %250 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dir.i, align 4
  %dir3.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 5
  %252 = ptrtoint ptr %dir3.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %dir3.i, align 4
  %page.i = getelementptr %struct.enetc_rx_swbd, ptr %244, i32 %rx_ring_first.addr.036.i, i32 1
  %253 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %page.i, align 4
  %page4.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 2
  %255 = ptrtoint ptr %page4.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %254, ptr %page4.i, align 4
  %page_offset.i = getelementptr %struct.enetc_rx_swbd, ptr %244, i32 %rx_ring_first.addr.036.i, i32 2
  %256 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %page_offset.i, align 4
  %page_offset5.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 3
  %258 = ptrtoint ptr %page_offset5.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %page_offset5.i, align 4
  %len.i = getelementptr %struct.enetc_rx_swbd, ptr %244, i32 %rx_ring_first.addr.036.i, i32 4
  %259 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %len.i, align 4
  %len6.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 4
  %261 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %260, ptr %len6.i, align 2
  %is_dma_page.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %n.037.i, i32 6
  %262 = ptrtoint ptr %is_dma_page.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %bf.load.i = load i8, ptr %is_dma_page.i, align 4
  %bf.set9.i = and i8 %bf.load.i, 103
  %bf.clear11.i = or i8 %bf.set9.i, -120
  store i8 %bf.clear11.i, ptr %is_dma_page.i, align 4
  %inc.i198 = add i32 %n.037.i, 1
  %inc.i.i199 = add i32 %rx_ring_first.addr.036.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i199, i32 %246)
  %cmp.i.i200 = icmp eq i32 %inc.i.i199, %246
  br i1 %cmp.i.i200, label %if.then.i.i201, label %for.body.i.enetc_bdr_idx_inc.exit.i204_crit_edge, !prof !101

for.body.i.enetc_bdr_idx_inc.exit.i204_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i204

if.then.i.i201:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i204

enetc_bdr_idx_inc.exit.i204:                      ; preds = %if.then.i.i201, %for.body.i.enetc_bdr_idx_inc.exit.i204_crit_edge
  %rx_ring_first.addr.1.i202 = phi i32 [ 0, %if.then.i.i201 ], [ %inc.i.i199, %for.body.i.enetc_bdr_idx_inc.exit.i204_crit_edge ]
  %cmp.not.i203 = icmp eq i32 %rx_ring_first.addr.1.i202, %242
  br i1 %cmp.not.i203, label %enetc_bdr_idx_inc.exit.i204.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge, label %enetc_bdr_idx_inc.exit.i204.for.body.i_crit_edge

enetc_bdr_idx_inc.exit.i204.for.body.i_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i204
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

enetc_bdr_idx_inc.exit.i204.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i204
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rx_swbd_to_xdp_tx_swbd.exit

enetc_rx_swbd_to_xdp_tx_swbd.exit:                ; preds = %enetc_bdr_idx_inc.exit.i204.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge, %sw.bb26.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %sw.bb26.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge ], [ %inc.i198, %enetc_bdr_idx_inc.exit.i204.enetc_rx_swbd_to_xdp_tx_swbd.exit_crit_edge ]
  %sub.i = add i32 %n.0.lcssa.i, -1
  %is_eof14.i = getelementptr %struct.enetc_tx_swbd, ptr %xdp_tx_arr, i32 %sub.i, i32 6
  %263 = ptrtoint ptr %is_eof14.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %bf.load15.i = load i8, ptr %is_eof14.i, align 4
  %bf.set17.i = or i8 %bf.load15.i, 16
  store i8 %bf.set17.i, ptr %is_eof14.i, align 4
  %call30 = call fastcc zeroext i1 @enetc_xdp_tx(ptr noundef %240, ptr noundef nonnull %xdp_tx_arr, i32 noundef %n.0.lcssa.i)
  br i1 %call30, label %if.else, label %if.then31

if.then31:                                        ; preds = %enetc_rx_swbd_to_xdp_tx_swbd.exit
  %264 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %265)
  %cmp.not5.i205 = icmp eq i32 %44, %265
  br i1 %cmp.not5.i205, label %if.then31.enetc_xdp_drop.exit231_crit_edge, label %if.then31.while.body.i213_crit_edge

if.then31.while.body.i213_crit_edge:              ; preds = %if.then31
  br label %while.body.i213

if.then31.enetc_xdp_drop.exit231_crit_edge:       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_xdp_drop.exit231

while.body.i213:                                  ; preds = %enetc_bdr_idx_inc.exit.i228.while.body.i213_crit_edge, %if.then31.while.body.i213_crit_edge
  %rx_ring_first.addr.06.i209 = phi i32 [ %rx_ring_first.addr.1.i226, %enetc_bdr_idx_inc.exit.i228.while.body.i213_crit_edge ], [ %44, %if.then31.while.body.i213_crit_edge ]
  %266 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %18, align 32
  %arrayidx.i210 = getelementptr %struct.enetc_rx_swbd, ptr %267, i32 %rx_ring_first.addr.06.i209
  %268 = ptrtoint ptr %buffer_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %buffer_offset.i.i, align 4
  %270 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %19, align 4
  %inc.i.i.i.i211 = add i32 %271, 1
  store i32 %inc.i.i.i.i211, ptr %19, align 4
  %272 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i211, i32 %273)
  %cmp.i.i.i.i212 = icmp eq i32 %inc.i.i.i.i211, %273
  br i1 %cmp.i.i.i.i212, label %if.then.i.i.i.i214, label %while.body.i213.enetc_put_rx_buff.exit.i224_crit_edge, !prof !101

while.body.i213.enetc_put_rx_buff.exit.i224_crit_edge: ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_put_rx_buff.exit.i224

if.then.i.i.i.i214:                               ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #15
  %274 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %19, align 4
  br label %enetc_put_rx_buff.exit.i224

enetc_put_rx_buff.exit.i224:                      ; preds = %if.then.i.i.i.i214, %while.body.i213.enetc_put_rx_buff.exit.i224_crit_edge
  %sub.i.i215 = sub i32 2048, %269
  %arrayidx.i.i.i216 = getelementptr %struct.enetc_rx_swbd, ptr %267, i32 %271
  %275 = call ptr @memcpy(ptr %arrayidx.i.i.i216, ptr %arrayidx.i210, i32 20)
  %276 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rx_ring, align 128
  %278 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx.i210, align 4
  %page_offset.i.i217 = getelementptr %struct.enetc_rx_swbd, ptr %267, i32 %rx_ring_first.addr.06.i209, i32 2
  %280 = ptrtoint ptr %page_offset.i.i217 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %page_offset.i.i217, align 4
  %conv.i.i218 = zext i16 %281 to i32
  %dir.i.i219 = getelementptr %struct.enetc_rx_swbd, ptr %267, i32 %rx_ring_first.addr.06.i209, i32 3
  %282 = ptrtoint ptr %dir.i.i219 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %dir.i.i219, align 4
  %add.i.i.i220 = add i32 %279, %conv.i.i218
  call void @dma_sync_single_for_device(ptr noundef %277, i32 noundef %add.i.i.i220, i32 noundef %sub.i.i215, i32 noundef %283) #13
  %page.i.i221 = getelementptr %struct.enetc_rx_swbd, ptr %267, i32 %rx_ring_first.addr.06.i209, i32 1
  %284 = ptrtoint ptr %page.i.i221 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %page.i.i221, align 4
  %inc.i.i222 = add i32 %rx_ring_first.addr.06.i209, 1
  %285 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i222, i32 %286)
  %cmp.i.i223 = icmp eq i32 %inc.i.i222, %286
  br i1 %cmp.i.i223, label %if.then.i.i225, label %enetc_put_rx_buff.exit.i224.enetc_bdr_idx_inc.exit.i228_crit_edge, !prof !101

enetc_put_rx_buff.exit.i224.enetc_bdr_idx_inc.exit.i228_crit_edge: ; preds = %enetc_put_rx_buff.exit.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i228

if.then.i.i225:                                   ; preds = %enetc_put_rx_buff.exit.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit.i228

enetc_bdr_idx_inc.exit.i228:                      ; preds = %if.then.i.i225, %enetc_put_rx_buff.exit.i224.enetc_bdr_idx_inc.exit.i228_crit_edge
  %rx_ring_first.addr.1.i226 = phi i32 [ 0, %if.then.i.i225 ], [ %inc.i.i222, %enetc_put_rx_buff.exit.i224.enetc_bdr_idx_inc.exit.i228_crit_edge ]
  %cmp.not.i227 = icmp eq i32 %rx_ring_first.addr.1.i226, %265
  br i1 %cmp.not.i227, label %enetc_bdr_idx_inc.exit.i228.enetc_xdp_drop.exit231_crit_edge, label %enetc_bdr_idx_inc.exit.i228.while.body.i213_crit_edge

enetc_bdr_idx_inc.exit.i228.while.body.i213_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i213

enetc_bdr_idx_inc.exit.i228.enetc_xdp_drop.exit231_crit_edge: ; preds = %enetc_bdr_idx_inc.exit.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_xdp_drop.exit231

enetc_xdp_drop.exit231:                           ; preds = %enetc_bdr_idx_inc.exit.i228.enetc_xdp_drop.exit231_crit_edge, %if.then31.enetc_xdp_drop.exit231_crit_edge
  %287 = ptrtoint ptr %xdp_drops.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %xdp_drops.i, align 4
  %inc.i230 = add i32 %288, 1
  store i32 %inc.i230, ptr %xdp_drops.i, align 4
  %xdp_tx_drops = getelementptr inbounds %struct.enetc_bdr, ptr %240, i32 0, i32 14, i32 5
  %289 = ptrtoint ptr %xdp_tx_drops to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %xdp_tx_drops, align 4
  %inc = add i32 %290, 1
  store i32 %inc, ptr %xdp_tx_drops, align 4
  br label %cleanup

if.else:                                          ; preds = %enetc_rx_swbd_to_xdp_tx_swbd.exit
  %xdp_tx = getelementptr inbounds %struct.enetc_bdr, ptr %240, i32 0, i32 14, i32 4
  %291 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %xdp_tx, align 16
  %add = add i32 %292, %n.0.lcssa.i
  store i32 %add, ptr %xdp_tx, align 16
  %293 = ptrtoint ptr %xdp_tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %xdp_tx_in_flight, align 4
  %add33 = add i32 %294, %n.0.lcssa.i
  store i32 %add33, ptr %xdp_tx_in_flight, align 4
  %inc34 = add i32 %xdp_tx_frm_cnt.0286, 1
  %295 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %296)
  %cmp36.not283 = icmp eq i32 %44, %296
  br i1 %cmp36.not283, label %if.else.cleanup_crit_edge, label %if.else.while.body38_crit_edge

if.else.while.body38_crit_edge:                   ; preds = %if.else
  br label %while.body38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body38:                                     ; preds = %enetc_bdr_idx_inc.exit.while.body38_crit_edge, %if.else.while.body38_crit_edge
  %orig_i.0284 = phi i32 [ %orig_i.1, %enetc_bdr_idx_inc.exit.while.body38_crit_edge ], [ %44, %if.else.while.body38_crit_edge ]
  %297 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %18, align 32
  %page = getelementptr %struct.enetc_rx_swbd, ptr %298, i32 %orig_i.0284, i32 1
  %299 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr null, ptr %page, align 4
  %inc.i232 = add i32 %orig_i.0284, 1
  %300 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i232, i32 %301)
  %cmp.i234 = icmp eq i32 %inc.i232, %301
  br i1 %cmp.i234, label %if.then.i235, label %while.body38.enetc_bdr_idx_inc.exit_crit_edge, !prof !101

while.body38.enetc_bdr_idx_inc.exit_crit_edge:    ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

if.then.i235:                                     ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

enetc_bdr_idx_inc.exit:                           ; preds = %if.then.i235, %while.body38.enetc_bdr_idx_inc.exit_crit_edge
  %orig_i.1 = phi i32 [ 0, %if.then.i235 ], [ %inc.i232, %while.body38.enetc_bdr_idx_inc.exit_crit_edge ]
  %302 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %i, align 4
  %cmp36.not = icmp eq i32 %orig_i.1, %303
  br i1 %cmp36.not, label %enetc_bdr_idx_inc.exit.cleanup_crit_edge, label %enetc_bdr_idx_inc.exit.while.body38_crit_edge

enetc_bdr_idx_inc.exit.while.body38_crit_edge:    ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body38

enetc_bdr_idx_inc.exit.cleanup_crit_edge:         ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb41:                                          ; preds = %bpf_prog_run_xdp.exit
  %304 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cleaned_cnt, align 4
  %sub = sub i32 %305, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp42.not = icmp eq i32 %sub, 1
  %306 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %i, align 4
  br i1 %cmp42.not, label %while.cond54.preheader, label %if.then50, !prof !95

while.cond54.preheader:                           ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %307)
  %cmp55.not281 = icmp eq i32 %44, %307
  br i1 %cmp55.not281, label %while.cond54.preheader.while.end59_crit_edge, label %while.cond54.preheader.while.body57_crit_edge

while.cond54.preheader.while.body57_crit_edge:    ; preds = %while.cond54.preheader
  br label %while.body57

while.cond54.preheader.while.end59_crit_edge:     ; preds = %while.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end59

if.then50:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @enetc_xdp_drop(ptr noundef %rx_ring, i32 noundef %44, i32 noundef %307)
  %308 = ptrtoint ptr %xdp_redirect_sg to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %xdp_redirect_sg, align 32
  %inc52 = add i32 %309, 1
  store i32 %inc52, ptr %xdp_redirect_sg, align 32
  br label %cleanup

while.body57:                                     ; preds = %enetc_bdr_idx_inc.exit242.while.body57_crit_edge, %while.cond54.preheader.while.body57_crit_edge
  %orig_i.2282 = phi i32 [ %orig_i.3, %enetc_bdr_idx_inc.exit242.while.body57_crit_edge ], [ %44, %while.cond54.preheader.while.body57_crit_edge ]
  %310 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %18, align 32
  %arrayidx58 = getelementptr %struct.enetc_rx_swbd, ptr %311, i32 %orig_i.2282
  call fastcc void @enetc_flip_rx_buff(ptr noundef %rx_ring, ptr noundef %arrayidx58)
  %inc.i237 = add i32 %orig_i.2282, 1
  %312 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i237, i32 %313)
  %cmp.i239 = icmp eq i32 %inc.i237, %313
  br i1 %cmp.i239, label %if.then.i240, label %while.body57.enetc_bdr_idx_inc.exit242_crit_edge, !prof !101

while.body57.enetc_bdr_idx_inc.exit242_crit_edge: ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit242

if.then.i240:                                     ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit242

enetc_bdr_idx_inc.exit242:                        ; preds = %if.then.i240, %while.body57.enetc_bdr_idx_inc.exit242_crit_edge
  %orig_i.3 = phi i32 [ 0, %if.then.i240 ], [ %inc.i237, %while.body57.enetc_bdr_idx_inc.exit242_crit_edge ]
  %314 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %i, align 4
  %cmp55.not = icmp eq i32 %orig_i.3, %315
  br i1 %cmp55.not, label %enetc_bdr_idx_inc.exit242.while.end59_crit_edge, label %enetc_bdr_idx_inc.exit242.while.body57_crit_edge

enetc_bdr_idx_inc.exit242.while.body57_crit_edge: ; preds = %enetc_bdr_idx_inc.exit242
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body57

enetc_bdr_idx_inc.exit242.while.end59_crit_edge:  ; preds = %enetc_bdr_idx_inc.exit242
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end59

while.end59:                                      ; preds = %enetc_bdr_idx_inc.exit242.while.end59_crit_edge, %while.cond54.preheader.while.end59_crit_edge
  %316 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ndev, align 4
  %call61 = call i32 @xdp_do_redirect(ptr noundef %317, ptr noundef nonnull %xdp_buff, ptr noundef %prog) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else70, label %if.then69, !prof !95

if.then69:                                        ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #15
  %318 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %i, align 4
  call fastcc void @enetc_xdp_free(ptr noundef %rx_ring, i32 noundef %44, i32 noundef %319)
  br label %cleanup

if.else70:                                        ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #15
  %inc71 = add i32 %xdp_redirect_frm_cnt.0288, 1
  %320 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %xdp_redirect, align 8
  %inc73 = add i32 %321, 1
  store i32 %inc73, ptr %xdp_redirect, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %sw.bb12.cleanup.thread_crit_edge, %enetc_wr_reg_hot.exit.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp_buff) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxbd) #13
  br label %out

cleanup:                                          ; preds = %if.else70, %if.then69, %if.then50, %enetc_bdr_idx_inc.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %enetc_xdp_drop.exit231, %if.end24, %enetc_xdp_drop.exit
  %xdp_tx_frm_cnt.1 = phi i32 [ %xdp_tx_frm_cnt.0286, %enetc_xdp_drop.exit ], [ %xdp_tx_frm_cnt.0286, %if.then50 ], [ %xdp_tx_frm_cnt.0286, %if.then69 ], [ %xdp_tx_frm_cnt.0286, %if.else70 ], [ %xdp_tx_frm_cnt.0286, %enetc_xdp_drop.exit231 ], [ %xdp_tx_frm_cnt.0286, %if.end24 ], [ %inc34, %if.else.cleanup_crit_edge ], [ %inc34, %enetc_bdr_idx_inc.exit.cleanup_crit_edge ]
  %xdp_redirect_frm_cnt.1 = phi i32 [ %xdp_redirect_frm_cnt.0288, %enetc_xdp_drop.exit ], [ %xdp_redirect_frm_cnt.0288, %if.then50 ], [ %xdp_redirect_frm_cnt.0288, %if.then69 ], [ %inc71, %if.else70 ], [ %xdp_redirect_frm_cnt.0288, %enetc_xdp_drop.exit231 ], [ %xdp_redirect_frm_cnt.0288, %if.end24 ], [ %xdp_redirect_frm_cnt.0288, %if.else.cleanup_crit_edge ], [ %xdp_redirect_frm_cnt.0288, %enetc_bdr_idx_inc.exit.cleanup_crit_edge ]
  %tx_ring.1 = phi ptr [ %tx_ring.0293, %enetc_xdp_drop.exit ], [ %tx_ring.0293, %if.then50 ], [ %tx_ring.0293, %if.then69 ], [ %tx_ring.0293, %if.else70 ], [ %240, %enetc_xdp_drop.exit231 ], [ %tx_ring.0293, %if.end24 ], [ %240, %if.else.cleanup_crit_edge ], [ %240, %enetc_bdr_idx_inc.exit.cleanup_crit_edge ]
  %inc75 = add nuw nsw i32 %rx_frm_cnt.0290, 1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp_buff) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxbd) #13
  %exitcond.not = icmp eq i32 %inc75, %work_limit
  br i1 %exitcond.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge, !prof !101

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread, %enetc_bd_unused.exit.out_crit_edge
  %xdp_tx_frm_cnt.0278 = phi i32 [ %xdp_tx_frm_cnt.0286, %cleanup.thread ], [ 0, %enetc_bd_unused.exit.out_crit_edge ], [ %xdp_tx_frm_cnt.1, %cleanup.out_crit_edge ]
  %xdp_redirect_frm_cnt.0276 = phi i32 [ %xdp_redirect_frm_cnt.0288, %cleanup.thread ], [ 0, %enetc_bd_unused.exit.out_crit_edge ], [ %xdp_redirect_frm_cnt.1, %cleanup.out_crit_edge ]
  %rx_frm_cnt.0274 = phi i32 [ %rx_frm_cnt.0290, %cleanup.thread ], [ 0, %enetc_bd_unused.exit.out_crit_edge ], [ %work_limit, %cleanup.out_crit_edge ]
  %tx_ring.0272 = phi ptr [ %tx_ring.0293, %cleanup.thread ], [ inttoptr (i32 -1 to ptr), %enetc_bd_unused.exit.out_crit_edge ], [ %tx_ring.1, %cleanup.out_crit_edge ]
  %322 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %i, align 4
  %324 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %next_to_clean.i, align 4
  %stats86 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14
  %325 = ptrtoint ptr %stats86 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %stats86, align 128
  %add87 = add i32 %326, %rx_frm_cnt.0274
  store i32 %add87, ptr %stats86, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xdp_redirect_frm_cnt.0276)
  %tobool90.not = icmp eq i32 %xdp_redirect_frm_cnt.0276, 0
  br i1 %tobool90.not, label %out.if.end92_crit_edge, label %if.then91

out.if.end92_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then91:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_do_flush() #13
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %out.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xdp_tx_frm_cnt.0278)
  %tobool93.not = icmp eq i32 %xdp_tx_frm_cnt.0278, 0
  br i1 %tobool93.not, label %if.end92.if.end95_crit_edge, label %if.then94

if.end92.if.end95_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then94:                                        ; preds = %if.end92
  %327 = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring.0272, i32 0, i32 3
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 4
  %next_to_use.i243 = getelementptr inbounds %struct.enetc_bdr, ptr %tx_ring.0272, i32 0, i32 6
  %330 = ptrtoint ptr %next_to_use.i243 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %next_to_use.i243, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %332 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool.not.i.i244 = icmp eq i32 %332, 0
  br i1 %tobool.not.i.i244, label %if.then94.enetc_update_tx_ring_tail.exit_crit_edge, label %land.rhs.i.i

if.then94.enetc_update_tx_ring_tail.exit_crit_edge: ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit

land.rhs.i.i:                                     ; preds = %if.then94
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.enetc_update_tx_ring_tail.exit_crit_edge, !prof !101

land.rhs.i.i.enetc_update_tx_ring_tail.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_update_tx_ring_tail.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %enetc_update_tx_ring_tail.exit

enetc_update_tx_ring_tail.exit:                   ; preds = %do.end.i.i, %land.rhs.i.i.enetc_update_tx_ring_tail.exit_crit_edge, %if.then94.enetc_update_tx_ring_tail.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !103
  call void @arm_heavy_mb() #13
  %333 = call i32 @llvm.bswap.i32(i32 %331) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %333) #13, !srcloc !104
  br label %if.end95

if.end95:                                         ; preds = %enetc_update_tx_ring_tail.exit, %if.end92.if.end95_crit_edge
  %334 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cleaned_cnt, align 4
  %xdp_tx_in_flight97 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 13, i32 2
  %336 = ptrtoint ptr %xdp_tx_in_flight97 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %xdp_tx_in_flight97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %335, i32 %337)
  %cmp98 = icmp sgt i32 %335, %337
  br i1 %cmp98, label %if.then100, label %if.end95.cleanup107_crit_edge

if.end95.cleanup107_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup107

if.then100:                                       ; preds = %if.end95
  %338 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %next_to_clean.i, align 4
  %340 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %339, i32 %341)
  %cmp.i247 = icmp sgt i32 %339, %341
  br i1 %cmp.i247, label %if.then.i249, label %if.end.i253

if.then.i249:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  %342 = xor i32 %341, -1
  %sub3.i248 = add i32 %339, %342
  br label %enetc_bd_unused.exit255

if.end.i253:                                      ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  %bd_count.i250 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %343 = ptrtoint ptr %bd_count.i250 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %bd_count.i250, align 4
  %345 = xor i32 %341, -1
  %add.i251 = add i32 %339, %345
  %sub7.i252 = add i32 %add.i251, %344
  br label %enetc_bd_unused.exit255

enetc_bd_unused.exit255:                          ; preds = %if.end.i253, %if.then.i249
  %retval.0.i254 = phi i32 [ %sub3.i248, %if.then.i249 ], [ %sub7.i252, %if.end.i253 ]
  %sub104 = sub i32 %retval.0.i254, %337
  %call105 = call fastcc i32 @enetc_refill_rx_ring(ptr noundef %rx_ring, i32 noundef %sub104)
  br label %cleanup107

cleanup107:                                       ; preds = %enetc_bd_unused.exit255, %if.end95.cleanup107_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cleaned_cnt) #13
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %xdp_tx_arr) #13
  ret i32 %rx_frm_cnt.0274
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @enetc_check_bd_errors_and_consume(ptr nocapture noundef %rx_ring, i32 noundef %bd_status, ptr nocapture noundef %rxbd, ptr nocapture noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %bd_status, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !95

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 32
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.enetc_rx_swbd, ptr %2, i32 %4
  tail call fastcc void @enetc_put_rx_buff(ptr noundef %rx_ring, ptr noundef %arrayidx)
  %5 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rxbd, align 4
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  %ext_en.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 17
  %9 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 1, i32 2
  %spec.select.i = getelementptr %union.enetc_rx_bd, ptr %6, i32 %spec.select.v.i
  %inc.i = add i32 %8, 1
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %11 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %12)
  %cmp.i = icmp eq i32 %inc.i, %12
  br i1 %cmp.i, label %if.then4.i, label %if.end.enetc_rxbd_next.exit_crit_edge, !prof !101

if.end.enetc_rxbd_next.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  %13 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_base.i, align 8
  br label %enetc_rxbd_next.exit

enetc_rxbd_next.exit:                             ; preds = %if.then4.i, %if.end.enetc_rxbd_next.exit_crit_edge
  %new_rxbd.1.i = phi ptr [ %14, %if.then4.i ], [ %spec.select.i, %if.end.enetc_rxbd_next.exit_crit_edge ]
  %new_index.0.i = phi i32 [ 0, %if.then4.i ], [ %inc.i, %if.end.enetc_rxbd_next.exit_crit_edge ]
  %15 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %new_rxbd.1.i, ptr %rxbd, align 4
  %16 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %new_index.0.i, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bd_status)
  %tobool5.not38 = icmp sgt i32 %bd_status, -1
  br i1 %tobool5.not38, label %while.body.lr.ph, label %enetc_rxbd_next.exit.while.end_crit_edge

enetc_rxbd_next.exit.while.end_crit_edge:         ; preds = %enetc_rxbd_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %enetc_rxbd_next.exit
  %bd_base.i32 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %enetc_rxbd_next.exit36.while.body_crit_edge, %while.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %17 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxbd, align 4
  %19 = getelementptr inbounds %struct.anon.201, ptr %18, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 32
  %24 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr %struct.enetc_rx_swbd, ptr %23, i32 %25
  tail call fastcc void @enetc_put_rx_buff(ptr noundef %rx_ring, ptr noundef %arrayidx8)
  %26 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxbd, align 4
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  %30 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i26 = icmp eq i8 %31, 0
  %spec.select.v.i27 = select i1 %tobool.not.i26, i32 1, i32 2
  %spec.select.i28 = getelementptr %union.enetc_rx_bd, ptr %27, i32 %spec.select.v.i27
  %inc.i29 = add i32 %29, 1
  %32 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i29, i32 %33)
  %cmp.i31 = icmp eq i32 %inc.i29, %33
  br i1 %cmp.i31, label %if.then4.i33, label %while.body.enetc_rxbd_next.exit36_crit_edge, !prof !101

while.body.enetc_rxbd_next.exit36_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit36

if.then4.i33:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %bd_base.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_base.i32, align 8
  br label %enetc_rxbd_next.exit36

enetc_rxbd_next.exit36:                           ; preds = %if.then4.i33, %while.body.enetc_rxbd_next.exit36_crit_edge
  %new_rxbd.1.i34 = phi ptr [ %35, %if.then4.i33 ], [ %spec.select.i28, %while.body.enetc_rxbd_next.exit36_crit_edge ]
  %new_index.0.i35 = phi i32 [ 0, %if.then4.i33 ], [ %inc.i29, %while.body.enetc_rxbd_next.exit36_crit_edge ]
  %36 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %new_rxbd.1.i34, ptr %rxbd, align 4
  %37 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_index.0.i35, ptr %i, align 4
  %.mask = and i32 %21, 128
  %tobool5.not = icmp eq i32 %.mask, 0
  br i1 %tobool5.not, label %enetc_rxbd_next.exit36.while.body_crit_edge, label %enetc_rxbd_next.exit36.while.end_crit_edge

enetc_rxbd_next.exit36.while.end_crit_edge:       ; preds = %enetc_rxbd_next.exit36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

enetc_rxbd_next.exit36.while.body_crit_edge:      ; preds = %enetc_rxbd_next.exit36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %enetc_rxbd_next.exit36.while.end_crit_edge, %enetc_rxbd_next.exit.while.end_crit_edge
  %ndev = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 1
  %38 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36, i32 6
  %40 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %42 = load ptr, ptr %ndev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  %43 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_errors, align 8
  %inc11 = add i32 %44, 1
  store i32 %inc11, ptr %rx_errors, align 8
  br label %return

return:                                           ; preds = %while.end, %entry.return_crit_edge
  %45 = xor i1 %tobool.not, true
  ret i1 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !95

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !135
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !95

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 51, ptr noundef nonnull @.str.37) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !85) #13
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
define internal fastcc void @enetc_xdp_drop(ptr nocapture noundef %rx_ring, i32 noundef %rx_ring_first, i32 noundef %rx_ring_last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_ring_first, i32 %rx_ring_last)
  %cmp.not5 = icmp eq i32 %rx_ring_first, %rx_ring_last
  br i1 %cmp.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %buffer_offset.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %1 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 9
  %bd_count.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %enetc_bdr_idx_inc.exit.while.body_crit_edge, %while.body.lr.ph
  %rx_ring_first.addr.06 = phi i32 [ %rx_ring_first, %while.body.lr.ph ], [ %rx_ring_first.addr.1, %enetc_bdr_idx_inc.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 32
  %arrayidx = getelementptr %struct.enetc_rx_swbd, ptr %3, i32 %rx_ring_first.addr.06
  %4 = ptrtoint ptr %buffer_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_offset.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %1, align 4
  %8 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %9)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, %9
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %while.body.enetc_put_rx_buff.exit_crit_edge, !prof !101

while.body.enetc_put_rx_buff.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_put_rx_buff.exit

if.then.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  br label %enetc_put_rx_buff.exit

enetc_put_rx_buff.exit:                           ; preds = %if.then.i.i.i, %while.body.enetc_put_rx_buff.exit_crit_edge
  %sub.i = sub i32 2048, %5
  %arrayidx.i.i = getelementptr %struct.enetc_rx_swbd, ptr %3, i32 %7
  %11 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %arrayidx, i32 20)
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring, align 128
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %page_offset.i = getelementptr %struct.enetc_rx_swbd, ptr %3, i32 %rx_ring_first.addr.06, i32 2
  %16 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page_offset.i, align 4
  %conv.i = zext i16 %17 to i32
  %dir.i = getelementptr %struct.enetc_rx_swbd, ptr %3, i32 %rx_ring_first.addr.06, i32 3
  %18 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir.i, align 4
  %add.i.i = add i32 %15, %conv.i
  tail call void @dma_sync_single_for_device(ptr noundef %13, i32 noundef %add.i.i, i32 noundef %sub.i, i32 noundef %19) #13
  %page.i = getelementptr %struct.enetc_rx_swbd, ptr %3, i32 %rx_ring_first.addr.06, i32 1
  %20 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %page.i, align 4
  %inc.i = add i32 %rx_ring_first.addr.06, 1
  %21 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %22)
  %cmp.i = icmp eq i32 %inc.i, %22
  br i1 %cmp.i, label %if.then.i, label %enetc_put_rx_buff.exit.enetc_bdr_idx_inc.exit_crit_edge, !prof !101

enetc_put_rx_buff.exit.enetc_bdr_idx_inc.exit_crit_edge: ; preds = %enetc_put_rx_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

if.then.i:                                        ; preds = %enetc_put_rx_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

enetc_bdr_idx_inc.exit:                           ; preds = %if.then.i, %enetc_put_rx_buff.exit.enetc_bdr_idx_inc.exit_crit_edge
  %rx_ring_first.addr.1 = phi i32 [ 0, %if.then.i ], [ %inc.i, %enetc_put_rx_buff.exit.enetc_bdr_idx_inc.exit_crit_edge ]
  %cmp.not = icmp eq i32 %rx_ring_first.addr.1, %rx_ring_last
  br i1 %cmp.not, label %enetc_bdr_idx_inc.exit.while.end_crit_edge, label %enetc_bdr_idx_inc.exit.while.body_crit_edge

enetc_bdr_idx_inc.exit.while.body_crit_edge:      ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

enetc_bdr_idx_inc.exit.while.end_crit_edge:       ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %enetc_bdr_idx_inc.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %xdp_drops = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 3
  %23 = ptrtoint ptr %xdp_drops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xdp_drops, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %xdp_drops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @enetc_build_skb(ptr nocapture noundef %rx_ring, i32 noundef %bd_status, ptr nocapture noundef %rxbd, ptr nocapture noundef %i, ptr nocapture noundef %cleaned_cnt, i32 noundef %buffer_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxbd, align 4
  %buf_len = getelementptr inbounds %struct.anon.201, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %buf_len, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 4
  %7 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 32
  %arrayidx.i.i = getelementptr %struct.enetc_rx_swbd, ptr %9, i32 %6
  %10 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring, align 128
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %page_offset.i.i = getelementptr %struct.enetc_rx_swbd, ptr %9, i32 %6, i32 2
  %14 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page_offset.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %conv1.i.i = zext i16 %4 to i32
  %dir.i.i = getelementptr %struct.enetc_rx_swbd, ptr %9, i32 %6, i32 3
  %16 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir.i.i, align 4
  %add.i.i.i = add i32 %13, %conv.i.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %add.i.i.i, i32 noundef %conv1.i.i, i32 noundef %17) #13
  %page.i = getelementptr %struct.enetc_rx_swbd, ptr %9, i32 %6, i32 1
  %18 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page.i, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %19) #13
  %20 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %page_offset.i.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %conv.i
  %buffer_offset.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %22 = ptrtoint ptr %buffer_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_offset.i, align 4
  %idx.neg.i = sub i32 0, %23
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %call3.i = tail call ptr @build_skb(ptr noundef %add.ptr2.i, i32 noundef 2048) #13
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %enetc_map_rx_buff_to_skb.exit.thread, label %if.end.i, !prof !101

enetc_map_rx_buff_to_skb.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_alloc_errs.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 2
  %24 = ptrtoint ptr %rx_alloc_errs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_alloc_errs.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %rx_alloc_errs.i, align 8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %26 = ptrtoint ptr %buffer_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_offset.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %27
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %31, i32 %27
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !95

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

if.end:                                           ; preds = %if.end.i
  %add.ptr.i23.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv1.i.i
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i23.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 6
  %35 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %36, %conv1.i.i
  store i32 %add.i.i, ptr %len9.i.i, align 4
  tail call fastcc void @enetc_flip_rx_buff(ptr noundef %rx_ring, ptr noundef %arrayidx.i.i) #13
  %37 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rxbd, align 4
  %ndev.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 1
  %39 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features.i, align 16
  %and.i = and i64 %42, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i33 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i33, label %if.end.if.end.i36_crit_edge, label %if.then.i35

if.end.if.end.i36_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i36

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %38, align 8
  %45 = xor i16 %44, -1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #13
  %conv.i.i34 = zext i16 %46 to i32
  %47 = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i.i34, ptr %47, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i35, %if.end.if.end.i36_crit_edge
  %50 = getelementptr inbounds %struct.anon.201, ptr %38, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #13
  %conv5.i = zext i16 %53 to i32
  %and6.i = and i32 %conv5.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i36.if.end23.i_crit_edge, label %if.then8.i

if.end.i36.if.end23.i_crit_edge:                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i36
  %and11.i = and i32 %conv5.i, 3
  %54 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and11.i, label %if.then8.unreachabledefault.i [
    i32 0, label %if.then8.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb16.i
  ]

if.then8.i.sw.epilog.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %si.i = getelementptr i8, ptr %40, i32 2312
  %55 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %si.i, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %58, i32 528
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #13, !srcloc !105
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %conv15.i = trunc i32 %60 to i16
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %si17.i = getelementptr i8, ptr %40, i32 2312
  %61 = ptrtoint ptr %si17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %si17.i, align 4
  %port19.i = getelementptr inbounds %struct.enetc_si, ptr %62, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %port19.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %64, i32 532
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #13
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #13, !srcloc !105
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #13
  %conv22.i = trunc i32 %66 to i16
  br label %sw.epilog.i

if.then8.unreachabledefault.i:                    ; preds = %if.then8.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.bb13.i, %sw.bb12.i, %if.then8.i.sw.epilog.i_crit_edge
  %tpid.0.i = phi i16 [ %conv22.i, %sw.bb16.i ], [ %conv15.i, %sw.bb13.i ], [ -30552, %sw.bb12.i ], [ -32512, %if.then8.i.sw.epilog.i_crit_edge ]
  %vlan_opt.i = getelementptr inbounds %struct.anon.201, ptr %38, i32 0, i32 4
  %67 = ptrtoint ptr %vlan_opt.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan_opt.i, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #13
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 9
  %70 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %tpid.0.i, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 10
  %71 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %69, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 3
  %72 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %sw.epilog.i, %if.end.i36.if.end23.i_crit_edge
  %active_offloads.i = getelementptr i8, ptr %40, i32 2340
  %73 = ptrtoint ptr %active_offloads.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %active_offloads.i, align 4
  %and24.i = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.enetc_get_offloads.exit_crit_edge, label %if.then26.i

if.end23.i.enetc_get_offloads.exit_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_get_offloads.exit

if.then26.i:                                      ; preds = %if.end23.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 17
  %75 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %50, align 4
  %79 = and i16 %78, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i.i = icmp eq i16 %79, 0
  br i1 %tobool.not.i.i, label %if.then26.i.enetc_get_offloads.exit_crit_edge, label %if.then.i.i

if.then26.i.enetc_get_offloads.exit_crit_edge:    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_get_offloads.exit

if.then.i.i:                                      ; preds = %if.then26.i
  %80 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ndev.i, align 4
  %si.i.i = getelementptr i8, ptr %81, i32 2312
  %82 = ptrtoint ptr %si.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %si.i.i, align 4
  %hw2.i.i = getelementptr inbounds %struct.enetc_si, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %hw2.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw2.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %85, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %86 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge, label %land.rhs.i.i.i

if.then.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge, !prof !101

land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit.i.i

enetc_rd_reg_hot.exit.i.i:                        ; preds = %do.end.i.i.i, %land.rhs.i.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge, %if.then.i.i.enetc_rd_reg_hot.exit.i.i_crit_edge
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #13, !srcloc !105
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %89 = ptrtoint ptr %hw2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw2.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %90, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %91 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i21.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i21.i.i, label %enetc_rd_reg_hot.exit.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge, label %land.rhs.i24.i.i

enetc_rd_reg_hot.exit.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge: ; preds = %enetc_rd_reg_hot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit26.i.i

land.rhs.i24.i.i:                                 ; preds = %enetc_rd_reg_hot.exit.i.i
  %call.i.i22.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @enetc_mdio_lock, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i.i)
  %cmp.not.i23.i.i = icmp eq i32 %call.i.i22.i.i, 0
  br i1 %cmp.not.i23.i.i, label %do.end.i25.i.i, label %land.rhs.i24.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge, !prof !101

land.rhs.i24.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge: ; preds = %land.rhs.i24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rd_reg_hot.exit26.i.i

do.end.i25.i.i:                                   ; preds = %land.rhs.i24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %enetc_rd_reg_hot.exit26.i.i

enetc_rd_reg_hot.exit26.i.i:                      ; preds = %do.end.i25.i.i, %land.rhs.i24.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge, %enetc_rd_reg_hot.exit.i.i.enetc_rd_reg_hot.exit26.i.i_crit_edge
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #13, !srcloc !105
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !106
  %incdec.ptr.i.i.i = getelementptr %union.enetc_rx_bd, ptr %38, i32 1
  %94 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i.i.i, align 8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %96)
  %cmp.not.i.i = icmp ule i32 %88, %96
  %sub.i.i = sext i1 %cmp.not.i.i to i32
  %spec.select.i.i = add i32 %93, %sub.i.i
  %conv11.i.i = zext i32 %spec.select.i.i to i64
  %shl.i.i = shl nuw i64 %conv11.i.i, 32
  %conv12.i.i = zext i32 %96 to i64
  %or.i.i = or i64 %shl.i.i, %conv12.i.i
  %97 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %or.i.i, ptr %hwtstamps.i.i.i, align 8
  br label %enetc_get_offloads.exit

enetc_get_offloads.exit:                          ; preds = %enetc_rd_reg_hot.exit26.i.i, %if.then26.i.enetc_get_offloads.exit_crit_edge, %if.end23.i.enetc_get_offloads.exit_crit_edge
  %98 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cleaned_cnt, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr %cleaned_cnt, align 4
  %100 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rxbd, align 4
  %102 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i, align 4
  %ext_en.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 17
  %104 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i38 = icmp eq i8 %105, 0
  %spec.select.v.i = select i1 %tobool.not.i38, i32 1, i32 2
  %spec.select.i = getelementptr %union.enetc_rx_bd, ptr %101, i32 %spec.select.v.i
  %inc.i39 = add i32 %103, 1
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %106 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i39, i32 %107)
  %cmp.i = icmp eq i32 %inc.i39, %107
  br i1 %cmp.i, label %if.then4.i, label %enetc_get_offloads.exit.enetc_rxbd_next.exit_crit_edge, !prof !101

enetc_get_offloads.exit.enetc_rxbd_next.exit_crit_edge: ; preds = %enetc_get_offloads.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit

if.then4.i:                                       ; preds = %enetc_get_offloads.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bd_base.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  %108 = ptrtoint ptr %bd_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bd_base.i, align 8
  br label %enetc_rxbd_next.exit

enetc_rxbd_next.exit:                             ; preds = %if.then4.i, %enetc_get_offloads.exit.enetc_rxbd_next.exit_crit_edge
  %new_rxbd.1.i = phi ptr [ %109, %if.then4.i ], [ %spec.select.i, %enetc_get_offloads.exit.enetc_rxbd_next.exit_crit_edge ]
  %new_index.0.i = phi i32 [ 0, %if.then4.i ], [ %inc.i39, %enetc_get_offloads.exit.enetc_rxbd_next.exit_crit_edge ]
  %110 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %new_rxbd.1.i, ptr %rxbd, align 4
  %111 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %new_index.0.i, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bd_status)
  %tobool1.not61 = icmp sgt i32 %bd_status, -1
  br i1 %tobool1.not61, label %while.body.lr.ph, label %enetc_rxbd_next.exit.while.end_crit_edge

enetc_rxbd_next.exit.while.end_crit_edge:         ; preds = %enetc_rxbd_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %enetc_rxbd_next.exit
  %conv = trunc i32 %buffer_size to i16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 17
  %bd_base.i55 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %enetc_rxbd_next.exit59.while.body_crit_edge, %while.body.lr.ph
  %112 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rxbd, align 4
  %114 = getelementptr inbounds %struct.anon.201, ptr %113, i32 0, i32 5
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %.mask = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool3.not = icmp eq i32 %.mask, 0
  br i1 %tobool3.not, label %while.body.if.end6_crit_edge, label %if.then4

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !140
  %117 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rxbd, align 4
  %buf_len5 = getelementptr inbounds %struct.anon.201, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %buf_len5 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %buf_len5, align 8
  %121 = tail call i16 @llvm.bswap.i16(i16 %120)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.body.if.end6_crit_edge
  %size.0 = phi i16 [ %121, %if.then4 ], [ %conv, %while.body.if.end6_crit_edge ]
  %122 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %i, align 4
  %124 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %7, align 32
  %arrayidx.i.i40 = getelementptr %struct.enetc_rx_swbd, ptr %125, i32 %123
  %126 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_ring, align 128
  %128 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i.i40, align 4
  %page_offset.i.i41 = getelementptr %struct.enetc_rx_swbd, ptr %125, i32 %123, i32 2
  %130 = ptrtoint ptr %page_offset.i.i41 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %page_offset.i.i41, align 4
  %conv.i.i42 = zext i16 %131 to i32
  %conv1.i.i43 = zext i16 %size.0 to i32
  %dir.i.i44 = getelementptr %struct.enetc_rx_swbd, ptr %125, i32 %123, i32 3
  %132 = ptrtoint ptr %dir.i.i44 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dir.i.i44, align 4
  %add.i.i.i45 = add i32 %129, %conv.i.i42
  tail call void @dma_sync_single_for_cpu(ptr noundef %127, i32 noundef %add.i.i.i45, i32 noundef %conv1.i.i43, i32 noundef %133) #13
  %134 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %nr_frags.i, align 2
  %conv.i46 = zext i8 %137 to i32
  %page.i47 = getelementptr %struct.enetc_rx_swbd, ptr %125, i32 %123, i32 1
  %138 = ptrtoint ptr %page.i47 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %page.i47, align 4
  %140 = ptrtoint ptr %page_offset.i.i41 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %page_offset.i.i41, align 4
  %conv2.i = zext i16 %141 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call3.i, i32 noundef %conv.i46, ptr noundef %139, i32 noundef %conv2.i, i32 noundef %conv1.i.i43, i32 noundef 2048) #13
  tail call fastcc void @enetc_flip_rx_buff(ptr noundef %rx_ring, ptr noundef %arrayidx.i.i40) #13
  %142 = ptrtoint ptr %cleaned_cnt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cleaned_cnt, align 4
  %inc7 = add i32 %143, 1
  store i32 %inc7, ptr %cleaned_cnt, align 4
  %144 = ptrtoint ptr %rxbd to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rxbd, align 4
  %146 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %i, align 4
  %148 = ptrtoint ptr %ext_en.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ext_en.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i49 = icmp eq i8 %149, 0
  %spec.select.v.i50 = select i1 %tobool.not.i49, i32 1, i32 2
  %spec.select.i51 = getelementptr %union.enetc_rx_bd, ptr %145, i32 %spec.select.v.i50
  %inc.i52 = add i32 %147, 1
  %150 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i52, i32 %151)
  %cmp.i54 = icmp eq i32 %inc.i52, %151
  br i1 %cmp.i54, label %if.then4.i56, label %if.end6.enetc_rxbd_next.exit59_crit_edge, !prof !101

if.end6.enetc_rxbd_next.exit59_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_rxbd_next.exit59

if.then4.i56:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %bd_base.i55 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bd_base.i55, align 8
  br label %enetc_rxbd_next.exit59

enetc_rxbd_next.exit59:                           ; preds = %if.then4.i56, %if.end6.enetc_rxbd_next.exit59_crit_edge
  %new_rxbd.1.i57 = phi ptr [ %153, %if.then4.i56 ], [ %spec.select.i51, %if.end6.enetc_rxbd_next.exit59_crit_edge ]
  %new_index.0.i58 = phi i32 [ 0, %if.then4.i56 ], [ %inc.i52, %if.end6.enetc_rxbd_next.exit59_crit_edge ]
  %154 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %new_rxbd.1.i57, ptr %rxbd, align 4
  %155 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %new_index.0.i58, ptr %i, align 4
  br i1 %tobool3.not, label %enetc_rxbd_next.exit59.while.body_crit_edge, label %enetc_rxbd_next.exit59.while.end_crit_edge

enetc_rxbd_next.exit59.while.end_crit_edge:       ; preds = %enetc_rxbd_next.exit59
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

enetc_rxbd_next.exit59.while.body_crit_edge:      ; preds = %enetc_rxbd_next.exit59
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %enetc_rxbd_next.exit59.while.end_crit_edge, %enetc_rxbd_next.exit.while.end_crit_edge
  %index = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 4
  %156 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %index, align 16
  %add.i = add i16 %157, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 10
  %158 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %159 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ndev.i, align 4
  %call8 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call3.i, ptr noundef %160) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 18
  %161 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %call8, ptr %protocol, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %enetc_map_rx_buff_to_skb.exit.thread
  ret ptr %call3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_flip_rx_buff(ptr nocapture noundef %rx_ring, ptr nocapture noundef %rx_swbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  %and.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %enetc_page_reusable.exit, label %entry.if.else_crit_edge, !prof !141

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

enetc_page_reusable.exit:                         ; preds = %entry
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then, label %enetc_page_reusable.exit.if.else_crit_edge, !prof !95

enetc_page_reusable.exit.if.else_crit_edge:       ; preds = %enetc_page_reusable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %enetc_page_reusable.exit
  %page_offset = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 2
  %8 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page_offset, align 4
  %10 = xor i16 %9, 2048
  store i16 %10, ptr %page_offset, align 4
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #13, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@enetc_flip_rx_buff, %if.then.i)) #13
          to label %page_ref_inc.exit [label %if.then.i], !srcloc !124

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %12, i32 noundef 1) #13
  br label %page_ref_inc.exit

page_ref_inc.exit:                                ; preds = %if.then.i, %if.then
  %buffer_offset.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %14 = ptrtoint ptr %buffer_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_offset.i, align 4
  %16 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 32
  %19 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %19, align 4
  %bd_count.i.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %22 = ptrtoint ptr %bd_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bd_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %23)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, %23
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %page_ref_inc.exit.enetc_put_rx_buff.exit_crit_edge, !prof !101

page_ref_inc.exit.enetc_put_rx_buff.exit_crit_edge: ; preds = %page_ref_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_put_rx_buff.exit

if.then.i.i.i:                                    ; preds = %page_ref_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %19, align 4
  br label %enetc_put_rx_buff.exit

enetc_put_rx_buff.exit:                           ; preds = %if.then.i.i.i, %page_ref_inc.exit.enetc_put_rx_buff.exit_crit_edge
  %sub.i = sub i32 2048, %15
  %arrayidx.i.i = getelementptr %struct.enetc_rx_swbd, ptr %18, i32 %21
  %25 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %rx_swbd, i32 20)
  %26 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_ring, align 128
  %28 = ptrtoint ptr %rx_swbd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_swbd, align 4
  %30 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %page_offset, align 4
  %conv.i = zext i16 %31 to i32
  %dir.i = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 3
  %32 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dir.i, align 4
  %add.i.i = add i32 %29, %conv.i
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %add.i.i, i32 noundef %sub.i, i32 noundef %33) #13
  br label %if.end

if.else:                                          ; preds = %enetc_page_reusable.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %34 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_ring, align 128
  %36 = ptrtoint ptr %rx_swbd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_swbd, align 4
  %dir = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 3
  %38 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dir, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef 4096, i32 noundef %39, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %enetc_put_rx_buff.exit
  %40 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_xdp_free(ptr nocapture noundef %rx_ring, i32 noundef %rx_ring_first, i32 noundef %rx_ring_last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_ring_first, i32 %rx_ring_last)
  %cmp.not11 = icmp eq i32 %rx_ring_first, %rx_ring_last
  br i1 %cmp.not11, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %bd_count.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %enetc_bdr_idx_inc.exit.while.body_crit_edge, %while.body.lr.ph
  %rx_ring_first.addr.012 = phi i32 [ %rx_ring_first, %while.body.lr.ph ], [ %rx_ring_first.addr.1, %enetc_bdr_idx_inc.exit.while.body_crit_edge ]
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 32
  %page = getelementptr %struct.enetc_rx_swbd, ptr %2, i32 %rx_ring_first.addr.012, i32 1
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.enetc_rx_swbd, ptr %2, i32 %rx_ring_first.addr.012
  %5 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ring, align 128
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %dir = getelementptr %struct.enetc_rx_swbd, ptr %2, i32 %rx_ring_first.addr.012, i32 3
  %9 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dir, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef 4096, i32 noundef %10, i32 noundef 0) #13
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  tail call void @__free_pages(ptr noundef %12, i32 noundef 0) #13
  %13 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %page, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %inc.i = add i32 %rx_ring_first.addr.012, 1
  %14 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %15)
  %cmp.i = icmp eq i32 %inc.i, %15
  br i1 %cmp.i, label %if.then.i, label %if.end.enetc_bdr_idx_inc.exit_crit_edge, !prof !101

if.end.enetc_bdr_idx_inc.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_bdr_idx_inc.exit

enetc_bdr_idx_inc.exit:                           ; preds = %if.then.i, %if.end.enetc_bdr_idx_inc.exit_crit_edge
  %rx_ring_first.addr.1 = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end.enetc_bdr_idx_inc.exit_crit_edge ]
  %cmp.not = icmp eq i32 %rx_ring_first.addr.1, %rx_ring_last
  br i1 %cmp.not, label %enetc_bdr_idx_inc.exit.while.end_crit_edge, label %enetc_bdr_idx_inc.exit.while.body_crit_edge

enetc_bdr_idx_inc.exit.while.body_crit_edge:      ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

enetc_bdr_idx_inc.exit.while.end_crit_edge:       ; preds = %enetc_bdr_idx_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %enetc_bdr_idx_inc.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %xdp_redirect_failures = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 14, i32 7
  %16 = ptrtoint ptr %xdp_redirect_failures to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xdp_redirect_failures, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %xdp_redirect_failures, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_put_rx_buff(ptr nocapture noundef %rx_ring, ptr nocapture noundef %rx_swbd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_offset = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %buffer_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_offset, align 4
  %2 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 32
  %5 = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %inc.i.i = add i32 %7, 1
  store i32 %inc.i.i, ptr %5, align 4
  %bd_count.i.i = getelementptr inbounds %struct.enetc_bdr, ptr %rx_ring, i32 0, i32 5
  %8 = ptrtoint ptr %bd_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %9)
  %cmp.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.enetc_reuse_page.exit_crit_edge, !prof !101

entry.enetc_reuse_page.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %enetc_reuse_page.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  br label %enetc_reuse_page.exit

enetc_reuse_page.exit:                            ; preds = %if.then.i.i, %entry.enetc_reuse_page.exit_crit_edge
  %sub = sub i32 2048, %1
  %arrayidx.i = getelementptr %struct.enetc_rx_swbd, ptr %4, i32 %7
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr %rx_swbd, i32 20)
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring, align 128
  %14 = ptrtoint ptr %rx_swbd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_swbd, align 4
  %page_offset = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 2
  %16 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page_offset, align 4
  %conv = zext i16 %17 to i32
  %dir = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 3
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir, align 4
  %add.i = add i32 %15, %conv
  tail call void @dma_sync_single_for_device(ptr noundef %13, i32 noundef %add.i, i32 noundef %sub, i32 noundef %19) #13
  %page = getelementptr inbounds %struct.enetc_rx_swbd, ptr %rx_swbd, i32 0, i32 1
  %20 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !77, !79, !80, !81, !82, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @enetc_alloc_msix.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2801, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2895, i32 41}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2900, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @enetc_pci_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @enetc_pci_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2906, i32 3}
!15 = !{ptr @enetc_pci_probe._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @enetc_pci_probe._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2938, i32 3}
!19 = !{ptr @enetc_pci_probe._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @enetc_pci_probe._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 554, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @enetc_map_tx_tso_buffs._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @enetc_map_tx_tso_buffs._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 385, i32 29}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 167, i32 4}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 306, i32 2}
!37 = !{ptr @enetc_map_tx_buffs._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @enetc_map_tx_buffs._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_hw.h", i32 393, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2174, i32 38}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2178, i32 4}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @enetc_setup_irqs._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @enetc_setup_irqs._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2280, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @enetc_phylink_connect._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @enetc_phylink_connect._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @enetc_tx_onestep_tstamp_init.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2310, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @skb_queue_head_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2146, i32 30}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/freescale/enetc/enetc.c", i32 2457, i32 20}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/filter.h", i32 613, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
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
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2148411540, i64 2148411572, i64 2148411601, i64 2148411635, i64 2148411666, i64 2148411689}
!97 = !{i64 2148500645}
!98 = !{i8 0, i8 2}
!99 = !{i64 7820364, i64 7820403, i64 7820429, i64 7820453, i64 7820478, i64 7820504, i64 7820529, i64 7820555, i64 7820582, i64 7820608, i64 7820647, i64 7820691, i64 7820722, i64 7820747}
!100 = !{i64 7819981}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 7821334, i64 7821374, i64 7821402, i64 7821447}
!103 = !{i64 2152605903}
!104 = !{i64 5063781}
!105 = !{i64 5064199}
!106 = !{i64 2152604548}
!107 = !{i64 763562, i64 763589, i64 763611, i64 763639}
!108 = !{i64 763970, i64 763997, i64 764030, i64 764051, i64 764078, i64 764104}
!109 = !{i64 763275, i64 763302}
!110 = !{i64 2159712130}
!111 = !{i64 909450, i64 909467, i64 909491, i64 909517, i64 909535}
!112 = !{i64 2159712476}
!113 = !{!"auto-init"}
!114 = !{i64 2153960145, i64 2153960170}
!115 = !{i64 6455700}
!116 = !{i64 6455897}
!117 = !{i64 2153941130}
!118 = !{i64 2153960826, i64 2153960851}
!119 = !{i64 2159660760}
!120 = !{i64 2148499532}
!121 = !{i64 2148409927, i64 2148409959, i64 2148409988, i64 2148410022, i64 2148410053, i64 2148410076}
!122 = !{i64 2159666189}
!123 = !{i64 2159665450}
!124 = !{i64 2148959947, i64 2148959952, i64 2148959965, i64 2148960009, i64 2148960043, i64 2148960064}
!125 = !{i64 806382, i64 806443}
!126 = !{i64 2150007417}
!127 = !{i64 2150012349}
!128 = !{i64 2150034061}
!129 = !{i64 2150038953}
!130 = !{i64 2150115410}
!131 = !{i64 2150115735}
!132 = !{i64 809114}
!133 = !{i64 809399}
!134 = !{i64 2159659491}
!135 = !{i64 2158004075}
!136 = !{i64 2158004290}
!137 = !{i64 2150281116}
!138 = !{i64 2150282152}
!139 = !{i64 2155474140, i64 2155474628, i64 2155474177, i64 2155474233, i64 2155474267, i64 2155474291, i64 2155474332, i64 2155474353, i64 2155474381, i64 2155474415}
!140 = !{i64 2159660224}
!141 = !{!"branch_weights", i32 2146410443, i32 1073205}
!142 = !{i64 2148402682, i64 2148402708, i64 2148402737, i64 2148402771, i64 2148402802, i64 2148402825}
