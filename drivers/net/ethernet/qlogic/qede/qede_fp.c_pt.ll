; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_fp.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_fp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.175 }
%struct.atomic_t = type { i32 }
%union.anon.175 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.cpumask = type { [1 x i32] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.214, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.214 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.qede_rx_queue = type { ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i16, i16, i32, i32, ptr, %struct.qed_chain, [124 x i8], %struct.qed_chain, [64 x %struct.qede_agg_info], i64, i64, i64, i64, i64, ptr, [116 x i8], %struct.xdp_rxq_info }
%struct.qed_chain = type { ptr, ptr, %struct.anon.176, %union.anon.178, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.179, ptr, i32, i32, i32, i8 }
%struct.anon.176 = type { ptr, %union.anon.177 }
%union.anon.177 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.178 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.179 = type { ptr, i32, i32 }
%struct.qede_agg_info = type { %struct.sw_rx_data, ptr, i16, i8, i8, i8, i8 }
%struct.sw_rx_data = type { ptr, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.regpair = type { i32, i32 }
%struct.qed_chain_next = type { %struct.regpair, ptr }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.qede_tx_queue = type { i8, i8, i16, i16, i16, i64, i64, i64, ptr, ptr, ptr, %union.db_prod, %struct.spinlock, i32, %union.anon.212, %struct.qed_chain, ptr, i16, i16 }
%union.db_prod = type { i32 }
%union.anon.212 = type { ptr }
%struct.sw_tx_bd = type { ptr, i8 }
%struct.qede_dev = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i64, %struct.qed_dev_eth_info, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, %struct.qed_int_info, %struct.mutex, i32, i16, i32, %struct.qede_stats, i32, [128 x i16], [10 x i32], i8, i16, i16, i8, %struct.list_head, i16, i16, i8, %struct.delayed_work, i32, i16, i16, ptr, i8, %struct.qede_rdma_dev, ptr, i32, i32, %struct.qede_dump_info }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qede_stats = type { %struct.qede_stats_common, %union.anon.213 }
%struct.qede_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.213 = type { %struct.qede_stats_bb }
%struct.qede_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qede_rdma_dev = type { ptr, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.completion, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qede_dump_info = type { i32, i8, [4 x i32] }
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
%struct.eth_tx_1st_bd = type { %struct.regpair, i16, %struct.eth_tx_data_1st_bd }
%struct.eth_tx_data_1st_bd = type { i16, i8, %struct.eth_tx_1st_bd_flags, i16 }
%struct.eth_tx_1st_bd_flags = type { i8 }
%struct.eth_tx_bd = type { %struct.regpair, i16, %struct.eth_tx_data_bd }
%struct.eth_tx_data_bd = type { i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.210, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.210 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.qed_chain_pbl_u16 = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.180, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.205, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.180 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.205 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qede_fastpath = type { ptr, i8, i8, i8, %struct.napi_struct, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.173, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.173 = type { %struct.atomic_t }
%struct.sw_tx_xdp = type { ptr, ptr, i32 }
%struct.eth_db_data = type { i8, i8, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.status_block = type { [12 x i16], i32, i32 }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eth_fast_path_rx_tpa_start_cqe = type { i8, i8, i16, %struct.parsing_and_err_flags, i16, i32, i16, i8, %struct.eth_tunnel_parsing_flags, i8, i8, [2 x i16], i16, i32, [3 x i8], %struct.eth_pmd_flow_flags }
%struct.parsing_and_err_flags = type { i16 }
%struct.eth_tunnel_parsing_flags = type { i8 }
%struct.eth_pmd_flow_flags = type { i8 }
%struct.eth_fast_path_rx_tpa_cont_cqe = type { i8, i8, [6 x i16], i8, i8, [6 x i16], [3 x i8], %struct.eth_pmd_flow_flags }
%struct.eth_fast_path_rx_tpa_end_cqe = type { i8, i8, i16, i8, i8, i16, i32, [4 x i16], [4 x i16], i16, i8, %struct.eth_pmd_flow_flags }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.eth_fast_path_rx_reg_cqe = type { i8, i8, i16, %struct.parsing_and_err_flags, i16, i32, i16, i8, %struct.eth_tunnel_parsing_flags, i8, i8, i16, i32, [7 x i8], %struct.eth_pmd_flow_flags }
%struct.vlan_hdr = type { i16, i16 }
%struct.eth_tx_3rd_bd = type { %struct.regpair, i16, %struct.eth_tx_data_3rd_bd }
%struct.eth_tx_data_3rd_bd = type { i16, i16, i8, i8 }
%struct.eth_tx_2nd_bd = type { %struct.regpair, i16, %struct.eth_tx_data_2nd_bd }
%struct.eth_tx_data_2nd_bd = type { i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.113 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { %struct.anon.115, [0 x %struct.sock_filter] }
%struct.anon.115 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/qlogic/qede/qede_fp.c\00", [53 x i8] zeroinitializer }, align 32
@qede_free_tx_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013[%s:%d(%s)]skb is null for txq idx=%d txq->sw_tx_cons=%d txq->sw_tx_prod=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_free_tx_pkt\00", [47 x i8] zeroinitializer }, align 32
@qede_free_tx_pkt._entry_ptr = internal global ptr @qede_free_tx_pkt._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qede_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]SKB mapping failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@qede_start_xmit._entry_ptr = internal global ptr @qede_start_xmit._entry, section ".printk_index", align 4
@qede_start_xmit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]TSO split header size is %d (%x:%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@qede_start_xmit._entry_ptr.8 = internal global ptr @qede_start_xmit._entry.6, section ".printk_index", align 4
@qede_start_xmit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[%s:%d(%s)]Unexpected non LSO skb length = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@qede_start_xmit._entry_ptr.11 = internal global ptr @qede_start_xmit._entry.9, section ".printk_index", align 4
@qede_start_xmit._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Stop queue was called\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_start_xmit._entry_ptr.14 = internal global ptr @qede_start_xmit._entry.12, section ".printk_index", align 4
@qede_start_xmit._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Wake queue was called\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_start_xmit._entry_ptr.17 = internal global ptr @qede_start_xmit._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qede_tx_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]hw_bd_cons = %d, chain_cons=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qede_tx_int\00", [20 x i8] zeroinitializer }, align 32
@qede_tx_int._entry_ptr = internal global ptr @qede_tx_int._entry, section ".printk_index", align 4
@qede_tx_int._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.23, ptr @.str, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_tx_int._entry_ptr.25 = internal global ptr @qede_tx_int._entry.24, section ".printk_index", align 4
@qede_tpa_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Failed to allocate SKB for gro\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_tpa_start\00", [17 x i8] zeroinitializer }, align 32
@qede_tpa_start._entry_ptr = internal global ptr @qede_tpa_start._entry, section ".printk_index", align 4
@qede_tpa_start._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013[%s:%d(%s)]Unlikely - got a TPA aggregation with more than one bw_ext_bd_len_list entry in the TPA start\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_tpa_start._entry_ptr.30 = internal global ptr @qede_tpa_start._entry.28, section ".printk_index", align 4
@qede_tpa_rx_build_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015[%s:%d(%s)]Failed to allocate RX buffer for tpa start\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_tpa_rx_build_skb\00", [42 x i8] zeroinitializer }, align 32
@qede_tpa_rx_build_skb._entry_ptr = internal global ptr @qede_tpa_rx_build_skb._entry, section ".printk_index", align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@qede_tpa_cont._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013[%s:%d(%s)]Strange - TPA cont with more than a single len_list entry\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qede_tpa_cont\00", [18 x i8] zeroinitializer }, align 32
@qede_tpa_cont._entry_ptr = internal global ptr @qede_tpa_cont._entry, section ".printk_index", align 4
@qede_tpa_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013[%s:%d(%s)]Strange - TPA emd with more than a single len_list entry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_tpa_end\00", [19 x i8] zeroinitializer }, align 32
@qede_tpa_end._entry_ptr = internal global ptr @qede_tpa_end._entry, section ".printk_index", align 4
@qede_tpa_end._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013[%s:%d(%s)]Strange - TPA had %02x BDs, but SKB has only %d frags\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_tpa_end._entry_ptr.39 = internal global ptr @qede_tpa_end._entry.37, section ".printk_index", align 4
@qede_tpa_end._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013[%s:%d(%s)]Strange - total packet len [cqe] is %4x but SKB has len %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_tpa_end._entry_ptr.42 = internal global ptr @qede_tpa_end._entry.40, section ".printk_index", align 4
@qede_gro_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]Error: FW GRO supports only IPv4/IPv6, not 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_gro_receive\00", [47 x i8] zeroinitializer }, align 32
@qede_gro_receive._entry_ptr = internal global ptr @qede_gro_receive._entry, section ".printk_index", align 4
@qede_rx_xdp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Failed to redirect the packet\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qede_rx_xdp\00", [20 x i8] zeroinitializer }, align 32
@qede_rx_xdp._entry_ptr = internal global ptr @qede_rx_xdp._entry, section ".printk_index", align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@qede_rx_build_jumbo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013[%s:%d(%s)]Still got %d BDs for mapping jumbo, but length became 0\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_rx_build_jumbo\00", [44 x i8] zeroinitializer }, align 32
@qede_rx_build_jumbo._entry_ptr = internal global ptr @qede_rx_build_jumbo._entry, section ".printk_index", align 4
@qede_rx_build_jumbo._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[%s:%d(%s)]Mapped all BDs of jumbo, but still have %d bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@qede_rx_build_jumbo._entry_ptr.56 = internal global ptr @qede_rx_build_jumbo._entry.54, section ".printk_index", align 4
@qede_ptp_record_rx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Timestamp recorded for non PTP packets\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_ptp_record_rx_ts\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/qlogic/qede/qede_ptp.h\00", [52 x i8] zeroinitializer }, align 32
@qede_ptp_record_rx_ts._entry_ptr = internal global ptr @qede_ptp_record_rx_ts._entry, section ".printk_index", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 17]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 64, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 88, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1531, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1623, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1648, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1723, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1735, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 4963, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 326, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 451, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 494, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 848, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 881, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 770, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 967, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 991, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 999, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1003, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 944, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1149, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 613, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 271, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 28, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1187, i32 4 }
@___asan_gen_.247 = private constant [46 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_fp.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1214, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [47 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_ptp.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 33, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 598, i32 8 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @qede_free_tx_pkt._entry, ptr @qede_free_tx_pkt._entry_ptr, ptr @qede_gro_receive._entry, ptr @qede_gro_receive._entry_ptr, ptr @qede_ptp_record_rx_ts._entry, ptr @qede_ptp_record_rx_ts._entry_ptr, ptr @qede_rx_build_jumbo._entry, ptr @qede_rx_build_jumbo._entry.54, ptr @qede_rx_build_jumbo._entry_ptr, ptr @qede_rx_build_jumbo._entry_ptr.56, ptr @qede_rx_xdp._entry, ptr @qede_rx_xdp._entry_ptr, ptr @qede_start_xmit._entry, ptr @qede_start_xmit._entry.12, ptr @qede_start_xmit._entry.15, ptr @qede_start_xmit._entry.6, ptr @qede_start_xmit._entry.9, ptr @qede_start_xmit._entry_ptr, ptr @qede_start_xmit._entry_ptr.11, ptr @qede_start_xmit._entry_ptr.14, ptr @qede_start_xmit._entry_ptr.17, ptr @qede_start_xmit._entry_ptr.8, ptr @qede_tpa_cont._entry, ptr @qede_tpa_cont._entry_ptr, ptr @qede_tpa_end._entry, ptr @qede_tpa_end._entry.37, ptr @qede_tpa_end._entry.40, ptr @qede_tpa_end._entry_ptr, ptr @qede_tpa_end._entry_ptr.39, ptr @qede_tpa_end._entry_ptr.42, ptr @qede_tpa_rx_build_skb._entry, ptr @qede_tpa_rx_build_skb._entry_ptr, ptr @qede_tpa_start._entry, ptr @qede_tpa_start._entry.28, ptr @qede_tpa_start._entry_ptr, ptr @qede_tpa_start._entry_ptr.30, ptr @qede_tx_int._entry, ptr @qede_tx_int._entry.24, ptr @qede_tx_int._entry_ptr, ptr @qede_tx_int._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_free_tx_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_xmit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_xmit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_xmit._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_xmit._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tx_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tx_int._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_start._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_rx_build_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_cont._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_end._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tpa_end._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_gro_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_rx_xdp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_rx_build_jumbo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_rx_build_jumbo._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_record_rx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_alloc_rx_buffer(ptr noundef %rxq, i1 noundef zeroext %allow_lazy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %allow_lazy, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %filled_buffers = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 6
  %0 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %filled_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp = icmp ugt i16 %1, 12
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge, !prof !129

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i16 %1, -1
  %2 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dec, ptr %filled_buffers, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end15, !prof !130

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %data_direction = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 7
  %5 = ptrtoint ptr %data_direction to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_direction, align 2
  %conv16 = zext i8 %6 to i32
  %call17 = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef %conv16, i32 noundef 0) #13
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %8, i32 noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp.i.not = icmp eq i32 %call17, -1
  br i1 %cmp.i.not, label %if.then27, label %if.end28, !prof !130

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %sw_rx_ring = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %9 = ptrtoint ptr %sw_rx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_rx_ring, align 4
  %sw_rx_prod = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 5
  %11 = ptrtoint ptr %sw_rx_prod to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sw_rx_prod, align 2
  %13 = and i16 %12, 8191
  %and = zext i16 %13 to i32
  %arrayidx = getelementptr %struct.sw_rx_data, ptr %10, i32 %and
  %page_offset = getelementptr %struct.sw_rx_data, ptr %10, i32 %and, i32 2
  %14 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %page_offset, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %mapping31 = getelementptr %struct.sw_rx_data, ptr %10, i32 %and, i32 1
  %16 = ptrtoint ptr %mapping31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call17, ptr %mapping31, align 4
  %rx_bd_ring = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call32 = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end, label %if.end28.if.end54_crit_edge, !prof !130

if.end28.if.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end, %if.end28.if.end54_crit_edge
  %hi = getelementptr inbounds %struct.regpair, ptr %call32, i32 0, i32 1
  %17 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hi, align 4
  %rx_headroom = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  %18 = ptrtoint ptr %rx_headroom to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_headroom, align 2
  %conv63 = zext i16 %19 to i32
  %add = add i32 %call17, %conv63
  %20 = tail call i32 @llvm.bswap.i32(i32 %add)
  %21 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call32, align 4
  %22 = ptrtoint ptr %sw_rx_prod to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sw_rx_prod, align 2
  %inc = add i16 %23, 1
  store i16 %inc, ptr %sw_rx_prod, align 2
  %filled_buffers66 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 6
  %24 = ptrtoint ptr %filled_buffers66 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %filled_buffers66, align 4
  %inc67 = add i16 %25, 1
  store i16 %inc67, ptr %filled_buffers66, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then27, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.then27 ], [ 0, %if.end54 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qed_chain_produce(ptr noundef %p_chain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %cnt_type = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 13
  %0 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %u = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %elem_per_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %4 = ptrtoint ptr %elem_per_page_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_per_page_mask, align 2
  %and57 = and i16 %5, %3
  %next_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %6 = ptrtoint ptr %next_page_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_page_mask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57, i16 %7)
  %cmp3 = icmp eq i16 %and57, %7
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then5.if.end_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end25.i
  ]

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_chain, align 4
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_virt.i, align 4
  store ptr %14, ptr %p_chain, align 4
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %15 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %elem_unusable.i, align 2
  %conv.i = zext i8 %16 to i16
  %add.i = add i16 %3, %conv.i
  %17 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i, ptr %u, align 2
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %18 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_virt_addr.i, align 4
  %20 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p_chain, align 4
  br label %if.end

if.end25.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %c = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %c, align 2
  %inc.i = add i16 %22, 1
  %conv12.i = zext i16 %inc.i to i32
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %23 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %24, %conv12.i
  %spec.store.select.i = select i1 %cmp13.i, i16 0, i16 %inc.i
  %25 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select.i, ptr %c, align 2
  %conv17.i = zext i16 %spec.store.select.i to i32
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbl.i, align 4
  %arrayidx.i = getelementptr %struct.addr_tbl_entry, ptr %27, i32 %conv17.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p_chain, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %sw.bb6.i, %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u, align 4
  %inc = add i16 %32, 1
  store i16 %inc, ptr %u, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %33 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %u, align 4
  %elem_per_page_mask12 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %35 = ptrtoint ptr %elem_per_page_mask12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask12, align 2
  %conv13 = zext i16 %36 to i32
  %and14 = and i32 %34, %conv13
  %next_page_mask15 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %37 = ptrtoint ptr %next_page_mask15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_page_mask15, align 2
  %conv16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17 = icmp eq i32 %and14, %conv16
  br i1 %cmp17, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %mode.i58 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %39 = ptrtoint ptr %mode.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i58, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %40, label %if.then19.if.end26_crit_edge [
    i32 0, label %if.else.i69
    i32 1, label %sw.bb6.i71
    i32 2, label %if.end25.i90
  ]

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.else.i69:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_chain, align 4
  %next_virt.i59 = getelementptr inbounds %struct.qed_chain_next, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %next_virt.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_virt.i59, align 4
  store ptr %45, ptr %p_chain, align 4
  %elem_unusable.i62 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %46 = ptrtoint ptr %elem_unusable.i62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable.i62, align 2
  %conv4.i67 = zext i8 %47 to i32
  %add5.i68 = add i32 %34, %conv4.i67
  %48 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add5.i68, ptr %u, align 4
  br label %if.end26

sw.bb6.i71:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %p_virt_addr.i70 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %49 = ptrtoint ptr %p_virt_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt_addr.i70, align 4
  %51 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %p_chain, align 4
  br label %if.end26

if.end25.i90:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %c23 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %c23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c23, align 4
  %inc19.i82 = add i32 %53, 1
  %page_cnt20.i83 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %54 = ptrtoint ptr %page_cnt20.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_cnt20.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82, i32 %55)
  %cmp21.i84 = icmp eq i32 %inc19.i82, %55
  %spec.store.select43.i85 = select i1 %cmp21.i84, i32 0, i32 %inc19.i82
  %56 = ptrtoint ptr %c23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select43.i85, ptr %c23, align 4
  %pbl.i88 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %57 = ptrtoint ptr %pbl.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbl.i88, align 4
  %arrayidx.i89 = getelementptr %struct.addr_tbl_entry, ptr %58, i32 %spec.store.select43.i85
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i89, align 4
  %61 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_chain, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25.i90, %sw.bb6.i71, %if.else.i69, %if.then19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %62 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %u, align 4
  %inc29 = add i32 %63, 1
  store i32 %inc29, ptr %u, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end
  %64 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_chain, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 9
  %66 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %elem_size, align 4
  %conv33 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv33
  store ptr %add.ptr, ptr %p_chain, align 4
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_free_tx_pkt(ptr nocapture noundef readonly %edev, ptr noundef %txq, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tx_cons = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 2
  %0 = ptrtoint ptr %sw_tx_cons to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sw_tx_cons, align 2
  %sw_tx_ring = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 14
  %2 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_tx_ring, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.sw_tx_bd, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end, label %if.end, !prof !130

do.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool10.not, %tobool2.not.i
  %spec.select.i111 = select i1 %tobool2.not.i, ptr %7, ptr @.str.19
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i111
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.19, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %sw_tx_prod = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 3
  %10 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sw_tx_prod, align 4
  %conv16 = zext i16 %11 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef %cond, i32 noundef %idxprom, i32 noundef %idxprom, i32 noundef %conv16) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr %struct.sw_tx_bd, ptr %3, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len20, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %len, align 4
  %tx_pbl = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15
  %call21 = tail call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl)
  %nbds22 = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call21, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %nbds22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nbds22, align 2
  %conv23 = zext i8 %19 to i32
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then25

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl)
  %nbytes = getelementptr inbounds %struct.eth_tx_bd, ptr %call27, i32 0, i32 1
  %20 = ptrtoint ptr %nbytes to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nbytes, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv28 = zext i16 %22 to i32
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end.if.end30_crit_edge
  %bds_consumed.0 = phi i32 [ 2, %if.then25 ], [ 1, %if.end.if.end30_crit_edge ]
  %split_bd_len.0 = phi i32 [ %conv28, %if.then25 ], [ 0, %if.end.if.end30_crit_edge ]
  %pdev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call21, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %nbytes35 = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call21, i32 0, i32 1
  %28 = ptrtoint ptr %nbytes35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nbytes35, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv36 = zext i16 %30 to i32
  %add37 = add nuw nsw i32 %split_bd_len.0, %conv36
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %27, i32 noundef %add37, i32 noundef 1, i32 noundef 0) #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %nr_frags118 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %nr_frags118 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nr_frags118, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp120.not = icmp eq i8 %34, 0
  br i1 %cmp120.not, label %if.end30.while.cond.preheader_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.while.cond.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body.while.cond.preheader_crit_edge, %if.end30.while.cond.preheader_crit_edge
  %bds_consumed.1.lcssa = phi i32 [ %bds_consumed.0, %if.end30.while.cond.preheader_crit_edge ], [ %inc57, %for.body.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bds_consumed.1.lcssa, i32 %conv23)
  %cmp59123 = icmp slt i32 %bds_consumed.1.lcssa, %conv23
  br i1 %cmp59123, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.0122 = phi i32 [ %inc56, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %bds_consumed.1121 = phi i32 [ %inc57, %for.body.for.body_crit_edge ], [ %bds_consumed.0, %if.end30.for.body_crit_edge ]
  %call42 = tail call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl)
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call42, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %nbytes54 = getelementptr inbounds %struct.eth_tx_bd, ptr %call42, i32 0, i32 1
  %40 = ptrtoint ptr %nbytes54 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nbytes54, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv55 = zext i16 %42 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev44, i32 noundef %39, i32 noundef %conv55, i32 noundef 1, i32 noundef 0) #13
  %inc56 = add nuw nsw i32 %i.0122, 1
  %inc57 = add nuw nsw i32 %bds_consumed.1121, 1
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_frags, align 2
  %conv39 = zext i8 %46 to i32
  %cmp = icmp ult i32 %inc56, %conv39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.while.cond.preheader_crit_edge

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %bds_consumed.2124 = phi i32 [ %inc58, %while.body.while.body_crit_edge ], [ %bds_consumed.1.lcssa, %while.cond.preheader.while.body_crit_edge ]
  %inc58 = add nuw nsw i32 %bds_consumed.2124, 1
  %call62 = tail call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl)
  %exitcond.not = icmp eq i32 %inc58, %conv23
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #13
  %47 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sw_tx_ring, align 8
  %arrayidx65 = getelementptr %struct.sw_tx_bd, ptr %48, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx65, align 4
  %50 = load ptr, ptr %sw_tx_ring, align 8
  %flags70 = getelementptr %struct.sw_tx_bd, ptr %50, i32 %idxprom, i32 1
  %51 = ptrtoint ptr %flags70 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %flags70, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end
  %retval.0 = phi i32 [ -1, %cond.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qed_chain_consume(ptr noundef %p_chain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %cnt_type = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 13
  %0 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3
  %cons_idx = getelementptr inbounds %struct.qed_chain_u16, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cons_idx, align 2
  %elem_per_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %4 = ptrtoint ptr %elem_per_page_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_per_page_mask, align 2
  %and57 = and i16 %5, %3
  %next_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %6 = ptrtoint ptr %next_page_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_page_mask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57, i16 %7)
  %cmp3 = icmp eq i16 %and57, %7
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then
  %p_cons_elem = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %9, label %if.then5.if.end_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end25.i
  ]

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_cons_elem, align 4
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_virt.i, align 4
  store ptr %14, ptr %p_cons_elem, align 4
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %15 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %elem_unusable.i, align 2
  %conv.i = zext i8 %16 to i16
  %add.i = add i16 %3, %conv.i
  %17 = ptrtoint ptr %cons_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i, ptr %cons_idx, align 2
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %18 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_virt_addr.i, align 4
  %20 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p_cons_elem, align 4
  br label %if.end

if.end25.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %c = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %cons_page_idx = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c, i32 0, i32 1
  %21 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cons_page_idx, align 2
  %inc.i = add i16 %22, 1
  %conv12.i = zext i16 %inc.i to i32
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %23 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %24, %conv12.i
  %spec.store.select.i = select i1 %cmp13.i, i16 0, i16 %inc.i
  %25 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select.i, ptr %cons_page_idx, align 2
  %conv17.i = zext i16 %spec.store.select.i to i32
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbl.i, align 4
  %arrayidx.i = getelementptr %struct.addr_tbl_entry, ptr %27, i32 %conv17.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p_cons_elem, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %sw.bb6.i, %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cons_idx, align 2
  %inc = add i16 %32, 1
  store i16 %inc, ptr %cons_idx, align 2
  br label %if.end30

if.else:                                          ; preds = %entry
  %cons_idx11 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cons_idx11, align 4
  %elem_per_page_mask12 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %35 = ptrtoint ptr %elem_per_page_mask12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask12, align 2
  %conv13 = zext i16 %36 to i32
  %and14 = and i32 %34, %conv13
  %next_page_mask15 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %37 = ptrtoint ptr %next_page_mask15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_page_mask15, align 2
  %conv16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17 = icmp eq i32 %and14, %conv16
  br i1 %cmp17, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %p_cons_elem25 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i58 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %39 = ptrtoint ptr %mode.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i58, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %40, label %if.then19.if.end26_crit_edge [
    i32 0, label %if.else.i69
    i32 1, label %sw.bb6.i71
    i32 2, label %if.end25.i90
  ]

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.else.i69:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_cons_elem25, align 4
  %next_virt.i59 = getelementptr inbounds %struct.qed_chain_next, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %next_virt.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_virt.i59, align 4
  store ptr %45, ptr %p_cons_elem25, align 4
  %elem_unusable.i62 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %46 = ptrtoint ptr %elem_unusable.i62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable.i62, align 2
  %conv4.i67 = zext i8 %47 to i32
  %add5.i68 = add i32 %34, %conv4.i67
  %48 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add5.i68, ptr %cons_idx11, align 4
  br label %if.end26

sw.bb6.i71:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %p_virt_addr.i70 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %49 = ptrtoint ptr %p_virt_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt_addr.i70, align 4
  %51 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end25.i90:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %cons_page_idx24 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cons_page_idx24, align 4
  %inc19.i82 = add i32 %53, 1
  %page_cnt20.i83 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %54 = ptrtoint ptr %page_cnt20.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_cnt20.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82, i32 %55)
  %cmp21.i84 = icmp eq i32 %inc19.i82, %55
  %spec.store.select43.i85 = select i1 %cmp21.i84, i32 0, i32 %inc19.i82
  %56 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select43.i85, ptr %cons_page_idx24, align 4
  %pbl.i88 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %57 = ptrtoint ptr %pbl.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbl.i88, align 4
  %arrayidx.i89 = getelementptr %struct.addr_tbl_entry, ptr %58, i32 %spec.store.select43.i85
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i89, align 4
  %61 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25.i90, %sw.bb6.i71, %if.else.i69, %if.then19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %62 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cons_idx11, align 4
  %inc29 = add i32 %63, 1
  store i32 %inc29, ptr %cons_idx11, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end
  %p_cons_elem31 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %64 = ptrtoint ptr %p_cons_elem31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_cons_elem31, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 9
  %66 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %elem_size, align 4
  %conv33 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv33
  store ptr %add.ptr, ptr %p_cons_elem31, align 4
  ret ptr %65
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_xdp_transmit(ptr noundef %dev, i32 noundef %n_frames, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !129

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !130

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %total_xdp_queues = getelementptr i8, ptr %dev, i32 2444
  %8 = ptrtoint ptr %total_xdp_queues to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %total_xdp_queues, align 4
  %conv = zext i16 %9 to i32
  %rem = urem i32 %7, %conv
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %10 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fp_array, align 4
  %xdp_tx16 = getelementptr %struct.qede_fastpath, ptr %11, i32 %rem, i32 8
  %12 = ptrtoint ptr %xdp_tx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xdp_tx16, align 4
  %xdp_tx_lock = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %xdp_tx_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_frames)
  %cmp91 = icmp sgt i32 %n_frames, 0
  br i1 %cmp91, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %tx_pbl.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 15
  %u.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 15, i32 3
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %mode.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 15, i32 6
  %elem_per_page3.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 15, i32 7
  %num_tx_buffers.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 4
  %sw_tx_ring.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 14
  %sw_tx_prod.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %nxmit.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end41.for.body_crit_edge ]
  %arrayidx18 = getelementptr ptr, ptr %frames, i32 %nxmit.093
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !129

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #13
  br label %for.end

dma_map_single_attrs.exit:                        ; preds = %for.body
  %conv19 = zext i16 %19 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %17, i32 noundef %conv19) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %17 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i74 = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i75 = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i74, i32 noundef %and.i75, i32 noundef %conv19, i32 noundef 1, i32 noundef 0) #13
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.for.end_crit_edge, label %if.end30

dma_map_single_attrs.exit.for.end_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 4
  %28 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.i.i = icmp ult i16 %29, %31
  %add.i.i = or i32 %conv.i.i, 65536
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %conv.i.i
  %32 = trunc i32 %spec.select.i.i to i16
  %conv5.i.i = sub i16 %32, %31
  %33 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.i.i = icmp eq i32 %34, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end30.qed_chain_get_elem_used.exit.i_crit_edge

if.end30.qed_chain_get_elem_used.exit.i_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_used.exit.i

if.then8.i.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %36 to i32
  %div.i.i = udiv i32 %spec.select.i.i, %conv9.i.i
  %37 = udiv i16 %31, %36
  %38 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %38
  %sub16.i.i = add i16 %conv13.neg.i.i, %37
  br label %qed_chain_get_elem_used.exit.i

qed_chain_get_elem_used.exit.i:                   ; preds = %if.then8.i.i, %if.end30.qed_chain_get_elem_used.exit.i_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %if.end30.qed_chain_get_elem_used.exit.i_crit_edge ]
  %39 = ptrtoint ptr %num_tx_buffers.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_tx_buffers.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %used.0.i.i, i16 %40)
  %cmp.not.i = icmp ult i16 %used.0.i.i, %40
  br i1 %cmp.not.i, label %if.end41, label %qede_xdp_xmit.exit, !prof !129

qede_xdp_xmit.exit:                               ; preds = %qed_chain_get_elem_used.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %stopped_cnt.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 6
  %41 = ptrtoint ptr %stopped_cnt.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stopped_cnt.i, align 8
  %inc.i = add i64 %42, 1
  store i64 %inc.i, ptr %stopped_cnt.i, align 8
  br label %for.end

if.end41:                                         ; preds = %qed_chain_get_elem_used.exit.i
  %call5.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl.i) #13
  %nbds.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %nbds.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %nbds.i, align 2
  %bd_flags.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %bd_flags.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %bd_flags.i, align 1
  %45 = shl i16 %27, 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #13
  %bitfields10.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %bitfields10.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %bitfields10.i, align 2
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call5.i, i32 0, i32 1
  %48 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %hi.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #13
  %50 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call5.i, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %27) #13
  %nbytes.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 1
  %52 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %nbytes.i, align 4
  %53 = ptrtoint ptr %sw_tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw_tx_ring.i, align 8
  %55 = ptrtoint ptr %sw_tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sw_tx_prod.i, align 4
  %conv17.i = zext i16 %56 to i32
  %add.ptr.i77 = getelementptr %struct.sw_tx_xdp, ptr %54, i32 %conv17.i
  %mapping.i = getelementptr %struct.sw_tx_xdp, ptr %54, i32 %conv17.i, i32 2
  %57 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call41.i, ptr %mapping.i, align 4
  %58 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %add.ptr.i77, align 4
  %xdpf19.i = getelementptr %struct.sw_tx_xdp, ptr %54, i32 %conv17.i, i32 1
  %59 = ptrtoint ptr %xdpf19.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %15, ptr %xdpf19.i, align 4
  %60 = load i16, ptr %sw_tx_prod.i, align 4
  %conv21.i = zext i16 %60 to i32
  %add22.i = add nuw nsw i32 %conv21.i, 1
  %61 = ptrtoint ptr %num_tx_buffers.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_tx_buffers.i, align 2
  %conv24.i = zext i16 %62 to i32
  %rem.i = urem i32 %add22.i, %conv24.i
  %conv25.i = trunc i32 %rem.i to i16
  store i16 %conv25.i, ptr %sw_tx_prod.i, align 4
  %inc = add nuw nsw i32 %nxmit.093, 1
  %exitcond.not = icmp eq i32 %inc, %n_frames
  br i1 %exitcond.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end41.for.end_crit_edge, %qede_xdp_xmit.exit, %dma_map_single_attrs.exit.for.end_crit_edge, %dma_map_single_attrs.exit.thread, %if.end14.for.end_crit_edge
  %nxmit.090 = phi i32 [ %nxmit.093, %qede_xdp_xmit.exit ], [ %nxmit.093, %dma_map_single_attrs.exit.thread ], [ 0, %if.end14.for.end_crit_edge ], [ %n_frames, %if.end41.for.end_crit_edge ], [ %nxmit.093, %dma_map_single_attrs.exit.for.end_crit_edge ]
  %and43 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %for.end.if.end47_crit_edge, label %if.then45

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %u.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 15, i32 3
  %63 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %u.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %tx_db = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 11
  %bd_prod = getelementptr inbounds %struct.eth_db_data, ptr %tx_db, i32 0, i32 2
  %66 = ptrtoint ptr %bd_prod to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %bd_prod, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_db, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #13
  %doorbell_addr.i = getelementptr inbounds %struct.qede_tx_queue, ptr %13, i32 0, i32 10
  %70 = ptrtoint ptr %doorbell_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %doorbell_addr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #13, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.end.if.end47_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xdp_tx_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nxmit.090, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_update_tx_producer(ptr nocapture noundef readonly %txq) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %tx_db = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 11
  %0 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_db, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %doorbell_addr = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 10
  %3 = ptrtoint ptr %doorbell_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %doorbell_addr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #13, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_txq_has_work(ptr nocapture noundef readonly %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %hw_cons_ptr = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 8
  %0 = ptrtoint ptr %hw_cons_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_cons_ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %u.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %5 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cons_idx.i, align 2
  %conv = zext i16 %6 to i32
  %conv1 = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ne i32 %add, %conv
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp7 = icmp ne i16 %4, %6
  %narrow = select i1 %cmp, i1 %cmp7, i1 false
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qede_has_rx_work(ptr nocapture noundef readonly %rxq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  %0 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %u.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 16, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %5 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cons_idx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp = icmp ne i16 %4, %6
  ret i1 %cmp
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_recycle_rx_bd_ring(ptr noundef %rxq, i8 noundef zeroext %count) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %cmp.not10 = icmp eq i8 %count, 0
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sw_rx_ring = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %sw_rx_cons = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %rx_bd_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %sw_rx_prod.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 5
  %rx_headroom.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.addr.011 = phi i8 [ %count, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %sw_rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw_rx_ring, align 4
  %2 = ptrtoint ptr %sw_rx_cons to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_rx_cons, align 16
  %4 = and i16 %3, 8191
  %and = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.sw_rx_data, ptr %1, i32 %and
  %call.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i) #13
  %5 = ptrtoint ptr %sw_rx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_rx_ring, align 4
  %7 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sw_rx_prod.i, align 2
  %9 = and i16 %8, 8191
  %and.i = zext i16 %9 to i32
  %arrayidx.i = getelementptr %struct.sw_rx_data, ptr %6, i32 %and.i
  %10 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx, i32 12)
  %mapping.i = getelementptr %struct.sw_rx_data, ptr %6, i32 %and.i, i32 1
  %11 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapping.i, align 4
  %page_offset.i = getelementptr %struct.sw_rx_data, ptr %6, i32 %and.i, i32 2
  %13 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_offset.i, align 4
  %add.i = add i32 %14, %12
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hi.i, align 4
  %16 = ptrtoint ptr %rx_headroom.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_headroom.i, align 2
  %conv3.i = zext i16 %17 to i32
  %add4.i = add i32 %add.i, %conv3.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #13
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i, align 4
  %20 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sw_rx_prod.i, align 2
  %inc.i = add i16 %21, 1
  store i16 %inc.i, ptr %sw_rx_prod.i, align 2
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %call.i8 = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i) #13
  %23 = ptrtoint ptr %sw_rx_cons to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sw_rx_cons, align 16
  %inc.i9 = add i16 %24, 1
  store i16 %inc.i9, ptr %sw_rx_cons, align 16
  %dec = add i8 %count.addr.011, -1
  %cmp.not = icmp eq i8 %dec, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_update_rx_prod(ptr nocapture readnone %edev, ptr nocapture noundef readonly %rxq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u.i, align 4
  %u.i6 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %u.i6 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u.i6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !138
  tail call void @arm_heavy_mb() #13
  %hw_rxq_prod_addr = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 1
  %4 = ptrtoint ptr %hw_rxq_prod_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_rxq_prod_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void @arm_heavy_mb() #13
  %6 = zext i16 %1 to i32
  %7 = zext i16 %3 to i32
  %8 = shl nuw i32 %7, 16
  %9 = or i32 %8, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %9) #13, !srcloc !134
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %xdp_xmit = getelementptr i8, ptr %napi, i32 -2
  %2 = ptrtoint ptr %xdp_xmit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %xdp_xmit, align 2
  %type = getelementptr i8, ptr %napi, i32 -4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %for.cond.preheader, !prof !130

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %num_tc138 = getelementptr inbounds %struct.qede_dev, ptr %7, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %num_tc138 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_tc138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp140.not = icmp eq i8 %9, 0
  br i1 %cmp140.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %txq = getelementptr i8, ptr %napi, i32 232
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 5
  %state.i = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 22
  %dp_module.i = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cos.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txq, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %hw_cons_ptr.i = getelementptr %struct.qede_tx_queue, ptr %11, i32 %cos.0141, i32 8
  %12 = ptrtoint ptr %hw_cons_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_cons_ptr.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #13
  %u.i.i = getelementptr %struct.qede_tx_queue, ptr %11, i32 %cos.0141, i32 15, i32 3
  %cons_idx.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cons_idx.i.i, align 2
  %conv.i = zext i16 %18 to i32
  %conv1.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %conv1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp7.i = icmp eq i16 %16, %18
  %narrow.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %narrow.i, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %19 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq, align 8
  %arrayidx10 = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141
  %21 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev.i, align 4
  %ndev_txq_id.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 18
  %23 = ptrtoint ptr %ndev_txq_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ndev_txq_id.i, align 2
  %conv.i89 = zext i16 %24 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89
  %hw_cons_ptr.i90 = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 8
  %27 = ptrtoint ptr %hw_cons_ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_cons_ptr.i90, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !140
  %u.i.i91 = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 15, i32 3
  %cons_idx.i.i92 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i91, i32 0, i32 1
  %32 = ptrtoint ptr %cons_idx.i.i92 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cons_idx.i.i92, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp.not50.i = icmp eq i16 %31, %33
  br i1 %cmp.not50.i, label %if.then8.netdev_tx_completed_queue.exit.i_crit_edge, label %while.body.lr.ph.i

if.then8.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_completed_queue.exit.i

while.body.lr.ph.i:                               ; preds = %if.then8
  %sw_tx_cons.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 2
  %num_tx_buffers.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 4
  %xmit_pkts.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %bytes_compl.051.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i94, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #13
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %len.i, align 4
  %call5.i = call i32 @qede_free_tx_pkt(ptr noundef %1, ptr noundef %arrayidx10, ptr noundef nonnull %len.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  %conv1.le.i = zext i16 %31 to i32
  %35 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp7.i93 = icmp ult i8 %36, 3
  br i1 %cmp7.i93, label %do.end.i, label %do.body.i.cleanup.thread.i_crit_edge, !prof !130

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

do.end.i:                                         ; preds = %do.body.i
  %37 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call ptr @strchr(ptr noundef %38, i32 noundef 37) #13
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool15.not.i = icmp eq ptr %38, null
  %or.cond.i = and i1 %tobool15.not.i, %tobool2.not.i.i
  %spec.select.i4.i = select i1 %tobool2.not.i.i, ptr %38, ptr @.str.19
  %spec.select.i = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i4.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.19, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %41 = ptrtoint ptr %cons_idx.i.i92 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cons_idx.i.i92, align 2
  %conv21.i = zext i16 %42 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 453, ptr noundef %cond.i, i32 noundef %conv1.le.i, i32 noundef %conv21.i) #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cond.end.i, %do.body.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %add.i94 = add i32 %44, %bytes_compl.051.i
  %45 = ptrtoint ptr %sw_tx_cons.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sw_tx_cons.i, align 2
  %conv26.i = zext i16 %46 to i32
  %add27.i = add nuw nsw i32 %conv26.i, 1
  %47 = ptrtoint ptr %num_tx_buffers.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_tx_buffers.i, align 2
  %conv28.i = zext i16 %48 to i32
  %rem.i = urem i32 %add27.i, %conv28.i
  %conv29.i = trunc i32 %rem.i to i16
  store i16 %conv29.i, ptr %sw_tx_cons.i, align 2
  %49 = ptrtoint ptr %xmit_pkts.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %xmit_pkts.i, align 8
  %inc31.i = add i64 %50, 1
  store i64 %inc31.i, ptr %xmit_pkts.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #13
  %51 = ptrtoint ptr %cons_idx.i.i92 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cons_idx.i.i92, align 2
  %cmp.not.i = icmp eq i16 %31, %52
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %cleanup.thread.i
  %bytes_compl.048.i = phi i32 [ %bytes_compl.051.i, %cleanup.thread.i ], [ %add.i94, %cleanup.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.048.i)
  %tobool.not.i10.i = icmp eq i32 %bytes_compl.048.i, 0
  br i1 %tobool.not.i10.i, label %while.end.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end.i.i, !prof !130

while.end.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_completed_queue.exit.i

if.end.i.i:                                       ; preds = %while.end.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_compl.048.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !141
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 15, i32 1
  %53 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %55 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %54, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end14.i.i, !prof !130

if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_completed_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_completed_queue.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i) #13
  br label %netdev_tx_completed_queue.exit.i

netdev_tx_completed_queue.exit.i:                 ; preds = %if.then17.i.i, %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %while.end.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.then8.netdev_tx_completed_queue.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !142
  %state.i11.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 13
  %57 = ptrtoint ptr %state.i11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state.i11.i, align 4
  %and1.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %netdev_tx_completed_queue.exit.i.for.inc_crit_edge, label %if.then45.i, !prof !129

netdev_tx_completed_queue.exit.i.for.inc_crit_edge: ; preds = %netdev_tx_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then45.i:                                      ; preds = %netdev_tx_completed_queue.exit.i
  %59 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i, align 4
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #13
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i89, i32 11
  %63 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %62, ptr %xmit_lock_owner.i.i, align 4
  %64 = ptrtoint ptr %state.i11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i11.i, align 4
  %and1.i.i13.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and1.i.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.then45.i.if.end88.i_crit_edge, label %land.lhs.true.i

if.then45.i.if.end88.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

land.lhs.true.i:                                  ; preds = %if.then45.i
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp49.i = icmp eq i32 %67, 1
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true.i.if.end88.i_crit_edge

land.lhs.true.i.if.end88.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

land.lhs.true51.i:                                ; preds = %land.lhs.true.i
  %capacity.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 15, i32 4
  %68 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %capacity.i, align 4
  %70 = ptrtoint ptr %u.i.i91 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %u.i.i91, align 4
  %conv.i.i127 = zext i16 %71 to i32
  %72 = ptrtoint ptr %cons_idx.i.i92 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cons_idx.i.i92, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp.i.i129 = icmp ult i16 %71, %73
  %add.i.i130 = or i32 %conv.i.i127, 65536
  %spec.select.i.i = select i1 %cmp.i.i129, i32 %add.i.i130, i32 %conv.i.i127
  %74 = trunc i32 %spec.select.i.i to i16
  %conv5.i.i = sub i16 %74, %73
  %mode.i.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 15, i32 6
  %75 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp6.i.i = icmp eq i32 %76, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %land.lhs.true51.i.qed_chain_get_elem_left.exit_crit_edge

land.lhs.true51.i.qed_chain_get_elem_left.exit_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_left.exit

if.then8.i.i:                                     ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #15
  %elem_per_page3.i.i = getelementptr %struct.qede_tx_queue, ptr %20, i32 %cos.0141, i32 15, i32 7
  %77 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %78 to i32
  %div.i.i = udiv i32 %spec.select.i.i, %conv9.i.i
  %79 = udiv i16 %73, %78
  %80 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %80
  %sub16.i.i = add i16 %conv13.neg.i.i, %79
  br label %qed_chain_get_elem_left.exit

qed_chain_get_elem_left.exit:                     ; preds = %if.then8.i.i, %land.lhs.true51.i.qed_chain_get_elem_left.exit_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %land.lhs.true51.i.qed_chain_get_elem_left.exit_crit_edge ]
  %81 = trunc i32 %69 to i16
  %conv1.i131 = sub i16 %81, %used.0.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %conv1.i131)
  %cmp55.i = icmp ugt i16 %conv1.i131, 17
  br i1 %cmp55.i, label %if.then57.i, label %qed_chain_get_elem_left.exit.if.end88.i_crit_edge

qed_chain_get_elem_left.exit.if.end88.i_crit_edge: ; preds = %qed_chain_get_elem_left.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

if.then57.i:                                      ; preds = %qed_chain_get_elem_left.exit
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #13
  %82 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp61.i = icmp eq i8 %83, 0
  br i1 %cmp61.i, label %land.rhs.i, label %if.then57.i.if.end88.i_crit_edge

if.then57.i.if.end88.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

land.rhs.i:                                       ; preds = %if.then57.i
  %84 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dp_module.i, align 8
  %and.i = and i32 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool63.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool63.not.i, label %land.rhs.i.if.end88.i_crit_edge, label %do.end73.i, !prof !129

land.rhs.i.if.end88.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

do.end73.i:                                       ; preds = %land.rhs.i
  %86 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i15.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i15.i, label %do.end73.i.cond.end82.i_crit_edge, label %lor.lhs.false.i19.i

do.end73.i.cond.end82.i_crit_edge:                ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end82.i

lor.lhs.false.i19.i:                              ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i16.i = tail call ptr @strchr(ptr noundef %87, i32 noundef 37) #13
  %tobool2.not.i17.i = icmp eq ptr %call.i16.i, null
  %tobool77.not.i = icmp eq ptr %87, null
  %or.cond42.i = and i1 %tobool77.not.i, %tobool2.not.i17.i
  %spec.select.i25.i = select i1 %tobool2.not.i17.i, ptr %87, ptr @.str.19
  %spec.select58.i = select i1 %or.cond42.i, ptr @.str.3, ptr %spec.select.i25.i
  br label %cond.end82.i

cond.end82.i:                                     ; preds = %lor.lhs.false.i19.i, %do.end73.i.cond.end82.i_crit_edge
  %cond83.i = phi ptr [ @.str.19, %do.end73.i.cond.end82.i_crit_edge ], [ %spec.select58.i, %lor.lhs.false.i19.i ]
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, i32 noundef 495, ptr noundef %cond83.i) #16
  br label %if.end88.i

if.end88.i:                                       ; preds = %cond.end82.i, %land.rhs.i.if.end88.i_crit_edge, %if.then57.i.if.end88.i_crit_edge, %qed_chain_get_elem_left.exit.if.end88.i_crit_edge, %land.lhs.true.i.if.end88.i_crit_edge, %if.then45.i.if.end88.i_crit_edge
  %90 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end88.i, %netdev_tx_completed_queue.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cos.0141, 1
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %num_tc = getelementptr inbounds %struct.qede_dev, ptr %92, i32 0, i32 10, i32 2
  %93 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_tc, align 1
  %conv5 = zext i8 %94 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %entry.if.end12_crit_edge
  %95 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %type, align 4
  %97 = and i8 %96, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool16.not = icmp eq i8 %97, 0
  br i1 %tobool16.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %xdp_tx = getelementptr i8, ptr %napi, i32 236
  %98 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xdp_tx, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %hw_cons_ptr.i95 = getelementptr inbounds %struct.qede_tx_queue, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %hw_cons_ptr.i95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw_cons_ptr.i95, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %101, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #13
  %u.i.i96 = getelementptr inbounds %struct.qede_tx_queue, ptr %99, i32 0, i32 15, i32 3
  %cons_idx.i.i97 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i96, i32 0, i32 1
  %105 = ptrtoint ptr %cons_idx.i.i97 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %cons_idx.i.i97, align 2
  %conv.i98 = zext i16 %106 to i32
  %conv1.i99 = zext i16 %104 to i32
  %add.i100 = add nuw nsw i32 %conv1.i99, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i100, i32 %conv.i98)
  %cmp.i101 = icmp eq i32 %add.i100, %conv.i98
  call void @__sanitizer_cov_trace_cmp2(i16 %104, i16 %106)
  %cmp7.i102 = icmp eq i16 %104, %106
  %narrow.i103 = select i1 %cmp.i101, i1 true, i1 %cmp7.i102
  br i1 %narrow.i103, label %land.lhs.true.if.end21_crit_edge, label %if.then19

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  %107 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xdp_tx, align 4
  %sw_tx_ring.i = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %sw_tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sw_tx_ring.i, align 8
  %pdev.i = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %hw_cons_ptr.i105 = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 8
  %113 = ptrtoint ptr %hw_cons_ptr.i105 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw_cons_ptr.i105, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %114, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !143
  %tx_pbl.i = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 15
  %u.i.i106 = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 15, i32 3
  %cons_idx.i.i107 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i106, i32 0, i32 1
  %118 = ptrtoint ptr %cons_idx.i.i107 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cons_idx.i.i107, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %119)
  %cmp.not31.i = icmp eq i16 %117, %119
  br i1 %cmp.not31.i, label %if.then19.if.end21_crit_edge, label %while.body.lr.ph.i111

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.body.lr.ph.i111:                            ; preds = %if.then19
  %sw_tx_cons.i108 = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 2
  %num_tx_buffers.i109 = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 4
  %xmit_pkts.i110 = getelementptr inbounds %struct.qede_tx_queue, ptr %108, i32 0, i32 5
  br label %while.body.i113

while.body.i113:                                  ; preds = %if.end.i.while.body.i113_crit_edge, %while.body.lr.ph.i111
  %120 = ptrtoint ptr %sw_tx_cons.i108 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %sw_tx_cons.i108, align 2
  %conv4.i = zext i16 %121 to i32
  %xdpf5.i = getelementptr %struct.sw_tx_xdp, ptr %110, i32 %conv4.i, i32 1
  %122 = ptrtoint ptr %xdpf5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %xdpf5.i, align 4
  %tobool.not.i112 = icmp eq ptr %123, null
  br i1 %tobool.not.i112, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  %mapping.i = getelementptr %struct.sw_tx_xdp, ptr %110, i32 %conv4.i, i32 2
  %124 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mapping.i, align 4
  %len.i114 = getelementptr inbounds %struct.xdp_frame, ptr %123, i32 0, i32 1
  %126 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %len.i114, align 4
  %conv6.i = zext i16 %127 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %125, i32 noundef %conv6.i, i32 noundef 1, i32 noundef 0) #13
  tail call void @xdp_return_frame(ptr noundef nonnull %123) #13
  %128 = ptrtoint ptr %xdpf5.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %xdpf5.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr %struct.sw_tx_xdp, ptr %110, i32 %conv4.i
  %mapping8.i = getelementptr %struct.sw_tx_xdp, ptr %110, i32 %conv4.i, i32 2
  %129 = ptrtoint ptr %mapping8.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mapping8.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %130, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 4
  tail call void @__free_pages(ptr noundef %132, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call10.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl.i) #13
  %133 = ptrtoint ptr %sw_tx_cons.i108 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %sw_tx_cons.i108, align 2
  %conv12.i = zext i16 %134 to i32
  %add.i115 = add nuw nsw i32 %conv12.i, 1
  %135 = ptrtoint ptr %num_tx_buffers.i109 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %num_tx_buffers.i109, align 2
  %conv13.i = zext i16 %136 to i32
  %rem.i116 = urem i32 %add.i115, %conv13.i
  %conv14.i = trunc i32 %rem.i116 to i16
  store i16 %conv14.i, ptr %sw_tx_cons.i108, align 2
  %137 = ptrtoint ptr %xmit_pkts.i110 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %xmit_pkts.i110, align 8
  %inc.i = add i64 %138, 1
  store i64 %inc.i, ptr %xmit_pkts.i110, align 8
  %139 = ptrtoint ptr %cons_idx.i.i107 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %cons_idx.i.i107, align 2
  %cmp.not.i117 = icmp eq i16 %117, %140
  br i1 %cmp.not.i117, label %if.end.i.if.end21_crit_edge, label %if.end.i.while.body.i113_crit_edge

if.end.i.while.body.i113_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i113

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.if.end21_crit_edge, %if.then19.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %141 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %type, align 4
  %143 = and i8 %142, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool25.not = icmp eq i8 %143, 0
  br i1 %tobool25.not, label %if.end21.cond.end_crit_edge, label %land.lhs.true32, !prof !130

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true32:                                  ; preds = %if.end21
  %rxq = getelementptr i8, ptr %napi, i32 228
  %144 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rxq, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 128
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %147, align 2
  %150 = tail call i16 @llvm.bswap.i16(i16 %149) #13
  %u.i.i119 = getelementptr inbounds %struct.qede_rx_queue, ptr %145, i32 0, i32 16, i32 3
  %cons_idx.i.i120 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i119, i32 0, i32 1
  %151 = ptrtoint ptr %cons_idx.i.i120 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cons_idx.i.i120, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %150, i16 %152)
  %cmp.i121.not = icmp eq i16 %150, %152
  br i1 %cmp.i121.not, label %land.lhs.true32.cond.end_crit_edge, label %cond.true

land.lhs.true32.cond.end_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call fastcc i32 @qede_rx_int(ptr noundef %add.ptr, i32 noundef %budget)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true32.cond.end_crit_edge, %if.end21.cond.end_crit_edge
  %cond = phi i32 [ %call35, %cond.true ], [ 0, %land.lhs.true32.cond.end_crit_edge ], [ 0, %if.end21.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %budget)
  %cmp36 = icmp slt i32 %cond, %budget
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool38.not = icmp eq i32 %budget, 0
  %or.cond = or i1 %tobool38.not, %cmp36
  br i1 %or.cond, label %if.then39, label %cond.end.if.end44_crit_edge

cond.end.if.end44_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then39:                                        ; preds = %cond.end
  %sb_info.i = getelementptr i8, ptr %napi, i32 224
  %153 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sb_info.i, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %prod_index.i.i = getelementptr inbounds %struct.status_block, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %prod_index.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %prod_index.i.i, align 4
  %159 = and i32 %158, -256
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #13
  %sb_ack.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %154, i32 0, i32 2
  %161 = ptrtoint ptr %sb_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sb_ack.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %160)
  %cmp.not.i.i = icmp eq i32 %162, %160
  br i1 %cmp.not.i.i, label %if.then39.qed_sb_update_sb_idx.exit.i_crit_edge, label %if.then.i.i

if.then39.qed_sb_update_sb_idx.exit.i_crit_edge:  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_sb_update_sb_idx.exit.i

if.then.i.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %sb_ack.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %160, ptr %sb_ack.i.i, align 4
  br label %qed_sb_update_sb_idx.exit.i

qed_sb_update_sb_idx.exit.i:                      ; preds = %if.then.i.i, %if.then39.qed_sb_update_sb_idx.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !144
  %164 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %type, align 4
  %166 = and i8 %165, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i122 = icmp eq i8 %166, 0
  br i1 %tobool.not.i122, label %qed_sb_update_sb_idx.exit.i.if.end5.i_crit_edge, label %if.then.i123, !prof !130

qed_sb_update_sb_idx.exit.i.if.end5.i_crit_edge:  ; preds = %qed_sb_update_sb_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then.i123:                                     ; preds = %qed_sb_update_sb_idx.exit.i
  %rxq.i = getelementptr i8, ptr %napi, i32 228
  %167 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rxq.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 128
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %170, align 2
  %173 = tail call i16 @llvm.bswap.i16(i16 %172) #13
  %u.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %168, i32 0, i32 16, i32 3
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %175)
  %cmp.i.not.i = icmp eq i16 %173, %175
  br i1 %cmp.i.not.i, label %if.then.i123.if.end5.i_crit_edge, label %if.then.i123.if.end44_crit_edge

if.then.i123.if.end44_crit_edge:                  ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then.i123.if.end5.i_crit_edge:                 ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i123.if.end5.i_crit_edge, %qed_sb_update_sb_idx.exit.i.if.end5.i_crit_edge
  %176 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %type, align 4
  %178 = and i8 %177, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool9.not.i = icmp eq i8 %178, 0
  br i1 %tobool9.not.i, label %if.end5.i.if.end15.i_crit_edge, label %if.then10.i

if.end5.i.if.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end5.i
  %xdp_tx.i = getelementptr i8, ptr %napi, i32 236
  %179 = ptrtoint ptr %xdp_tx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %xdp_tx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %hw_cons_ptr.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %180, i32 0, i32 8
  %181 = ptrtoint ptr %hw_cons_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw_cons_ptr.i.i, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %182, align 2
  %185 = tail call i16 @llvm.bswap.i16(i16 %184) #13
  %u.i.i43.i = getelementptr inbounds %struct.qede_tx_queue, ptr %180, i32 0, i32 15, i32 3
  %cons_idx.i.i44.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i43.i, i32 0, i32 1
  %186 = ptrtoint ptr %cons_idx.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %cons_idx.i.i44.i, align 2
  %conv.i.i = zext i16 %187 to i32
  %conv1.i.i = zext i16 %185 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp.i45.i = icmp eq i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %185, i16 %187)
  %cmp7.i.i = icmp eq i16 %185, %187
  %narrow.i.i = select i1 %cmp.i45.i, i1 true, i1 %cmp7.i.i
  br i1 %narrow.i.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then10.i.if.end44_crit_edge

if.then10.i.if.end44_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i.if.end15.i_crit_edge, %if.end5.i.if.end15.i_crit_edge
  %188 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %type, align 4
  %190 = and i8 %189, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool19.not.i = icmp eq i8 %190, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.then41_crit_edge, label %for.cond.preheader.i, !prof !130

if.end15.i.if.then41_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

for.cond.preheader.i:                             ; preds = %if.end15.i
  %191 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr, align 8
  %num_tc57.i = getelementptr inbounds %struct.qede_dev, ptr %192, i32 0, i32 10, i32 2
  %193 = ptrtoint ptr %num_tc57.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %num_tc57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp59.not.i = icmp eq i8 %194, 0
  br i1 %cmp59.not.i, label %for.cond.preheader.i.if.then41_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then41_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %txq.i = getelementptr i8, ptr %napi, i32 232
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i124 = add nuw nsw i32 %cos.060.i, 1
  %195 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr, align 8
  %num_tc.i = getelementptr inbounds %struct.qede_dev, ptr %196, i32 0, i32 10, i32 2
  %197 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %num_tc.i, align 1
  %conv27.i = zext i8 %198 to i32
  %cmp.i125 = icmp ult i32 %inc.i124, %conv27.i
  br i1 %cmp.i125, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.then41_crit_edge

for.cond.i.if.then41_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cos.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i124, %for.cond.i.for.body.i_crit_edge ]
  %199 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %txq.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !136
  %hw_cons_ptr.i46.i = getelementptr %struct.qede_tx_queue, ptr %200, i32 %cos.060.i, i32 8
  %201 = ptrtoint ptr %hw_cons_ptr.i46.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hw_cons_ptr.i46.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %202, align 2
  %205 = tail call i16 @llvm.bswap.i16(i16 %204) #13
  %u.i.i47.i = getelementptr %struct.qede_tx_queue, ptr %200, i32 %cos.060.i, i32 15, i32 3
  %cons_idx.i.i48.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i47.i, i32 0, i32 1
  %206 = ptrtoint ptr %cons_idx.i.i48.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %cons_idx.i.i48.i, align 2
  %conv.i49.i = zext i16 %207 to i32
  %conv1.i50.i = zext i16 %205 to i32
  %add.i51.i = add nuw nsw i32 %conv1.i50.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i51.i, i32 %conv.i49.i)
  %cmp.i52.i = icmp eq i32 %add.i51.i, %conv.i49.i
  call void @__sanitizer_cov_trace_cmp2(i16 %205, i16 %207)
  %cmp7.i53.i = icmp eq i16 %205, %207
  %narrow.i54.i = select i1 %cmp.i52.i, i1 true, i1 %cmp7.i53.i
  br i1 %narrow.i54.i, label %for.cond.i, label %for.body.i.if.end44_crit_edge

for.body.i.if.end44_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %for.cond.i.if.then41_crit_edge, %for.cond.preheader.i.if.then41_crit_edge, %if.end15.i.if.then41_crit_edge
  %call42 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %cond) #13
  %208 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sb_info.i, align 8
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sb_ack.i, align 4
  %or3.i = or i32 %211, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %212 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #13
  %igu_addr.i = getelementptr inbounds %struct.qed_sb_info, ptr %209, i32 0, i32 4
  %213 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #13, !srcloc !134
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %for.body.i.if.end44_crit_edge, %if.then10.i.if.end44_crit_edge, %if.then.i123.if.end44_crit_edge, %cond.end.if.end44_crit_edge
  %rx_work_done.0 = phi i32 [ %cond, %if.then41 ], [ %cond, %cond.end.if.end44_crit_edge ], [ %budget, %if.then.i123.if.end44_crit_edge ], [ %budget, %if.then10.i.if.end44_crit_edge ], [ %budget, %for.body.i.if.end44_crit_edge ]
  %215 = ptrtoint ptr %xdp_xmit to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %xdp_xmit, align 2
  %217 = and i8 %216, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool48.not = icmp eq i8 %217, 0
  br i1 %tobool48.not, label %if.end44.if.end54_crit_edge, label %if.then49

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_tx50 = getelementptr i8, ptr %napi, i32 236
  %218 = ptrtoint ptr %xdp_tx50 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %xdp_tx50, align 4
  %u.i = getelementptr inbounds %struct.qede_tx_queue, ptr %219, i32 0, i32 15, i32 3
  %220 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %u.i, align 4
  %222 = tail call i16 @llvm.bswap.i16(i16 %221)
  %tx_db = getelementptr inbounds %struct.qede_tx_queue, ptr %219, i32 0, i32 11
  %bd_prod = getelementptr inbounds %struct.eth_db_data, ptr %tx_db, i32 0, i32 2
  %223 = ptrtoint ptr %bd_prod to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %bd_prod, align 2
  %224 = ptrtoint ptr %xdp_tx50 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %xdp_tx50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %tx_db.i = getelementptr inbounds %struct.qede_tx_queue, ptr %225, i32 0, i32 11
  %226 = ptrtoint ptr %tx_db.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_db.i, align 4
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #13
  %doorbell_addr.i = getelementptr inbounds %struct.qede_tx_queue, ptr %225, i32 0, i32 10
  %229 = ptrtoint ptr %doorbell_addr.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %doorbell_addr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #13, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end44.if.end54_crit_edge
  %231 = ptrtoint ptr %xdp_xmit to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %xdp_xmit, align 2
  %233 = and i8 %232, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool58.not = icmp eq i8 %233, 0
  br i1 %tobool58.not, label %if.end54.if.end60_crit_edge, label %if.then59

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xdp_do_flush() #13
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end54.if.end60_crit_edge
  ret i32 %rx_work_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_rx_int(ptr noundef %fp, i32 noundef %budget) unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i16, align 2
  %pad.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq1 = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq1, align 4
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %rx_comp_ring = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16
  %u.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %9 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cons_idx.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !147
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %8)
  %cmp.not57 = icmp ne i16 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp558 = icmp sgt i32 %budget, 0
  %or.cond59 = and i1 %cmp.not57, %cmp558
  br i1 %or.cond59, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %xdp_prog1.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 3
  %ndev.i31.i.i = getelementptr inbounds %struct.qede_dev, ptr %3, i32 0, i32 1
  %napi.i.i.i.i.i = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 4
  %sw_rx_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 13
  %sw_rx_cons.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 4
  %rx_headroom.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 10
  %dp_level.i.i.i = getelementptr inbounds %struct.qede_dev, ptr %3, i32 0, i32 5
  %rx_bd_ring.i.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 14
  %rx_ip_frags.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 21
  %rx_hw_errors.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 19
  %rx_copybreak.i.i = getelementptr inbounds %struct.qede_dev, ptr %3, i32 0, i32 24
  %sw_rx_prod.i.i143.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 5
  %rx_buf_seg_size.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 12
  %rx_buf_size.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 11
  %dev.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 2
  %rxq_id.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 8
  %rx_alloc_errors.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 20
  %ops.i = getelementptr inbounds %struct.qede_dev, ptr %3, i32 0, i32 7
  %id.i = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 2
  %cnt_type.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16, i32 13
  %elem_per_page_mask13.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16, i32 8
  %usable_per_page16.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16, i32 11
  %elem_unusable21.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 16, i32 12
  br label %while.body

while.body:                                       ; preds = %qed_chain_recycle_consumed.exit.while.body_crit_edge, %while.body.lr.ph
  %rcv_pkts.061 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %qed_chain_recycle_consumed.exit.while.body_crit_edge ]
  %work_done.060 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %qed_chain_recycle_consumed.exit.while.body_crit_edge ]
  %11 = ptrtoint ptr %xdp_prog1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %xdp_prog1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %len.i) #13
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %len.i, align 2, !annotation !148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pad.i) #13
  %14 = ptrtoint ptr %pad.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %pad.i, align 2, !annotation !148
  %call.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_comp_ring) #13
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call.i, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %16, label %while.body.qede_rx_process_cqe.exit_crit_edge [
    i8 2, label %if.then.i
    i8 1, label %if.end9.i
    i8 3, label %sw.bb.i.i
    i8 4, label %sw.bb1.i.i
    i8 5, label %sw.bb2.i.i
  ], !prof !149

while.body.qede_rx_process_cqe.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %eth_cqe_completion.i = getelementptr inbounds %struct.qed_eth_ops, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %eth_cqe_completion.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eth_cqe_completion.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id.i, align 1
  %call4.i = tail call i32 %21(ptr noundef %23, i8 noundef zeroext %25, ptr noundef %call.i) #13
  br label %qede_rx_process_cqe.exit

sw.bb.i.i:                                        ; preds = %while.body
  %tpa_agg_index.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %tpa_agg_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tpa_agg_index.i.i.i, align 4
  %idxprom.i.i.i = zext i8 %27 to i32
  %arrayidx.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i
  %28 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %30 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %32 = and i16 %31, 8191
  %and.i.i.i = zext i16 %32 to i32
  %arrayidx2.i.i.i = getelementptr %struct.sw_rx_data, ptr %29, i32 %and.i.i.i
  %placement_offset.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %placement_offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %placement_offset.i.i.i, align 2
  %conv3.i.i.i = zext i8 %34 to i16
  %35 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rx_headroom.i.i.i, align 2
  %add.i.i.i = add i16 %36, %conv3.i.i.i
  %len_on_first_bd.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %len_on_first_bd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len_on_first_bd.i.i.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #13
  %call.i.i.i = tail call fastcc ptr @qede_tpa_rx_build_skb(ptr noundef %3, ptr noundef %1, ptr noundef %arrayidx2.i.i.i, i16 noundef zeroext %39, i16 noundef zeroext %add.i.i.i) #13
  %skb.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 1
  %40 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i.i, ptr %skb.i.i.i, align 4
  %page_offset.i.i.i = getelementptr %struct.sw_rx_data, ptr %29, i32 %and.i.i.i, i32 2
  %41 = ptrtoint ptr %page_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_offset.i.i.i, align 4
  %page_offset6.i.i.i = getelementptr inbounds %struct.sw_rx_data, ptr %arrayidx.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %page_offset6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %page_offset6.i.i.i, align 4
  %mapping.i.i.i = getelementptr %struct.sw_rx_data, ptr %29, i32 %and.i.i.i, i32 1
  %44 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mapping.i.i.i, align 4
  %mapping8.i.i.i = getelementptr inbounds %struct.sw_rx_data, ptr %arrayidx.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %mapping8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mapping8.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.end30.i.i.i, !prof !130

do.body.i.i.i:                                    ; preds = %sw.bb.i.i
  %47 = ptrtoint ptr %dp_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dp_level.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp.i.i.i = icmp ult i8 %48, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.end29.i.i.i_crit_edge, !prof !130

do.body.i.i.i.do.end29.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %49 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev.i31.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.cond.end.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

do.end.i.i.i.cond.end.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call ptr @strchr(ptr noundef %50, i32 noundef 37) #13
  %tobool2.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  %tobool24.not.i.i.i = icmp eq ptr %50, null
  %or.cond.i.i.i = and i1 %tobool24.not.i.i.i, %tobool2.not.i.i.i.i
  %spec.select.i125.i.i.i = select i1 %tobool2.not.i.i.i.i, ptr %50, ptr @.str.19
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, ptr @.str.3, ptr %spec.select.i125.i.i.i
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i, %do.end.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ @.str.19, %do.end.i.i.i.cond.end.i.i.i_crit_edge ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i.i ]
  %call27.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 848, ptr noundef %cond.i.i.i) #16
  br label %do.end29.i.i.i

do.end29.i.i.i:                                   ; preds = %cond.end.i.i.i, %do.body.i.i.i.do.end29.i.i.i_crit_edge
  %tpa_start_fail.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 3
  %53 = ptrtoint ptr %tpa_start_fail.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %tpa_start_fail.i.i.i, align 2
  %call.i129.i.i.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %54 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %inc.i.i.i.i = add i16 %55, 1
  store i16 %inc.i.i.i.i, ptr %sw_rx_cons.i.i.i, align 16
  %state.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 4
  %56 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %state.i.i.i, align 1
  br label %cons_buf.i.i.i

if.end30.i.i.i:                                   ; preds = %sw.bb.i.i
  %frag_id.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 5
  %57 = ptrtoint ptr %frag_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %frag_id.i.i.i, align 4
  %state31.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 4
  %58 = ptrtoint ptr %state31.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %state31.i.i.i, align 1
  %pars_flags.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %pars_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pars_flags.i.i.i, align 4
  %61 = and i16 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool34.not.i.i.i = icmp eq i16 %61, 0
  br i1 %tobool34.not.i.i.i, label %if.end30.i.i.i.if.end38.i.i.i_crit_edge, label %if.then35.i.i.i

if.end30.i.i.i.if.end38.i.i.i_crit_edge:          ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tag.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %vlan_tag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vlan_tag.i.i.i, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #13
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.end30.i.i.i.if.end38.i.i.i_crit_edge
  %.sink.i.i.i = phi i16 [ %64, %if.then35.i.i.i ], [ 0, %if.end30.i.i.i.if.end38.i.i.i_crit_edge ]
  %65 = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %.sink.i.i.i, ptr %65, align 4
  %bitfields.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 1
  %67 = ptrtoint ptr %bitfields.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bitfields.i.i.i, align 1
  %rss_hash.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %rss_hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rss_hash.i.i.i, align 4
  %trunc.i.i.i.i = trunc i8 %68 to i3
  %71 = zext i3 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.66)
  switch i3 %trunc.i.i.i.i, label %73 [
    i3 0, label %if.end38.i.i.i.qede_get_rxhash.exit.i.i.i_crit_edge
    i3 1, label %if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge
    i3 3, label %if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge78
  ]

if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge78: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread14.i.i.i.i

if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread14.i.i.i.i

if.end38.i.i.i.qede_get_rxhash.exit.i.i.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_get_rxhash.exit.i.i.i

if.end.thread14.i.i.i.i:                          ; preds = %if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge, %if.end38.i.i.i.if.end.thread14.i.i.i.i_crit_edge78
  %72 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  br label %qede_get_rxhash.exit.i.i.i

73:                                               ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  br label %qede_get_rxhash.exit.i.i.i

qede_get_rxhash.exit.i.i.i:                       ; preds = %73, %if.end.thread14.i.i.i.i, %if.end38.i.i.i.qede_get_rxhash.exit.i.i.i_crit_edge
  %hash.011.i.i.i.i = phi i32 [ %74, %73 ], [ %72, %if.end.thread14.i.i.i.i ], [ 0, %if.end38.i.i.i.qede_get_rxhash.exit.i.i.i_crit_edge ]
  %75 = phi i16 [ 128, %73 ], [ 0, %if.end.thread14.i.i.i.i ], [ 0, %if.end38.i.i.i.qede_get_rxhash.exit.i.i.i_crit_edge ]
  %l4_hash.i.i12.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %76 = ptrtoint ptr %l4_hash.i.i12.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i.i13.i.i.i.i = load i16, ptr %l4_hash.i.i12.i.i.i.i, align 8
  %bf.clear.i.i.i.i.i.i = and i16 %bf.load.i.i13.i.i.i.i, -193
  %bf.set.i.i.i.i.i.i = or i16 %bf.clear.i.i.i.i.i.i, %75
  store i16 %bf.set.i.i.i.i.i.i, ptr %l4_hash.i.i12.i.i.i.i, align 8
  %hash10.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 8
  %77 = ptrtoint ptr %hash10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %hash.011.i.i.i.i, ptr %hash10.i.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %skb.i.i.i, align 4
  %80 = ptrtoint ptr %pars_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %pars_flags.i.i.i, align 4
  %82 = and i16 %81, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %82)
  %cmp.i.i.i.i = icmp eq i16 %82, 512
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 17
  %83 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_type.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 8
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 16, i32 1
  %85 = ptrtoint ptr %gso_type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %..i.i.i.i, ptr %gso_type.i.i.i.i, align 8
  %86 = ptrtoint ptr %len_on_first_bd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %len_on_first_bd.i.i.i, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #13
  %header_len.i.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %header_len.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %header_len.i.i.i.i, align 1
  %conv5.i.i.i.i = zext i8 %90 to i16
  %sub.i.i.i.i = sub i16 %88, %conv5.i.i.i.i
  %91 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_size.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %gso_size.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %sub.i.i.i.i, ptr %gso_size.i.i.i.i, align 4
  br label %cons_buf.i.i.i

cons_buf.i.i.i:                                   ; preds = %qede_get_rxhash.exit.i.i.i, %do.end29.i.i.i
  %bw_ext_bd_len_list.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 11
  %94 = ptrtoint ptr %bw_ext_bd_len_list.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %bw_ext_bd_len_list.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool42.not.i.i.i = icmp eq i16 %95, 0
  br i1 %tobool42.not.i.i.i, label %cons_buf.i.i.i.if.end54.i.i.i_crit_edge, label %if.then49.i.i.i, !prof !130

cons_buf.i.i.i.if.end54.i.i.i_crit_edge:          ; preds = %cons_buf.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i.i.i

if.then49.i.i.i:                                  ; preds = %cons_buf.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %tpa_agg_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tpa_agg_index.i.i.i, align 4
  %98 = tail call i16 @llvm.bswap.i16(i16 %95) #13
  tail call fastcc void @qede_fill_frag_skb(ptr noundef %1, i8 noundef zeroext %97, i16 noundef zeroext %98) #13
  br label %if.end54.i.i.i

if.end54.i.i.i:                                   ; preds = %if.then49.i.i.i, %cons_buf.i.i.i.if.end54.i.i.i_crit_edge
  %arrayidx56.i.i.i = getelementptr %struct.eth_fast_path_rx_tpa_start_cqe, ptr %call.i, i32 0, i32 11, i32 1
  %99 = ptrtoint ptr %arrayidx56.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx56.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool57.not.i.i.i = icmp eq i16 %100, 0
  br i1 %tobool57.not.i.i.i, label %if.end54.i.i.i.qede_rx_process_cqe.exit_crit_edge, label %do.end68.i.i.i, !prof !129

if.end54.i.i.i.qede_rx_process_cqe.exit_crit_edge: ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

do.end68.i.i.i:                                   ; preds = %if.end54.i.i.i
  %101 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ndev.i31.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i130.i.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i130.i.i.i, label %do.end68.i.i.i.cond.end77.i.i.i_crit_edge, label %lor.lhs.false.i134.i.i.i

do.end68.i.i.i.cond.end77.i.i.i_crit_edge:        ; preds = %do.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end77.i.i.i

lor.lhs.false.i134.i.i.i:                         ; preds = %do.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i131.i.i.i = tail call ptr @strchr(ptr noundef %102, i32 noundef 37) #13
  %tobool2.not.i132.i.i.i = icmp eq ptr %call.i131.i.i.i, null
  %tobool72.not.i.i.i = icmp eq ptr %102, null
  %or.cond151.i.i.i = and i1 %tobool72.not.i.i.i, %tobool2.not.i132.i.i.i
  %spec.select.i140.i.i.i = select i1 %tobool2.not.i132.i.i.i, ptr %102, ptr @.str.19
  %spec.select152.i.i.i = select i1 %or.cond151.i.i.i, ptr @.str.3, ptr %spec.select.i140.i.i.i
  br label %cond.end77.i.i.i

cond.end77.i.i.i:                                 ; preds = %lor.lhs.false.i134.i.i.i, %do.end68.i.i.i.cond.end77.i.i.i_crit_edge
  %cond78.i.i.i = phi ptr [ @.str.19, %do.end68.i.i.i.cond.end77.i.i.i_crit_edge ], [ %spec.select152.i.i.i, %lor.lhs.false.i134.i.i.i ]
  %call79.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 882, ptr noundef %cond78.i.i.i) #16
  %state82.i.i.i = getelementptr %struct.qede_rx_queue, ptr %1, i32 0, i32 17, i32 %idxprom.i.i.i, i32 4
  %105 = ptrtoint ptr %state82.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %state82.i.i.i, align 1
  br label %qede_rx_process_cqe.exit

sw.bb1.i.i:                                       ; preds = %while.body
  %arrayidx30.i.i.i = getelementptr %struct.eth_fast_path_rx_tpa_cont_cqe, ptr %call.i, i32 0, i32 2, i32 0
  %106 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx30.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not31.i.i.i = icmp eq i16 %107, 0
  br i1 %tobool.not31.i.i.i, label %sw.bb1.i.i.qede_rx_process_cqe.exit_crit_edge, label %for.body.lr.ph.i.i.i

sw.bb1.i.i.qede_rx_process_cqe.exit_crit_edge:    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb1.i.i
  %tpa_agg_index.i8.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_cont_cqe, ptr %call.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %108 = phi i16 [ %107, %for.body.lr.ph.i.i.i ], [ %113, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %i.032.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %109 = ptrtoint ptr %tpa_agg_index.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tpa_agg_index.i8.i.i, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %108) #13
  tail call fastcc void @qede_fill_frag_skb(ptr noundef %1, i8 noundef zeroext %110, i16 noundef zeroext %111) #13
  %inc.i.i.i = add i32 %i.032.i.i.i, 1
  %arrayidx.i9.i.i = getelementptr %struct.eth_fast_path_rx_tpa_cont_cqe, ptr %call.i, i32 0, i32 2, i32 %inc.i.i.i
  %112 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i9.i.i, align 2
  %tobool.not.i10.i.i = icmp eq i16 %113, 0
  br i1 %tobool.not.i10.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i.i)
  %phi.cmp.i.i.i = icmp sgt i32 %inc.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %do.end.i13.i.i, label %for.end.i.i.i.qede_rx_process_cqe.exit_crit_edge, !prof !130

for.end.i.i.i.qede_rx_process_cqe.exit_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

do.end.i13.i.i:                                   ; preds = %for.end.i.i.i
  %114 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ndev.i31.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i.i12.i.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i.i12.i.i, label %do.end.i13.i.i.cond.end.i20.i.i_crit_edge, label %lor.lhs.false.i.i18.i.i

do.end.i13.i.i.cond.end.i20.i.i_crit_edge:        ; preds = %do.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i20.i.i

lor.lhs.false.i.i18.i.i:                          ; preds = %do.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i14.i.i = tail call ptr @strchr(ptr noundef %115, i32 noundef 37) #13
  %tobool2.not.i.i15.i.i = icmp eq ptr %call.i.i14.i.i, null
  %tobool7.not.i.i.i = icmp eq ptr %115, null
  %or.cond.i16.i.i = and i1 %tobool7.not.i.i.i, %tobool2.not.i.i15.i.i
  %spec.select.i23.i.i.i = select i1 %tobool2.not.i.i15.i.i, ptr %115, ptr @.str.19
  %spec.select.i17.i.i = select i1 %or.cond.i16.i.i, ptr @.str.3, ptr %spec.select.i23.i.i.i
  br label %cond.end.i20.i.i

cond.end.i20.i.i:                                 ; preds = %lor.lhs.false.i.i18.i.i, %do.end.i13.i.i.cond.end.i20.i.i_crit_edge
  %cond.i19.i.i = phi ptr [ @.str.19, %do.end.i13.i.i.cond.end.i20.i.i_crit_edge ], [ %spec.select.i17.i.i, %lor.lhs.false.i.i18.i.i ]
  %call10.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 968, ptr noundef %cond.i19.i.i) #16
  br label %qede_rx_process_cqe.exit

sw.bb2.i.i:                                       ; preds = %while.body
  %118 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rxq1, align 4
  %tpa_agg_index.i21.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 1
  %120 = ptrtoint ptr %tpa_agg_index.i21.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tpa_agg_index.i21.i.i, align 1
  %idxprom.i22.i.i = zext i8 %121 to i32
  %arrayidx.i23.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i
  %skb3.i.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i, i32 1
  %122 = ptrtoint ptr %skb3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %skb3.i.i.i, align 4
  %page_offset.i24.i.i = getelementptr inbounds %struct.sw_rx_data, ptr %arrayidx.i23.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %page_offset.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %page_offset.i24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %125)
  %cmp.i25.i.i = icmp eq i32 %125, 4096
  br i1 %cmp.i25.i.i, label %if.then.i.i.i, label %sw.bb2.i.i.if.end.i.i.i_crit_edge

sw.bb2.i.i.if.end.i.i.i_crit_edge:                ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 2
  %126 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i.i.i, align 8
  %mapping.i26.i.i = getelementptr inbounds %struct.sw_rx_data, ptr %arrayidx.i23.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %mapping.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mapping.i26.i.i, align 4
  %data_direction.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 7
  %130 = ptrtoint ptr %data_direction.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %data_direction.i.i.i, align 2
  %conv.i.i.i = zext i8 %131 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %127, i32 noundef %129, i32 noundef 4096, i32 noundef %conv.i.i.i, i32 noundef 0) #13
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %sw.bb2.i.i.if.end.i.i.i_crit_edge
  %arrayidx5205.i.i.i = getelementptr %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 7, i32 0
  %132 = ptrtoint ptr %arrayidx5205.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx5205.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not206.i.i.i = icmp eq i16 %133, 0
  br i1 %tobool.not206.i.i.i, label %if.end.i.i.i.if.end22.i.i.i_crit_edge, label %if.end.i.i.i.for.body.i29.i.i_crit_edge

if.end.i.i.i.for.body.i29.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %for.body.i29.i.i

if.end.i.i.i.if.end22.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i.i.i

for.body.i29.i.i:                                 ; preds = %for.body.i29.i.i.for.body.i29.i.i_crit_edge, %if.end.i.i.i.for.body.i29.i.i_crit_edge
  %134 = phi i16 [ %139, %for.body.i29.i.i.for.body.i29.i.i_crit_edge ], [ %133, %if.end.i.i.i.for.body.i29.i.i_crit_edge ]
  %i.0207.i.i.i = phi i32 [ %inc.i27.i.i, %for.body.i29.i.i.for.body.i29.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i29.i.i_crit_edge ]
  %135 = ptrtoint ptr %tpa_agg_index.i21.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %tpa_agg_index.i21.i.i, align 1
  %137 = tail call i16 @llvm.bswap.i16(i16 %134) #13
  tail call fastcc void @qede_fill_frag_skb(ptr noundef %119, i8 noundef zeroext %136, i16 noundef zeroext %137) #13
  %inc.i27.i.i = add i32 %i.0207.i.i.i, 1
  %arrayidx5.i.i.i = getelementptr %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 7, i32 %inc.i27.i.i
  %138 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx5.i.i.i, align 2
  %tobool.not.i28.i.i = icmp eq i16 %139, 0
  br i1 %tobool.not.i28.i.i, label %for.end.i30.i.i, label %for.body.i29.i.i.for.body.i29.i.i_crit_edge

for.body.i29.i.i.for.body.i29.i.i_crit_edge:      ; preds = %for.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i29.i.i

for.end.i30.i.i:                                  ; preds = %for.body.i29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i27.i.i)
  %cmp9.i.i.i = icmp sgt i32 %inc.i27.i.i, 1
  br i1 %cmp9.i.i.i, label %do.end.i33.i.i, label %for.end.i30.i.i.if.end22.i.i.i_crit_edge, !prof !130

for.end.i30.i.i.if.end22.i.i.i_crit_edge:         ; preds = %for.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i.i.i

do.end.i33.i.i:                                   ; preds = %for.end.i30.i.i
  %140 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ndev.i31.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i32.i.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i32.i.i, label %do.end.i33.i.i.cond.end.i40.i.i_crit_edge, label %lor.lhs.false.i.i38.i.i

do.end.i33.i.i.cond.end.i40.i.i_crit_edge:        ; preds = %do.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i40.i.i

lor.lhs.false.i.i38.i.i:                          ; preds = %do.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i34.i.i = tail call ptr @strchr(ptr noundef %141, i32 noundef 37) #13
  %tobool2.not.i.i35.i.i = icmp eq ptr %call.i.i34.i.i, null
  %tobool16.not.i.i.i = icmp eq ptr %141, null
  %or.cond.i36.i.i = and i1 %tobool16.not.i.i.i, %tobool2.not.i.i35.i.i
  %spec.select.i158.i.i.i = select i1 %tobool2.not.i.i35.i.i, ptr %141, ptr @.str.19
  %spec.select.i37.i.i = select i1 %or.cond.i36.i.i, ptr @.str.3, ptr %spec.select.i158.i.i.i
  br label %cond.end.i40.i.i

cond.end.i40.i.i:                                 ; preds = %lor.lhs.false.i.i38.i.i, %do.end.i33.i.i.cond.end.i40.i.i_crit_edge
  %cond.i39.i.i = phi ptr [ @.str.19, %do.end.i33.i.i.cond.end.i40.i.i_crit_edge ], [ %spec.select.i37.i.i, %lor.lhs.false.i.i38.i.i ]
  %call19.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 992, ptr noundef %cond.i39.i.i) #16
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %cond.end.i40.i.i, %for.end.i30.i.i.if.end22.i.i.i_crit_edge, %if.end.i.i.i.if.end22.i.i.i_crit_edge
  %state.i41.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i, i32 4
  %144 = ptrtoint ptr %state.i41.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %state.i41.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %145)
  %cmp24.not.i.i.i = icmp eq i8 %145, 1
  br i1 %cmp24.not.i.i.i, label %if.end33.i.i.i, label %err.i.i.i, !prof !129

if.end33.i.i.i:                                   ; preds = %if.end22.i.i.i
  %num_of_bds.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 3
  %146 = ptrtoint ptr %num_of_bds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %num_of_bds.i.i.i, align 4
  %conv34.i.i.i = zext i8 %147 to i32
  %frag_id.i42.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i, i32 5
  %148 = ptrtoint ptr %frag_id.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %frag_id.i42.i.i, align 4
  %conv35.i.i.i = zext i8 %149 to i32
  %add.i43.i.i = add nuw nsw i32 %conv35.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i43.i.i, i32 %conv34.i.i.i)
  %cmp36.not.i.i.i = icmp eq i32 %add.i43.i.i, %conv34.i.i.i
  br i1 %cmp36.not.i.i.i, label %if.end33.i.i.i.if.end66.i.i.i_crit_edge, label %do.end48.i.i.i, !prof !129

if.end33.i.i.i.if.end66.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i.i

do.end48.i.i.i:                                   ; preds = %if.end33.i.i.i
  %150 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ndev.i31.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i162.i.i.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i162.i.i.i, label %do.end48.i.i.i.cond.end57.i.i.i_crit_edge, label %lor.lhs.false.i166.i.i.i

do.end48.i.i.i.cond.end57.i.i.i_crit_edge:        ; preds = %do.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end57.i.i.i

lor.lhs.false.i166.i.i.i:                         ; preds = %do.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i163.i.i.i = tail call ptr @strchr(ptr noundef %151, i32 noundef 37) #13
  %tobool2.not.i164.i.i.i = icmp eq ptr %call.i163.i.i.i, null
  %tobool52.not.i.i.i = icmp eq ptr %151, null
  %or.cond203.i.i.i = and i1 %tobool52.not.i.i.i, %tobool2.not.i164.i.i.i
  %spec.select.i172.i.i.i = select i1 %tobool2.not.i164.i.i.i, ptr %151, ptr @.str.19
  %spec.select210.i.i.i = select i1 %or.cond203.i.i.i, ptr @.str.3, ptr %spec.select.i172.i.i.i
  br label %cond.end57.i.i.i

cond.end57.i.i.i:                                 ; preds = %lor.lhs.false.i166.i.i.i, %do.end48.i.i.i.cond.end57.i.i.i_crit_edge
  %cond58.i.i.i = phi ptr [ @.str.19, %do.end48.i.i.i.cond.end57.i.i.i_crit_edge ], [ %spec.select210.i.i.i, %lor.lhs.false.i166.i.i.i ]
  %call63.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 1001, ptr noundef %cond58.i.i.i, i32 noundef %conv34.i.i.i, i32 noundef %conv35.i.i.i) #16
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %cond.end57.i.i.i, %if.end33.i.i.i.if.end66.i.i.i_crit_edge
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 6
  %154 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len.i.i.i, align 4
  %total_packet_len.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 2
  %156 = ptrtoint ptr %total_packet_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %total_packet_len.i.i.i, align 2
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #13
  %conv67.i.i.i = zext i16 %158 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %conv67.i.i.i)
  %cmp68.not.i.i.i = icmp eq i32 %155, %conv67.i.i.i
  br i1 %cmp68.not.i.i.i, label %if.end66.i.i.i.if.end97.i.i.i_crit_edge, label %do.end80.i.i.i, !prof !129

if.end66.i.i.i.if.end97.i.i.i_crit_edge:          ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97.i.i.i

do.end80.i.i.i:                                   ; preds = %if.end66.i.i.i
  %159 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ndev.i31.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %160, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i176.i.i.i = icmp eq i8 %162, 0
  br i1 %tobool.not.i176.i.i.i, label %do.end80.i.i.i.cond.end89.i.i.i_crit_edge, label %lor.lhs.false.i180.i.i.i

do.end80.i.i.i.cond.end89.i.i.i_crit_edge:        ; preds = %do.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end89.i.i.i

lor.lhs.false.i180.i.i.i:                         ; preds = %do.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i177.i.i.i = tail call ptr @strchr(ptr noundef %160, i32 noundef 37) #13
  %tobool2.not.i178.i.i.i = icmp eq ptr %call.i177.i.i.i, null
  %tobool84.not.i.i.i = icmp eq ptr %160, null
  %or.cond204.i.i.i = and i1 %tobool84.not.i.i.i, %tobool2.not.i178.i.i.i
  %spec.select.i186.i.i.i = select i1 %tobool2.not.i178.i.i.i, ptr %160, ptr @.str.19
  %spec.select211.i.i.i = select i1 %or.cond204.i.i.i, ptr @.str.3, ptr %spec.select.i186.i.i.i
  br label %cond.end89.i.i.i

cond.end89.i.i.i:                                 ; preds = %lor.lhs.false.i180.i.i.i, %do.end80.i.i.i.cond.end89.i.i.i_crit_edge
  %cond90.i.i.i = phi ptr [ @.str.19, %do.end80.i.i.i.cond.end89.i.i.i_crit_edge ], [ %spec.select211.i.i.i, %lor.lhs.false.i180.i.i.i ]
  %call94.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, i32 noundef 1005, ptr noundef %cond90.i.i.i, i32 noundef %conv67.i.i.i, i32 noundef %155) #16
  br label %if.end97.i.i.i

if.end97.i.i.i:                                   ; preds = %cond.end89.i.i.i, %if.end66.i.i.i.if.end97.i.i.i_crit_edge
  %163 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ndev.i31.i.i, align 4
  %call99.i.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %123, ptr noundef %164) #13
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 18
  %165 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %call99.i.i.i, ptr %protocol.i.i.i, align 8
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15
  %166 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1537
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, 512
  store i16 %bf.set.i.i.i, ptr %ip_summed.i.i.i, align 8
  %num_of_coalesced_segs.i.i.i = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, ptr %call.i, i32 0, i32 5
  %167 = ptrtoint ptr %num_of_coalesced_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %num_of_coalesced_segs.i.i.i, align 2
  %169 = tail call i16 @llvm.bswap.i16(i16 %168) #13
  %count.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3, i32 16
  %170 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %count.i.i.i, align 8
  %vlan_tag.i44.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i, i32 2
  %171 = ptrtoint ptr %vlan_tag.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vlan_tag.i44.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 7
  %173 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i190.i.i.i = icmp eq i32 %174, 0
  %end.i.i.i45.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 17
  %175 = ptrtoint ptr %end.i.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end.i.i.i45.i.i, align 4
  br i1 %tobool.not.i190.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %if.end97.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %gso_type.i.i46.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %176, i32 0, i32 8
  %177 = ptrtoint ptr %gso_type.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %gso_type.i.i46.i.i, align 8
  %178 = ptrtoint ptr %end.i.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %end.i.i.i45.i.i, align 4
  %gso_size.i.i47.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %gso_size.i.i47.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %gso_size.i.i47.i.i, align 4
  br label %send_skb.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end97.i.i.i
  %gso_size6.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %176, i32 0, i32 4
  %181 = ptrtoint ptr %gso_size6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %gso_size6.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool7.not.i.i.i.i = icmp eq i16 %182, 0
  br i1 %tobool7.not.i.i.i.i, label %if.end.i.i.i.i.send_skb.i.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.end.i.i.i.i.send_skb.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_skb.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 19
  %183 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data.i.i.i.i.i, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 18
  %185 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %head.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %184 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %186 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %conv.i.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i.i to i16
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 20
  %187 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv.i.i.i.i.i, ptr %network_header.i.i.i.i.i, align 4
  %188 = zext i16 %call99.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %call99.i.i.i, label %do.end.i.i.i.i [
    i16 2048, label %sw.bb.i.i.i.i
    i16 -31011, label %sw.bb9.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i.i = and i32 %sub.ptr.sub.i.i.i.i.i, 65535
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %186, i32 %conv.i.i.i.i.i.i.i
  %transport_header.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 19
  %conv1.i.i.i.i.i.i = add i16 %conv.i.i.i.i.i, 20
  %189 = ptrtoint ptr %transport_header.i.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv1.i.i.i.i.i.i, ptr %transport_header.i.i.i.i.i.i.i, align 2
  %conv.i.i16.i.i.i.i.i = zext i16 %conv1.i.i.i.i.i.i to i32
  %add.ptr.i.i17.i.i.i.i.i = getelementptr i8, ptr %186, i32 %conv.i.i16.i.i.i.i.i
  %190 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %len.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr.i.i17.i.i.i.i.i to i32
  %saddr.i.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i.i.i, i32 0, i32 8
  %192 = ptrtoint ptr %saddr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %saddr.i.i.i.i.i, align 4
  %daddr.i.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i.i.i, i32 0, i32 9
  %194 = ptrtoint ptr %daddr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %daddr.i.i.i.i.i, align 4
  %sub.ptr.sub.i.neg.i.i.i.i.i = add i32 %sub.ptr.lhs.cast.i.i.i.i.i, 6
  %sub.i.i.i.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i.i.i, %sub.ptr.lhs.cast.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %sub.i.i.i.i.i, %191
  %196 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %195, i32 %193, i32 %add.i.i.i.i.i.i.i.i) #17, !srcloc !150
  %197 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %196) #17, !srcloc !151
  %neg.i.i.i.i.i.i.i.i = xor i32 %197, -1
  %shr.i.i.i.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i.i.i.i, 16
  %conv.i.i.i.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i.i.i.i to i16
  %neg.i.i.i.i.i = xor i16 %conv.i.i.i.i.i.i.i.i, -1
  %check.i.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i17.i.i.i.i.i, i32 0, i32 6
  %198 = ptrtoint ptr %check.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %neg.i.i.i.i.i, ptr %check.i.i.i.i.i, align 4
  %call5.i.i.i.i.i = tail call i32 @tcp_gro_complete(ptr noundef %123) #13
  br label %send_skb.i.i.i.i

sw.bb9.i.i.i.i:                                   ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i40.i.i.i.i = and i32 %sub.ptr.sub.i.i.i.i.i, 65535
  %add.ptr.i.i.i41.i.i.i.i = getelementptr i8, ptr %186, i32 %conv.i.i.i40.i.i.i.i
  %transport_header.i.i.i47.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 19
  %conv1.i.i48.i.i.i.i = add i16 %conv.i.i.i.i.i, 40
  %199 = ptrtoint ptr %transport_header.i.i.i47.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv1.i.i48.i.i.i.i, ptr %transport_header.i.i.i47.i.i.i.i, align 2
  %conv.i.i16.i49.i.i.i.i = zext i16 %conv1.i.i48.i.i.i.i to i32
  %add.ptr.i.i17.i50.i.i.i.i = getelementptr i8, ptr %186, i32 %conv.i.i16.i49.i.i.i.i
  %200 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %len.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i52.i.i.i.i = ptrtoint ptr %add.ptr.i.i17.i50.i.i.i.i to i32
  %sub.ptr.sub.i.neg.i53.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.lhs.cast.i.i52.i.i.i.i
  %sub.i54.i.i.i.i = add i32 %sub.ptr.sub.i.neg.i53.i.i.i.i, %201
  %saddr.i55.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i41.i.i.i.i, i32 0, i32 5
  %daddr.i56.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i41.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i55.i.i.i.i, ptr noundef %daddr.i56.i.i.i.i, i32 noundef %sub.i54.i.i.i.i, i32 noundef 6, i32 noundef 0) #13
  %202 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i.i.i.i) #17, !srcloc !151
  %neg.i.i.i.i57.i.i.i.i = xor i32 %202, -1
  %shr.i.i.i.i58.i.i.i.i = lshr i32 %neg.i.i.i.i57.i.i.i.i, 16
  %conv.i.i.i.i59.i.i.i.i = trunc i32 %shr.i.i.i.i58.i.i.i.i to i16
  %neg.i60.i.i.i.i = xor i16 %conv.i.i.i.i59.i.i.i.i, -1
  %check.i61.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i17.i50.i.i.i.i, i32 0, i32 6
  %203 = ptrtoint ptr %check.i61.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %neg.i60.i.i.i.i, ptr %check.i61.i.i.i.i, align 4
  %call5.i62.i.i.i.i = tail call i32 @tcp_gro_complete(ptr noundef %123) #13
  br label %send_skb.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then8.i.i.i.i
  %204 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ndev.i31.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %205, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i.i.i.i.i = icmp eq i8 %207, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.end.i.i.i.i.cond.end.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

do.end.i.i.i.i.cond.end.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call ptr @strchr(ptr noundef %205, i32 noundef 37) #13
  %tobool2.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  %tobool12.not.i.i.i.i = icmp eq ptr %205, null
  %or.cond.i.i.i.i = and i1 %tobool12.not.i.i.i.i, %tobool2.not.i.i.i.i.i
  %spec.select.i66.i.i.i.i = select i1 %tobool2.not.i.i.i.i.i, ptr %205, ptr @.str.19
  %spec.select.i191.i.i.i = select i1 %or.cond.i.i.i.i, ptr @.str.3, ptr %spec.select.i66.i.i.i.i
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i.i, %do.end.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ @.str.19, %do.end.i.i.i.i.cond.end.i.i.i.i_crit_edge ], [ %spec.select.i191.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %conv16.i.i.i.i = zext i16 %call99.i.i.i to i32
  %call17.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 946, ptr noundef %cond.i.i.i.i, i32 noundef %conv16.i.i.i.i) #16
  br label %send_skb.i.i.i.i

send_skb.i.i.i.i:                                 ; preds = %cond.end.i.i.i.i, %sw.bb9.i.i.i.i, %sw.bb.i.i.i.i, %if.end.i.i.i.i.send_skb.i.i.i.i_crit_edge, %if.then.i.i.i.i
  %208 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rxq1, align 4
  %rxq_id.i.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %209, i32 0, i32 8
  %210 = ptrtoint ptr %rxq_id.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %rxq_id.i.i.i.i, align 1
  %conv20.i.i.i.i = zext i8 %211 to i16
  %add.i.i.i.i.i = add nuw nsw i16 %conv20.i.i.i.i, 1
  %queue_mapping.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 10
  %212 = ptrtoint ptr %queue_mapping.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %add.i.i.i.i.i, ptr %queue_mapping.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %tobool.not.i70.i.i.i.i = icmp eq i16 %172, 0
  br i1 %tobool.not.i70.i.i.i.i, label %send_skb.i.i.i.i.qede_gro_receive.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i

send_skb.i.i.i.i.qede_gro_receive.exit.i.i.i_crit_edge: ; preds = %send_skb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_gro_receive.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %send_skb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_proto1.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 9
  %213 = ptrtoint ptr %vlan_proto1.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -32512, ptr %vlan_proto1.i.i.i.i.i.i, align 8
  %vlan_tci2.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 10
  %214 = ptrtoint ptr %vlan_tci2.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %172, ptr %vlan_tci2.i.i.i.i.i.i, align 2
  %vlan_present.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 3
  %215 = ptrtoint ptr %vlan_present.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %bf.load.i.i.i.i.i.i = load i32, ptr %vlan_present.i.i.i.i.i.i, align 2
  %bf.set.i.i.i.i48.i.i = or i32 %bf.load.i.i.i.i.i.i, -2147483648
  store i32 %bf.set.i.i.i.i48.i.i, ptr %vlan_present.i.i.i.i.i.i, align 2
  br label %qede_gro_receive.exit.i.i.i

qede_gro_receive.exit.i.i.i:                      ; preds = %if.then.i.i.i.i.i, %send_skb.i.i.i.i.qede_gro_receive.exit.i.i.i_crit_edge
  %call.i71.i.i.i.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i.i.i.i.i, ptr noundef %123) #13
  %216 = ptrtoint ptr %state.i41.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %state.i41.i.i, align 1
  br label %qede_rx_process_cqe.exit

err.i.i.i:                                        ; preds = %if.end22.i.i.i
  %217 = ptrtoint ptr %state.i41.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %state.i41.i.i, align 1
  %tpa_start_fail.i49.i.i = getelementptr %struct.qede_rx_queue, ptr %119, i32 0, i32 17, i32 %idxprom.i22.i.i, i32 3
  %218 = ptrtoint ptr %tpa_start_fail.i49.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %tpa_start_fail.i49.i.i, align 2, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool102.not.i.i.i = icmp eq i8 %219, 0
  br i1 %tobool102.not.i.i.i, label %err.i.i.i.if.end106.i.i.i_crit_edge, label %if.then103.i.i.i

err.i.i.i.if.end106.i.i.i_crit_edge:              ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106.i.i.i

if.then103.i.i.i:                                 ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rx_bd_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 14
  %call.i50.i.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i.i.i) #13
  %sw_rx_ring.i51.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 13
  %220 = ptrtoint ptr %sw_rx_ring.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %sw_rx_ring.i51.i.i, align 4
  %sw_rx_prod.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 5
  %222 = ptrtoint ptr %sw_rx_prod.i.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %sw_rx_prod.i.i.i, align 2
  %224 = and i16 %223, 8191
  %and.i52.i.i = zext i16 %224 to i32
  %arrayidx.i53.i.i = getelementptr %struct.sw_rx_data, ptr %221, i32 %and.i52.i.i
  %225 = call ptr @memcpy(ptr %arrayidx.i53.i.i, ptr %arrayidx.i23.i.i, i32 12)
  %mapping.i54.i.i = getelementptr %struct.sw_rx_data, ptr %221, i32 %and.i52.i.i, i32 1
  %226 = ptrtoint ptr %mapping.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mapping.i54.i.i, align 4
  %page_offset.i55.i.i = getelementptr %struct.sw_rx_data, ptr %221, i32 %and.i52.i.i, i32 2
  %228 = ptrtoint ptr %page_offset.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %page_offset.i55.i.i, align 4
  %add.i56.i.i = add i32 %229, %227
  %hi.i.i.i = getelementptr inbounds %struct.regpair, ptr %call.i50.i.i, i32 0, i32 1
  %230 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %hi.i.i.i, align 4
  %rx_headroom.i57.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %119, i32 0, i32 10
  %231 = ptrtoint ptr %rx_headroom.i57.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %rx_headroom.i57.i.i, align 2
  %conv3.i58.i.i = zext i16 %232 to i32
  %add4.i.i.i = add i32 %add.i56.i.i, %conv3.i58.i.i
  %233 = tail call i32 @llvm.bswap.i32(i32 %add4.i.i.i) #13
  %234 = ptrtoint ptr %call.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %call.i50.i.i, align 4
  %235 = ptrtoint ptr %sw_rx_prod.i.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %sw_rx_prod.i.i.i, align 2
  %inc.i59.i.i = add i16 %236, 1
  store i16 %inc.i59.i.i, ptr %sw_rx_prod.i.i.i, align 2
  %237 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %arrayidx.i23.i.i, align 4
  %238 = ptrtoint ptr %tpa_start_fail.i49.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %tpa_start_fail.i49.i.i, align 2
  br label %if.end106.i.i.i

if.end106.i.i.i:                                  ; preds = %if.then103.i.i.i, %err.i.i.i.if.end106.i.i.i_crit_edge
  %239 = ptrtoint ptr %skb3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %skb3.i.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %240, i32 noundef 1) #13
  %241 = ptrtoint ptr %skb3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %skb3.i.i.i, align 4
  br label %qede_rx_process_cqe.exit

if.end9.i:                                        ; preds = %while.body
  %242 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %244 = and i16 %243, 8191
  %245 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %idxprom.i = zext i16 %244 to i32
  %arrayidx.i = getelementptr %struct.sw_rx_data, ptr %246, i32 %idxprom.i
  %len_on_first_bd.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 6
  %247 = ptrtoint ptr %len_on_first_bd.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %len_on_first_bd.i, align 4
  %249 = tail call i16 @llvm.bswap.i16(i16 %248) #13
  %250 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %len.i, align 2
  %placement_offset.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 7
  %251 = ptrtoint ptr %placement_offset.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %placement_offset.i, align 2
  %conv12.i = zext i8 %252 to i16
  %253 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %rx_headroom.i.i.i, align 2
  %add.i = add i16 %254, %conv12.i
  %255 = ptrtoint ptr %pad.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %add.i, ptr %pad.i, align 2
  %tobool15.not.i = icmp eq ptr %12, null
  br i1 %tobool15.not.i, label %if.end9.i.if.end20.i_crit_edge, label %if.then16.i

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end9.i
  %call17.i = call fastcc zeroext i1 @qede_rx_xdp(ptr noundef %3, ptr noundef %fp, ptr noundef %1, ptr noundef nonnull %12, ptr noundef %arrayidx.i, ptr noundef %call.i, ptr noundef nonnull %pad.i, ptr noundef nonnull %len.i) #13
  br i1 %call17.i, label %if.then16.i.if.end20.i_crit_edge, label %if.then16.i.qede_rx_process_cqe.exit_crit_edge

if.then16.i.qede_rx_process_cqe.exit_crit_edge:   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

if.then16.i.if.end20.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i.if.end20.i_crit_edge, %if.end9.i.if.end20.i_crit_edge
  %pars_flags.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 3
  %256 = ptrtoint ptr %pars_flags.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %pars_flags.i, align 4
  %258 = tail call i16 @llvm.bswap.i16(i16 %257) #13
  %259 = and i16 %258, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %259)
  %tobool.i.not.i.i = icmp eq i16 %259, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end20.i
  %conv.i.i133.i = zext i16 %258 to i32
  %and.i.i134.i = and i32 %conv.i.i133.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134.i)
  %tobool.not.i.i135.i = icmp eq i32 %and.i.i134.i, 0
  %spec.select.i.i136.i = select i1 %tobool.not.i.i135.i, i32 512, i32 1536
  %260 = lshr exact i32 %and.i.i134.i, 5
  %and8.i.i.i = and i32 %spec.select.i.i136.i, %conv.i.i133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then.i.i.if.end37.i_crit_edge, label %if.then.i.i.if.then32.i_crit_edge

if.then.i.i.if.then32.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

if.then.i.i.if.end37.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.else.i.i:                                      ; preds = %if.end20.i
  %and.i5.i.i = shl i16 %258, 1
  %261 = and i16 %and.i5.i.i, -32768
  %262 = and i16 %258, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %tobool5.not.i.i.i = icmp eq i16 %262, 0
  %263 = shl nuw nsw i16 %262, 4
  %264 = or i16 %263, %261
  %tcsum.0.i.i.i = select i1 %tobool5.not.i.i.i, i32 2, i32 6
  %265 = or i16 %264, 8704
  %and1629.i.i.i = and i16 %265, %258
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1629.i.i.i)
  %tobool17.not.i.i.i = icmp eq i16 %and1629.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.else.i.i.if.end37.i_crit_edge, label %if.else.i.i.if.then32.i_crit_edge

if.else.i.i.if.then32.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

if.else.i.i.if.end37.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.else.i.i.if.then32.i_crit_edge, %if.then.i.i.if.then32.i_crit_edge
  %tunnel_pars_flags.i.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 8
  %266 = ptrtoint ptr %tunnel_pars_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %tunnel_pars_flags.i.i, align 1
  %268 = and i8 %267, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.not.i.i = icmp ne i8 %268, 0
  %269 = and i16 %258, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %tobool3.not.i.i = icmp ne i16 %269, 0
  %not.or.cond.i.i = or i1 %tobool3.not.i.i, %tobool.not.i.i
  %rx_ip_frags.sink228.i = select i1 %not.or.cond.i.i, ptr %rx_ip_frags.i, ptr %rx_hw_errors.i
  %270 = ptrtoint ptr %rx_ip_frags.sink228.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %rx_ip_frags.sink228.i, align 8
  %inc.i = add i64 %271, 1
  store i64 %inc.i, ptr %rx_ip_frags.sink228.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %if.else.i.i.if.end37.i_crit_edge, %if.then.i.i.if.end37.i_crit_edge
  %retval.0.i137209.i = phi i32 [ %tcsum.0.i.i.i, %if.else.i.i.if.end37.i_crit_edge ], [ %260, %if.then.i.i.if.end37.i_crit_edge ], [ 1, %if.then32.i ]
  %272 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %len.i, align 2
  %274 = ptrtoint ptr %pad.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %pad.i, align 2
  %conv.i.i = zext i16 %273 to i32
  %conv1.i.i = zext i16 %275 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %276 = ptrtoint ptr %rx_copybreak.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rx_copybreak.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %277)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %277
  br i1 %cmp.not.i.i, label %if.end13.i.i, label %if.then.i140.i

if.then.i140.i:                                   ; preds = %if.end37.i
  %page_offset.i.i = getelementptr %struct.sw_rx_data, ptr %246, i32 %idxprom.i, i32 2
  %278 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %page_offset.i.i, align 4
  %280 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ndev.i31.i.i, align 4
  %call.i.i138.i = tail call ptr @__netdev_alloc_skb(ptr noundef %281, i32 noundef 256, i32 noundef 2592) #13
  %tobool.not.i139.i = icmp eq ptr %call.i.i138.i, null
  br i1 %tobool.not.i139.i, label %if.then.i140.i.if.then40.i_crit_edge, label %if.end.i.i, !prof !130

if.then.i140.i.if.then40.i_crit_edge:             ; preds = %if.then.i140.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

if.end.i.i:                                       ; preds = %if.then.i140.i
  call void @__sanitizer_cov_trace_pc() #15
  %add4.i.i = add i32 %279, %conv1.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i138.i, i32 0, i32 19
  %282 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %283, i32 %conv1.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i138.i, i32 0, i32 16
  %284 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %285, i32 %conv1.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %286 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i, align 4
  %call10.i.i = tail call ptr @page_address(ptr noundef %287) #13
  %add.ptr.i.i = getelementptr i8, ptr %call10.i.i, i32 %add4.i.i
  %call.i45.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i138.i, i32 noundef %conv.i.i) #13
  %288 = call ptr @memcpy(ptr %call.i45.i.i, ptr %add.ptr.i.i, i32 %conv.i.i)
  %call.i46.i.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %289 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %291 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %293 = and i16 %292, 8191
  %and.i.i144.i = zext i16 %293 to i32
  %arrayidx.i.i145.i = getelementptr %struct.sw_rx_data, ptr %290, i32 %and.i.i144.i
  %294 = call ptr @memcpy(ptr %arrayidx.i.i145.i, ptr %arrayidx.i, i32 12)
  %mapping.i.i146.i = getelementptr %struct.sw_rx_data, ptr %290, i32 %and.i.i144.i, i32 1
  %295 = ptrtoint ptr %mapping.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %mapping.i.i146.i, align 4
  %page_offset.i.i147.i = getelementptr %struct.sw_rx_data, ptr %290, i32 %and.i.i144.i, i32 2
  %297 = ptrtoint ptr %page_offset.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %page_offset.i.i147.i, align 4
  %add.i.i148.i = add i32 %298, %296
  %hi.i.i149.i = getelementptr inbounds %struct.regpair, ptr %call.i46.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %hi.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %hi.i.i149.i, align 4
  %300 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %rx_headroom.i.i.i, align 2
  %conv3.i.i151.i = zext i16 %301 to i32
  %add4.i.i152.i = add i32 %add.i.i148.i, %conv3.i.i151.i
  %302 = tail call i32 @llvm.bswap.i32(i32 %add4.i.i152.i) #13
  %303 = ptrtoint ptr %call.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %call.i46.i.i, align 4
  %304 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %inc.i.i153.i = add i16 %305, 1
  store i16 %inc.i.i153.i, ptr %sw_rx_prod.i.i143.i, align 2
  %306 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %arrayidx.i, align 4
  br label %qede_rx_build_skb.exit.i

if.end13.i.i:                                     ; preds = %if.end37.i
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i, align 4
  %call.i47.i.i = tail call ptr @page_address(ptr noundef %308) #13
  %page_offset.i48.i.i = getelementptr %struct.sw_rx_data, ptr %246, i32 %idxprom.i, i32 2
  %309 = ptrtoint ptr %page_offset.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %page_offset.i48.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %call.i47.i.i, i32 %310
  %311 = ptrtoint ptr %rx_buf_seg_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %rx_buf_seg_size.i.i.i, align 32
  %call1.i.i.i = tail call ptr @build_skb(ptr noundef %add.ptr.i49.i.i, i32 noundef %312) #13
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i.i, i32 0, i32 19
  %313 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %314, i32 %conv1.i.i
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i.i, i32 0, i32 16
  %315 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %316, i32 %conv1.i.i
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call3.i.i.i = tail call ptr @skb_put(ptr noundef %call1.i.i.i, i32 noundef %conv.i.i) #13
  %call15.i.i = tail call fastcc i32 @qede_realloc_rx_buffer(ptr noundef %1, ptr noundef %arrayidx.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.qede_rx_build_skb.exit.i_crit_edge, label %if.then23.i.i, !prof !129

if.end13.i.i.qede_rx_build_skb.exit.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_build_skb.exit.i

if.then23.i.i:                                    ; preds = %if.end13.i.i
  %317 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx.i, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %318, i32 0, i32 3
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #13
  %319 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #13, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@qede_rx_int, %if.then.i53)) #13
          to label %page_ref_inc.exit [label %if.then.i53], !srcloc !154

if.then.i53:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %318, i32 noundef 1) #13
  br label %page_ref_inc.exit

page_ref_inc.exit:                                ; preds = %if.then.i53, %if.then23.i.i
  tail call void @__dev_kfree_skb_any(ptr noundef %call1.i.i.i, i32 noundef 1) #13
  br label %if.then40.i

qede_rx_build_skb.exit.i:                         ; preds = %if.end13.i.i.qede_rx_build_skb.exit.i_crit_edge, %if.end.i.i
  %skb.0.i.i = phi ptr [ %call1.i.i.i, %if.end13.i.i.qede_rx_build_skb.exit.i_crit_edge ], [ %call.i.i138.i, %if.end.i.i ]
  %call.i51.i.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %320 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %inc.i52.i.i = add i16 %321, 1
  store i16 %inc.i52.i.i, ptr %sw_rx_cons.i.i.i, align 16
  %tobool39.not.i = icmp eq ptr %skb.0.i.i, null
  br i1 %tobool39.not.i, label %qede_rx_build_skb.exit.i.if.then40.i_crit_edge, label %if.end42.i

qede_rx_build_skb.exit.i.if.then40.i_crit_edge:   ; preds = %qede_rx_build_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

if.then40.i:                                      ; preds = %qede_rx_build_skb.exit.i.if.then40.i_crit_edge, %page_ref_inc.exit, %if.then.i140.i.if.then40.i_crit_edge
  %322 = ptrtoint ptr %rx_alloc_errors.i to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %rx_alloc_errors.i, align 16
  %inc41.i = add i64 %323, 1
  store i64 %inc41.i, ptr %rx_alloc_errors.i, align 16
  %bd_num.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 9
  %324 = ptrtoint ptr %bd_num.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %bd_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %cmp.not10.i.i = icmp eq i8 %325, 0
  br i1 %cmp.not10.i.i, label %if.then40.i.qede_rx_process_cqe.exit_crit_edge, label %if.then40.i.for.body.i.i_crit_edge

if.then40.i.for.body.i.i_crit_edge:               ; preds = %if.then40.i
  br label %for.body.i.i

if.then40.i.qede_rx_process_cqe.exit_crit_edge:   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then40.i.for.body.i.i_crit_edge
  %count.addr.011.i.i = phi i8 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %325, %if.then40.i.for.body.i.i_crit_edge ]
  %326 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %328 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %330 = and i16 %329, 8191
  %and.i.i = zext i16 %330 to i32
  %arrayidx.i.i = getelementptr %struct.sw_rx_data, ptr %327, i32 %and.i.i
  %call.i.i158.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %331 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %333 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %335 = and i16 %334, 8191
  %and.i.i159.i = zext i16 %335 to i32
  %arrayidx.i.i160.i = getelementptr %struct.sw_rx_data, ptr %332, i32 %and.i.i159.i
  %336 = call ptr @memcpy(ptr %arrayidx.i.i160.i, ptr %arrayidx.i.i, i32 12)
  %mapping.i.i161.i = getelementptr %struct.sw_rx_data, ptr %332, i32 %and.i.i159.i, i32 1
  %337 = ptrtoint ptr %mapping.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %mapping.i.i161.i, align 4
  %page_offset.i.i162.i = getelementptr %struct.sw_rx_data, ptr %332, i32 %and.i.i159.i, i32 2
  %339 = ptrtoint ptr %page_offset.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %page_offset.i.i162.i, align 4
  %add.i.i163.i = add i32 %340, %338
  %hi.i.i164.i = getelementptr inbounds %struct.regpair, ptr %call.i.i158.i, i32 0, i32 1
  %341 = ptrtoint ptr %hi.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %hi.i.i164.i, align 4
  %342 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %rx_headroom.i.i.i, align 2
  %conv3.i.i165.i = zext i16 %343 to i32
  %add4.i.i166.i = add i32 %add.i.i163.i, %conv3.i.i165.i
  %344 = tail call i32 @llvm.bswap.i32(i32 %add4.i.i166.i) #13
  %345 = ptrtoint ptr %call.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %call.i.i158.i, align 4
  %346 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %inc.i.i167.i = add i16 %347, 1
  store i16 %inc.i.i167.i, ptr %sw_rx_prod.i.i143.i, align 2
  %348 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %arrayidx.i.i, align 4
  %call.i8.i.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %349 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %inc.i9.i.i = add i16 %350, 1
  store i16 %inc.i9.i.i, ptr %sw_rx_cons.i.i.i, align 16
  %dec.i.i = add i8 %count.addr.011.i.i, -1
  %cmp.not.i168.i = icmp eq i8 %dec.i.i, 0
  br i1 %cmp.not.i168.i, label %for.body.i.i.qede_rx_process_cqe.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.qede_rx_process_cqe.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_rx_process_cqe.exit

if.end42.i:                                       ; preds = %qede_rx_build_skb.exit.i
  %bd_num43.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 9
  %351 = ptrtoint ptr %bd_num43.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %bd_num43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %352)
  %cmp45.i = icmp ugt i8 %352, 1
  br i1 %cmp45.i, label %for.body.lr.ph.i172.i, label %if.end42.i.if.end62.i_crit_edge

if.end42.i.if.end62.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

for.body.lr.ph.i172.i:                            ; preds = %if.end42.i
  %pkt_len1.i.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 2
  %353 = ptrtoint ptr %pkt_len1.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %pkt_len1.i.i, align 2
  %355 = tail call i16 @llvm.bswap.i16(i16 %354) #13
  %sub.i.i = sub i16 %355, %273
  %num_frags.0147.i.i = add i8 %352, -1
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 17
  br label %for.body.i174.i

for.body.i174.i:                                  ; preds = %cleanup.i.i.for.body.i174.i_crit_edge, %for.body.lr.ph.i172.i
  %num_frags.0150.i.i = phi i8 [ %num_frags.0147.i.i, %for.body.lr.ph.i172.i ], [ %num_frags.0.i.i, %cleanup.i.i.for.body.i174.i_crit_edge ]
  %pkt_len.0149.i.i = phi i16 [ %sub.i.i, %for.body.lr.ph.i172.i ], [ %conv49.i.i, %cleanup.i.i.for.body.i174.i_crit_edge ]
  %conv9.i.i = zext i16 %pkt_len.0149.i.i to i32
  %356 = ptrtoint ptr %rx_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %rx_buf_size.i.i, align 4
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 %conv9.i.i) #13
  %conv14.i.i = trunc i32 %358 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv14.i.i)
  %tobool.not.i173.i = icmp eq i16 %conv14.i.i, 0
  br i1 %tobool.not.i173.i, label %do.end.i.i, label %if.end.i178.i, !prof !130

do.end.i.i:                                       ; preds = %for.body.i174.i
  %conv7.le143.i.i = zext i8 %num_frags.0150.i.i to i32
  %359 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ndev.i31.i.i, align 4
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %360, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool.not.i.i176.i = icmp eq i8 %362, 0
  br i1 %tobool.not.i.i176.i, label %do.end.i.i.cond.end24.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.cond.end24.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end24.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i177.i = tail call ptr @strchr(ptr noundef %360, i32 noundef 37) #13
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i177.i, null
  %tobool19.not.i.i = icmp eq ptr %360, null
  %or.cond.i.i = and i1 %tobool19.not.i.i, %tobool2.not.i.i.i
  %spec.select.i108.i.i = select i1 %tobool2.not.i.i.i, ptr %360, ptr @.str.19
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.3, ptr %spec.select.i108.i.i
  br label %cond.end24.i.i

cond.end24.i.i:                                   ; preds = %lor.lhs.false.i.i.i, %do.end.i.i.cond.end24.i.i_crit_edge
  %cond25.i.i = phi ptr [ @.str.19, %do.end.i.i.cond.end24.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i.i ]
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 1189, ptr noundef %cond25.i.i, i32 noundef %conv7.le143.i.i) #16
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i178.i.for.body.i.preheader_crit_edge, %cond.end24.i.i
  br label %for.body.i

if.end.i178.i:                                    ; preds = %for.body.i174.i
  %call30.i.i = tail call i32 @qede_alloc_rx_buffer(ptr noundef %1, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %cleanup.i.i, label %if.end.i178.i.for.body.i.preheader_crit_edge, !prof !129

if.end.i178.i.for.body.i.preheader_crit_edge:     ; preds = %if.end.i178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

cleanup.i.i:                                      ; preds = %if.end.i178.i
  %363 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %365 = and i16 %364, 8191
  %366 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %idxprom.i.i = zext i16 %365 to i32
  %arrayidx.i179.i = getelementptr %struct.sw_rx_data, ptr %367, i32 %idxprom.i.i
  %call.i112.i.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %368 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %inc.i.i180.i = add i16 %369, 1
  store i16 %inc.i.i180.i, ptr %sw_rx_cons.i.i.i, align 16
  %370 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev.i.i, align 8
  %mapping.i.i = getelementptr %struct.sw_rx_data, ptr %367, i32 %idxprom.i.i, i32 1
  %372 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %mapping.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %371, i32 noundef %373, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #13
  %374 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %375, i32 0, i32 2
  %376 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %nr_frags.i.i, align 2
  %conv43.i.i = zext i8 %377 to i32
  %378 = ptrtoint ptr %arrayidx.i179.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx.i179.i, align 4
  %380 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %rx_headroom.i.i.i, align 2
  %conv44.i.i = zext i16 %381 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %skb.0.i.i, i32 noundef %conv43.i.i, ptr noundef %379, i32 noundef %conv44.i.i, i32 noundef %358, i32 noundef 4096) #13
  %conv49.i.i = sub i16 %pkt_len.0149.i.i, %conv14.i.i
  %num_frags.0.i.i = add i8 %num_frags.0150.i.i, -1
  %cmp.not.i181.i = icmp eq i8 %num_frags.0.i.i, 0
  br i1 %cmp.not.i181.i, label %for.end.i.i, label %cleanup.i.i.for.body.i174.i_crit_edge

cleanup.i.i.for.body.i174.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i174.i

for.end.i.i:                                      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv49.i.i)
  %tobool50.not.i.i = icmp eq i16 %conv49.i.i, 0
  br i1 %tobool50.not.i.i, label %for.end.i.i.if.end62.i_crit_edge, label %do.end61.i.i, !prof !129

for.end.i.i.if.end62.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

do.end61.i.i:                                     ; preds = %for.end.i.i
  %382 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ndev.i31.i.i, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %383, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %tobool.not.i113.i.i = icmp eq i8 %385, 0
  br i1 %tobool.not.i113.i.i, label %do.end61.i.i.cond.end70.i.i_crit_edge, label %lor.lhs.false.i117.i.i

do.end61.i.i.cond.end70.i.i_crit_edge:            ; preds = %do.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end70.i.i

lor.lhs.false.i117.i.i:                           ; preds = %do.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i114.i.i = tail call ptr @strchr(ptr noundef %383, i32 noundef 37) #13
  %tobool2.not.i115.i.i = icmp eq ptr %call.i114.i.i, null
  %tobool65.not.i.i = icmp eq ptr %383, null
  %or.cond137.i.i = and i1 %tobool65.not.i.i, %tobool2.not.i115.i.i
  %spec.select.i123.i.i = select i1 %tobool2.not.i115.i.i, ptr %383, ptr @.str.19
  %spec.select156.i.i = select i1 %or.cond137.i.i, ptr @.str.3, ptr %spec.select.i123.i.i
  br label %cond.end70.i.i

cond.end70.i.i:                                   ; preds = %lor.lhs.false.i117.i.i, %do.end61.i.i.cond.end70.i.i_crit_edge
  %cond71.i.i = phi ptr [ @.str.19, %do.end61.i.i.cond.end70.i.i_crit_edge ], [ %spec.select156.i.i, %lor.lhs.false.i117.i.i ]
  %conv72.i.i = zext i16 %conv49.i.i to i32
  %call73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 1216, ptr noundef %cond71.i.i, i32 noundef %conv72.i.i) #16
  br label %if.end62.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %count.addr.011.i = phi i8 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %num_frags.0150.i.i, %for.body.i.preheader ]
  %386 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %388 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %390 = and i16 %389, 8191
  %and.i = zext i16 %390 to i32
  %arrayidx.i44 = getelementptr %struct.sw_rx_data, ptr %387, i32 %and.i
  %call.i.i45 = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %391 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %393 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %395 = and i16 %394, 8191
  %and.i.i46 = zext i16 %395 to i32
  %arrayidx.i.i47 = getelementptr %struct.sw_rx_data, ptr %392, i32 %and.i.i46
  %396 = call ptr @memcpy(ptr %arrayidx.i.i47, ptr %arrayidx.i44, i32 12)
  %mapping.i.i48 = getelementptr %struct.sw_rx_data, ptr %392, i32 %and.i.i46, i32 1
  %397 = ptrtoint ptr %mapping.i.i48 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %mapping.i.i48, align 4
  %page_offset.i.i49 = getelementptr %struct.sw_rx_data, ptr %392, i32 %and.i.i46, i32 2
  %399 = ptrtoint ptr %page_offset.i.i49 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %page_offset.i.i49, align 4
  %add.i.i50 = add i32 %400, %398
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %call.i.i45, i32 0, i32 1
  %401 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 0, ptr %hi.i.i, align 4
  %402 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %rx_headroom.i.i.i, align 2
  %conv3.i.i = zext i16 %403 to i32
  %add4.i.i51 = add i32 %add.i.i50, %conv3.i.i
  %404 = tail call i32 @llvm.bswap.i32(i32 %add4.i.i51) #13
  %405 = ptrtoint ptr %call.i.i45 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %call.i.i45, align 4
  %406 = ptrtoint ptr %sw_rx_prod.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %sw_rx_prod.i.i143.i, align 2
  %inc.i.i = add i16 %407, 1
  store i16 %inc.i.i, ptr %sw_rx_prod.i.i143.i, align 2
  %408 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr null, ptr %arrayidx.i44, align 4
  %call.i8.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i.i.i) #13
  %409 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %inc.i9.i = add i16 %410, 1
  store i16 %inc.i9.i, ptr %sw_rx_cons.i.i.i, align 16
  %dec.i = add i8 %count.addr.011.i, -1
  %cmp.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp.not.i, label %qede_recycle_rx_bd_ring.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

qede_recycle_rx_bd_ring.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.0.i.i, i32 noundef 1) #13
  br label %qede_rx_process_cqe.exit

if.end62.i:                                       ; preds = %cond.end70.i.i, %for.end.i.i.if.end62.i_crit_edge, %if.end42.i.if.end62.i_crit_edge
  %411 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %ndev.i31.i.i, align 4
  %call63.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0.i.i, ptr noundef %412) #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 18
  %413 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %call63.i, ptr %protocol.i, align 8
  %bitfields.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 1
  %414 = ptrtoint ptr %bitfields.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %bitfields.i, align 1
  %rss_hash.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 5
  %416 = ptrtoint ptr %rss_hash.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %rss_hash.i, align 4
  %trunc.i.i = trunc i8 %415 to i3
  %418 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %418, ptr @__sancov_gen_cov_switch_values.68)
  switch i3 %trunc.i.i, label %420 [
    i3 0, label %if.end62.i.qede_get_rxhash.exit.i_crit_edge
    i3 1, label %if.end62.i.if.end.thread14.i.i_crit_edge
    i3 3, label %if.end62.i.if.end.thread14.i.i_crit_edge79
  ]

if.end62.i.if.end.thread14.i.i_crit_edge79:       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread14.i.i

if.end62.i.if.end.thread14.i.i_crit_edge:         ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread14.i.i

if.end62.i.qede_get_rxhash.exit.i_crit_edge:      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_get_rxhash.exit.i

if.end.thread14.i.i:                              ; preds = %if.end62.i.if.end.thread14.i.i_crit_edge, %if.end62.i.if.end.thread14.i.i_crit_edge79
  %419 = tail call i32 @llvm.bswap.i32(i32 %417) #13
  br label %qede_get_rxhash.exit.i

420:                                              ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  %421 = tail call i32 @llvm.bswap.i32(i32 %417) #13
  br label %qede_get_rxhash.exit.i

qede_get_rxhash.exit.i:                           ; preds = %420, %if.end.thread14.i.i, %if.end62.i.qede_get_rxhash.exit.i_crit_edge
  %hash.011.i.i = phi i32 [ %421, %420 ], [ %419, %if.end.thread14.i.i ], [ 0, %if.end62.i.qede_get_rxhash.exit.i_crit_edge ]
  %422 = phi i16 [ 128, %420 ], [ 0, %if.end.thread14.i.i ], [ 0, %if.end62.i.qede_get_rxhash.exit.i_crit_edge ]
  %l4_hash.i.i12.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15
  %423 = ptrtoint ptr %l4_hash.i.i12.i.i to i32
  call void @__asan_load2_noabort(i32 %423)
  %bf.load.i.i13.i.i = load i16, ptr %l4_hash.i.i12.i.i, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i13.i.i, -193
  %bf.set.i.i.i.i = or i16 %bf.clear.i.i.i.i, %422
  store i16 %bf.set.i.i.i.i, ptr %l4_hash.i.i12.i.i, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 8
  %424 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %hash.011.i.i, ptr %hash10.i.i.i.i, align 4
  %and.i183.i = and i32 %retval.0.i137209.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183.i)
  %tobool.not.i184.i = icmp eq i32 %and.i183.i, 0
  br i1 %tobool.not.i184.i, label %qede_get_rxhash.exit.i.if.end.i187.i_crit_edge, label %if.then.i185.i

qede_get_rxhash.exit.i.if.end.i187.i_crit_edge:   ; preds = %qede_get_rxhash.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i187.i

if.then.i185.i:                                   ; preds = %qede_get_rxhash.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear.i.i = and i16 %bf.set.i.i.i.i, -1601
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  %425 = ptrtoint ptr %l4_hash.i.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 %bf.set.i.i, ptr %l4_hash.i.i12.i.i, align 8
  br label %if.end.i187.i

if.end.i187.i:                                    ; preds = %if.then.i185.i, %qede_get_rxhash.exit.i.if.end.i187.i_crit_edge
  %and2.i.i = and i32 %retval.0.i137209.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i186.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i186.i, label %if.end.i187.i.qede_set_skb_csum.exit.i_crit_edge, label %if.then4.i.i

if.end.i187.i.qede_set_skb_csum.exit.i_crit_edge: ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_set_skb_csum.exit.i

if.then4.i.i:                                     ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #15
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 3
  %426 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %426, i32 4)
  %bf.load5.i.i = load i32, ptr %csum_level.i.i, align 2
  %bf.clear6.i.i = and i32 %bf.load5.i.i, -805306369
  %bf.set7.i.i = or i32 %bf.clear6.i.i, 268435456
  store i32 %bf.set7.i.i, ptr %csum_level.i.i, align 2
  %427 = ptrtoint ptr %l4_hash.i.i12.i.i to i32
  call void @__asan_load2_noabort(i32 %427)
  %bf.load8.i.i = load i16, ptr %l4_hash.i.i12.i.i, align 8
  %bf.set10.i.i = or i16 %bf.load8.i.i, 4
  store i16 %bf.set10.i.i, ptr %l4_hash.i.i12.i.i, align 8
  br label %qede_set_skb_csum.exit.i

qede_set_skb_csum.exit.i:                         ; preds = %if.then4.i.i, %if.end.i187.i.qede_set_skb_csum.exit.i_crit_edge
  %428 = ptrtoint ptr %rxq_id.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %rxq_id.i, align 1
  %conv64.i = zext i8 %429 to i16
  %add.i188.i = add nuw nsw i16 %conv64.i, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 10
  %430 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %add.i188.i, ptr %queue_mapping.i.i, align 8
  %431 = ptrtoint ptr %pars_flags.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %pars_flags.i, align 4
  %433 = tail call i16 @llvm.bswap.i16(i16 %432) #13
  %conv.i189.i = zext i16 %433 to i32
  %and.i190.i = and i32 %conv.i189.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190.i)
  %tobool.not.i191.i = icmp eq i32 %and.i190.i, 0
  br i1 %tobool.not.i191.i, label %qede_set_skb_csum.exit.i.qede_ptp_record_rx_ts.exit.i_crit_edge, label %if.then.i192.i, !prof !129

qede_set_skb_csum.exit.i.qede_ptp_record_rx_ts.exit.i_crit_edge: ; preds = %qede_set_skb_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_ptp_record_rx_ts.exit.i

if.then.i192.i:                                   ; preds = %qede_set_skb_csum.exit.i
  %and6.i.i = and i32 %conv.i189.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i.i, label %if.then14.i.i, !prof !130

if.then14.i.i:                                    ; preds = %if.then.i192.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qede_ptp_rx_ts(ptr noundef %3, ptr noundef nonnull %skb.0.i.i) #13
  br label %qede_ptp_record_rx_ts.exit.i

do.body.i.i:                                      ; preds = %if.then.i192.i
  %434 = ptrtoint ptr %dp_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %dp_level.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %435)
  %cmp.i.i = icmp ult i8 %435, 2
  br i1 %cmp.i.i, label %do.end.i195.i, label %do.body.i.i.qede_ptp_record_rx_ts.exit.i_crit_edge, !prof !130

do.body.i.i.qede_ptp_record_rx_ts.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_ptp_record_rx_ts.exit.i

do.end.i195.i:                                    ; preds = %do.body.i.i
  %436 = ptrtoint ptr %ndev.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ndev.i31.i.i, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %437, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %tobool.not.i.i194.i = icmp eq i8 %439, 0
  br i1 %tobool.not.i.i194.i, label %do.end.i195.i.cond.end.i.i_crit_edge, label %lor.lhs.false.i.i200.i

do.end.i195.i.cond.end.i.i_crit_edge:             ; preds = %do.end.i195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

lor.lhs.false.i.i200.i:                           ; preds = %do.end.i195.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i196.i = tail call ptr @strchr(ptr noundef %437, i32 noundef 37) #13
  %tobool2.not.i.i197.i = icmp eq ptr %call.i.i196.i, null
  %tobool25.not.i.i = icmp eq ptr %437, null
  %or.cond.i198.i = and i1 %tobool25.not.i.i, %tobool2.not.i.i197.i
  %spec.select.i39.i.i = select i1 %tobool2.not.i.i197.i, ptr %437, ptr @.str.19
  %spec.select.i199.i = select i1 %or.cond.i198.i, ptr @.str.3, ptr %spec.select.i39.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %lor.lhs.false.i.i200.i, %do.end.i195.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.19, %do.end.i195.i.cond.end.i.i_crit_edge ], [ %spec.select.i199.i, %lor.lhs.false.i.i200.i ]
  %call28.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 34, ptr noundef %cond.i.i) #16
  br label %qede_ptp_record_rx_ts.exit.i

qede_ptp_record_rx_ts.exit.i:                     ; preds = %cond.end.i.i, %do.body.i.i.qede_ptp_record_rx_ts.exit.i_crit_edge, %if.then14.i.i, %qede_set_skb_csum.exit.i.qede_ptp_record_rx_ts.exit.i_crit_edge
  %vlan_tag.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call.i, i32 0, i32 4
  %440 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %vlan_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %441)
  %tobool.not.i201.i = icmp eq i16 %441, 0
  br i1 %tobool.not.i201.i, label %qede_ptp_record_rx_ts.exit.i.qede_skb_receive.exit.i_crit_edge, label %if.then.i204.i

qede_ptp_record_rx_ts.exit.i.qede_skb_receive.exit.i_crit_edge: ; preds = %qede_ptp_record_rx_ts.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_skb_receive.exit.i

if.then.i204.i:                                   ; preds = %qede_ptp_record_rx_ts.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %442 = tail call i16 @llvm.bswap.i16(i16 %441) #13
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 9
  %443 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 10
  %444 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 %442, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 15, i32 0, i32 3
  %445 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %445, i32 4)
  %bf.load.i.i202.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i203.i = or i32 %bf.load.i.i202.i, -2147483648
  store i32 %bf.set.i.i203.i, ptr %vlan_present.i.i.i, align 2
  br label %qede_skb_receive.exit.i

qede_skb_receive.exit.i:                          ; preds = %if.then.i204.i, %qede_ptp_record_rx_ts.exit.i.qede_skb_receive.exit.i_crit_edge
  %call.i.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i.i.i.i.i, ptr noundef nonnull %skb.0.i.i) #13
  br label %qede_rx_process_cqe.exit

qede_rx_process_cqe.exit:                         ; preds = %qede_skb_receive.exit.i, %qede_recycle_rx_bd_ring.exit, %for.body.i.i.qede_rx_process_cqe.exit_crit_edge, %if.then40.i.qede_rx_process_cqe.exit_crit_edge, %if.then16.i.qede_rx_process_cqe.exit_crit_edge, %if.end106.i.i.i, %qede_gro_receive.exit.i.i.i, %cond.end.i20.i.i, %for.end.i.i.i.qede_rx_process_cqe.exit_crit_edge, %sw.bb1.i.i.qede_rx_process_cqe.exit_crit_edge, %cond.end77.i.i.i, %if.end54.i.i.i.qede_rx_process_cqe.exit_crit_edge, %if.then.i, %while.body.qede_rx_process_cqe.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.then.i ], [ 1, %qede_skb_receive.exit.i ], [ 0, %if.then16.i.qede_rx_process_cqe.exit_crit_edge ], [ 0, %qede_recycle_rx_bd_ring.exit ], [ 0, %if.end54.i.i.i.qede_rx_process_cqe.exit_crit_edge ], [ 0, %cond.end77.i.i.i ], [ 0, %sw.bb1.i.i.qede_rx_process_cqe.exit_crit_edge ], [ 0, %for.end.i.i.i.qede_rx_process_cqe.exit_crit_edge ], [ 0, %cond.end.i20.i.i ], [ 0, %if.end106.i.i.i ], [ 1, %qede_gro_receive.exit.i.i.i ], [ 0, %if.then40.i.qede_rx_process_cqe.exit_crit_edge ], [ 0, %while.body.qede_rx_process_cqe.exit_crit_edge ], [ 0, %for.body.i.i.qede_rx_process_cqe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pad.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %len.i) #13
  %add = add i32 %retval.1.i, %rcv_pkts.061
  %446 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %447)
  %cmp.i = icmp eq i32 %447, 0
  br i1 %cmp.i, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %qede_rx_process_cqe.exit
  %448 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %u.i, align 4
  %450 = ptrtoint ptr %elem_per_page_mask13.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %elem_per_page_mask13.i, align 2
  %and52.i = and i16 %451, %449
  %452 = ptrtoint ptr %usable_per_page16.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %usable_per_page16.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i, i16 %453)
  %cmp3.i = icmp eq i16 %and52.i, %453
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i37.if.then31.i_crit_edge

if.then.i37.if.then31.i_crit_edge:                ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31.i

if.then5.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #15
  %454 = ptrtoint ptr %elem_unusable21.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %elem_unusable21.i, align 2
  %conv6.i = zext i8 %455 to i16
  %add.i38 = add i16 %449, %conv6.i
  %456 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 %add.i38, ptr %u.i, align 4
  br label %if.then31.i

if.else.i:                                        ; preds = %qede_rx_process_cqe.exit
  %457 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %u.i, align 4
  %459 = ptrtoint ptr %elem_per_page_mask13.i to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %elem_per_page_mask13.i, align 2
  %conv14.i = zext i16 %460 to i32
  %and15.i = and i32 %458, %conv14.i
  %461 = ptrtoint ptr %usable_per_page16.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %usable_per_page16.i, align 4
  %conv17.i = zext i16 %462 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %conv17.i)
  %cmp18.i = icmp eq i32 %and15.i, %conv17.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i.if.else34.i_crit_edge

if.else.i.if.else34.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else34.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %463 = ptrtoint ptr %elem_unusable21.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %elem_unusable21.i, align 2
  %conv22.i = zext i8 %464 to i32
  %add25.i = add i32 %458, %conv22.i
  %465 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %add25.i, ptr %u.i, align 4
  br label %if.else34.i

if.then31.i:                                      ; preds = %if.then5.i, %if.then.i37.if.then31.i_crit_edge
  %466 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %u.i, align 4
  %inc.i39 = add i16 %467, 1
  store i16 %inc.i39, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit

if.else34.i:                                      ; preds = %if.then20.i, %if.else.i.if.else34.i_crit_edge
  %468 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %u.i, align 4
  %inc37.i = add i32 %469, 1
  store i32 %inc37.i, ptr %u.i, align 4
  br label %qed_chain_recycle_consumed.exit

qed_chain_recycle_consumed.exit:                  ; preds = %if.else34.i, %if.then31.i
  %470 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %cons_idx.i, align 2
  %inc = add nuw nsw i32 %work_done.060, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %471, i16 %8)
  %cmp.not = icmp ne i16 %471, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp5 = icmp slt i32 %inc, %budget
  %or.cond = select i1 %cmp.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %qed_chain_recycle_consumed.exit.while.body_crit_edge, label %qed_chain_recycle_consumed.exit.while.end_crit_edge

qed_chain_recycle_consumed.exit.while.end_crit_edge: ; preds = %qed_chain_recycle_consumed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

qed_chain_recycle_consumed.exit.while.body_crit_edge: ; preds = %qed_chain_recycle_consumed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %qed_chain_recycle_consumed.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %qed_chain_recycle_consumed.exit.while.end_crit_edge ]
  %rcv_pkts.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %qed_chain_recycle_consumed.exit.while.end_crit_edge ]
  %conv11 = sext i32 %rcv_pkts.0.lcssa to i64
  %rcv_pkts12 = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 18
  %472 = ptrtoint ptr %rcv_pkts12 to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %rcv_pkts12, align 32
  %add13 = add i64 %473, %conv11
  store i64 %add13, ptr %rcv_pkts12, align 32
  %num_rx_buffers = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 9
  %filled_buffers = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 6
  br label %while.cond14

while.cond14:                                     ; preds = %while.body17.while.cond14_crit_edge, %while.end
  %474 = ptrtoint ptr %num_rx_buffers to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %num_rx_buffers, align 8
  %476 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %filled_buffers, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %475, i16 %477)
  %tobool.not = icmp eq i16 %475, %477
  br i1 %tobool.not, label %while.cond14.while.end20_crit_edge, label %while.body17

while.cond14.while.end20_crit_edge:               ; preds = %while.cond14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end20

while.body17:                                     ; preds = %while.cond14
  %call18 = tail call i32 @qede_alloc_rx_buffer(ptr noundef %1, i1 noundef zeroext false)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.body17.while.cond14_crit_edge, label %while.body17.while.end20_crit_edge

while.body17.while.end20_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end20

while.body17.while.cond14_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond14

while.end20:                                      ; preds = %while.body17.while.end20_crit_edge, %while.cond14.while.end20_crit_edge
  %u.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 14, i32 3
  %478 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %u.i.i, align 4
  %480 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %u.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !138
  tail call void @arm_heavy_mb() #13
  %hw_rxq_prod_addr.i = getelementptr inbounds %struct.qede_rx_queue, ptr %1, i32 0, i32 1
  %482 = ptrtoint ptr %hw_rxq_prod_addr.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %hw_rxq_prod_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void @arm_heavy_mb() #13
  %484 = zext i16 %479 to i32
  %485 = zext i16 %481 to i32
  %486 = shl nuw i32 %485, 16
  %487 = or i32 %486, %484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %483, i32 %487) #13, !srcloc !134
  ret i32 %work_done.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_msix_fp_int(i32 noundef %irq, ptr noundef %fp_cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_info = getelementptr inbounds %struct.qede_fastpath, ptr %fp_cookie, i32 0, i32 5
  %0 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_info, align 8
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_ack.i, align 4
  %or3.i = or i32 %3, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #13
  %igu_addr.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #13, !srcloc !134
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  %napi = getelementptr inbounds %struct.qede_fastpath, ptr %fp_cookie, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule_irqoff.exit_crit_edge

entry.napi_schedule_irqoff.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_schedule_irqoff.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #13
  br label %napi_schedule_irqoff.exit

napi_schedule_irqoff.exit:                        ; preds = %if.then.i, %entry.napi_schedule_irqoff.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_start_xmit(ptr noundef %skb, ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %num_queues = getelementptr i8, ptr %ndev, i32 2442
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_queues, align 2
  %conv2 = zext i16 %3 to i32
  %fp_num_rx = getelementptr i8, ptr %ndev, i32 2439
  %4 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fp_num_rx, align 1
  %conv3 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv2, %conv3
  %num_tc = getelementptr i8, ptr %ndev, i32 2413
  %6 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tc, align 1
  %conv4 = zext i8 %7 to i32
  %mul = mul nsw i32 %sub, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp.not = icmp sgt i32 %mul, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !129

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fp_array = getelementptr i8, ptr %ndev, i32 2428
  %8 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fp_array, align 4
  %10 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fp_num_rx, align 1
  %conv25 = zext i8 %11 to i32
  %12 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_queues, align 2
  %conv28 = zext i16 %13 to i32
  %sub31 = sub nsw i32 %conv28, %conv25
  %conv.frozen = freeze i32 %conv
  %sub31.frozen = freeze i32 %sub31
  %div = sdiv i32 %conv.frozen, %sub31.frozen
  %14 = mul i32 %div, %sub31.frozen
  %rem.decomposed = sub i32 %conv.frozen, %14
  %add = add nuw nsw i32 %rem.decomposed, %conv25
  %txq32 = getelementptr %struct.qede_fastpath, ptr %9, i32 %add, i32 7
  %15 = ptrtoint ptr %txq32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txq32, align 8
  %arrayidx39 = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %18, i32 %conv
  %tx_pbl = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15
  %capacity.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15, i32 4
  %19 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capacity.i, align 4
  %u.i.i.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15, i32 3
  %21 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.i.i = icmp ult i16 %22, %24
  %add.i.i = or i32 %conv.i.i, 65536
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %conv.i.i
  %25 = trunc i32 %spec.select.i.i to i16
  %conv5.i.i = sub i16 %25, %24
  %mode.i.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15, i32 6
  %26 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.i.i = icmp eq i32 %27, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end.qed_chain_get_elem_left.exit_crit_edge

if.end.qed_chain_get_elem_left.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_left.exit

if.then8.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %elem_per_page3.i.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15, i32 7
  %28 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %29 to i32
  %div.i.i = udiv i32 %spec.select.i.i, %conv9.i.i
  %30 = udiv i16 %24, %29
  %31 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %31
  %sub16.i.i = add i16 %conv13.neg.i.i, %30
  br label %qed_chain_get_elem_left.exit

qed_chain_get_elem_left.exit:                     ; preds = %if.then8.i.i, %if.end.qed_chain_get_elem_left.exit_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %if.end.qed_chain_get_elem_left.exit_crit_edge ]
  %32 = trunc i32 %20 to i16
  %conv1.i = sub i16 %32, %used.0.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %conv1.i)
  %cmp45 = icmp ult i16 %conv1.i, 18
  br i1 %cmp45, label %do.end62, label %qed_chain_get_elem_left.exit.if.end68_crit_edge, !prof !130

qed_chain_get_elem_left.exit.if.end68_crit_edge:  ; preds = %qed_chain_get_elem_left.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

do.end62:                                         ; preds = %qed_chain_get_elem_left.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1500, i32 noundef 9, ptr noundef null) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %qed_chain_get_elem_left.exit.if.end68_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %34 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %34)
  %cmp.not.i = icmp eq i16 %34, 1536
  br i1 %cmp.not.i, label %if.end.i, label %if.end68.qede_pkt_req_lin.exit_crit_edge

if.end68.qede_pkt_req_lin.exit_crit_edge:         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_pkt_req_lin.exit

if.end.i:                                         ; preds = %if.end68
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %37 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %38 to i32
  %39 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %36, label %if.end.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end.i.if.then.i.i.i_crit_edge973
  ]

if.end.i.if.then.i.i.i_crit_edge973:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.end.i.vlan_get_protocol.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge973
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %cmp.i.i.i = icmp ult i16 %38, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !130

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.end10.i

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %40 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  %41 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !148
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %40, align 2, !annotation !148
  %43 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %47 = add i32 %vlan_depth.1.i.i.i, %46
  %sub.i1.i.i.i.i = sub i32 %44, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !129

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %49, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !130
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %50 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !130
  br i1 %50, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !130

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  br label %if.end10.i

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %52, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge974
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge974: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge974
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.end.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %36, %if.end.i.vlan_get_protocol.exit.i_crit_edge ], [ %52, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i.i)
  %cmp3.i = icmp eq i16 %retval.2.i.i.i, -31011
  br i1 %cmp3.i, label %land.lhs.true.i, label %vlan_get_protocol.exit.i.if.end10.i_crit_edge

vlan_get_protocol.exit.i.if.end10.i_crit_edge:    ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %56 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i49.i = zext i16 %57 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 %conv.i.i49.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %59)
  %cmp7.i = icmp eq i8 %59, 41
  %spec.select938 = zext i1 %cmp7.i to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i, %vlan_get_protocol.exit.i.if.end10.i_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %ipv6_ext.0 = phi i32 [ 0, %vlan_get_protocol.exit.i.if.end10.i_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ 0, %do.end.i.i.i ], [ %spec.select938, %land.lhs.true.i ]
  %60 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load11.i = load i16, ptr %ip_summed.i, align 8
  %61 = and i16 %bf.load11.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i = icmp eq i16 %61, 0
  br i1 %tobool.not.i, label %if.end10.i.if.end31.i_crit_edge, label %if.then15.i

if.end10.i.if.end31.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then15.i:                                      ; preds = %if.end10.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.i.not.i = icmp eq i16 %65, 0
  br i1 %tobool.i.not.i, label %if.then15.i.if.end31.i_crit_edge, label %if.then17.i

if.then15.i.if.end31.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  %gso_type19.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 8
  %66 = ptrtoint ptr %gso_type19.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %gso_type19.i, align 8
  %68 = and i32 %67, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %69 = icmp eq i32 %68, 0
  %rc.0.i = select i1 %69, i32 7, i32 15
  br label %qede_xmit_type.exit

if.end31.i:                                       ; preds = %if.then15.i.if.end31.i_crit_edge, %if.end10.i.if.end31.i_crit_edge
  %rc.1.i = phi i32 [ 5, %if.then15.i.if.end31.i_crit_edge ], [ 1, %if.end10.i.if.end31.i_crit_edge ]
  %end.i.i50.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %70 = ptrtoint ptr %end.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i.i50.i, align 4
  %gso_size.i51.i = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %gso_size.i51.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %gso_size.i51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.i52.not.i = icmp eq i16 %73, 0
  %or34.i = or i32 %rc.1.i, 2
  %spec.select.i = select i1 %tobool.i52.not.i, i32 %rc.1.i, i32 %or34.i
  br label %qede_xmit_type.exit

qede_xmit_type.exit:                              ; preds = %if.end31.i, %if.then17.i
  %retval.0.i = phi i32 [ %rc.0.i, %if.then17.i ], [ %spec.select.i, %if.end31.i ]
  %and.i = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i733 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i733, label %qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge, label %if.then.i

qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge: ; preds = %qede_xmit_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %qede_pkt_req_lin.exit

if.then.i:                                        ; preds = %qede_xmit_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and2.i = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %head.i.i.i734 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %74 = ptrtoint ptr %head.i.i.i734 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i.i734, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.sink.i.i = select i1 %tobool3.not.i, ptr %transport_header.i.i.i, ptr %inner_transport_header.i.i.i
  %76 = ptrtoint ptr %transport_header.i.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %transport_header.i.sink.i.i, align 2
  %conv.i16.i.i = zext i16 %77 to i32
  %add.ptr.i17.i.i = getelementptr i8, ptr %75, i32 %conv.i16.i.i
  %doff.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i17.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i.i.i.i = load i16, ptr %doff.i.i.i.i, align 4
  %79 = lshr i16 %bf.load.i.i.i.i, 10
  %80 = and i16 %79, 60
  %mul.i.i.i.i = zext i16 %80 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 %mul.i.i.i.i
  %data5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %81 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data5.i.i, align 4
  %sub.ptr.lhs.cast6.i.i = ptrtoint ptr %add.ptr4.i.i to i32
  %sub.ptr.rhs.cast7.i.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i, %sub.ptr.rhs.cast7.i.i
  %conv4.i = and i32 %sub.ptr.sub8.i.i, 65535
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %83 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %84, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv4.i)
  %cmp.i = icmp ugt i32 %sub.i.i, %conv4.i
  %spec.select.i735 = select i1 %cmp.i, i32 16, i32 17
  br label %qede_pkt_req_lin.exit

qede_pkt_req_lin.exit:                            ; preds = %if.then.i, %qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge, %if.end68.qede_pkt_req_lin.exit_crit_edge
  %retval.0.i902 = phi i32 [ %retval.0.i, %if.then.i ], [ %retval.0.i, %qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge ], [ 0, %if.end68.qede_pkt_req_lin.exit_crit_edge ]
  %ipv6_ext.1901 = phi i32 [ %ipv6_ext.0, %if.then.i ], [ %ipv6_ext.0, %qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge ], [ 0, %if.end68.qede_pkt_req_lin.exit_crit_edge ]
  %allowed_frags.1.i = phi i32 [ %spec.select.i735, %if.then.i ], [ 17, %qede_xmit_type.exit.qede_pkt_req_lin.exit_crit_edge ], [ 17, %if.end68.qede_pkt_req_lin.exit_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %87 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nr_frags.i, align 2
  %conv10.i = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %allowed_frags.1.i, i32 %conv10.i)
  %cmp11.i = icmp ult i32 %allowed_frags.1.i, %conv10.i
  br i1 %cmp11.i, label %if.then79, label %qede_pkt_req_lin.exit.if.end84_crit_edge

qede_pkt_req_lin.exit.if.end84_crit_edge:         ; preds = %qede_pkt_req_lin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then79:                                        ; preds = %qede_pkt_req_lin.exit
  %data_len.i.i736 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i.i736 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i.i736, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not.i737 = icmp eq i32 %92, 0
  br i1 %tobool.i.not.i737, label %if.then79.if.end84_crit_edge, label %cond.true.i

if.then79.if.end84_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

cond.true.i:                                      ; preds = %if.then79
  %call.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %92) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then82, label %cond.true.i.if.end84_crit_edge

cond.true.i.if.end84_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then82:                                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_mem_alloc_err = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 7
  %93 = ptrtoint ptr %tx_mem_alloc_err to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %tx_mem_alloc_err, align 8
  %inc = add i64 %94, 1
  store i64 %inc, ptr %tx_mem_alloc_err, align 8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

if.end84:                                         ; preds = %cond.true.i.if.end84_crit_edge, %if.then79.if.end84_crit_edge, %qede_pkt_req_lin.exit.if.end84_crit_edge
  %sw_tx_prod = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 3
  %95 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sw_tx_prod, align 4
  %sw_tx_ring = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 14
  %97 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sw_tx_ring, align 8
  %idxprom = zext i16 %96 to i32
  %arrayidx85 = getelementptr %struct.sw_tx_bd, ptr %98, i32 %idxprom
  %99 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %skb, ptr %arrayidx85, align 4
  %call88 = call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %100 = call ptr @memset(ptr %call88, i32 0, i32 16)
  %data = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call88, i32 0, i32 2
  %bd_flags = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call88, i32 0, i32 2, i32 2
  %101 = ptrtoint ptr %bd_flags to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %bd_flags, align 1
  %102 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tx_flags, align 1
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool91.not = icmp eq i8 %106, 0
  br i1 %tobool91.not, label %if.end84.if.end99_crit_edge, label %if.then98, !prof !129

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then98:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  call void @qede_ptp_tx_ts(ptr noundef %add.ptr.i, ptr noundef %skb) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end84.if.end99_crit_edge
  %dev = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 9
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %data100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %109 = ptrtoint ptr %data100 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data100, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %111 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %113 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i, align 8
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %110) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end99
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i739, !prof !129

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i739:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %108) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 3
  %115 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i738 = icmp eq ptr %116, null
  br i1 %tobool.not.i.i738, label %if.end.i.i, label %if.then.i739.dev_name.exit.i_crit_edge

if.then.i739.dev_name.exit.i_crit_edge:           ; preds = %if.then.i739
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i739
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %108, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i739.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %118, %if.end.i.i ], [ %116, %if.then.i739.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %120, i32 noundef -1) #13
  br label %do.body113

dma_map_single_attrs.exit:                        ; preds = %if.end99
  %sub.i = sub i32 %112, %114
  call void @debug_dma_map_single(ptr noundef %108, ptr noundef %110, i32 noundef %sub.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %121 = load ptr, ptr @mem_map, align 4
  %122 = ptrtoint ptr %110 to i32
  %sub.i740 = add i32 %122, 1073741824
  %shr.i = lshr i32 %sub.i740, 12
  %add.ptr.i741 = getelementptr %struct.page, ptr %121, i32 %shr.i
  %and.i742 = and i32 %122, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %108, ptr noundef %add.ptr.i741, i32 noundef %and.i742, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #13
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %124, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i744 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i744, label %dma_map_single_attrs.exit.do.body113_crit_edge, label %if.end137

dma_map_single_attrs.exit.do.body113_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body113

do.body113:                                       ; preds = %dma_map_single_attrs.exit.do.body113_crit_edge, %dma_map_single_attrs.exit.thread
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %125 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp115 = icmp ult i8 %126, 3
  br i1 %cmp115, label %do.end126, label %do.body113.do.end136_crit_edge, !prof !130

do.body113.do.end136_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end136

do.end126:                                        ; preds = %do.body113
  %ndev128 = getelementptr i8, ptr %ndev, i32 2308
  %127 = ptrtoint ptr %ndev128 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ndev128, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i745 = icmp eq i8 %130, 0
  br i1 %tobool.not.i745, label %do.end126.cond.end_crit_edge, label %lor.lhs.false.i

do.end126.cond.end_crit_edge:                     ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #15
  %call.i746 = call ptr @strchr(ptr noundef %128, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i746, null
  %tobool130.not = icmp eq ptr %128, null
  %or.cond = and i1 %tobool130.not, %tobool2.not.i
  %spec.select.i752 = select i1 %tobool2.not.i, ptr %128, ptr @.str.19
  %spec.select961 = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i752
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end126.cond.end_crit_edge
  %cond = phi ptr [ @.str.19, %do.end126.cond.end_crit_edge ], [ %spec.select961, %lor.lhs.false.i ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1531, ptr noundef %cond) #16
  br label %do.end136

do.end136:                                        ; preds = %cond.end, %do.body113.do.end136_crit_edge
  call fastcc void @qede_free_failed_tx_pkt(ptr noundef %arrayidx39, ptr noundef %call88, i32 noundef 0, i1 noundef zeroext false)
  call fastcc void @qede_update_tx_producer(ptr noundef %arrayidx39)
  br label %cleanup

if.end137:                                        ; preds = %dma_map_single_attrs.exit
  %hi = getelementptr inbounds %struct.regpair, ptr %call88, i32 0, i32 1
  %131 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %hi, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %call41.i)
  %133 = ptrtoint ptr %call88 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %call88, align 4
  %134 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len.i, align 4
  %136 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %data_len.i, align 8
  %sub.i758 = sub i32 %135, %137
  %conv144 = trunc i32 %sub.i758 to i16
  %138 = call i16 @llvm.bswap.i16(i16 %conv144)
  %nbytes = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call88, i32 0, i32 1
  %139 = ptrtoint ptr %nbytes to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %nbytes, align 4
  %and148 = and i32 %retval.0.i902, 2
  %or = or i32 %and148, %ipv6_ext.1901
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool149.not = icmp eq i32 %or, 0
  br i1 %tobool149.not, label %if.end137.if.end163_crit_edge, label %if.then156, !prof !129

if.end137.if.end163_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.then156:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %call158 = call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %140 = call ptr @memset(ptr %call158, i32 0, i32 16)
  %call161 = call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %141 = call ptr @memset(ptr %call161, i32 0, i32 16)
  br label %if.end163

if.end163:                                        ; preds = %if.then156, %if.end137.if.end163_crit_edge
  %nbd.0 = phi i8 [ 3, %if.then156 ], [ 1, %if.end137.if.end163_crit_edge ]
  %third_bd.0 = phi ptr [ %call161, %if.then156 ], [ null, %if.end137.if.end163_crit_edge ]
  %second_bd.0 = phi ptr [ %call158, %if.then156 ], [ null, %if.end137.if.end163_crit_edge ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %142 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool164.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool164.not, label %if.end163.if.end173_crit_edge, label %if.then165

if.end163.if.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

if.then165:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %143 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vlan_tci, align 2
  %145 = call i16 @llvm.bswap.i16(i16 %144)
  %146 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %data, align 2
  %147 = ptrtoint ptr %bd_flags to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bd_flags, align 1
  %149 = or i8 %148, 16
  store i8 %149, ptr %bd_flags, align 1
  br label %if.end173

if.end173:                                        ; preds = %if.then165, %if.end163.if.end173_crit_edge
  %and175 = and i32 %retval.0.i902, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.if.end218_crit_edge, label %if.then177

if.end173.if.end218_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

if.then177:                                       ; preds = %if.end173
  %150 = ptrtoint ptr %bd_flags to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bd_flags, align 1
  %and185 = and i32 %retval.0.i902, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  %spec.select.v = select i1 %tobool186.not, i8 8, i8 12
  %spec.select = or i8 %151, %spec.select.v
  %not.tobool186.not = xor i1 %tobool186.not, true
  %spec.select731 = zext i1 %not.tobool186.not to i16
  %152 = ptrtoint ptr %bd_flags to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %spec.select, ptr %bd_flags, align 1
  %is_legacy = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 1
  %153 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %is_legacy, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool198.not = icmp eq i8 %154, 0
  br i1 %tobool198.not, label %if.then177.if.end208_crit_edge, label %if.then205, !prof !129

if.then177.if.end208_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then205:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #15
  %155 = xor i16 %spec.select731, 1
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.then177.if.end208_crit_edge
  %val.1 = phi i16 [ %155, %if.then205 ], [ %spec.select731, %if.then177.if.end208_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ipv6_ext.1901)
  %tobool209.not = icmp eq i32 %ipv6_ext.1901, 0
  br i1 %tobool209.not, label %if.end208.if.end218_crit_edge, label %if.then216, !prof !129

if.end208.if.end218_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

if.then216:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @qede_set_params_for_ipv6_ext(ptr noundef %skb, ptr noundef %second_bd.0, ptr noundef %third_bd.0)
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end208.if.end218_crit_edge, %if.end173.if.end218_crit_edge
  %val.2 = phi i16 [ %val.1, %if.then216 ], [ %val.1, %if.end208.if.end218_crit_edge ], [ 0, %if.end173.if.end218_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool221.not = icmp eq i32 %and148, 0
  br i1 %tobool221.not, label %if.else357, label %if.then222

if.then222:                                       ; preds = %if.end218
  %156 = ptrtoint ptr %bd_flags to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bd_flags, align 1
  %158 = or i8 %157, 32
  store i8 %158, ptr %bd_flags, align 1
  %159 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %gso_size, align 4
  %163 = call i16 @llvm.bswap.i16(i16 %162)
  %data230 = getelementptr inbounds %struct.eth_tx_3rd_bd, ptr %third_bd.0, i32 0, i32 2
  %164 = ptrtoint ptr %data230 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %data230, align 2
  %and232 = and i32 %retval.0.i902, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  %165 = ptrtoint ptr %bd_flags to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %bd_flags, align 1
  br i1 %tobool233.not, label %if.else, label %if.then240, !prof !129

if.then240:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #15
  %and248 = and i32 %retval.0.i902, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  %spec.select732.v = select i1 %tobool249.not, i8 64, i8 -64
  %spec.select732 = or i8 %166, %spec.select732.v
  %167 = ptrtoint ptr %bd_flags to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %spec.select732, ptr %bd_flags, align 1
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  br label %if.end268

if.else:                                          ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #15
  %168 = or i8 %166, 4
  %169 = ptrtoint ptr %bd_flags to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %bd_flags, align 1
  %transport_header.i.i762 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %if.end268

if.end268:                                        ; preds = %if.else, %if.then240
  %transport_header.i.i762.sink = phi ptr [ %transport_header.i.i762, %if.else ], [ %inner_transport_header.i.i, %if.then240 ]
  %.sink.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %170 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %170)
  %.sink = load ptr, ptr %.sink.in, align 8
  %171 = ptrtoint ptr %transport_header.i.i762.sink to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %transport_header.i.i762.sink, align 2
  %conv.i16.i764 = zext i16 %172 to i32
  %add.ptr.i17.i765 = getelementptr i8, ptr %.sink, i32 %conv.i16.i764
  %doff.i.i.i766 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i17.i765, i32 0, i32 4
  %173 = ptrtoint ptr %doff.i.i.i766 to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load.i.i.i767 = load i16, ptr %doff.i.i.i766, align 4
  %174 = lshr i16 %bf.load.i.i.i767, 10
  %175 = and i16 %174, 60
  %mul.i.i.i768 = zext i16 %175 to i32
  %add.ptr4.i769 = getelementptr i8, ptr %add.ptr.i17.i765, i32 %mul.i.i.i768
  %176 = ptrtoint ptr %data100 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data100, align 4
  %sub.ptr.lhs.cast6.i771 = ptrtoint ptr %add.ptr4.i769 to i32
  %sub.ptr.rhs.cast7.i772 = ptrtoint ptr %177 to i32
  %sub.ptr.sub8.i773 = sub i32 %sub.ptr.lhs.cast6.i771, %sub.ptr.rhs.cast7.i772
  %hlen.0 = trunc i32 %sub.ptr.sub8.i773 to i16
  %bitfields270 = getelementptr inbounds %struct.eth_tx_3rd_bd, ptr %third_bd.0, i32 0, i32 2, i32 1
  %178 = ptrtoint ptr %bitfields270 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %bitfields270, align 2
  %180 = or i16 %179, 4096
  store i16 %180, ptr %bitfields270, align 2
  %181 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len.i, align 4
  %183 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %data_len.i, align 8
  %sub.i777 = sub i32 %182, %184
  %conv275 = and i32 %sub.ptr.sub8.i773, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i777, i32 %conv275)
  %cmp276 = icmp ugt i32 %sub.i777, %conv275
  br i1 %cmp276, label %do.body285, label %if.end268.if.end392_crit_edge, !prof !130

if.end268.if.end392_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end392

do.body285:                                       ; preds = %if.end268
  %dp_level286 = getelementptr i8, ptr %ndev, i32 2324
  %185 = ptrtoint ptr %dp_level286 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %dp_level286, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp288 = icmp eq i8 %186, 0
  br i1 %cmp288, label %land.rhs, label %do.body285.do.end321_crit_edge

do.body285.do.end321_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end321

land.rhs:                                         ; preds = %do.body285
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %187 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dp_module, align 8
  %and290 = and i32 %188, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %land.rhs.do.end321_crit_edge, label %do.end301, !prof !129

land.rhs.do.end321_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end321

do.end301:                                        ; preds = %land.rhs
  %ndev303 = getelementptr i8, ptr %ndev, i32 2308
  %189 = ptrtoint ptr %ndev303 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ndev303, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %190, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i778 = icmp eq i8 %192, 0
  br i1 %tobool.not.i778, label %do.end301.cond.end310_crit_edge, label %lor.lhs.false.i782

do.end301.cond.end310_crit_edge:                  ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end310

lor.lhs.false.i782:                               ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #15
  %call.i779 = call ptr @strchr(ptr noundef %190, i32 noundef 37) #13
  %tobool2.not.i780 = icmp eq ptr %call.i779, null
  %tobool305.not = icmp eq ptr %190, null
  %or.cond939 = and i1 %tobool305.not, %tobool2.not.i780
  %spec.select.i788 = select i1 %tobool2.not.i780, ptr %190, ptr @.str.19
  %spec.select964 = select i1 %or.cond939, ptr @.str.3, ptr %spec.select.i788
  br label %cond.end310

cond.end310:                                      ; preds = %lor.lhs.false.i782, %do.end301.cond.end310_crit_edge
  %cond311 = phi ptr [ @.str.19, %do.end301.cond.end310_crit_edge ], [ %spec.select964, %lor.lhs.false.i782 ]
  %193 = ptrtoint ptr %nbytes to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %nbytes, align 4
  %conv313 = zext i16 %194 to i32
  %195 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %hi, align 4
  %197 = ptrtoint ptr %call88 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call88, align 4
  %call318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 1626, ptr noundef %cond311, i32 noundef %conv313, i32 noundef %196, i32 noundef %198) #16
  br label %do.end321

do.end321:                                        ; preds = %cond.end310, %land.rhs.do.end321_crit_edge, %do.body285.do.end321_crit_edge
  %199 = ptrtoint ptr %call88 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %call88, align 4
  %201 = call i32 @llvm.bswap.i32(i32 %200)
  %conv332 = add i32 %conv275, %201
  %hi337 = getelementptr inbounds %struct.regpair, ptr %second_bd.0, i32 0, i32 1
  %202 = ptrtoint ptr %hi337 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %hi337, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %conv332)
  %204 = ptrtoint ptr %second_bd.0 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %second_bd.0, align 4
  %205 = ptrtoint ptr %nbytes to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %nbytes, align 4
  %207 = call i16 @llvm.bswap.i16(i16 %206)
  %sub344 = sub i16 %207, %hlen.0
  %208 = call i16 @llvm.bswap.i16(i16 %sub344)
  %nbytes346 = getelementptr inbounds %struct.eth_tx_bd, ptr %second_bd.0, i32 0, i32 1
  %209 = ptrtoint ptr %nbytes346 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %nbytes346, align 4
  %210 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sw_tx_ring, align 8
  %flags = getelementptr %struct.sw_tx_bd, ptr %211, i32 %idxprom, i32 1
  %212 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %flags, align 4
  %214 = or i8 %213, 1
  store i8 %214, ptr %flags, align 4
  %215 = call i16 @llvm.bswap.i16(i16 %hlen.0)
  %216 = ptrtoint ptr %nbytes to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %nbytes, align 4
  br label %if.end392

if.else357:                                       ; preds = %if.end218
  %217 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9672, i32 %218)
  %cmp358 = icmp ugt i32 %218, 9672
  br i1 %cmp358, label %do.end370, label %if.end385, !prof !130

do.end370:                                        ; preds = %if.else357
  %ndev372 = getelementptr i8, ptr %ndev, i32 2308
  %219 = ptrtoint ptr %ndev372 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ndev372, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %220, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i792 = icmp eq i8 %222, 0
  br i1 %tobool.not.i792, label %do.end370.cond.end379_crit_edge, label %lor.lhs.false.i796

do.end370.cond.end379_crit_edge:                  ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end379

lor.lhs.false.i796:                               ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #15
  %call.i793 = call ptr @strchr(ptr noundef %220, i32 noundef 37) #13
  %tobool2.not.i794 = icmp eq ptr %call.i793, null
  %tobool374.not = icmp eq ptr %220, null
  %or.cond940 = and i1 %tobool374.not, %tobool2.not.i794
  %spec.select.i802 = select i1 %tobool2.not.i794, ptr %220, ptr @.str.19
  %spec.select965 = select i1 %or.cond940, ptr @.str.3, ptr %spec.select.i802
  br label %cond.end379

cond.end379:                                      ; preds = %lor.lhs.false.i796, %do.end370.cond.end379_crit_edge
  %cond380 = phi ptr [ @.str.19, %do.end370.cond.end379_crit_edge ], [ %spec.select965, %lor.lhs.false.i796 ]
  %call382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 1648, ptr noundef %cond380, i32 noundef %218) #16
  call fastcc void @qede_free_failed_tx_pkt(ptr noundef %arrayidx39, ptr noundef %call88, i32 noundef 0, i1 noundef zeroext false)
  call fastcc void @qede_update_tx_producer(ptr noundef %arrayidx39)
  br label %cleanup

if.end385:                                        ; preds = %if.else357
  call void @__sanitizer_cov_trace_pc() #15
  %.tr = trunc i32 %218 to i16
  %223 = shl nuw i16 %.tr, 2
  %conv391 = or i16 %223, %val.2
  br label %if.end392

if.end392:                                        ; preds = %if.end385, %do.end321, %if.end268.if.end392_crit_edge
  %val.3 = phi i16 [ %val.2, %do.end321 ], [ %val.2, %if.end268.if.end392_crit_edge ], [ %conv391, %if.end385 ]
  %data_split.0.off0 = phi i1 [ true, %do.end321 ], [ false, %if.end268.if.end392_crit_edge ], [ false, %if.end385 ]
  %tx_data_bd.1 = phi ptr [ %third_bd.0, %do.end321 ], [ %second_bd.0, %if.end268.if.end392_crit_edge ], [ %second_bd.0, %if.end385 ]
  %224 = call i16 @llvm.bswap.i16(i16 %val.3)
  %bitfields394 = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call88, i32 0, i32 2, i32 3
  %225 = ptrtoint ptr %bitfields394 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %bitfields394, align 2
  %tobool395.not949 = icmp eq ptr %tx_data_bd.1, null
  br i1 %tobool395.not949, label %if.end392.while.end_crit_edge, label %land.rhs396.preheader

if.end392.while.end_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs396.preheader:                            ; preds = %if.end392
  %tobool395.not969 = icmp eq ptr %third_bd.0, null
  br label %land.rhs396

land.rhs396:                                      ; preds = %if.end409.land.rhs396_crit_edge, %land.rhs396.preheader
  %tx_data_bd.2951 = phi ptr [ %third_bd.0, %if.end409.land.rhs396_crit_edge ], [ %tx_data_bd.1, %land.rhs396.preheader ]
  %frag_idx.0950 = phi i32 [ %inc415, %if.end409.land.rhs396_crit_edge ], [ 0, %land.rhs396.preheader ]
  %226 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %nr_frags, align 2
  %conv398 = zext i8 %229 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_idx.0950, i32 %conv398)
  %cmp399 = icmp ult i32 %frag_idx.0950, %conv398
  br i1 %cmp399, label %while.body, label %land.rhs396.while.end_crit_edge

land.rhs396.while.end_crit_edge:                  ; preds = %land.rhs396
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs396
  %arrayidx403 = getelementptr %struct.skb_shared_info, ptr %227, i32 0, i32 12, i32 %frag_idx.0950
  %230 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %227, i32 0, i32 12, i32 %frag_idx.0950, i32 1
  %232 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bv_len.i.i, align 4
  %234 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx403, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %227, i32 0, i32 12, i32 %frag_idx.0950, i32 2
  %236 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = call i32 @dma_map_page_attrs(ptr noundef %231, ptr noundef %235, i32 noundef %237, i32 noundef %233, i32 noundef 1, i32 noundef 0) #13
  %238 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %239, i32 noundef %call2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %if.then406, label %if.end409, !prof !130

if.then406:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv407 = zext i8 %nbd.0 to i32
  call fastcc void @qede_free_failed_tx_pkt(ptr noundef %arrayidx39, ptr noundef %call88, i32 noundef %conv407, i1 noundef zeroext %data_split.0.off0)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  call void @arm_heavy_mb() #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  call void @arm_heavy_mb() #13
  %tx_db.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 11
  %240 = ptrtoint ptr %tx_db.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %tx_db.i, align 4
  %242 = call i32 @llvm.bswap.i32(i32 %241) #13
  %doorbell_addr.i = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 10
  %243 = ptrtoint ptr %doorbell_addr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %doorbell_addr.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #13, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  call void @arm_heavy_mb() #13
  br label %cleanup

if.end409:                                        ; preds = %while.body
  %hi.i = getelementptr inbounds %struct.regpair, ptr %tx_data_bd.2951, i32 0, i32 1
  %245 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %hi.i, align 4
  %246 = call i32 @llvm.bswap.i32(i32 %call2.i.i) #13
  %247 = ptrtoint ptr %tx_data_bd.2951 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %tx_data_bd.2951, align 4
  %248 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %bv_len.i.i, align 4
  %conv.i808 = trunc i32 %249 to i16
  %250 = call i16 @llvm.bswap.i16(i16 %conv.i808) #13
  %nbytes.i = getelementptr inbounds %struct.eth_tx_bd, ptr %tx_data_bd.2951, i32 0, i32 1
  %251 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %nbytes.i, align 4
  %cmp410 = icmp ne ptr %tx_data_bd.2951, %second_bd.0
  %inc415 = add nuw nsw i32 %frag_idx.0950, 1
  %tobool395.not = or i1 %cmp410, %tobool395.not969
  br i1 %tobool395.not, label %if.end409.while.end_crit_edge, label %if.end409.land.rhs396_crit_edge

if.end409.land.rhs396_crit_edge:                  ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs396

if.end409.while.end_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end409.while.end_crit_edge, %land.rhs396.while.end_crit_edge, %if.end392.while.end_crit_edge
  %frag_idx.0.lcssa = phi i32 [ 0, %if.end392.while.end_crit_edge ], [ %inc415, %if.end409.while.end_crit_edge ], [ %frag_idx.0950, %land.rhs396.while.end_crit_edge ]
  %252 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %end.i.i, align 4
  %nr_frags417953 = getelementptr inbounds %struct.skb_shared_info, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %nr_frags417953 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %nr_frags417953, align 2
  %conv418954 = zext i8 %255 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_idx.0.lcssa, i32 %conv418954)
  %cmp419955 = icmp ult i32 %frag_idx.0.lcssa, %conv418954
  br i1 %cmp419955, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %frag_idx.1957 = phi i32 [ %inc432, %for.inc.for.body_crit_edge ], [ %frag_idx.0.lcssa, %while.end.for.body_crit_edge ]
  %nbd.1956 = phi i8 [ %inc433, %for.inc.for.body_crit_edge ], [ %nbd.0, %while.end.for.body_crit_edge ]
  %call422 = call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %256 = call ptr @memset(ptr %call422, i32 0, i32 16)
  %257 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %end.i.i, align 4
  %arrayidx425 = getelementptr %struct.skb_shared_info, ptr %258, i32 0, i32 12, i32 %frag_idx.1957
  %259 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev, align 4
  %bv_len.i.i813 = getelementptr %struct.skb_shared_info, ptr %258, i32 0, i32 12, i32 %frag_idx.1957, i32 1
  %261 = ptrtoint ptr %bv_len.i.i813 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %bv_len.i.i813, align 4
  %263 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx425, align 4
  %bv_offset.i.i.i814 = getelementptr %struct.skb_shared_info, ptr %258, i32 0, i32 12, i32 %frag_idx.1957, i32 2
  %265 = ptrtoint ptr %bv_offset.i.i.i814 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %bv_offset.i.i.i814, align 4
  %call2.i.i815 = call i32 @dma_map_page_attrs(ptr noundef %260, ptr noundef %264, i32 noundef %266, i32 noundef %262, i32 noundef 1, i32 noundef 0) #13
  %267 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %268, i32 noundef %call2.i.i815) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i815)
  %cmp.i.not.i816 = icmp eq i32 %call2.i.i815, -1
  br i1 %cmp.i.not.i816, label %if.then428, label %for.inc, !prof !130

if.then428:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv429 = zext i8 %nbd.1956 to i32
  call fastcc void @qede_free_failed_tx_pkt(ptr noundef %arrayidx39, ptr noundef %call88, i32 noundef %conv429, i1 noundef zeroext %data_split.0.off0)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  call void @arm_heavy_mb() #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  call void @arm_heavy_mb() #13
  %tx_db.i823 = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 11
  %269 = ptrtoint ptr %tx_db.i823 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tx_db.i823, align 4
  %271 = call i32 @llvm.bswap.i32(i32 %270) #13
  %doorbell_addr.i824 = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 10
  %272 = ptrtoint ptr %doorbell_addr.i824 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %doorbell_addr.i824, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #13, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  call void @arm_heavy_mb() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %hi.i817 = getelementptr inbounds %struct.regpair, ptr %call422, i32 0, i32 1
  %274 = ptrtoint ptr %hi.i817 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %hi.i817, align 4
  %275 = call i32 @llvm.bswap.i32(i32 %call2.i.i815) #13
  %276 = ptrtoint ptr %call422 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %call422, align 4
  %277 = ptrtoint ptr %bv_len.i.i813 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %bv_len.i.i813, align 4
  %conv.i818 = trunc i32 %278 to i16
  %279 = call i16 @llvm.bswap.i16(i16 %conv.i818) #13
  %nbytes.i819 = getelementptr inbounds %struct.eth_tx_bd, ptr %call422, i32 0, i32 1
  %280 = ptrtoint ptr %nbytes.i819 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %nbytes.i819, align 4
  %inc432 = add nuw nsw i32 %frag_idx.1957, 1
  %inc433 = add i8 %nbd.1956, 1
  %281 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %end.i.i, align 4
  %nr_frags417 = getelementptr inbounds %struct.skb_shared_info, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %nr_frags417 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %nr_frags417, align 2
  %conv418 = zext i8 %284 to i32
  %cmp419 = icmp ult i32 %inc432, %conv418
  br i1 %cmp419, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %nbd.1.lcssa = phi i8 [ %nbd.0, %while.end.for.end_crit_edge ], [ %inc433, %for.inc.for.end_crit_edge ]
  %nbds = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call88, i32 0, i32 2, i32 1
  %285 = ptrtoint ptr %nbds to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %nbd.1.lcssa, ptr %nbds, align 2
  %286 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %len.i, align 4
  %dql.i = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %287)
  %cmp.i.i825 = icmp ugt i32 %287, 268435455
  br i1 %cmp.i.i825, label %do.body2.i.i, label %dql_queued.exit.i, !prof !130

do.body2.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #13, !srcloc !155
  unreachable

dql_queued.exit.i:                                ; preds = %for.end
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 15, i32 2
  %288 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %last_obj_cnt.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  %289 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %dql.i, align 128
  %add.i.i826 = add i32 %290, %287
  store i32 %add.i.i826, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 15, i32 1
  %291 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %adj_limit.i.i, align 4
  %293 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i827 = sub i32 %292, %293
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i827)
  %cmp.i828 = icmp sgt i32 %sub.i.i827, -1
  br i1 %cmp.i828, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i831, !prof !129

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_sent_queue.exit

if.end.i831:                                      ; preds = %dql_queued.exit.i
  %state.i829 = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i829) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  %294 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %adj_limit.i.i, align 4
  %296 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %295, %297
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i830 = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i830, label %if.then14.i, label %if.end.i831.netdev_tx_sent_queue.exit_crit_edge, !prof !130

if.end.i831.netdev_tx_sent_queue.exit_crit_edge:  ; preds = %if.end.i831
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i831
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i829) #13
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i831.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #13
  %298 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %299, i32 0, i32 3
  %300 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %tx_flags.i, align 1
  %302 = and i8 %301, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool.not.i833 = icmp eq i8 %302, 0
  br i1 %tobool.not.i833, label %netdev_tx_sent_queue.exit.skb_tx_timestamp.exit_crit_edge, label %if.then.i834

netdev_tx_sent_queue.exit.skb_tx_timestamp.exit_crit_edge: ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tx_timestamp.exit

if.then.i834:                                     ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #13
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i834, %netdev_tx_sent_queue.exit.skb_tx_timestamp.exit_crit_edge
  %303 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %sw_tx_prod, align 4
  %conv437 = zext i16 %304 to i32
  %add438 = add nuw nsw i32 %conv437, 1
  %num_tx_buffers = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 4
  %305 = ptrtoint ptr %num_tx_buffers to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %num_tx_buffers, align 2
  %conv439 = zext i16 %306 to i32
  %rem440 = urem i32 %add438, %conv439
  %conv441 = trunc i32 %rem440 to i16
  store i16 %conv441, ptr %sw_tx_prod, align 4
  %307 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %u.i.i.i, align 4
  %309 = call i16 @llvm.bswap.i16(i16 %308)
  %tx_db = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 11
  %bd_prod = getelementptr inbounds %struct.eth_db_data, ptr %tx_db, i32 0, i32 2
  %310 = ptrtoint ptr %bd_prod to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %309, ptr %bd_prod, align 2
  %311 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %311, -16384
  %312 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 3
  %313 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %cpu.i, align 4
  %arrayidx.i836 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %314
  %315 = ptrtoint ptr %arrayidx.i836 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx.i836, align 4
  %add.i = add i32 %316, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %317 = inttoptr i32 %add.i to ptr
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %317, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool.i.not = icmp eq i8 %319, 0
  br i1 %tobool.i.not, label %skb_tx_timestamp.exit.if.then448_crit_edge, label %lor.lhs.false

skb_tx_timestamp.exit.if.then448_crit_edge:       ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then448

lor.lhs.false:                                    ; preds = %skb_tx_timestamp.exit
  %state.i837 = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 13
  %320 = ptrtoint ptr %state.i837 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %state.i837, align 4
  %and.i838 = and i32 %321, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i838)
  %tobool.i839.not = icmp eq i32 %and.i838, 0
  br i1 %tobool.i839.not, label %lor.lhs.false.if.end449_crit_edge, label %lor.lhs.false.if.then448_crit_edge

lor.lhs.false.if.then448_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then448

lor.lhs.false.if.end449_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end449

if.then448:                                       ; preds = %lor.lhs.false.if.then448_crit_edge, %skb_tx_timestamp.exit.if.then448_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  call void @arm_heavy_mb() #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  call void @arm_heavy_mb() #13
  %322 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %tx_db, align 4
  %324 = call i32 @llvm.bswap.i32(i32 %323) #13
  %doorbell_addr.i841 = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 10
  %325 = ptrtoint ptr %doorbell_addr.i841 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %doorbell_addr.i841, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #13, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  call void @arm_heavy_mb() #13
  br label %if.end449

if.end449:                                        ; preds = %if.then448, %lor.lhs.false.if.end449_crit_edge
  %327 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %capacity.i, align 4
  %329 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i844 = zext i16 %330 to i32
  %331 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %330, i16 %332)
  %cmp.i.i846 = icmp ult i16 %330, %332
  %add.i.i847 = or i32 %conv.i.i844, 65536
  %spec.select.i.i848 = select i1 %cmp.i.i846, i32 %add.i.i847, i32 %conv.i.i844
  %333 = trunc i32 %spec.select.i.i848 to i16
  %conv5.i.i849 = sub i16 %333, %332
  %334 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %cmp6.i.i851 = icmp eq i32 %335, 0
  br i1 %cmp6.i.i851, label %if.then8.i.i857, label %if.end449.qed_chain_get_elem_left.exit860_crit_edge

if.end449.qed_chain_get_elem_left.exit860_crit_edge: ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_left.exit860

if.then8.i.i857:                                  ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #15
  %elem_per_page3.i.i852 = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 15, i32 7
  %336 = ptrtoint ptr %elem_per_page3.i.i852 to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %elem_per_page3.i.i852, align 4
  %conv9.i.i853 = zext i16 %337 to i32
  %div.i.i854 = udiv i32 %spec.select.i.i848, %conv9.i.i853
  %338 = udiv i16 %332, %337
  %339 = trunc i32 %div.i.i854 to i16
  %conv13.neg.i.i855 = sub i16 %conv5.i.i849, %339
  %sub16.i.i856 = add i16 %conv13.neg.i.i855, %338
  br label %qed_chain_get_elem_left.exit860

qed_chain_get_elem_left.exit860:                  ; preds = %if.then8.i.i857, %if.end449.qed_chain_get_elem_left.exit860_crit_edge
  %used.0.i.i858 = phi i16 [ %sub16.i.i856, %if.then8.i.i857 ], [ %conv5.i.i849, %if.end449.qed_chain_get_elem_left.exit860_crit_edge ]
  %340 = trunc i32 %328 to i16
  %conv1.i859 = sub i16 %340, %used.0.i.i858
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %conv1.i859)
  %cmp453 = icmp ult i16 %conv1.i859, 18
  br i1 %cmp453, label %if.then461, label %qed_chain_get_elem_left.exit860.cleanup_crit_edge, !prof !130

qed_chain_get_elem_left.exit860.cleanup_crit_edge: ; preds = %qed_chain_get_elem_left.exit860
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then461:                                       ; preds = %qed_chain_get_elem_left.exit860
  %341 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i861 = and i32 %341, -16384
  %342 = inttoptr i32 %and.i.i861 to ptr
  %cpu.i862 = getelementptr inbounds %struct.thread_info, ptr %342, i32 0, i32 3
  %343 = ptrtoint ptr %cpu.i862 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %cpu.i862, align 4
  %arrayidx.i863 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %344
  %345 = ptrtoint ptr %arrayidx.i863 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx.i863, align 4
  %add.i864 = add i32 %346, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %347 = inttoptr i32 %add.i864 to ptr
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %347, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool.i865.not = icmp eq i8 %349, 0
  br i1 %tobool.i865.not, label %if.then461.if.end464_crit_edge, label %if.then463

if.then461.if.end464_crit_edge:                   ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end464

if.then463:                                       ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @qede_update_tx_producer(ptr noundef %arrayidx39)
  br label %if.end464

if.end464:                                        ; preds = %if.then463, %if.then461.if.end464_crit_edge
  %state.i = getelementptr %struct.netdev_queue, ptr %18, i32 %conv, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  %stopped_cnt = getelementptr %struct.qede_tx_queue, ptr %16, i32 %div, i32 6
  %350 = ptrtoint ptr %stopped_cnt to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %stopped_cnt, align 8
  %inc465 = add i64 %351, 1
  store i64 %inc465, ptr %stopped_cnt, align 8
  %dp_level467 = getelementptr i8, ptr %ndev, i32 2324
  %352 = ptrtoint ptr %dp_level467 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %dp_level467, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %cmp469 = icmp eq i8 %353, 0
  br i1 %cmp469, label %land.rhs471, label %if.end464.do.end503_crit_edge

if.end464.do.end503_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end503

land.rhs471:                                      ; preds = %if.end464
  %dp_module472 = getelementptr i8, ptr %ndev, i32 2320
  %354 = ptrtoint ptr %dp_module472 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %dp_module472, align 8
  %and473 = and i32 %355, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473)
  %tobool474.not = icmp eq i32 %and473, 0
  br i1 %tobool474.not, label %land.rhs471.do.end503_crit_edge, label %do.end485, !prof !129

land.rhs471.do.end503_crit_edge:                  ; preds = %land.rhs471
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end503

do.end485:                                        ; preds = %land.rhs471
  %ndev487 = getelementptr i8, ptr %ndev, i32 2308
  %356 = ptrtoint ptr %ndev487 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ndev487, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %357, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i866 = icmp eq i8 %359, 0
  br i1 %tobool.not.i866, label %do.end485.cond.end494_crit_edge, label %lor.lhs.false.i870

do.end485.cond.end494_crit_edge:                  ; preds = %do.end485
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end494

lor.lhs.false.i870:                               ; preds = %do.end485
  call void @__sanitizer_cov_trace_pc() #15
  %call.i867 = call ptr @strchr(ptr noundef %357, i32 noundef 37) #13
  %tobool2.not.i868 = icmp eq ptr %call.i867, null
  %tobool489.not = icmp eq ptr %357, null
  %or.cond942 = and i1 %tobool489.not, %tobool2.not.i868
  %spec.select.i876 = select i1 %tobool2.not.i868, ptr %357, ptr @.str.19
  %spec.select966 = select i1 %or.cond942, ptr @.str.3, ptr %spec.select.i876
  br label %cond.end494

cond.end494:                                      ; preds = %lor.lhs.false.i870, %do.end485.cond.end494_crit_edge
  %cond495 = phi ptr [ @.str.19, %do.end485.cond.end494_crit_edge ], [ %spec.select966, %lor.lhs.false.i870 ]
  %call496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef 1724, ptr noundef %cond495) #16
  br label %do.end503

do.end503:                                        ; preds = %cond.end494, %land.rhs471.do.end503_crit_edge, %if.end464.do.end503_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !158
  %call507 = call fastcc zeroext i16 @qed_chain_get_elem_left(ptr noundef %tx_pbl)
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %call507)
  %cmp509 = icmp ugt i16 %call507, 17
  br i1 %cmp509, label %land.lhs.true, label %do.end503.cleanup_crit_edge

do.end503.cleanup_crit_edge:                      ; preds = %do.end503
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end503
  %state = getelementptr i8, ptr %ndev, i32 2548
  %360 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %361)
  %cmp511 = icmp eq i32 %361, 1
  br i1 %cmp511, label %if.then513, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then513:                                       ; preds = %land.lhs.true
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #13
  %362 = ptrtoint ptr %dp_level467 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %dp_level467, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %cmp517 = icmp eq i8 %363, 0
  br i1 %cmp517, label %land.rhs519, label %if.then513.cleanup_crit_edge

if.then513.cleanup_crit_edge:                     ; preds = %if.then513
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs519:                                      ; preds = %if.then513
  %dp_module520 = getelementptr i8, ptr %ndev, i32 2320
  %364 = ptrtoint ptr %dp_module520 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %dp_module520, align 8
  %and521 = and i32 %365, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and521)
  %tobool522.not = icmp eq i32 %and521, 0
  br i1 %tobool522.not, label %land.rhs519.cleanup_crit_edge, label %do.end533, !prof !129

land.rhs519.cleanup_crit_edge:                    ; preds = %land.rhs519
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end533:                                        ; preds = %land.rhs519
  %ndev535 = getelementptr i8, ptr %ndev, i32 2308
  %366 = ptrtoint ptr %ndev535 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ndev535, align 4
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %367, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool.not.i880 = icmp eq i8 %369, 0
  br i1 %tobool.not.i880, label %do.end533.cond.end542_crit_edge, label %lor.lhs.false.i884

do.end533.cond.end542_crit_edge:                  ; preds = %do.end533
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end542

lor.lhs.false.i884:                               ; preds = %do.end533
  call void @__sanitizer_cov_trace_pc() #15
  %call.i881 = call ptr @strchr(ptr noundef %367, i32 noundef 37) #13
  %tobool2.not.i882 = icmp eq ptr %call.i881, null
  %tobool537.not = icmp eq ptr %367, null
  %or.cond943 = and i1 %tobool537.not, %tobool2.not.i882
  %spec.select.i890 = select i1 %tobool2.not.i882, ptr %367, ptr @.str.19
  %spec.select967 = select i1 %or.cond943, ptr @.str.3, ptr %spec.select.i890
  br label %cond.end542

cond.end542:                                      ; preds = %lor.lhs.false.i884, %do.end533.cond.end542_crit_edge
  %cond543 = phi ptr [ @.str.19, %do.end533.cond.end542_crit_edge ], [ %spec.select967, %lor.lhs.false.i884 ]
  %call544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 1736, ptr noundef %cond543) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.end542, %land.rhs519.cleanup_crit_edge, %if.then513.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end503.cleanup_crit_edge, %qed_chain_get_elem_left.exit860.cleanup_crit_edge, %if.then428, %if.then406, %cond.end379, %do.end136, %if.then82
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @qed_chain_get_elem_left(ptr nocapture noundef readonly %chain) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %capacity = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 4
  %0 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capacity, align 4
  %u.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3
  %2 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u.i.i, align 4
  %conv.i = zext i16 %3 to i32
  %cons_idx.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cons_idx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp ult i16 %3, %5
  %add.i = or i32 %conv.i, 65536
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %conv.i
  %6 = trunc i32 %spec.select.i to i16
  %conv5.i = sub i16 %6, %5
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 6
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.i = icmp eq i32 %8, 0
  br i1 %cmp6.i, label %if.then8.i, label %entry.qed_chain_get_elem_used.exit_crit_edge

entry.qed_chain_get_elem_used.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_used.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %elem_per_page3.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 7
  %9 = ptrtoint ptr %elem_per_page3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %elem_per_page3.i, align 4
  %conv9.i = zext i16 %10 to i32
  %div.i = udiv i32 %spec.select.i, %conv9.i
  %11 = udiv i16 %5, %10
  %12 = trunc i32 %div.i to i16
  %conv13.neg.i = sub i16 %conv5.i, %12
  %sub16.i = add i16 %conv13.neg.i, %11
  br label %qed_chain_get_elem_used.exit

qed_chain_get_elem_used.exit:                     ; preds = %if.then8.i, %entry.qed_chain_get_elem_used.exit_crit_edge
  %used.0.i = phi i16 [ %sub16.i, %if.then8.i ], [ %conv5.i, %entry.qed_chain_get_elem_used.exit_crit_edge ]
  %13 = trunc i32 %1 to i16
  %conv1 = sub i16 %13, %used.0.i
  ret i16 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_ptp_tx_ts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_free_failed_tx_pkt(ptr noundef %txq, ptr noundef %first_bd, i32 noundef %nbd, i1 noundef zeroext %data_split) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tx_prod = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 3
  %0 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sw_tx_prod, align 4
  %sw_tx_ring = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 14
  %2 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_tx_ring, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.sw_tx_bd, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tx_pbl = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15
  %tx_db = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 11
  %bd_prod = getelementptr inbounds %struct.eth_db_data, ptr %tx_db, i32 0, i32 2
  %6 = ptrtoint ptr %bd_prod to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bd_prod, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %mode.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 6
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then.i:                                        ; preds = %entry
  %cnt_type.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 13
  %11 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cnt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i = icmp eq i32 %12, 0
  %u.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 3
  br i1 %cmp1.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u.i, align 4
  %conv.i = zext i16 %14 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ %16, %cond.false.i ]
  %elem_per_page_mask.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 8
  %17 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %elem_per_page_mask.i, align 2
  %conv5.i = zext i16 %18 to i32
  %neg.i = xor i32 %conv5.i, -1
  %sub.i = add i32 %cond.i, -1
  %and.i = and i32 %sub.i, %neg.i
  %sub6.i = add nsw i32 %conv, -1
  %and7.i = and i32 %sub6.i, %neg.i
  %sub8.i = sub i32 %and.i, %and7.i
  %elem_per_page.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 7
  %19 = ptrtoint ptr %elem_per_page.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %elem_per_page.i, align 4
  %conv9.i = zext i16 %20 to i32
  %div.i = udiv i32 %sub8.i, %conv9.i
  %page_cnt.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 5
  %21 = ptrtoint ptr %page_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_cnt.i.i, align 4
  %c.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 2, i32 1
  br i1 %cmp1.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %c.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %c.i, align 4
  %conv14.i = zext i16 %24 to i32
  %sub15.i = sub i32 %22, %div.i
  %add.i = add i32 %sub15.i, %conv14.i
  %rem.i = urem i32 %add.i, %22
  %conv16.i = trunc i32 %rem.i to i16
  store i16 %conv16.i, ptr %c.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c.i, align 4
  %sub23.i = sub i32 %22, %div.i
  %add24.i = add i32 %sub23.i, %26
  %rem25.i = urem i32 %add24.i, %22
  store i32 %rem25.i, ptr %c.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then13.i, %entry.if.end29.i_crit_edge
  %cnt_type30.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 13
  %27 = ptrtoint ptr %cnt_type30.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt_type30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp31.i = icmp eq i32 %28, 0
  %u35.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 3
  br i1 %cmp31.i, label %if.then33.i, label %if.else37.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %u35.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %8, ptr %u35.i, align 4
  br label %qed_chain_set_prod.exit

if.else37.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %u35.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %u35.i, align 4
  br label %qed_chain_set_prod.exit

qed_chain_set_prod.exit:                          ; preds = %if.else37.i, %if.then33.i
  %31 = ptrtoint ptr %tx_pbl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %first_bd, ptr %tx_pbl, align 4
  %call = tail call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  br i1 %data_split, label %if.then, label %qed_chain_set_prod.exit.if.end_crit_edge

qed_chain_set_prod.exit.if.end_crit_edge:         ; preds = %qed_chain_set_prod.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %qed_chain_set_prod.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %nbytes = getelementptr inbounds %struct.eth_tx_bd, ptr %call4, i32 0, i32 1
  %32 = ptrtoint ptr %nbytes to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nbytes, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv5 = zext i16 %34 to i32
  %dec = add i32 %nbd, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %qed_chain_set_prod.exit.if.end_crit_edge
  %nbd.addr.0 = phi i32 [ %dec, %if.then ], [ %nbd, %qed_chain_set_prod.exit.if.end_crit_edge ]
  %split_bd_len.0 = phi i32 [ %conv5, %if.then ], [ 0, %qed_chain_set_prod.exit.if.end_crit_edge ]
  %dev = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %nbytes10 = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %nbytes10 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nbytes10, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv11 = zext i16 %42 to i32
  %add12 = add nuw nsw i32 %split_bd_len.0, %conv11
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %39, i32 noundef %add12, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbd.addr.0)
  %cmp108 = icmp sgt i32 %nbd.addr.0, 0
  br i1 %cmp108, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call15 = tail call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl)
  %nbytes16 = getelementptr inbounds %struct.eth_tx_bd, ptr %call15, i32 0, i32 1
  %43 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool17.not = icmp eq i16 %44, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call15, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = tail call i16 @llvm.bswap.i16(i16 %44)
  %conv30 = zext i16 %50 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %49, i32 noundef %conv30, i32 noundef 1, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %nbd.addr.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %51 = ptrtoint ptr %bd_prod to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bd_prod, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv35 = zext i16 %53 to i32
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i67 = icmp eq i32 %55, 2
  br i1 %cmp.i67, label %if.then.i71, label %for.end.if.end29.i102_crit_edge

for.end.if.end29.i102_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i102

if.then.i71:                                      ; preds = %for.end
  %56 = ptrtoint ptr %cnt_type30.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cnt_type30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1.i69 = icmp eq i32 %57, 0
  %u.i70 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 3
  br i1 %cmp1.i69, label %cond.true.i73, label %cond.false.i74

cond.true.i73:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %u.i70 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %u.i70, align 4
  %conv.i72 = zext i16 %59 to i32
  br label %cond.end.i89

cond.false.i74:                                   ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %u.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %u.i70, align 4
  br label %cond.end.i89

cond.end.i89:                                     ; preds = %cond.false.i74, %cond.true.i73
  %cond.i75 = phi i32 [ %conv.i72, %cond.true.i73 ], [ %61, %cond.false.i74 ]
  %elem_per_page_mask.i76 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 8
  %62 = ptrtoint ptr %elem_per_page_mask.i76 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %elem_per_page_mask.i76, align 2
  %conv5.i77 = zext i16 %63 to i32
  %neg.i78 = xor i32 %conv5.i77, -1
  %sub.i79 = add i32 %cond.i75, -1
  %and.i80 = and i32 %sub.i79, %neg.i78
  %sub6.i81 = add nsw i32 %conv35, -1
  %and7.i82 = and i32 %sub6.i81, %neg.i78
  %sub8.i83 = sub i32 %and.i80, %and7.i82
  %elem_per_page.i84 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 7
  %64 = ptrtoint ptr %elem_per_page.i84 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %elem_per_page.i84, align 4
  %conv9.i85 = zext i16 %65 to i32
  %div.i86 = udiv i32 %sub8.i83, %conv9.i85
  %page_cnt.i.i87 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 5
  %66 = ptrtoint ptr %page_cnt.i.i87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %page_cnt.i.i87, align 4
  %c.i88 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 2, i32 1
  br i1 %cmp1.i69, label %if.then13.i95, label %if.else.i99

if.then13.i95:                                    ; preds = %cond.end.i89
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %c.i88 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %c.i88, align 4
  %conv14.i90 = zext i16 %69 to i32
  %sub15.i91 = sub i32 %67, %div.i86
  %add.i92 = add i32 %sub15.i91, %conv14.i90
  %rem.i93 = urem i32 %add.i92, %67
  %conv16.i94 = trunc i32 %rem.i93 to i16
  store i16 %conv16.i94, ptr %c.i88, align 4
  br label %if.end29.i102

if.else.i99:                                      ; preds = %cond.end.i89
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %c.i88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %c.i88, align 4
  %sub23.i96 = sub i32 %67, %div.i86
  %add24.i97 = add i32 %sub23.i96, %71
  %rem25.i98 = urem i32 %add24.i97, %67
  store i32 %rem25.i98, ptr %c.i88, align 4
  br label %if.end29.i102

if.end29.i102:                                    ; preds = %if.else.i99, %if.then13.i95, %for.end.if.end29.i102_crit_edge
  %72 = ptrtoint ptr %cnt_type30.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cnt_type30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp31.i101 = icmp eq i32 %73, 0
  %u35.i103 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 3
  br i1 %cmp31.i101, label %if.then33.i104, label %if.else37.i106

if.then33.i104:                                   ; preds = %if.end29.i102
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %u35.i103 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %53, ptr %u35.i103, align 4
  br label %qed_chain_set_prod.exit107

if.else37.i106:                                   ; preds = %if.end29.i102
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %u35.i103 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv35, ptr %u35.i103, align 4
  br label %qed_chain_set_prod.exit107

qed_chain_set_prod.exit107:                       ; preds = %if.else37.i106, %if.then33.i104
  %76 = ptrtoint ptr %tx_pbl to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call, ptr %tx_pbl, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #13
  %77 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sw_tx_ring, align 8
  %arrayidx38 = getelementptr %struct.sw_tx_bd, ptr %78, i32 %idxprom
  %79 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx38, align 4
  %80 = load ptr, ptr %sw_tx_ring, align 8
  %flags = getelementptr %struct.sw_tx_bd, ptr %80, i32 %idxprom, i32 1
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_set_params_for_ipv6_ext(ptr noundef %skb, ptr nocapture noundef writeonly %second_bd, ptr noundef %third_bd) unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %10 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %7, label %entry.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i_crit_edge54
  ]

entry.if.then.i.i_crit_edge54:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

entry.vlan_get_protocol.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %entry.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp.i.i = icmp ult i16 %9, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !130

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.else

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %11 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  %12 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !148
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %11, align 2, !annotation !148
  %14 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i.i, align 8
  %18 = add i32 %vlan_depth.1.i.i, %17
  %sub.i1.i.i.i = sub i32 %15, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !130
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %21 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !130
  br i1 %21, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !130

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  br label %if.else

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %23, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge55
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge55: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge55
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %entry.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %7, %entry.vlan_get_protocol.exit_crit_edge ], [ %23, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i)
  %cmp = icmp eq i16 %retval.2.i.i, -31011
  br i1 %cmp, label %if.then, label %vlan_get_protocol.exit.if.else_crit_edge

vlan_get_protocol.exit.if.else_crit_edge:         ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i46 = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i46
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  br label %if.end

if.else:                                          ; preds = %vlan_get_protocol.exit.if.else_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %network_header.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i48 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i48, align 4
  %conv.i.i49 = zext i16 %32 to i32
  %add.ptr.i.i50 = getelementptr i8, ptr %30, i32 %conv.i.i49
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i50, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %l4_proto.0.in = phi ptr [ %nexthdr, %if.then ], [ %protocol, %if.else ]
  %33 = ptrtoint ptr %l4_proto.0.in to i32
  call void @__asan_load1_noabort(i32 %33)
  %l4_proto.0 = load i8, ptr %l4_proto.0.in, align 1
  %tobool.not = icmp eq ptr %third_bd, null
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %if.then21

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %36 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i, align 2
  %conv.i.i.i = zext i16 %37 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %bitfields = getelementptr inbounds %struct.eth_tx_3rd_bd, ptr %third_bd, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %bitfields to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bitfields, align 2
  %41 = lshr i16 %bf.load.i.i, 4
  %42 = and i16 %41, 3840
  %conv30 = or i16 %42, %40
  store i16 %conv30, ptr %bitfields, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_proto.0)
  %cmp14 = icmp eq i8 %l4_proto.0, 17
  %spec.select = select i1 %cmp14, i16 80, i16 16
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %43 = trunc i32 %sub.ptr.sub to i16
  %44 = lshr i16 %43, 1
  %conv4 = and i16 %44, 8191
  %bitfields1 = getelementptr inbounds %struct.eth_tx_2nd_bd, ptr %second_bd, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %bitfields1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %spec.select, ptr %bitfields1, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %conv4)
  %bitfields2 = getelementptr inbounds %struct.eth_tx_2nd_bd, ptr %second_bd, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %bitfields2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %bitfields2, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qede_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %1 to i32
  %fp_num_rx = getelementptr i8, ptr %dev, i32 2439
  %2 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fp_num_rx, align 1
  %conv1 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1)
  %tobool.not = icmp eq i32 %conv, %conv1
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub nsw i32 %conv, %conv1
  %num_tc = getelementptr i8, ptr %dev, i32 2413
  %4 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_tc, align 1
  %conv2 = zext i8 %5 to i32
  %mul = mul nsw i32 %sub, %conv2
  %call8 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #13
  %conv9 = zext i16 %call8 to i32
  %rem = srem i32 %conv9, %mul
  %phi.cast = trunc i32 %rem to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @qede_features_check(ptr noundef %skb, ptr nocapture noundef readonly %dev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %4 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %6 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %3, label %if.then.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.then.if.then.i.i_crit_edge
    i16 -32512, label %if.then.if.then.i.i_crit_edge75
  ]

if.then.if.then.i.i_crit_edge75:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.if.then.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.vlan_get_protocol.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.then.if.then.i.i_crit_edge, %if.then.if.then.i.i_crit_edge75
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp.i.i = icmp ult i16 %5, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !130

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %return

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %7 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  %8 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !148
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %7, align 2, !annotation !148
  %10 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  %14 = add i32 %vlan_depth.1.i.i, %13
  %sub.i1.i.i.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !130
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %17 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !130
  br i1 %17, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !130

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  br label %return

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #13
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %19, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge76
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge76: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge76
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.then.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %3, %if.then.vlan_get_protocol.exit_crit_edge ], [ %19, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %21 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb2
  ]

vlan_get_protocol.exit.return_crit_edge:          ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i52 = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i52
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %sw.epilog

sw.bb2:                                           ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i53, align 8
  %network_header.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i.i54 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i54, align 4
  %conv.i.i55 = zext i16 %29 to i32
  %add.ptr.i.i56 = getelementptr i8, ptr %27, i32 %conv.i.i55
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i56, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %l4_proto.0.in = phi ptr [ %nexthdr, %sw.bb2 ], [ %protocol, %sw.bb ]
  %30 = ptrtoint ptr %l4_proto.0.in to i32
  call void @__asan_load1_noabort(i32 %30)
  %l4_proto.0 = load i8, ptr %l4_proto.0.in, align 1
  %31 = zext i8 %l4_proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %l4_proto.0, label %sw.epilog.return_crit_edge [
    i8 17, label %if.then6
    i8 4, label %if.then31
  ]

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then6:                                         ; preds = %sw.epilog
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %34 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inner_mac_header.i, align 2
  %conv.i = zext i16 %35 to i32
  %add.ptr.i57 = getelementptr i8, ptr %33, i32 %conv.i
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i, align 2
  %conv.i59 = zext i16 %37 to i32
  %add.ptr.i60 = getelementptr i8, ptr %33, i32 %conv.i59
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i60 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.ptr.sub)
  %cmp11 = icmp sgt i32 %sub.ptr.sub, 48
  br i1 %cmp11, label %if.then6.cleanup_crit_edge, label %lor.lhs.false

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then6
  %geneve_dst_port = getelementptr i8, ptr %dev, i32 3502
  %38 = ptrtoint ptr %geneve_dst_port to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %geneve_dst_port, align 2
  %vxlan_dst_port = getelementptr i8, ptr %dev, i32 3500
  %40 = ptrtoint ptr %vxlan_dst_port to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vxlan_dst_port, align 4
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i60, i32 0, i32 1
  %42 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %41)
  %cmp16.not = icmp eq i16 %43, %41
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %39)
  %cmp22.not = icmp eq i16 %43, %39
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %and = and i64 %features, -34359672859
  br label %return

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %and32 = and i64 %features, -34359672859
  br label %return

return:                                           ; preds = %if.then31, %cleanup, %lor.lhs.false.return_crit_edge, %sw.epilog.return_crit_edge, %vlan_get_protocol.exit.return_crit_edge, %cleanup.thread.i.i, %do.end.i.i, %entry.return_crit_edge
  %retval.3 = phi i64 [ %features, %sw.epilog.return_crit_edge ], [ %features, %entry.return_crit_edge ], [ %features, %lor.lhs.false.return_crit_edge ], [ %features, %vlan_get_protocol.exit.return_crit_edge ], [ %and32, %if.then31 ], [ %and, %cleanup ], [ %features, %do.end.i.i ], [ %features, %cleanup.thread.i.i ]
  ret i64 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @qede_rx_xdp(ptr nocapture noundef readonly %edev, ptr nocapture noundef %fp, ptr noundef %rxq, ptr noundef %prog, ptr nocapture noundef readonly %bd, ptr nocapture noundef readonly %cqe, ptr nocapture noundef %data_offset, ptr nocapture noundef %len) unnamed_addr #0 align 64 {
entry:
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #13
  %0 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %rx_buf_seg_size = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 12
  %5 = getelementptr inbounds i8, ptr %xdp, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %rx_buf_seg_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buf_seg_size, align 32
  %xdp_rxq = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 25
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %4, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xdp_rxq, ptr %3, align 4
  %11 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd, align 4
  %call = tail call ptr @page_address(ptr noundef %12) #13
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len, align 2
  %conv1 = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %2, align 4
  %18 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr2.i, ptr %0, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr3.i, ptr %1, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.47, i32 noundef 613) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@qede_rx_xdp, %if.then.i.i)) #13
          to label %if.else.i.i [label %if.then.i.i], !srcloc !154

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #13
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %21 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %22) #13
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %23 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !159
  %and.i.i.i.i = and i32 %33, 128
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
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %35 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !160
  %39 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, ptrtoint (ptr @lockdep_recursion to i32)
  %45 = inttoptr i32 %add.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !161
  %48 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i7.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool20.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %52 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %56 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i9.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  %60 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %63, ptrtoint (ptr @hardirqs_enabled to i32)
  %64 = inttoptr i32 %add47.i.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !163
  %67 = call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i12.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool54.not.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %71 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3, i32 0, i32 1
  %73 = call ptr @llvm.returnaddress(i32 0) #13
  %74 = ptrtoint ptr %73 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %74) #13
  %75 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %32, align 8
  %inc.i.i.i = add i64 %76, 1
  store i64 %inc.i.i.i, ptr %32, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #13
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %77 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %78
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %74) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !165
  %79 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %80, 1
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
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !166
  %and.i.i.i3.i.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !130

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #13, !srcloc !167
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %82 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %83) #13
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@qede_rx_xdp, %l_yes.i.i)) #13
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !154

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
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_prog_run_xdp.exit

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 15
  %90 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %91, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_prog_run_xdp.exit

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #13
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ 3, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ 3, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge ]
  %92 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xdp, align 4
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %95 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv4 = trunc i32 %sub.ptr.sub to i16
  %96 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv4, ptr %data_offset, align 2
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %0, align 4
  %sub.ptr.lhs.cast6 = ptrtoint ptr %98 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast6, %sub.ptr.lhs.cast
  %conv9 = trunc i32 %sub.ptr.sub8 to i16
  %99 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv9, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %act.0.i)
  %cmp = icmp eq i32 %act.0.i, 2
  br i1 %cmp, label %bpf_prog_run_xdp.exit.cleanup_crit_edge, label %if.end

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %bpf_prog_run_xdp.exit
  %xdp_no_pass = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 22
  %100 = ptrtoint ptr %xdp_no_pass to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %xdp_no_pass, align 128
  %inc = add i64 %101, 1
  store i64 %inc, ptr %xdp_no_pass, align 128
  %102 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %act.0.i, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb39
    i32 0, label %if.end.sw.bb92_crit_edge
    i32 1, label %if.end.sw.bb94_crit_edge
  ]

if.end.sw.bb94_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb94

if.end.sw.bb92_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb92

sw.bb:                                            ; preds = %if.end
  %call11 = call i32 @qede_alloc_rx_buffer(ptr noundef %rxq, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end15, label %if.then14, !prof !129

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @qede_recycle_rx_bd_ring(ptr noundef %rxq, i8 noundef zeroext 1)
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %103 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ndev, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %104, ptr noundef %prog, i32 noundef 3)
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %xdp_tx = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 8
  %105 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xdp_tx, align 4
  %mapping = getelementptr inbounds %struct.sw_rx_data, ptr %bd, i32 0, i32 1
  %107 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mapping, align 4
  %109 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %data_offset, align 2
  %111 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %len, align 2
  %113 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bd, align 4
  %tx_pbl.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 15
  %u.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 15, i32 3
  %115 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %u.i.i.i, align 4
  %conv.i.i = zext i16 %116 to i32
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %cons_idx.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %116, i16 %118)
  %cmp.i.i = icmp ult i16 %116, %118
  %add.i.i145 = or i32 %conv.i.i, 65536
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i145, i32 %conv.i.i
  %119 = trunc i32 %spec.select.i.i to i16
  %conv5.i.i = sub i16 %119, %118
  %mode.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 15, i32 6
  %120 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp6.i.i = icmp eq i32 %121, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end15.qed_chain_get_elem_used.exit.i_crit_edge

if.end15.qed_chain_get_elem_used.exit.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_chain_get_elem_used.exit.i

if.then8.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %elem_per_page3.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 15, i32 7
  %122 = ptrtoint ptr %elem_per_page3.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %elem_per_page3.i.i, align 4
  %conv9.i.i = zext i16 %123 to i32
  %div.i.i = udiv i32 %spec.select.i.i, %conv9.i.i
  %124 = udiv i16 %118, %123
  %125 = trunc i32 %div.i.i to i16
  %conv13.neg.i.i = sub i16 %conv5.i.i, %125
  %sub16.i.i = add i16 %conv13.neg.i.i, %124
  br label %qed_chain_get_elem_used.exit.i

qed_chain_get_elem_used.exit.i:                   ; preds = %if.then8.i.i, %if.end15.qed_chain_get_elem_used.exit.i_crit_edge
  %used.0.i.i = phi i16 [ %sub16.i.i, %if.then8.i.i ], [ %conv5.i.i, %if.end15.qed_chain_get_elem_used.exit.i_crit_edge ]
  %num_tx_buffers.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 4
  %126 = ptrtoint ptr %num_tx_buffers.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %num_tx_buffers.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %used.0.i.i, i16 %127)
  %cmp.not.i = icmp ult i16 %used.0.i.i, %127
  br i1 %cmp.not.i, label %if.else, label %if.then25, !prof !129

if.then25:                                        ; preds = %qed_chain_get_elem_used.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %stopped_cnt.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 6
  %128 = ptrtoint ptr %stopped_cnt.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %stopped_cnt.i, align 8
  %inc.i = add i64 %129, 1
  store i64 %inc.i, ptr %stopped_cnt.i, align 8
  %dev = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 2
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 8
  %132 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mapping, align 4
  %data_direction = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 7
  %134 = ptrtoint ptr %data_direction to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %data_direction, align 2
  %conv27 = zext i8 %135 to i32
  call void @dma_unmap_page_attrs(ptr noundef %131, i32 noundef %133, i32 noundef 4096, i32 noundef %conv27, i32 noundef 0) #13
  %136 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bd, align 4
  call void @__free_pages(ptr noundef %137, i32 noundef 0) #13
  %ndev29 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %138 = ptrtoint ptr %ndev29 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev29, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %139, ptr noundef %prog, i32 noundef 3)
  br label %if.end38

if.else:                                          ; preds = %qed_chain_get_elem_used.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call fastcc ptr @qed_chain_produce(ptr noundef %tx_pbl.i) #13
  %nbds.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %nbds.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %nbds.i, align 2
  %bd_flags.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 2
  %141 = ptrtoint ptr %bd_flags.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %bd_flags.i, align 1
  %142 = shl i16 %112, 2
  %143 = call i16 @llvm.bswap.i16(i16 %142) #13
  %bitfields10.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 2, i32 3
  %144 = ptrtoint ptr %bitfields10.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %bitfields10.i, align 2
  %conv11.i = zext i16 %110 to i32
  %add.i = add i32 %108, %conv11.i
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call5.i, i32 0, i32 1
  %145 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %hi.i, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %add.i) #13
  %147 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %call5.i, align 4
  %148 = call i16 @llvm.bswap.i16(i16 %112) #13
  %nbytes.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call5.i, i32 0, i32 1
  %149 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %nbytes.i, align 4
  %sw_tx_ring.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 14
  %150 = ptrtoint ptr %sw_tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sw_tx_ring.i, align 8
  %sw_tx_prod.i = getelementptr inbounds %struct.qede_tx_queue, ptr %106, i32 0, i32 3
  %152 = ptrtoint ptr %sw_tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %sw_tx_prod.i, align 4
  %conv17.i = zext i16 %153 to i32
  %add.ptr.i146 = getelementptr %struct.sw_tx_xdp, ptr %151, i32 %conv17.i
  %mapping.i = getelementptr %struct.sw_tx_xdp, ptr %151, i32 %conv17.i, i32 2
  %154 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %108, ptr %mapping.i, align 4
  %155 = ptrtoint ptr %add.ptr.i146 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %114, ptr %add.ptr.i146, align 4
  %xdpf19.i = getelementptr %struct.sw_tx_xdp, ptr %151, i32 %conv17.i, i32 1
  %156 = ptrtoint ptr %xdpf19.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %xdpf19.i, align 4
  %157 = load i16, ptr %sw_tx_prod.i, align 4
  %conv21.i = zext i16 %157 to i32
  %add22.i = add nuw nsw i32 %conv21.i, 1
  %158 = ptrtoint ptr %num_tx_buffers.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %num_tx_buffers.i, align 2
  %conv24.i = zext i16 %159 to i32
  %rem.i = urem i32 %add22.i, %conv24.i
  %conv25.i = trunc i32 %rem.i to i16
  store i16 %conv25.i, ptr %sw_tx_prod.i, align 4
  %dev30 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 2
  %160 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev30, align 8
  %162 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mapping, align 4
  %164 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %data_offset, align 2
  %conv32 = zext i16 %165 to i32
  %add = add i32 %163, %conv32
  %166 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %len, align 2
  %conv33 = zext i16 %167 to i32
  %data_direction34 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 7
  %168 = ptrtoint ptr %data_direction34 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %data_direction34, align 2
  %conv35 = zext i8 %169 to i32
  call void @dma_sync_single_for_device(ptr noundef %161, i32 noundef %add, i32 noundef %conv33, i32 noundef %conv35) #13
  %xdp_xmit = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 3
  %170 = ptrtoint ptr %xdp_xmit to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %xdp_xmit, align 2
  %172 = or i8 %171, 1
  store i8 %172, ptr %xdp_xmit, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then25
  %rx_bd_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i = call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i) #13
  %sw_rx_cons.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %173 = ptrtoint ptr %sw_rx_cons.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %sw_rx_cons.i, align 16
  %inc.i147 = add i16 %174, 1
  store i16 %inc.i147, ptr %sw_rx_cons.i, align 16
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  %call40 = call i32 @qede_alloc_rx_buffer(ptr noundef %rxq, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end50, label %if.then48, !prof !129

if.then48:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  call void @qede_recycle_rx_bd_ring(ptr noundef %rxq, i8 noundef zeroext 1)
  %ndev49 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %175 = ptrtoint ptr %ndev49 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ndev49, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %176, ptr noundef %prog, i32 noundef 4)
  br label %cleanup

if.end50:                                         ; preds = %sw.bb39
  %dev51 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 2
  %177 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev51, align 8
  %mapping52 = getelementptr inbounds %struct.sw_rx_data, ptr %bd, i32 0, i32 1
  %179 = ptrtoint ptr %mapping52 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mapping52, align 4
  %data_direction53 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 7
  %181 = ptrtoint ptr %data_direction53 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %data_direction53, align 2
  %conv54 = zext i8 %182 to i32
  call void @dma_unmap_page_attrs(ptr noundef %178, i32 noundef %180, i32 noundef 4096, i32 noundef %conv54, i32 noundef 0) #13
  %ndev55 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %183 = ptrtoint ptr %ndev55 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ndev55, align 4
  %call56 = call i32 @xdp_do_redirect(ptr noundef %184, ptr noundef nonnull %xdp, ptr noundef %prog) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else85, label %do.body, !prof !129

do.body:                                          ; preds = %if.end50
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %185 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %186)
  %cmp66 = icmp ult i8 %186, 3
  br i1 %cmp66, label %do.end, label %do.body.if.end90_crit_edge, !prof !130

do.body.if.end90_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

do.end:                                           ; preds = %do.body
  %187 = ptrtoint ptr %ndev55 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ndev55, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %188, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i = icmp eq i8 %190, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i148 = call ptr @strchr(ptr noundef %188, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i148, null
  %tobool78.not = icmp eq ptr %188, null
  %or.cond = and i1 %tobool78.not, %tobool2.not.i
  %spec.select.i153 = select i1 %tobool2.not.i, ptr %188, ptr @.str.19
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i153
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.19, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 1149, ptr noundef %cond) #16
  br label %if.end90

if.else85:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_xmit86 = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 3
  %191 = ptrtoint ptr %xdp_xmit86 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %xdp_xmit86, align 2
  %193 = or i8 %192, 2
  store i8 %193, ptr %xdp_xmit86, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.else85, %cond.end, %do.body.if.end90_crit_edge
  %rx_bd_ring.i157 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i158 = call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i157) #13
  %sw_rx_cons.i159 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %194 = ptrtoint ptr %sw_rx_cons.i159 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %sw_rx_cons.i159, align 16
  %inc.i160 = add i16 %195, 1
  store i16 %inc.i160, ptr %sw_rx_cons.i159, align 16
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ndev91 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %196 = ptrtoint ptr %ndev91 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ndev91, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %197, ptr noundef %prog, i32 noundef %act.0.i) #13
  br label %sw.bb92

sw.bb92:                                          ; preds = %sw.default, %if.end.sw.bb92_crit_edge
  %ndev93 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %198 = ptrtoint ptr %ndev93 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ndev93, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %199, ptr noundef %prog, i32 noundef %act.0.i)
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.bb92, %if.end.sw.bb94_crit_edge
  %bd_num = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %cqe, i32 0, i32 9
  %200 = ptrtoint ptr %bd_num to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %cmp.not10.i = icmp eq i8 %201, 0
  br i1 %cmp.not10.i, label %sw.bb94.cleanup_crit_edge, label %for.body.lr.ph.i

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb94
  %sw_rx_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %sw_rx_cons.i161 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %rx_bd_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %sw_rx_prod.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 5
  %rx_headroom.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.addr.011.i = phi i8 [ %201, %for.body.lr.ph.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %202 = ptrtoint ptr %sw_rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sw_rx_ring.i, align 4
  %204 = ptrtoint ptr %sw_rx_cons.i161 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %sw_rx_cons.i161, align 16
  %206 = and i16 %205, 8191
  %and.i = zext i16 %206 to i32
  %arrayidx.i = getelementptr %struct.sw_rx_data, ptr %203, i32 %and.i
  %call.i.i = call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i.i) #13
  %207 = ptrtoint ptr %sw_rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sw_rx_ring.i, align 4
  %209 = ptrtoint ptr %sw_rx_prod.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %sw_rx_prod.i.i, align 2
  %211 = and i16 %210, 8191
  %and.i.i162 = zext i16 %211 to i32
  %arrayidx.i.i163 = getelementptr %struct.sw_rx_data, ptr %208, i32 %and.i.i162
  %212 = call ptr @memcpy(ptr %arrayidx.i.i163, ptr %arrayidx.i, i32 12)
  %mapping.i.i = getelementptr %struct.sw_rx_data, ptr %208, i32 %and.i.i162, i32 1
  %213 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mapping.i.i, align 4
  %page_offset.i.i = getelementptr %struct.sw_rx_data, ptr %208, i32 %and.i.i162, i32 2
  %215 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %page_offset.i.i, align 4
  %add.i.i164 = add i32 %216, %214
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %call.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %hi.i.i, align 4
  %218 = ptrtoint ptr %rx_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %rx_headroom.i.i, align 2
  %conv3.i.i = zext i16 %219 to i32
  %add4.i.i = add i32 %add.i.i164, %conv3.i.i
  %220 = call i32 @llvm.bswap.i32(i32 %add4.i.i) #13
  %221 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %call.i.i, align 4
  %222 = ptrtoint ptr %sw_rx_prod.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %sw_rx_prod.i.i, align 2
  %inc.i.i = add i16 %223, 1
  store i16 %inc.i.i, ptr %sw_rx_prod.i.i, align 2
  %224 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %arrayidx.i, align 4
  %call.i8.i = call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i.i) #13
  %225 = ptrtoint ptr %sw_rx_cons.i161 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %sw_rx_cons.i161, align 16
  %inc.i9.i = add i16 %226, 1
  store i16 %inc.i9.i, ptr %sw_rx_cons.i161, align 16
  %dec.i = add i8 %count.addr.011.i, -1
  %cmp.not.i165 = icmp eq i8 %dec.i, 0
  br i1 %cmp.not.i165, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %sw.bb94.cleanup_crit_edge, %if.end90, %if.then48, %if.end38, %if.then14, %bpf_prog_run_xdp.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #13
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qede_tpa_rx_build_skb(ptr nocapture noundef readonly %edev, ptr noundef %rxq, ptr nocapture noundef %bd, i16 noundef zeroext %len, i16 noundef zeroext %pad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #13
  %page_offset.i = getelementptr inbounds %struct.sw_rx_data, ptr %bd, i32 0, i32 2
  %2 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %3
  %rx_buf_seg_size.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 12
  %4 = ptrtoint ptr %rx_buf_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_seg_size.i, align 32
  %call1.i = tail call ptr @build_skb(ptr noundef %add.ptr.i, i32 noundef %5) #13
  %conv.i = zext i16 %pad to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %conv.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %conv2.i = zext i16 %len to i32
  %call3.i = tail call ptr @skb_put(ptr noundef %call1.i, i32 noundef %conv2.i) #13
  %10 = ptrtoint ptr %rx_buf_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buf_seg_size.i, align 32
  %12 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_offset.i, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %page_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp eq i32 %add, 4096
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @qede_alloc_rx_buffer(ptr noundef %rxq, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end27_crit_edge, label %do.body, !prof !129

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp6 = icmp ult i8 %15, 3
  br i1 %cmp6, label %do.end, label %do.body.do.end22_crit_edge, !prof !130

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i1 = tail call ptr @strchr(ptr noundef %17, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i1, null
  %tobool17.not = icmp eq ptr %17, null
  %or.cond = and i1 %tobool17.not, %tobool2.not.i
  %spec.select.i5 = select i1 %tobool2.not.i, ptr %17, ptr @.str.19
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i5
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.19, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 771, ptr noundef %cond) #16
  br label %do.end22

do.end22:                                         ; preds = %cond.end, %do.body.do.end22_crit_edge
  %20 = ptrtoint ptr %rx_buf_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_buf_seg_size.i, align 32
  %22 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_offset.i, align 4
  %sub = sub i32 %23, %21
  store i32 %sub, ptr %page_offset.i, align 4
  %24 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd, align 4
  tail call fastcc void @page_ref_inc(ptr noundef %25)
  tail call void @__dev_kfree_skb_any(ptr noundef %call1.i, i32 noundef 1) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %26 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #13, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@qede_tpa_rx_build_skb, %if.then.i)) #13
          to label %page_ref_inc.exit [label %if.then.i], !srcloc !154

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %27, i32 noundef 1) #13
  br label %page_ref_inc.exit

page_ref_inc.exit:                                ; preds = %if.then.i, %if.else
  %rx_bd_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i9 = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i) #13
  %sw_rx_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %29 = ptrtoint ptr %sw_rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw_rx_ring.i, align 4
  %sw_rx_prod.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 5
  %31 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sw_rx_prod.i, align 2
  %33 = and i16 %32, 8191
  %and.i = zext i16 %33 to i32
  %arrayidx.i = getelementptr %struct.sw_rx_data, ptr %30, i32 %and.i
  %34 = call ptr @memcpy(ptr %arrayidx.i, ptr %bd, i32 12)
  %mapping.i = getelementptr %struct.sw_rx_data, ptr %30, i32 %and.i, i32 1
  %35 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapping.i, align 4
  %page_offset.i10 = getelementptr %struct.sw_rx_data, ptr %30, i32 %and.i, i32 2
  %37 = ptrtoint ptr %page_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %page_offset.i10, align 4
  %add.i = add i32 %38, %36
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call.i9, i32 0, i32 1
  %39 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hi.i, align 4
  %rx_headroom.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  %40 = ptrtoint ptr %rx_headroom.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rx_headroom.i, align 2
  %conv3.i = zext i16 %41 to i32
  %add4.i = add i32 %add.i, %conv3.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #13
  %43 = ptrtoint ptr %call.i9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call.i9, align 4
  %44 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sw_rx_prod.i, align 2
  %inc.i = add i16 %45, 1
  store i16 %inc.i, ptr %sw_rx_prod.i, align 2
  %46 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bd, align 4
  br label %if.end27

if.end27:                                         ; preds = %page_ref_inc.exit, %if.then.if.end27_crit_edge
  %rx_bd_ring.i11 = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i12 = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i11) #13
  %sw_rx_cons.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %47 = ptrtoint ptr %sw_rx_cons.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %sw_rx_cons.i, align 16
  %inc.i13 = add i16 %48, 1
  store i16 %inc.i13, ptr %sw_rx_cons.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end22
  %retval.0 = phi ptr [ null, %do.end22 ], [ %call1.i, %if.end27 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_fill_frag_skb(ptr noundef %rxq, i8 noundef zeroext %tpa_agg_index, i16 noundef zeroext %len_on_bd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_rx_ring = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %0 = ptrtoint ptr %sw_rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw_rx_ring, align 4
  %sw_rx_cons = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 4
  %2 = ptrtoint ptr %sw_rx_cons to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_rx_cons, align 16
  %4 = and i16 %3, 8191
  %and = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.sw_rx_data, ptr %1, i32 %and
  %idxprom = zext i8 %tpa_agg_index to i32
  %skb3 = getelementptr %struct.qede_rx_queue, ptr %rxq, i32 0, i32 17, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb3, align 4
  %state = getelementptr %struct.qede_rx_queue, ptr %rxq, i32 0, i32 17, i32 %idxprom, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.not = icmp eq i8 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !129

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %frag_id = getelementptr %struct.qede_rx_queue, ptr %rxq, i32 0, i32 17, i32 %idxprom, i32 5
  %9 = ptrtoint ptr %frag_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %frag_id, align 4
  %inc = add i8 %10, 1
  store i8 %inc, ptr %frag_id, align 4
  %conv7 = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %page_offset = getelementptr %struct.sw_rx_data, ptr %1, i32 %and, i32 2
  %13 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_offset, align 4
  %rx_headroom = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  %15 = ptrtoint ptr %rx_headroom to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_headroom, align 2
  %conv8 = zext i16 %16 to i32
  %add = add i32 %14, %conv8
  %conv9 = zext i16 %len_on_bd to i32
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %conv7
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %12, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %conv7, i32 2
  %20 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %conv7, i32 1
  %21 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv9, ptr %bv_len.i.i.i, align 4
  %22 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !129

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %24, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %25, %if.end.i.i.i ]
  %26 = inttoptr i32 %retval.0.i.i.i to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i8.i.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_fill_page_desc.exit

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 12
  %31 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %32 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc, ptr %nr_frags.i, align 2
  %call = tail call fastcc i32 @qede_realloc_rx_buffer(ptr noundef %rxq, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end19, label %if.then17, !prof !129

if.then17:                                        ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @page_ref_inc(ptr noundef %36)
  br label %out

if.end19:                                         ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rx_bd_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i = tail call fastcc ptr @qed_chain_consume(ptr noundef %rx_bd_ring.i) #13
  %37 = ptrtoint ptr %sw_rx_cons to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sw_rx_cons, align 16
  %inc.i = add i16 %38, 1
  store i16 %inc.i, ptr %sw_rx_cons, align 16
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 7
  %39 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len, align 8
  %add21 = add i32 %40, %conv9
  store i32 %add21, ptr %data_len, align 8
  %rx_buf_seg_size = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 12
  %41 = ptrtoint ptr %rx_buf_seg_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_buf_seg_size, align 32
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 20
  %43 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize, align 8
  %add22 = add i32 %44, %42
  store i32 %add22, ptr %truesize, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %add24 = add i32 %46, %conv9
  store i32 %add24, ptr %len, align 4
  br label %cleanup

out:                                              ; preds = %if.then17, %entry.out_crit_edge
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %state, align 1
  tail call void @qede_recycle_rx_bd_ring(ptr noundef %rxq, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_ref_inc(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %_refcount = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount, ptr %_refcount, i32 1, ptr elementtype(i32) %_refcount) #13, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@page_ref_inc, %if.then)) #13
          to label %if.end [label %if.then], !srcloc !154

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_realloc_rx_buffer(ptr noundef %rxq, ptr nocapture noundef %curr_cons) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %rx_buf_seg_size = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 12
  %0 = ptrtoint ptr %rx_buf_seg_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buf_seg_size, align 32
  %page_offset = getelementptr inbounds %struct.sw_rx_data, ptr %curr_cons, i32 0, i32 2
  %2 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_offset, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %page_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp eq i32 %add, 4096
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @qede_alloc_rx_buffer(ptr noundef %rxq, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then4, !prof !129

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %rx_buf_seg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_seg_size, align 32
  %6 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_offset, align 4
  %sub = sub i32 %7, %5
  store i32 %sub, ptr %page_offset, align 4
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %mapping = getelementptr inbounds %struct.sw_rx_data, ptr %curr_cons, i32 0, i32 1
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapping, align 4
  %data_direction = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 7
  %12 = ptrtoint ptr %data_direction to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_direction, align 2
  %conv = zext i8 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 4096, i32 noundef %conv, i32 noundef 0) #13
  br label %return

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %curr_cons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr_cons, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #13, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@qede_realloc_rx_buffer, %if.then.i)) #13
          to label %page_ref_inc.exit [label %if.then.i], !srcloc !154

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %15, i32 noundef 1) #13
  br label %page_ref_inc.exit

page_ref_inc.exit:                                ; preds = %if.then.i, %if.else
  %rx_bd_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 14
  %call.i = tail call fastcc ptr @qed_chain_produce(ptr noundef %rx_bd_ring.i) #13
  %sw_rx_ring.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 13
  %17 = ptrtoint ptr %sw_rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw_rx_ring.i, align 4
  %sw_rx_prod.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 5
  %19 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sw_rx_prod.i, align 2
  %21 = and i16 %20, 8191
  %and.i = zext i16 %21 to i32
  %arrayidx.i = getelementptr %struct.sw_rx_data, ptr %18, i32 %and.i
  %22 = call ptr @memcpy(ptr %arrayidx.i, ptr %curr_cons, i32 12)
  %mapping.i = getelementptr %struct.sw_rx_data, ptr %18, i32 %and.i, i32 1
  %23 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mapping.i, align 4
  %page_offset.i = getelementptr %struct.sw_rx_data, ptr %18, i32 %and.i, i32 2
  %25 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_offset.i, align 4
  %add.i = add i32 %26, %24
  %hi.i = getelementptr inbounds %struct.regpair, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hi.i, align 4
  %rx_headroom.i = getelementptr inbounds %struct.qede_rx_queue, ptr %rxq, i32 0, i32 10
  %28 = ptrtoint ptr %rx_headroom.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rx_headroom.i, align 2
  %conv3.i = zext i16 %29 to i32
  %add4.i = add i32 %add.i, %conv3.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #13
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i, align 4
  %32 = ptrtoint ptr %sw_rx_prod.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sw_rx_prod.i, align 2
  %inc.i = add i16 %33, 1
  store i16 %inc.i, ptr %sw_rx_prod.i, align 2
  %34 = ptrtoint ptr %curr_cons to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %curr_cons, align 4
  br label %return

return:                                           ; preds = %page_ref_inc.exit, %if.end, %if.then4
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %page_ref_inc.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_gro_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !119) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %13 = tail call i32 @llvm.read_register.i32(metadata !119) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !119) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 51, ptr noundef nonnull @.str.50) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %31 = tail call i32 @llvm.read_register.i32(metadata !119) #13
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
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_ptp_rx_ts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 64, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 88, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @qede_free_tx_pkt._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @qede_free_tx_pkt._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1531, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qede_start_xmit._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qede_start_xmit._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1623, i32 4}
!15 = !{ptr @qede_start_xmit._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @qede_start_xmit._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1648, i32 4}
!19 = !{ptr @qede_start_xmit._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qede_start_xmit._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1723, i32 3}
!23 = !{ptr @qede_start_xmit._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @qede_start_xmit._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1735, i32 4}
!27 = !{ptr @qede_start_xmit._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qede_start_xmit._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 451, i32 4}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qede_tx_int._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @qede_tx_int._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @qede_tx_int._entry.24, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 494, i32 4}
!44 = !{ptr @qede_tx_int._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 848, i32 3}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @qede_tpa_start._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @qede_tpa_start._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 881, i32 3}
!52 = !{ptr @qede_tpa_start._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qede_tpa_start._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 770, i32 4}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qede_tpa_rx_build_skb._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qede_tpa_rx_build_skb._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 967, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @qede_tpa_cont._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @qede_tpa_cont._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 991, i32 3}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @qede_tpa_end._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @qede_tpa_end._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 999, i32 3}
!71 = !{ptr @qede_tpa_end._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @qede_tpa_end._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1003, i32 3}
!75 = !{ptr @qede_tpa_end._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @qede_tpa_end._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 944, i32 4}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @qede_gro_receive._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @qede_gro_receive._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1149, i32 4}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qede_rx_xdp._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qede_rx_xdp._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/filter.h", i32 613, i32 2}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!99 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1187, i32 4}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qede_rx_build_jumbo._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @qede_rx_build_jumbo._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qede/qede_fp.c", i32 1214, i32 3}
!107 = !{ptr @qede_rx_build_jumbo._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @qede_rx_build_jumbo._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.h", i32 33, i32 4}
!111 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qede_ptp_record_rx_ts._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @qede_ptp_record_rx_ts._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2160303605}
!132 = !{i64 2160303689}
!133 = !{i64 2160303869}
!134 = !{i64 6574830}
!135 = !{i64 2160304226}
!136 = !{i64 2160305845}
!137 = !{i64 2160312234}
!138 = !{i64 2160314209}
!139 = !{i64 2160201187}
!140 = !{i64 2160306663}
!141 = !{i64 2155804694}
!142 = !{i64 2160309379}
!143 = !{i64 2160306185}
!144 = !{i64 2160352610}
!145 = !{i64 2160200413}
!146 = !{i64 2160200722}
!147 = !{i64 2160352519}
!148 = !{!"auto-init"}
!149 = !{!"branch_weights", i32 2000, i32 8, i32 8000, i32 2000, i32 2000, i32 2000}
!150 = !{i64 6933630, i64 6933671, i64 6933716}
!151 = !{i64 6932528}
!152 = !{i8 0, i8 2}
!153 = !{i64 2148529511, i64 2148529537, i64 2148529566, i64 2148529600, i64 2148529631, i64 2148529654}
!154 = !{i64 2149086776, i64 2149086781, i64 2149086794, i64 2149086838, i64 2149086872, i64 2149086893}
!155 = !{i64 2150666289, i64 2150666789, i64 2150666326, i64 2150666382, i64 2150666416, i64 2150666440, i64 2150666481, i64 2150666502, i64 2150666530, i64 2150666564}
!156 = !{i64 2150667633}
!157 = !{i64 2155803623}
!158 = !{i64 2160372017}
!159 = !{i64 933211, i64 933272}
!160 = !{i64 2150279833}
!161 = !{i64 2150284767}
!162 = !{i64 2150306485}
!163 = !{i64 2150311379}
!164 = !{i64 2150387906}
!165 = !{i64 2150388231}
!166 = !{i64 935943}
!167 = !{i64 936228}
!168 = !{i64 2157134500}
!169 = !{i64 2157134715}
!170 = !{i64 2149644095}
!171 = !{i64 2149645131}
