; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4vf/sge.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4vf/sge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.ulptx_sge_pair = type { [2 x i32], [2 x i64] }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.167, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.167 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.adapter = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.adapter_params, [9 x %struct.anon.192], [76 x i8], %struct.sge, [1 x ptr], ptr, i32, ptr, %struct.spinlock, %struct.spinlock, %struct.mbox_list, ptr, %struct.list_head }
%struct.adapter_params = type { %struct.dev_params, %struct.sge_params, %struct.vpd_params, %struct.rss_params, %struct.vf_resources, %struct.arch_specific_params, i32, i8, i8 }
%struct.dev_params = type { i32, i32 }
%struct.sge_params = type { i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32 }
%struct.rss_params = type { i32, %union.anon.190 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i16, [2 x i8] }
%struct.vf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arch_specific_params = type { i32, i16 }
%struct.anon.192 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_eth_txq], [8 x %struct.sge_eth_rxq], [96 x i8], %struct.sge_rspq, [96 x i8], %struct.sge_rspq, %struct.spinlock, [1 x i32], %struct.timer_list, %struct.timer_list, i16, i16, i16, [6 x i16], [4 x i8], i32, i32, i32, i32, i32, i32, i32, [16 x ptr], [10 x ptr], [52 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i32, i32, i32, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mbox_list = type { %struct.list_head }
%struct.sge_qstat = type { i32, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.31, %union.anon.92, %struct.atomic_t, i32 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.92 = type { %struct.atomic_t }
%struct.tx_desc = type { [8 x i64] }
%struct.fw_eth_tx_pkt_vm_wr = type { i32, i32, [2 x i32], %union.anon.193 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { [6 x i8], [6 x i8], i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.cpl_tx_pkt_lso_core = type { i32, i16, i16, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.cpl_tx_pkt_core = type { i32, i16, i16, i64 }
%struct.ulptx_sgl = type { i32, i32, i64, [0 x %struct.ulptx_sge_pair] }
%struct.tx_sw_desc = type { ptr, ptr }
%struct.cpl_rx_pkt = type { %struct.rss_header, i8, i8, i16, i16, i16, i32, i16, i16 }
%struct.rss_header = type { i8, i8, i16, i32 }
%struct.pkt_gl = type { [17 x %struct.page_frag], ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rsp_ctrl = type { i32, i32, %union.anon.198 }
%union.anon.198 = type { i64 }
%struct.fw_iq_cmd = type { i32, i32, i16, i16, i16, i16, i32, i16, i16, i64, i32, i16, i16, i64, i32, i16, i16, i64 }
%struct.rx_sw_desc = type { ptr, i32 }
%struct.fw_eq_eth_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@t4vf_eth_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: TX ring %u full while queue awake!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4vf_eth_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/chelsio/cxgb4vf/sge.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t4vf_eth_xmit._entry_ptr = internal global ptr @t4vf_eth_xmit._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t4vf_sge_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2651, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad SGE FL buffer sizes [%d, %d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4vf_sge_init\00", [18 x i8] zeroinitializer }, align 32
@t4vf_sge_init._entry_ptr = internal global ptr @t4vf_sge_init._entry, section ".printk_index", align 4
@t4vf_sge_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 2656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SGE CPL MODE\0A\00", [46 x i8] zeroinitializer }, align 32
@t4vf_sge_init._entry_ptr.9 = internal global ptr @t4vf_sge_init._entry.7, section ".printk_index", align 4
@t4vf_sge_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&s->rx_timer)\00", [17 x i8] zeroinitializer }, align 32
@t4vf_sge_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&s->tx_timer)\00", [17 x i8] zeroinitializer }, align 32
@t4vf_sge_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&s->intrq_lock\00", [17 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@process_intrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected INTRQ response type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"process_intrq\00", [18 x i8] zeroinitializer }, align 32
@process_intrq._entry_ptr = internal global ptr @process_intrq._entry, section ".printk_index", align 4
@process_intrq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1980, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ingress QID %d out of range\0A\00", [35 x i8] zeroinitializer }, align 32
@process_intrq._entry_ptr.23 = internal global ptr @process_intrq._entry.21, section ".printk_index", align 4
@process_intrq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1986, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ingress QID %d RSPQ=NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@process_intrq._entry_ptr.26 = internal global ptr @process_intrq._entry.24, section ".printk_index", align 4
@process_intrq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 1992, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ingress QID %d refers to RSPQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@process_intrq._entry_ptr.29 = internal global ptr @process_intrq._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1224, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2650, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2656, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2697, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2698, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2703, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 326, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1160, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 717, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1962, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1979, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1985, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [46 x i8] c"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1990, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @process_intrq._entry, ptr @process_intrq._entry.21, ptr @process_intrq._entry.24, ptr @process_intrq._entry.27, ptr @process_intrq._entry_ptr, ptr @process_intrq._entry_ptr.23, ptr @process_intrq._entry_ptr.26, ptr @process_intrq._entry_ptr.29, ptr @t4vf_eth_xmit._entry, ptr @t4vf_eth_xmit._entry_ptr, ptr @t4vf_sge_init._entry, ptr @t4vf_sge_init._entry.7, ptr @t4vf_sge_init._entry_ptr, ptr @t4vf_sge_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @t4vf_sge_init.__key, ptr @.str.10, ptr @t4vf_sge_init.__key.11, ptr @.str.12, ptr @t4vf_sge_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_eth_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_sge_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_sge_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_sge_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_sge_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_sge_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_intrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_intrq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_intrq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_intrq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_eth_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [9 x %struct.ulptx_sge_pair], align 8
  %addr = alloca [18 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %addr) #10
  %0 = getelementptr inbounds i8, ptr %addr, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %entry.out_free_crit_edge, label %if.end, !prof !63

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end:                                           ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_vlan_tagged.exit, label %if.end.skb_vlan_tagged.exit.thread_crit_edge

if.end.skb_vlan_tagged.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_vlan_tagged.exit.thread

skb_vlan_tagged.exit:                             ; preds = %if.end
  %add = add i32 %5, 14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %skb_vlan_tagged.exit._crit_edge [
    i16 -30552, label %skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge484
  ]

skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge484: ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_vlan_tagged.exit.thread

skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge: ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_vlan_tagged.exit.thread

skb_vlan_tagged.exit._crit_edge:                  ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %10

skb_vlan_tagged.exit.thread:                      ; preds = %skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge, %skb_vlan_tagged.exit.skb_vlan_tagged.exit.thread_crit_edge484, %if.end.skb_vlan_tagged.exit.thread_crit_edge
  %add3465 = add i32 %5, 18
  br label %10

10:                                               ; preds = %skb_vlan_tagged.exit.thread, %skb_vlan_tagged.exit._crit_edge
  %11 = phi i32 [ %add3465, %skb_vlan_tagged.exit.thread ], [ %add, %skb_vlan_tagged.exit._crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp8 = icmp ugt i32 %3, %11
  %or.cond = select i1 %tobool6.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %.out_free_crit_edge, label %if.end16, !prof !64

.out_free_crit_edge:                              ; preds = %10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end16:                                         ; preds = %10
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %18 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %19 to i32
  %nqsets = getelementptr i8, ptr %dev, i32 2327
  %20 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nqsets, align 1
  %22 = zext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %22)
  %cmp21.not = icmp ult i16 %19, %22
  br i1 %cmp21.not, label %do.end36, label %do.body30, !prof !65

do.body30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1194, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end36:                                         ; preds = %if.end16
  %sge = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 10
  %first_qset = getelementptr i8, ptr %dev, i32 2328
  %23 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_qset, align 4
  %conv37 = zext i8 %24 to i32
  %add38 = add nuw nsw i32 %conv37, %conv
  %arrayidx = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38
  %vlan_id = getelementptr i8, ptr %dev, i32 2308
  %25 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not = icmp eq i32 %26, 0
  %tobool.not.i.not = xor i1 %tobool.not.i, true
  %brmerge = select i1 %tobool39.not, i1 true, i1 %tobool.not.i.not
  br i1 %brmerge, label %do.end36.if.end45_crit_edge, label %if.then42

do.end36.if.end45_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %conv44 = trunc i32 %26 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %27 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %28 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv44, ptr %vlan_tci2.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  %29 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %do.end36.if.end45_crit_edge
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %30 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stat.i.i, align 4
  %cidx.i.i = getelementptr inbounds %struct.sge_qstat, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %33 to i32
  %cidx1.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %34 = ptrtoint ptr %cidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cidx1.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end45.reclaimable.exit.i_crit_edge

if.end45.reclaimable.exit.i_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %reclaimable.exit.i

if.then.i.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 1
  %36 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %37, %sub.i.i
  br label %reclaimable.exit.i

reclaimable.exit.i:                               ; preds = %if.then.i.i, %if.end45.reclaimable.exit.i_crit_edge
  %reclaimable.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i.i, %if.end45.reclaimable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reclaimable.0.i.i)
  %tobool.not.i382 = icmp eq i32 %reclaimable.0.i.i, 0
  br i1 %tobool.not.i382, label %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge, label %if.then.i

reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge: ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %reclaimable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = tail call i32 @llvm.smin.i32(i32 %reclaimable.0.i.i, i32 16) #10
  tail call fastcc void @free_tx_desc(ptr noundef %17, ptr noundef %arrayidx, i32 noundef %38) #10
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %40, %38
  store i32 %sub.i, ptr %arrayidx, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %reclaimable.exit.i.reclaim_completed_tx.exit_crit_edge
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %44 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %conv.i, 1
  %add.i.i383 = or i32 %and.i.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i383, %div4.i.i
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool6.not.i = icmp eq i16 %46, 0
  %flits.0.v.i = select i1 %tobool6.not.i, i32 6, i32 8
  %flits.0.i = add nuw nsw i32 %add1.i.i, %flits.0.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %flits.0.i)
  %cmp.i = icmp ugt i32 %flits.0.i, 64
  br i1 %cmp.i, label %do.body2.i, label %flits_to_desc.exit, !prof !63

do.body2.i:                                       ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

flits_to_desc.exit:                               ; preds = %reclaim_completed_tx.exit
  %sub.i384 = add nuw nsw i32 %flits.0.i, 7
  %div7.i = lshr i32 %sub.i384, 3
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 1
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = xor i32 %50, -1
  %sub1.i = sub i32 %48, %div7.i
  %sub = add i32 %sub1.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50 = icmp slt i32 %sub, 0
  br i1 %cmp50, label %if.then58, label %if.end62, !prof !63

if.then58:                                        ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %txq1.i = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 1
  %52 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %txq1.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %53, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 4
  %54 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %stops.i, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 3
  %56 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef %dev, i32 noundef %conv) #13
  br label %cleanup

if.end62:                                         ; preds = %flits_to_desc.exit
  %pdev_dev66 = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 3
  %58 = ptrtoint ptr %pdev_dev66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev_dev66, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %61) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end62
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i385, !prof !65

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i385:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %59) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %66 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i385.dev_name.exit.i.i_crit_edge

if.then.i.i385.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i385
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %59, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i385.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %69, %if.end.i.i.i ], [ %67, %if.then.i.i385.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %59, i32 noundef -1) #10
  br label %if.then77

dma_map_single_attrs.exit.i:                      ; preds = %if.end62
  %sub.i.i386 = sub i32 %63, %65
  tail call void @debug_dma_map_single(ptr noundef %59, ptr noundef %61, i32 noundef %sub.i.i386) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %71 = load ptr, ptr @mem_map, align 4
  %72 = ptrtoint ptr %61 to i32
  %sub.i43.i = add i32 %72, 1073741824
  %shr.i.i = lshr i32 %sub.i43.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %71, i32 %shr.i.i
  %and.i.i387 = and i32 %72, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %59, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i387, i32 noundef %sub.i.i386, i32 noundef 1, i32 noundef 0) #10
  %73 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call41.i.i, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %59, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i388 = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i388, label %dma_map_single_attrs.exit.i.if.then77_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then77_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 12
  %nr_frags.i390 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %nr_frags.i390 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nr_frags.i390, align 2
  %idxprom.i = zext i8 %77 to i32
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %75, i32 0, i32 12, i32 %idxprom.i
  %cmp54.i = icmp ult ptr %frags.i, %arrayidx.i
  br i1 %cmp54.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end78_crit_edge

if.end.i.if.end78_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %fp.056.i = phi ptr [ %incdec.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %frags.i, %if.end.i.for.body.i_crit_edge ]
  %addr.addr.055.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %addr, %if.end.i.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.056.i, i32 0, i32 1
  %78 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bv_len.i.i, align 4
  %80 = ptrtoint ptr %fp.056.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fp.056.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.056.i, i32 0, i32 2
  %82 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %59, ptr noundef %81, i32 noundef %83, i32 noundef %79, i32 noundef 1, i32 noundef 0) #10
  %incdec.ptr.i = getelementptr i32, ptr %addr.addr.055.i, i32 1
  %84 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call2.i.i, ptr %incdec.ptr.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %59, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i44.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i44.not.i, label %while.cond.preheader.i, label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %cmp1557.i = icmp ugt ptr %fp.056.i, %frags.i
  br i1 %cmp1557.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr11.i = getelementptr %struct.bio_vec, ptr %fp.056.i, i32 1
  %cmp.i391 = icmp ult ptr %incdec.ptr11.i, %arrayidx.i
  br i1 %cmp.i391, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end78_crit_edge

for.inc.i.if.end78_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %fp.159.i = phi ptr [ %incdec.ptr12.i, %while.body.i.while.body.i_crit_edge ], [ %fp.056.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %addr.addr.158.i = phi ptr [ %incdec.ptr16.i, %while.body.i.while.body.i_crit_edge ], [ %incdec.ptr.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %incdec.ptr12.i = getelementptr %struct.bio_vec, ptr %fp.159.i, i32 -1
  %incdec.ptr16.i = getelementptr i32, ptr %addr.addr.158.i, i32 -1
  %85 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr16.i, align 4
  %bv_len.i46.i = getelementptr %struct.bio_vec, ptr %fp.159.i, i32 -1, i32 1
  %87 = ptrtoint ptr %bv_len.i46.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_len.i46.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %86, i32 noundef %88, i32 noundef 1, i32 noundef 0) #10
  %cmp15.i = icmp ugt ptr %incdec.ptr12.i, %frags.i
  br i1 %cmp15.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %addr.addr.1.lcssa.i = phi ptr [ %incdec.ptr.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %incdec.ptr16.i, %while.body.i.while.end.i_crit_edge ]
  %arrayidx18.i = getelementptr i32, ptr %addr.addr.1.lcssa.i, i32 -1
  %89 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx18.i, align 4
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %93 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len.i.i, align 8
  %sub.i49.i = sub i32 %92, %94
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %90, i32 noundef %sub.i49.i, i32 noundef 1, i32 noundef 0) #10
  br label %if.then77

if.then77:                                        ; preds = %while.end.i, %dma_map_single_attrs.exit.i.if.then77_crit_edge, %dma_map_single_attrs.exit.thread.i
  %mapping_err = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 5
  %95 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mapping_err, align 4
  %inc = add i32 %96, 1
  store i32 %inc, ptr %mapping_err, align 4
  br label %out_free

if.end78:                                         ; preds = %for.inc.i.if.end78_crit_edge, %if.end.i.if.end78_crit_edge
  %sub80 = add nuw nsw i32 %flits.0.i, 1
  %div375 = lshr i32 %sub80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp81 = icmp slt i32 %sub, 6
  br i1 %cmp81, label %if.then89, label %if.end78.do.end93_crit_edge, !prof !63

if.end78.do.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %txq1.i393 = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 1
  %97 = ptrtoint ptr %txq1.i393 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %txq1.i393, align 4
  %state.i.i394 = getelementptr inbounds %struct.netdev_queue, ptr %98, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i394) #10
  %stops.i395 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 4
  %99 = ptrtoint ptr %stops.i395 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stops.i395, align 4
  %inc.i396 = add i32 %100, 1
  store i32 %inc.i396, ptr %stops.i395, align 4
  %or = or i32 %div375, -1073741824
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %if.end78.do.end93_crit_edge
  %wr_mid.0 = phi i32 [ %or, %if.then89 ], [ %div375, %if.end78.do.end93_crit_edge ]
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %101 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %desc, align 4
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 3
  %103 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pidx, align 4
  %arrayidx96 = getelementptr %struct.tx_desc, ptr %102, i32 %104
  %equiq_to_len16 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx96, i32 0, i32 1
  %105 = ptrtoint ptr %equiq_to_len16 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %wr_mid.0, ptr %equiq_to_len16, align 4
  %r3 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx96, i32 0, i32 2
  %106 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %r3, align 4
  %arrayidx99 = getelementptr [2 x i32], ptr %r3, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx99, align 4
  %108 = getelementptr inbounds %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx96, i32 0, i32 3
  %109 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i, align 4
  %111 = call ptr @memcpy(ptr %108, ptr %110, i32 16)
  %add.ptr = getelementptr i64, ptr %arrayidx96, i32 %flits.0.i
  %112 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i, align 4
  %gso_size101 = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %gso_size101 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %gso_size101, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool102.not = icmp eq i16 %115, 0
  br i1 %tobool102.not, label %if.else160, label %if.then103

if.then103:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr104 = getelementptr %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx96, i32 1
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 8
  %116 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %gso_type, align 8
  %and = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp105.not = icmp eq i32 %and, 0
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %118 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %transport_header.i, align 2
  %conv.i399 = zext i16 %119 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %120 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %121 to i32
  %sub.i400 = sub nsw i32 %conv.i399, %conv1.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %122 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i402 = getelementptr i8, ptr %123, i32 %conv1.i
  %124 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i402 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub109 = add i32 %sub.ptr.sub.i, -14
  %126 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 285212704, ptr %arrayidx96, align 4
  %div114 = sdiv i32 %sub109, 4
  %shl112376 = or i32 %div114, %and
  %or113 = shl i32 %shl112376, 16
  %div117 = sdiv i32 %sub.i400, 4
  %shl118 = shl nsw i32 %div117, 4
  %127 = load ptr, ptr %head.i.i, align 8
  %128 = load i16, ptr %transport_header.i, align 2
  %conv.i.i405 = zext i16 %128 to i32
  %add.ptr.i.i406 = getelementptr i8, ptr %127, i32 %conv.i.i405
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i406, i32 0, i32 4
  %129 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load121 = load i16, ptr %doff, align 4
  %bf.lshr122 = lshr i16 %bf.load121, 12
  %conv123 = zext i16 %bf.lshr122 to i32
  %or116 = or i32 %shl118, %or113
  %or119 = or i32 %or116, %conv123
  %or125 = or i32 %or119, -306184192
  %130 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or125, ptr %add.ptr104, align 4
  %ipid_ofst = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr104, i32 0, i32 1
  %131 = ptrtoint ptr %ipid_ofst to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %ipid_ofst, align 4
  %132 = ptrtoint ptr %gso_size101 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %gso_size101, align 4
  %mss = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr104, i32 0, i32 2
  %134 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %mss, align 2
  %seqno_offset = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr104, i32 0, i32 3
  %135 = ptrtoint ptr %seqno_offset to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %seqno_offset, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 7, i32 6
  %136 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %136)
  %.sink = load i32, ptr %len, align 4
  %137 = getelementptr inbounds %struct.cpl_tx_pkt_lso_core, ptr %add.ptr104, i32 0, i32 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %.sink, ptr %137, align 4
  %add.ptr136 = getelementptr %struct.cpl_tx_pkt_lso_core, ptr %add.ptr104, i32 1
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %chip, align 4
  %141 = and i32 %140, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %141)
  %cmp140 = icmp ult i32 %141, 96
  %. = select i1 %cmp140, i64 34, i64 32
  %conv146377 = zext i32 %sub109 to i64
  %shl147 = shl i64 %conv146377, %.
  %cond = select i1 %cmp105.not, i32 8, i32 10
  %142 = zext i32 %cond to i64
  %shl152 = shl nuw nsw i64 %142, 40
  %conv153 = sext i32 %sub.i400 to i64
  %shl154 = shl nsw i64 %conv153, 20
  %or155 = or i64 %shl154, %shl152
  %or156 = or i64 %or155, %shl147
  %tso = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 2
  %143 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tso, align 4
  %inc157 = add i32 %144, 1
  store i32 %inc157, ptr %tso, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 5
  %145 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %gso_segs, align 2
  %conv158 = zext i16 %146 to i32
  br label %if.end186.sink.split

if.else160:                                       ; preds = %do.end93
  %147 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 285212688, ptr %arrayidx96, align 4
  %add.ptr170 = getelementptr %struct.fw_eth_tx_pkt_vm_wr, ptr %arrayidx96, i32 1
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %148 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load171 = load i16, ptr %ip_summed, align 8
  %149 = and i16 %bf.load171, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %149)
  %cmp175 = icmp eq i16 %149, 1536
  br i1 %cmp175, label %if.then177, label %if.else160.if.end186_crit_edge

if.else160.if.end186_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then177:                                       ; preds = %if.else160
  %chip179 = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 7, i32 6
  %150 = ptrtoint ptr %chip179 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %chip179, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %152 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %154 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %155 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %153, i32 %conv.i.i.i
  %156 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load.i409 = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i409, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp.i410 = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp.i410, label %if.then.i412, label %if.else13.i

if.then.i412:                                     ; preds = %if.then177
  %protocol.i411 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %157 = ptrtoint ptr %protocol.i411 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %protocol.i411, align 1
  %159 = zext i8 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %158, label %if.then.i412.hwcsum.exit_crit_edge [
    i8 6, label %if.then.i412.if.then31.i_crit_edge
    i8 17, label %if.then10.i
  ]

if.then.i412.if.then31.i_crit_edge:               ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.then.i412.hwcsum.exit_crit_edge:               ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #12
  br label %hwcsum.exit

if.then10.i:                                      ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.else13.i:                                      ; preds = %if.then177
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %nexthdr.i, align 2
  %162 = zext i8 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %161, label %if.else13.i.hwcsum.exit_crit_edge [
    i8 6, label %if.else13.i.if.then31.i_crit_edge
    i8 17, label %if.then23.i
  ]

if.else13.i.if.then31.i_crit_edge:                ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.else13.i.hwcsum.exit_crit_edge:                ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hwcsum.exit

if.then23.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.then31.i:                                      ; preds = %if.then23.i, %if.else13.i.if.then31.i_crit_edge, %if.then10.i, %if.then.i412.if.then31.i_crit_edge
  %csum_type.2.i = phi i32 [ 9, %if.then10.i ], [ 8, %if.then.i412.if.then31.i_crit_edge ], [ 11, %if.then23.i ], [ 10, %if.else13.i.if.then31.i_crit_edge ]
  %transport_header.i.i413 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %163 = ptrtoint ptr %transport_header.i.i413 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %transport_header.i.i413, align 2
  %conv.i.i414 = zext i16 %164 to i32
  %sub.i.i415 = sub nsw i32 %conv.i.i414, %conv.i.i.i
  %conv33.i = zext i32 %sub.i.i415 to i64
  %shl.i = shl nuw nsw i64 %conv33.i, 20
  %165 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %166 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, -14
  %sub.i416 = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %151)
  %cmp35.i = icmp ult i32 %151, 6
  %conv3881.i = zext i32 %sub.i416 to i64
  %..i = select i1 %cmp35.i, i64 34, i64 32
  %shl42.i = shl i64 %conv3881.i, %..i
  %conv4580.i = zext i32 %csum_type.2.i to i64
  %shl46.i = shl nuw nsw i64 %conv4580.i, 40
  %hdr_len.0.i = or i64 %shl.i, %shl46.i
  %or47.i = or i64 %hdr_len.0.i, %shl42.i
  br label %hwcsum.exit

hwcsum.exit:                                      ; preds = %if.then31.i, %if.else13.i.hwcsum.exit_crit_edge, %if.then.i412.hwcsum.exit_crit_edge
  %retval.0.i417 = phi i64 [ %or47.i, %if.then31.i ], [ -9223372036854775808, %if.then.i412.hwcsum.exit_crit_edge ], [ -9223372036854775808, %if.else13.i.hwcsum.exit_crit_edge ]
  %or181 = or i64 %retval.0.i417, 4611686018427387904
  br label %if.end186.sink.split

if.end186.sink.split:                             ; preds = %hwcsum.exit, %if.then103
  %.sink476 = phi i32 [ 1, %hwcsum.exit ], [ %conv158, %if.then103 ]
  %cntrl.2.ph = phi i64 [ %or181, %hwcsum.exit ], [ %or156, %if.then103 ]
  %cpl.0.ph = phi ptr [ %add.ptr170, %hwcsum.exit ], [ %add.ptr136, %if.then103 ]
  %tx_cso = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 3
  %167 = ptrtoint ptr %tx_cso to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_cso, align 4
  %inc183 = add i32 %168, %.sink476
  store i32 %inc183, ptr %tx_cso, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end186.sink.split, %if.else160.if.end186_crit_edge
  %cntrl.2 = phi i64 [ -4611686018427387904, %if.else160.if.end186_crit_edge ], [ %cntrl.2.ph, %if.end186.sink.split ]
  %cpl.0 = phi ptr [ %add.ptr170, %if.else160.if.end186_crit_edge ], [ %cpl.0.ph, %if.end186.sink.split ]
  %169 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load188 = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load188)
  %tobool191.not = icmp sgt i32 %bf.load188, -1
  br i1 %tobool191.not, label %if.end186.if.end198_crit_edge, label %if.then192

if.end186.if.end198_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then192:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_ins = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add38, i32 4
  %170 = ptrtoint ptr %vlan_ins to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %vlan_ins, align 4
  %inc193 = add i32 %171, 1
  store i32 %inc193, ptr %vlan_ins, align 4
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %172 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %vlan_tci, align 2
  %conv194 = zext i16 %173 to i64
  %shl195 = shl nuw nsw i64 %conv194, 44
  %or196 = or i64 %shl195, %cntrl.2
  %or197 = or i64 %or196, 1152921504606846976
  br label %if.end198

if.end198:                                        ; preds = %if.then192, %if.end186.if.end198_crit_edge
  %cntrl.3 = phi i64 [ %or197, %if.then192 ], [ %cntrl.2, %if.end186.if.end198_crit_edge ]
  %port_id = getelementptr i8, ptr %dev, i32 2326
  %174 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %port_id, align 2
  %conv199 = zext i8 %175 to i32
  %shl200 = shl nuw nsw i32 %conv199, 16
  %or201 = or i32 %shl200, -301989888
  %176 = ptrtoint ptr %cpl.0 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or201, ptr %cpl.0, align 8
  %pack = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 1
  %177 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %pack, align 4
  %178 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len, align 4
  %conv204 = trunc i32 %179 to i16
  %len205 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 2
  %180 = ptrtoint ptr %len205 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv204, ptr %len205, align 2
  %ctrl1 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 0, i32 3
  %181 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %cntrl.3, ptr %ctrl1, align 8
  %add.ptr212 = getelementptr %struct.cpl_tx_pkt_core, ptr %cpl.0, i32 1
  %182 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %stat.i.i, align 4
  %cmp214 = icmp eq ptr %add.ptr212, %183
  br i1 %cmp214, label %if.then222, label %if.end198.if.end227_crit_edge, !prof !63

if.end198.if.end227_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

if.then222:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %desc, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr212 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr226 = getelementptr i8, ptr %185, i32 %sub.ptr.sub
  br label %if.end227

if.end227:                                        ; preds = %if.then222, %if.end198.if.end227_crit_edge
  %end.0 = phi ptr [ %add.ptr226, %if.then222 ], [ %add.ptr, %if.end198.if.end227_crit_edge ]
  %sgl.0 = phi ptr [ %185, %if.then222 ], [ %add.ptr212, %if.end198.if.end227_crit_edge ]
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %nr_frags.i419 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %nr_frags.i419 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %nr_frags.i419, align 2
  %conv.i420 = zext i8 %189 to i32
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %buf.i) #10
  %190 = call ptr @memset(ptr %buf.i, i32 255, i32 216)
  %191 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len, align 4
  %193 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %194)
  %tobool.not.i423 = icmp eq i32 %192, %194
  br i1 %tobool.not.i423, label %if.else.i, label %if.then.i426, !prof !63

if.then.i426:                                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i424 = sub i32 %192, %194
  %inc.i425 = add nuw nsw i32 %conv.i420, 1
  br label %if.end.i429

if.else.i:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  %bv_len.i.i427 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 12, i32 0, i32 1
  %195 = ptrtoint ptr %bv_len.i.i427 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bv_len.i.i427, align 4
  %arrayidx8.i = getelementptr inbounds i32, ptr %addr, i32 1
  br label %if.end.i429

if.end.i429:                                      ; preds = %if.else.i, %if.then.i426
  %sub.i.i424.sink = phi i32 [ %196, %if.else.i ], [ %sub.i.i424, %if.then.i426 ]
  %conv4.sink.in.in.i = phi ptr [ %arrayidx8.i, %if.else.i ], [ %addr, %if.then.i426 ]
  %nfrags.0.i = phi i32 [ %conv.i420, %if.else.i ], [ %inc.i425, %if.then.i426 ]
  %197 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl.0, i32 0, i32 1
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub.i.i424.sink, ptr %197, align 4
  %199 = ptrtoint ptr %conv4.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %conv4.sink.in.i = load i32, ptr %conv4.sink.in.in.i, align 4
  %conv4.sink.i = zext i32 %conv4.sink.in.i to i64
  %200 = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl.0, i32 0, i32 2
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %conv4.sink.i, ptr %200, align 8
  %or.i = or i32 %nfrags.0.i, -2113929216
  %202 = ptrtoint ptr %sgl.0 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %or.i, ptr %sgl.0, align 8
  %dec.i = add nsw i32 %nfrags.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i428 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i428, label %if.end.i429.write_sgl.exit_crit_edge, label %if.end19.i, !prof !65

if.end.i429.write_sgl.exit_crit_edge:             ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_sgl.exit

if.end19.i:                                       ; preds = %if.end.i429
  %203 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %stat.i.i, align 4
  %cmp20.i = icmp ult ptr %204, %end.0
  %sge.i = getelementptr inbounds %struct.ulptx_sgl, ptr %sgl.0, i32 0, i32 3
  %cond.i = select i1 %cmp20.i, ptr %buf.i, ptr %sge.i
  %205 = ptrtoint ptr %nr_frags.i419 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %nr_frags.i419, align 2
  %conv24.i = zext i8 %206 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %conv24.i)
  %cmp25.i = icmp ne i32 %dec.i, %conv24.i
  %conv26.i = zext i1 %cmp25.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp274.not.i = icmp eq i32 %dec.i, 1
  br i1 %cmp274.not.i, label %if.end19.i.if.then51.i_crit_edge, label %if.end19.i.for.body.i431_crit_edge

if.end19.i.for.body.i431_crit_edge:               ; preds = %if.end19.i
  br label %for.body.i431

if.end19.i.if.then51.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51.i

for.body.i431:                                    ; preds = %for.body.i431.for.body.i431_crit_edge, %if.end19.i.for.body.i431_crit_edge
  %nfrags.17.i = phi i32 [ %sub49.i, %for.body.i431.for.body.i431_crit_edge ], [ %dec.i, %if.end19.i.for.body.i431_crit_edge ]
  %to.06.i = phi ptr [ %incdec.ptr.i430, %for.body.i431.for.body.i431_crit_edge ], [ %cond.i, %if.end19.i.for.body.i431_crit_edge ]
  %i.05.i = phi i32 [ %inc44.i, %for.body.i431.for.body.i431_crit_edge ], [ %conv26.i, %if.end19.i.for.body.i431_crit_edge ]
  %bv_len.i1.i = getelementptr %struct.skb_shared_info, ptr %187, i32 0, i32 12, i32 %i.05.i, i32 1
  %207 = ptrtoint ptr %bv_len.i1.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %bv_len.i1.i, align 4
  %209 = ptrtoint ptr %to.06.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %to.06.i, align 8
  %inc35.i = add i32 %i.05.i, 1
  %bv_len.i2.i = getelementptr %struct.skb_shared_info, ptr %187, i32 0, i32 12, i32 %inc35.i, i32 1
  %210 = ptrtoint ptr %bv_len.i2.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bv_len.i2.i, align 4
  %arrayidx39.i = getelementptr [2 x i32], ptr %to.06.i, i32 0, i32 1
  %212 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx39.i, align 4
  %arrayidx40.i = getelementptr i32, ptr %addr, i32 %inc35.i
  %213 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx40.i, align 4
  %conv41.i = zext i32 %214 to i64
  %addr42.i = getelementptr inbounds %struct.ulptx_sge_pair, ptr %to.06.i, i32 0, i32 1
  %215 = ptrtoint ptr %addr42.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv41.i, ptr %addr42.i, align 8
  %inc44.i = add i32 %i.05.i, 2
  %arrayidx45.i = getelementptr i32, ptr %addr, i32 %inc44.i
  %216 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx45.i, align 4
  %conv46.i = zext i32 %217 to i64
  %arrayidx48.i = getelementptr %struct.ulptx_sge_pair, ptr %to.06.i, i32 0, i32 1, i32 1
  %218 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %conv46.i, ptr %arrayidx48.i, align 8
  %sub49.i = add i32 %nfrags.17.i, -2
  %incdec.ptr.i430 = getelementptr %struct.ulptx_sge_pair, ptr %to.06.i, i32 1
  %cmp27.i = icmp ugt i32 %sub49.i, 1
  br i1 %cmp27.i, label %for.body.i431.for.body.i431_crit_edge, label %for.end.i

for.body.i431.for.body.i431_crit_edge:            ; preds = %for.body.i431
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i431

for.end.i:                                        ; preds = %for.body.i431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49.i)
  %phi.cmp.i = icmp eq i32 %sub49.i, 0
  br i1 %phi.cmp.i, label %for.end.i.if.end64.i_crit_edge, label %for.end.i.if.then51.i_crit_edge

for.end.i.if.then51.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51.i

for.end.i.if.end64.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then51.i:                                      ; preds = %for.end.i.if.then51.i_crit_edge, %if.end19.i.if.then51.i_crit_edge
  %to.0.lcssa14.i = phi ptr [ %incdec.ptr.i430, %for.end.i.if.then51.i_crit_edge ], [ %cond.i, %if.end19.i.if.then51.i_crit_edge ]
  %i.0.lcssa13.i = phi i32 [ %inc44.i, %for.end.i.if.then51.i_crit_edge ], [ %conv26.i, %if.end19.i.if.then51.i_crit_edge ]
  %bv_len.i3.i = getelementptr %struct.skb_shared_info, ptr %187, i32 0, i32 12, i32 %i.0.lcssa13.i, i32 1
  %219 = ptrtoint ptr %bv_len.i3.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %bv_len.i3.i, align 4
  %221 = ptrtoint ptr %to.0.lcssa14.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %to.0.lcssa14.i, align 8
  %arrayidx58.i = getelementptr [2 x i32], ptr %to.0.lcssa14.i, i32 0, i32 1
  %222 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %arrayidx58.i, align 4
  %add59.i = add i32 %i.0.lcssa13.i, 1
  %arrayidx60.i = getelementptr i32, ptr %addr, i32 %add59.i
  %223 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx60.i, align 4
  %conv61.i = zext i32 %224 to i64
  %addr62.i = getelementptr inbounds %struct.ulptx_sge_pair, ptr %to.0.lcssa14.i, i32 0, i32 1
  %225 = ptrtoint ptr %addr62.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %conv61.i, ptr %addr62.i, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then51.i, %for.end.i.if.end64.i_crit_edge
  %226 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %stat.i.i, align 4
  %cmp66.i = icmp ult ptr %227, %end.0
  br i1 %cmp66.i, label %if.then74.i, label %if.end64.i.if.end97.i_crit_edge, !prof !63

if.end64.i.if.end97.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

if.then74.i:                                      ; preds = %if.end64.i
  %sub.ptr.lhs.cast.i432 = ptrtoint ptr %227 to i32
  %sub.ptr.rhs.cast.i433 = ptrtoint ptr %sge.i to i32
  %sub.ptr.sub.i434 = sub i32 %sub.ptr.lhs.cast.i432, %sub.ptr.rhs.cast.i433
  %tobool78.not.i = icmp eq ptr %227, %sge.i
  br i1 %tobool78.not.i, label %if.then74.i.if.end89.i_crit_edge, label %if.then85.i, !prof !63

if.then74.i.if.end89.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  %228 = call ptr @memcpy(ptr %sge.i, ptr %buf.i, i32 %sub.ptr.sub.i434)
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %if.then74.i.if.end89.i_crit_edge
  %229 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast91.i = ptrtoint ptr %end.0 to i32
  %sub.ptr.rhs.cast92.i = ptrtoint ptr %230 to i32
  %sub.ptr.sub93.i = sub i32 %sub.ptr.lhs.cast91.i, %sub.ptr.rhs.cast92.i
  %231 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %desc, align 4
  %add.ptr.i435 = getelementptr i8, ptr %buf.i, i32 %sub.ptr.sub.i434
  %233 = call ptr @memcpy(ptr %232, ptr %add.ptr.i435, i32 %sub.ptr.sub93.i)
  %234 = load ptr, ptr %desc, align 4
  %add.ptr96.i = getelementptr i8, ptr %234, i32 %sub.ptr.sub93.i
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end89.i, %if.end64.i.if.end97.i_crit_edge
  %end.addr.0.i = phi ptr [ %add.ptr96.i, %if.end89.i ], [ %end.0, %if.end64.i.if.end97.i_crit_edge ]
  %235 = ptrtoint ptr %end.addr.0.i to i32
  %and.i = and i32 %235, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool98.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool98.not.i, label %if.end97.i.write_sgl.exit_crit_edge, label %if.then99.i

if.end97.i.write_sgl.exit_crit_edge:              ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_sgl.exit

if.then99.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %end.addr.0.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 0, ptr %end.addr.0.i, align 8
  br label %write_sgl.exit

write_sgl.exit:                                   ; preds = %if.then99.i, %if.end97.i.write_sgl.exit_crit_edge, %if.end.i429.write_sgl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %buf.i) #10
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %237 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i436 = icmp eq ptr %238, null
  br i1 %tobool.not.i436, label %do.body.i, label %if.then.i437

if.then.i437:                                     ; preds = %write_sgl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %238(ptr noundef %skb) #10
  %239 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %destructor.i, align 4
  %240 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %240, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %write_sgl.exit
  %242 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %tobool3.not.i = icmp eq ptr %244, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !65

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i437
  %245 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pidx, align 4
  %add230 = add nsw i32 %div7.i, -1
  %sub231 = add i32 %add230, %246
  %247 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub231, i32 %248)
  %cmp232.not = icmp ult i32 %sub231, %248
  %sub236 = select i1 %cmp232.not, i32 0, i32 %248
  %spec.select379 = sub i32 %sub231, %sub236
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 9
  %249 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %sdesc, align 4
  %arrayidx238 = getelementptr %struct.tx_sw_desc, ptr %250, i32 %spec.select379
  %251 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %skb, ptr %arrayidx238, align 4
  %252 = load ptr, ptr %sdesc, align 4
  %sgl242 = getelementptr %struct.tx_sw_desc, ptr %252, i32 %spec.select379, i32 1
  %253 = ptrtoint ptr %sgl242 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %sgl.0, ptr %sgl242, align 4
  %254 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %255, %div7.i
  store i32 %add.i, ptr %arrayidx, align 4
  %256 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %257, %div7.i
  store i32 %add1.i, ptr %pidx, align 4
  %258 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %259)
  %cmp.not.i = icmp ult i32 %add1.i, %259
  br i1 %cmp.not.i, label %skb_orphan.exit.txq_advance.exit_crit_edge, label %if.then.i440

skb_orphan.exit.txq_advance.exit_crit_edge:       ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %txq_advance.exit

if.then.i440:                                     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i439 = sub i32 %add1.i, %259
  %260 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub.i439, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i440, %skb_orphan.exit.txq_advance.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %261 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %263 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %262, i32 0, i32 12
  %264 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %263)
  %cmp.not.i.i = icmp eq i32 %265, %263
  br i1 %cmp.not.i.i, label %txq_advance.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

txq_advance.exit.netif_trans_update.exit_crit_edge: ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %txq_advance.exit
  call void @__sanitizer_cov_trace_pc() #12
  %266 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile i32 %263, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %txq_advance.exit.netif_trans_update.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %bar2_addr.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 12
  %267 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %bar2_addr.i, align 4
  %cmp.i442 = icmp eq ptr %268, null
  br i1 %cmp.i442, label %if.then.i444, label %if.else.i446, !prof !63

if.then.i444:                                     ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 6
  %269 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %cntxt_id.i, align 4
  %shl2.i = shl i32 %270, 15
  %or.i443 = or i32 %shl2.i, %div7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %271 = tail call i32 @llvm.bswap.i32(i32 %or.i443) #10
  %272 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %17, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #10, !srcloc !71
  br label %cleanup

if.else.i446:                                     ; preds = %netif_trans_update.exit
  %274 = and i32 %sub.i384, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool5.not.i = icmp eq i32 %274, 0
  br i1 %tobool5.not.i, label %if.end.i447, label %if.end.thread.i, !prof !65

if.end.thread.i:                                  ; preds = %if.else.i446
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 989, i32 noundef 9, ptr noundef null) #10
  br label %do.body42.i

if.end.i447:                                      ; preds = %if.else.i446
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div7.i)
  %cmp32.i = icmp eq i32 %div7.i, 1
  br i1 %cmp32.i, label %land.lhs.true.i448, label %if.end.i447.do.body42.i_crit_edge

if.end.i447.do.body42.i_crit_edge:                ; preds = %if.end.i447
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42.i

land.lhs.true.i448:                               ; preds = %if.end.i447
  %bar2_qid.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 13
  %275 = ptrtoint ptr %bar2_qid.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %bar2_qid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp33.i = icmp eq i32 %276, 0
  br i1 %cmp33.i, label %if.then34.i, label %land.lhs.true.i448.do.body42.i_crit_edge

land.lhs.true.i448.do.body42.i_crit_edge:         ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42.i

if.then34.i:                                      ; preds = %land.lhs.true.i448
  %277 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %pidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool35.not.i = icmp eq i32 %278, 0
  br i1 %tobool35.not.i, label %cond.false.i, label %if.then34.i.cond.end.i_crit_edge

if.then34.i.cond.end.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  %279 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %size.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then34.i.cond.end.i_crit_edge
  %cond.in.i = phi i32 [ %280, %cond.false.i ], [ %278, %if.then34.i.cond.end.i_crit_edge ]
  %cond.i451 = add i32 %cond.in.i, -1
  %281 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %desc, align 4
  %arrayidx.i453 = getelementptr %struct.tx_desc, ptr %282, i32 %cond.i451
  %add.ptr.i454 = getelementptr i8, ptr %268, i32 64
  br label %while.body.i460

while.body.i460:                                  ; preds = %while.body.i460.while.body.i460_crit_edge, %cond.end.i
  %count.074.i = phi i32 [ 8, %cond.end.i ], [ %dec.i459, %while.body.i460.while.body.i460_crit_edge ]
  %dst.073.i = phi ptr [ %add.ptr.i454, %cond.end.i ], [ %incdec.ptr40.i, %while.body.i460.while.body.i460_crit_edge ]
  %src.072.i = phi ptr [ %arrayidx.i453, %cond.end.i ], [ %incdec.ptr.i458, %while.body.i460.while.body.i460_crit_edge ]
  %283 = ptrtoint ptr %src.072.i to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %src.072.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %conv.i.i455 = trunc i64 %284 to i32
  %285 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i455) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.073.i, i32 %285) #10, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %shr.i.i456 = lshr i64 %284, 32
  %conv3.i.i = trunc i64 %shr.i.i456 to i32
  %286 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #10
  %add.ptr.i.i457 = getelementptr i8, ptr %dst.073.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i457, i32 %286) #10, !srcloc !71
  %incdec.ptr.i458 = getelementptr i64, ptr %src.072.i, i32 1
  %incdec.ptr40.i = getelementptr i64, ptr %dst.073.i, i32 1
  %dec.i459 = add nsw i32 %count.074.i, -1
  %tobool39.not.i = icmp eq i32 %dec.i459, 0
  br i1 %tobool39.not.i, label %while.body.i460.do.body51.i_crit_edge, label %while.body.i460.while.body.i460_crit_edge

while.body.i460.while.body.i460_crit_edge:        ; preds = %while.body.i460
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i460

while.body.i460.do.body51.i_crit_edge:            ; preds = %while.body.i460
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51.i

do.body42.i:                                      ; preds = %land.lhs.true.i448.do.body42.i_crit_edge, %if.end.i447.do.body42.i_crit_edge, %if.end.thread.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @arm_heavy_mb() #10
  %bar2_qid45.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 13
  %287 = ptrtoint ptr %bar2_qid45.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %bar2_qid45.i, align 4
  %shl46.i461 = shl i32 %288, 15
  %or47.i462 = or i32 %shl46.i461, %div7.i
  %289 = tail call i32 @llvm.bswap.i32(i32 %or47.i462) #10
  %290 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %bar2_addr.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %291, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %289) #10, !srcloc !71
  br label %do.body51.i

do.body51.i:                                      ; preds = %do.body42.i, %while.body.i460.do.body51.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  br label %cleanup

out_free:                                         ; preds = %if.then77, %.out_free_crit_edge, %entry.out_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.body51.i, %if.then.i444, %if.then58
  %retval.0 = phi i32 [ 0, %out_free ], [ 16, %if.then58 ], [ 0, %if.then.i444 ], [ 0, %do.body51.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_ethrx_handler(ptr noundef %rspq, ptr nocapture noundef readonly %rsp, ptr nocapture noundef readonly %gl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_calc = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 2
  %0 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %csum_calc, align 1
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %err_vec = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 8
  %2 = ptrtoint ptr %err_vec to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %err_vec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 19
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %and = and i64 %7, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  %adapter3 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 18
  %9 = ptrtoint ptr %adapter3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter3, align 4
  %l2info = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 6
  %11 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l2info, align 4
  %and4 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.end.if.end_crit_edge, label %land.lhs.true6

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true6:                                   ; preds = %land.end
  %netdev7 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 19
  %13 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev7, align 8
  %features8 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %features8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features8, align 16
  %and9 = and i64 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp ne i64 %and9, 0
  %brmerge.not = select i1 %tobool10.not, i1 %8, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  %or.cond = select i1 %brmerge.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  %call.i = tail call ptr @napi_get_frags(ptr noundef %rspq) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !63

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @t4vf_pktgl_free(ptr noundef %gl) #10
  %rx_drops.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 5
  br label %do_gro.exit

if.end.i:                                         ; preds = %if.then
  %pktshift.i = getelementptr inbounds %struct.adapter, ptr %10, i32 0, i32 10, i32 17
  %17 = ptrtoint ptr %pktshift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pktshift.i, align 16
  tail call fastcc void @copy_frags(ptr noundef nonnull %call.i, ptr noundef %gl, i32 noundef %18) #10
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %19 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tot_len.i, align 4
  %21 = ptrtoint ptr %pktshift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pktshift.i, align 16
  %sub.i = sub i32 %20, %22
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %26, %sub.i
  store i32 %add.i, ptr %truesize.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %27 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %idx.i = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 9
  %28 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %idx.i, align 2
  %conv.i120 = zext i8 %29 to i16
  %add.i.i = add nuw nsw i16 %conv.i120, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add.i.i, ptr %queue_mapping.i.i, align 8
  %31 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load11.i = load i8, ptr %csum_calc, align 1
  %32 = and i8 %bf.load11.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool14.not.i = icmp eq i8 %32, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %33 = getelementptr inbounds %struct.anon, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %vlan_id.i = getelementptr i8, ptr %35, i32 2308
  %36 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vlan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not.i = icmp eq i32 %37, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %vlan.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 4
  %38 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vlan.i, align 4
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 9
  %40 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 10
  %41 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %39, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %42 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  %vlan_ex18.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %vlan_ex18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vlan_ex18.i, align 4
  %inc19.i = add i32 %44, 1
  store i32 %inc19.i, ptr %vlan_ex18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %call23.i = tail call i32 @napi_gro_frags(ptr noundef %rspq) #10
  %45 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call23.i, label %if.end20.i.if.end36.i_crit_edge [
    i32 2, label %if.then25.i
    i32 0, label %if.end20.i.if.then32.i_crit_edge
    i32 1, label %if.end20.i.if.then32.i_crit_edge143
  ]

if.end20.i.if.then32.i_crit_edge143:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.end20.i.if.then32.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.end20.i.if.end36.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %lro_pkts.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 1
  br label %if.end36.sink.split.i

if.then32.i:                                      ; preds = %if.end20.i.if.then32.i_crit_edge, %if.end20.i.if.then32.i_crit_edge143
  %lro_merged.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 2
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.then32.i, %if.then25.i
  %lro_merged.sink70.i = phi ptr [ %lro_merged.i, %if.then32.i ], [ %lro_pkts.i, %if.then25.i ]
  %46 = ptrtoint ptr %lro_merged.sink70.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lro_merged.sink70.i, align 4
  %inc34.i = add i32 %47, 1
  store i32 %inc34.i, ptr %lro_merged.sink70.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %if.end20.i.if.end36.i_crit_edge
  %stats37.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2
  %48 = ptrtoint ptr %stats37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stats37.i, align 4
  %inc38.i = add i32 %49, 1
  store i32 %inc38.i, ptr %stats37.i, align 4
  %rx_cso.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 3
  br label %do_gro.exit

do_gro.exit:                                      ; preds = %if.end36.i, %if.then.i
  %rx_cso.sink71.i = phi ptr [ %rx_cso.i, %if.end36.i ], [ %rx_drops.i, %if.then.i ]
  %50 = ptrtoint ptr %rx_cso.sink71.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_cso.sink71.i, align 4
  %inc40.i = add i32 %51, 1
  store i32 %inc40.i, ptr %rx_cso.sink71.i, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.end.if.end_crit_edge
  %tot_len.i121 = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 3
  %52 = ptrtoint ptr %tot_len.i121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tot_len.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %53)
  %cmp.i = icmp ult i32 %53, 257
  br i1 %cmp.i, label %if.then.i123, label %if.else.i

if.then.i123:                                     ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %53, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i122 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i122, label %if.then.i123.if.then22_crit_edge, label %if.end.i124, !prof !63

if.then.i123.if.then22_crit_edge:                 ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i124:                                      ; preds = %if.then.i123
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !65

do.body3.i.i:                                     ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %tot_len.i121 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tot_len.i121, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %57
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len9.i.i, align 4
  %add.i.i125 = add i32 %61, %57
  store i32 %add.i.i125, ptr %len9.i.i, align 4
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1
  %62 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %va.i, align 4
  %64 = load i32, ptr %tot_len.i121, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %67 = call ptr @memcpy(ptr %66, ptr %63, i32 %64)
  br label %if.end23

if.else.i:                                        ; preds = %if.end
  %call.i1.i = tail call ptr @__alloc_skb(i32 noundef 512, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool10.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool10.not.i, label %if.else.i.if.then22_crit_edge, label %if.end20.i126, !prof !63

if.else.i.if.then22_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end20.i126:                                    ; preds = %if.else.i
  %data_len.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i3.i = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i3.i, label %__skb_put.exit9.i, label %do.body3.i4.i, !prof !65

do.body3.i4.i:                                    ; preds = %if.end20.i126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

__skb_put.exit9.i:                                ; preds = %if.end20.i126
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %71, i32 128
  store ptr %add.ptr.i6.i, ptr %tail.i5.i, align 8
  %len9.i7.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i, i32 0, i32 6
  %72 = ptrtoint ptr %len9.i7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len9.i7.i, align 4
  %add.i8.i = add i32 %73, 128
  store i32 %add.i8.i, ptr %len9.i7.i, align 4
  %va22.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 1
  %74 = ptrtoint ptr %va22.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %va22.i, align 4
  %data.i10.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i10.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i10.i, align 4
  %78 = call ptr @memcpy(ptr %77, ptr %75, i32 128)
  tail call fastcc void @copy_frags(ptr noundef nonnull %call.i1.i, ptr noundef %gl, i32 noundef 128) #10
  %79 = ptrtoint ptr %tot_len.i121 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tot_len.i121, align 4
  %81 = ptrtoint ptr %len9.i7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %len9.i7.i, align 4
  %sub.i127 = add i32 %80, -128
  %82 = ptrtoint ptr %data_len.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i127, ptr %data_len.i.i2.i, align 8
  %truesize.i128 = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i, i32 0, i32 20
  %83 = ptrtoint ptr %truesize.i128 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %truesize.i128, align 8
  %add.i129 = add i32 %84, %sub.i127
  store i32 %add.i129, ptr %truesize.i128, align 8
  br label %if.end23

if.then22:                                        ; preds = %if.else.i.if.then22_crit_edge, %if.then.i123.if.then22_crit_edge
  tail call fastcc void @t4vf_pktgl_free(ptr noundef %gl)
  %rx_drops = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 5
  %85 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_drops, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %rx_drops, align 4
  br label %cleanup

if.end23:                                         ; preds = %__skb_put.exit9.i, %__skb_put.exit.i
  %skb.0.i = phi ptr [ %call.i.i, %__skb_put.exit.i ], [ %call.i1.i, %__skb_put.exit9.i ]
  %pktshift = getelementptr inbounds %struct.adapter, ptr %10, i32 0, i32 10, i32 17
  %87 = ptrtoint ptr %pktshift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pktshift, align 16
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %89 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len1.i, align 4
  %sub.i130 = sub i32 %90, %88
  store i32 %sub.i130, ptr %len1.i, align 4
  %data_len.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i131, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i130, i32 %92)
  %cmp.i132 = icmp ult i32 %sub.i130, %92
  br i1 %cmp.i132, label %do.body4.i, label %__skb_pull.exit, !prof !63

do.body4.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

__skb_pull.exit:                                  ; preds = %if.end23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %93 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %94, i32 %88
  store ptr %add.ptr.i, ptr %data.i, align 4
  %netdev25 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 19
  %95 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev25, align 8
  %call26 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0.i, ptr noundef %96) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %97 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %call26, ptr %protocol, align 8
  %idx = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 9
  %98 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %idx, align 2
  %conv27 = zext i8 %99 to i16
  %add.i133 = add nuw nsw i16 %conv27, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 10
  %100 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %add.i133, ptr %queue_mapping.i, align 8
  %101 = getelementptr inbounds %struct.anon, ptr %skb.0.i, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %stats29 = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2
  %104 = ptrtoint ptr %stats29 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stats29, align 4
  %inc30 = add i32 %105, 1
  store i32 %inc30, ptr %stats29, align 4
  br i1 %8, label %land.lhs.true33, label %__skb_pull.exit.if.end65_crit_edge

__skb_pull.exit.if.end65_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true33:                                  ; preds = %__skb_pull.exit
  %err_vec34 = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 8
  %106 = ptrtoint ptr %err_vec34 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %err_vec34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool35.not = icmp eq i16 %107, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %land.lhs.true33.if.end65_crit_edge

land.lhs.true33.if.end65_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %108 = ptrtoint ptr %l2info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %l2info, align 4
  %and38 = and i32 %109, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true36.if.end65_crit_edge, label %if.then40

land.lhs.true36.if.end65_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then40:                                        ; preds = %land.lhs.true36
  %110 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load42 = load i8, ptr %csum_calc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %tobool44.not = icmp sgt i8 %bf.load42, -1
  br i1 %tobool44.not, label %if.then40.if.end65.sink.split_crit_edge, label %if.else

if.then40.if.end65.sink.split_crit_edge:          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.sink.split

if.else:                                          ; preds = %if.then40
  %and51 = and i32 %109, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else.if.end65_crit_edge, label %if.then53

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %csum = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 3
  %111 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %csum, align 2
  %conv.i = zext i16 %112 to i32
  %113 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 5
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %113, align 8
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.then53, %if.then40.if.end65.sink.split_crit_edge
  %.sink = phi i16 [ 1024, %if.then53 ], [ 512, %if.then40.if.end65.sink.split_crit_edge ]
  %ip_summed55 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %115 = ptrtoint ptr %ip_summed55 to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load56 = load i16, ptr %ip_summed55, align 8
  %bf.clear57 = and i16 %bf.load56, -1537
  %bf.set58 = or i16 %bf.clear57, %.sink
  store i16 %bf.set58, ptr %ip_summed55, align 8
  %rx_cso60 = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 3
  %116 = ptrtoint ptr %rx_cso60 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_cso60, align 4
  %inc49 = add i32 %117, 1
  store i32 %inc49, ptr %rx_cso60, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else.if.end65_crit_edge, %land.lhs.true36.if.end65_crit_edge, %land.lhs.true33.if.end65_crit_edge, %__skb_pull.exit.if.end65_crit_edge
  %118 = ptrtoint ptr %csum_calc to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load66 = load i8, ptr %csum_calc, align 1
  %119 = and i8 %bf.load66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool70.not = icmp eq i8 %119, 0
  br i1 %tobool70.not, label %if.end65.if.end77_crit_edge, label %land.lhs.true71

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

land.lhs.true71:                                  ; preds = %if.end65
  %vlan_id = getelementptr i8, ptr %103, i32 2308
  %120 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool72.not = icmp eq i32 %121, 0
  br i1 %tobool72.not, label %if.then73, label %land.lhs.true71.if.end77_crit_edge

land.lhs.true71.if.end77_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_ex75 = getelementptr inbounds %struct.sge_eth_rxq, ptr %rspq, i32 0, i32 2, i32 4
  %122 = ptrtoint ptr %vlan_ex75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vlan_ex75, align 4
  %inc76 = add i32 %123, 1
  store i32 %inc76, ptr %vlan_ex75, align 4
  %vlan = getelementptr inbounds %struct.cpl_rx_pkt, ptr %rsp, i32 0, i32 4
  %124 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %vlan, align 4
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 9
  %126 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 10
  %127 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %125, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 3
  %128 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %bf.load.i135 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i136 = or i32 %bf.load.i135, -2147483648
  store i32 %bf.set.i136, ptr %vlan_present.i, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %land.lhs.true71.if.end77_crit_edge, %if.end65.if.end77_crit_edge
  %call78 = tail call i32 @netif_receive_skb(ptr noundef nonnull %skb.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then22, %do_gro.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4vf_pktgl_free(ptr nocapture noundef readonly %gl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %0 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfrags, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not3 = icmp eq i32 %sub, 0
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %frag.04 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %sub, %entry.while.body_crit_edge ]
  %dec = add i32 %frag.04, -1
  %arrayidx = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %dec
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@t4vf_pktgl_free, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !82

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %8) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_sge_intr_msix(i32 %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %cookie) #10
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %cookie) #10
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4vf_intr_handler(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !63

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2045, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %t4vf_intr_msi.t4vf_sge_intr_msix = select i1 %tobool8.not, ptr @t4vf_intr_msi, ptr @t4vf_sge_intr_msix
  ret ptr %t4vf_intr_msi.t4vf_sge_intr_msix
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t4vf_intr_msi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intrq_lock.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 6
  tail call void @_raw_spin_lock(ptr noundef %intrq_lock.i) #10
  %cur_desc.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 1
  %iqe_len.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 16
  %gen.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 3
  %0 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_desc.i, align 8
  %2 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iqe_len.i, align 4
  %sub8.i = add i32 %3, -16
  %add.ptr9.i = getelementptr i8, ptr %1, i32 %sub8.i
  %4 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr9.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8
  %7 = lshr i8 %6, 7
  %8 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gen.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.i10.i = icmp eq i8 %7, %9
  br i1 %cmp.i10.i, label %if.end.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.lr.ph.i:                                   ; preds = %entry
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 3
  %ingr_base.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 21
  %cidx.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 2
  %size.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 17
  %desc.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 12
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %10 = phi ptr [ %4, %if.end.lr.ph.i ], [ %50, %for.inc.i.if.end.i_crit_edge ]
  %add.ptr12.i = phi ptr [ %add.ptr9.i, %if.end.lr.ph.i ], [ %add.ptr.i, %for.inc.i.if.end.i_crit_edge ]
  %work_done.011.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %for.inc.i.if.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 8
  %13 = lshr i8 %12, 4
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 2
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i, !prof !65

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %and.i) #13
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %pldbuflen_qid.i = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr12.i, i32 0, i32 1
  %17 = ptrtoint ptr %pldbuflen_qid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pldbuflen_qid.i, align 4
  %and11.i = and i32 %18, 2147483647
  %19 = ptrtoint ptr %ingr_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ingr_base.i, align 32
  %sub12.i = sub i32 %and11.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub12.i)
  %cmp13.i = icmp ugt i32 %sub12.i, 9
  br i1 %cmp13.i, label %do.end24.i, label %if.end26.i, !prof !63

do.end24.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %and11.i) #13
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end9.i
  %arrayidx.i = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 10, i32 23, i32 %sub12.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %cmp27.i = icmp eq ptr %24, null
  br i1 %cmp27.i, label %do.end38.i, label %if.end40.i, !prof !63

do.end38.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.25, i32 noundef %and11.i) #13
  br label %for.inc.i

if.end40.i:                                       ; preds = %if.end26.i
  %abs_id.i = getelementptr inbounds %struct.sge_rspq, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %abs_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %abs_id.i, align 2
  %conv41.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %conv41.i)
  %cmp42.not.i = icmp eq i32 %and11.i, %conv41.i
  br i1 %cmp42.not.i, label %if.end57.i, label %do.end53.i, !prof !65

do.end53.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.28, i32 noundef %and11.i, i32 noundef %conv41.i) #13
  br label %for.inc.i

if.end57.i:                                       ; preds = %if.end40.i
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef nonnull %24) #10
  br i1 %call.i.i, label %if.then.i.i, label %if.end57.i.napi_schedule.exit.i_crit_edge

if.end57.i.napi_schedule.exit.i_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit.i

if.then.i.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef nonnull %24) #10
  br label %napi_schedule.exit.i

napi_schedule.exit.i:                             ; preds = %if.then.i.i, %if.end57.i.napi_schedule.exit.i_crit_edge
  %31 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_desc.i, align 8
  %33 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iqe_len.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %34
  store ptr %add.ptr.i.i, ptr %cur_desc.i, align 8
  %35 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cidx.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %cidx.i.i, align 4
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %38)
  %cmp.i1.i = icmp eq i32 %inc.i.i, %38
  br i1 %cmp.i1.i, label %if.then.i3.i, label %napi_schedule.exit.i.for.inc.i_crit_edge, !prof !63

napi_schedule.exit.i.for.inc.i_crit_edge:         ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i3.i:                                     ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cidx.i.i, align 4
  %40 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %gen.i.i, align 8
  %42 = xor i8 %41, 1
  store i8 %42, ptr %gen.i.i, align 8
  %43 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc.i.i, align 4
  %45 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %cur_desc.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i3.i, %napi_schedule.exit.i.for.inc.i_crit_edge, %do.end53.i, %do.end38.i, %do.end24.i, %do.end.i
  %inc.i = add i32 %work_done.011.i, 1
  %46 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_desc.i, align 8
  %48 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iqe_len.i, align 4
  %sub.i = add i32 %49, -16
  %add.ptr.i = getelementptr i8, ptr %47, i32 %sub.i
  %50 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr.i, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 8
  %53 = lshr i8 %52, 7
  %54 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %gen.i.i, align 8
  %cmp.i.i = icmp eq i8 %53, %55
  br i1 %cmp.i.i, label %for.inc.i.if.end.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %work_done.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %intr_params.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 7
  %56 = ptrtoint ptr %intr_params.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %intr_params.i, align 4
  %conv61.i = zext i8 %57 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 12
  %or.i = or i32 %shl62.i, %work_done.0.lcssa.i
  %bar2_addr.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 14
  %58 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bar2_addr.i, align 4
  %tobool63.not.i = icmp eq ptr %59, null
  br i1 %tobool63.not.i, label %if.then72.i, label %do.body76.i, !prof !63

if.then72.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 10
  %60 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cntxt_id.i, align 8
  %conv73.i = zext i16 %61 to i32
  %shl74.i = shl nuw i32 %conv73.i, 16
  %or75.i = or i32 %shl74.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %or75.i) #10
  %63 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cookie, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %62) #10, !srcloc !71
  br label %process_intrq.exit

do.body76.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %bar2_qid.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 5, i32 15
  %65 = ptrtoint ptr %bar2_qid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bar2_qid.i, align 8
  %shl79.i = shl i32 %66, 16
  %or80.i = or i32 %shl79.i, %or.i
  %67 = tail call i32 @llvm.bswap.i32(i32 %or80.i) #10
  %68 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bar2_addr.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %69, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %67) #10, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  br label %process_intrq.exit

process_intrq.exit:                               ; preds = %do.body76.i, %if.then72.i
  tail call void @_raw_spin_unlock(ptr noundef %intrq_lock.i) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_sge_alloc_rxq(ptr noundef %adapter, ptr noundef %rspq, i1 noundef zeroext %iqasynch, ptr noundef %dev, i32 noundef %intr_dest, ptr noundef %fl, ptr noundef %hnd) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i276 = alloca i64, align 8
  %bar2_qoffset.i = alloca i64, align 8
  %cmd = alloca %struct.fw_iq_cmd, align 8
  %rpl = alloca %struct.fw_iq_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl) #10
  %0 = call ptr @memset(ptr %rpl, i32 255, i32 64)
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = lshr i32 %2, 4
  %and.lobit = and i32 %and, 1
  %3 = xor i32 %and.lobit, 1
  %and2 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %intrq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %cmp.not = icmp eq ptr %intrq, %rspq
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %abs_id = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 11
  %4 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %abs_id, align 2
  %conv = zext i16 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iqandst.0 = phi i32 [ 32768, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %intr_dest.addr.0 = phi i32 [ %conv, %if.then ], [ %intr_dest, %entry.if.end_crit_edge ]
  %size = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 17
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %add = add i32 %7, 15
  %div262 = and i32 %add, -16
  store i32 %div262, ptr %size, align 8
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev_dev, align 4
  %iqe_len = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 16
  %10 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iqe_len, align 4
  %phys_addr = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 13
  %mul.i = mul i32 %11, %div262
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %mul.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %desc287 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 12
  br i1 %tobool.not.i, label %alloc_ring.exit.thread, label %if.end13

alloc_ring.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %desc287 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc287, align 4
  br label %cleanup155

if.end13:                                         ; preds = %if.end
  %13 = ptrtoint ptr %desc287 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %desc287, align 4
  %14 = getelementptr inbounds i8, ptr %cmd, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 56)
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 279969792, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1879048188, ptr %alloc_to_len16, align 4
  %viid = getelementptr i8, ptr %dev, i32 2312
  %18 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %viid, align 4
  %conv16 = zext i16 %19 to i32
  %shl17 = shl nuw i32 %conv16, 16
  %or18 = select i1 %iqasynch, i32 268455936, i32 20480
  %or20 = or i32 %or18, %iqandst.0
  %or22 = or i32 %or20, %intr_dest.addr.0
  %or24 = or i32 %or22, %shl17
  %type_to_iqandstindex = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 6
  %20 = ptrtoint ptr %type_to_iqandstindex to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or24, ptr %type_to_iqandstindex, align 8
  %port_id = getelementptr i8, ptr %dev, i32 2326
  %21 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_id, align 2
  %conv25 = zext i8 %22 to i32
  %shl26 = shl nuw nsw i32 %conv25, 12
  %pktcnt_idx = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 8
  %23 = ptrtoint ptr %pktcnt_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pktcnt_idx, align 1
  %conv28 = zext i8 %24 to i32
  %shl29 = shl nuw nsw i32 %conv28, 4
  %or27 = or i32 %shl29, %shl26
  %25 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iqe_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #10, !range !87
  %sub.i.op.i.op = sub nsw i32 27, %27
  %sub44 = select i1 %tobool.not.i.i, i32 49147, i32 %sub.i.op.i.op
  %or30 = or i32 %or27, %sub44
  %28 = trunc i32 %or30 to i16
  %conv47 = or i16 %28, 16384
  %iqdroprss_to_iqesize = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 7
  %29 = ptrtoint ptr %iqdroprss_to_iqesize to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv47, ptr %iqdroprss_to_iqesize, align 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %conv49 = trunc i32 %31 to i16
  %iqsize = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 8
  %32 = ptrtoint ptr %iqsize to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv49, ptr %iqsize, align 2
  %33 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys_addr, align 8
  %conv51 = zext i32 %34 to i64
  %iqaddr = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 9
  %35 = ptrtoint ptr %iqaddr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv51, ptr %iqaddr, align 8
  %tobool52.not = icmp eq ptr %fl, null
  br i1 %tobool52.not, label %if.end13.if.end105_crit_edge, label %if.then53

if.end13.if.end105_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then53:                                        ; preds = %if.end13
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip, align 4
  %size55 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %38 = ptrtoint ptr %size55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size55, align 4
  %fl_starve_thres = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 19
  %40 = ptrtoint ptr %fl_starve_thres to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fl_starve_thres, align 8
  %add57 = add i32 %41, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add57)
  %cmp58 = icmp ult i32 %39, %add57
  br i1 %cmp58, label %if.then60, label %if.then53.if.end65_crit_edge

if.then53.if.end65_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %size55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add57, ptr %size55, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.then53.if.end65_crit_edge
  %43 = ptrtoint ptr %size55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size55, align 4
  %add70 = add i32 %44, 7
  %div71263 = and i32 %add70, -8
  store i32 %div71263, ptr %size55, align 4
  %45 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev_dev, align 4
  %addr = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 16
  %47 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat_len, align 4
  %mul.i267 = shl i32 %div71263, 3
  %add.i = add i32 %mul.i267, %48
  %call.i.i268 = tail call ptr @dma_alloc_attrs(ptr noundef %46, i32 noundef %add.i, ptr noundef %addr, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i269 = icmp eq ptr %call.i.i268, null
  br i1 %tobool.not.i269, label %if.end65.cleanup_crit_edge, label %do.body.i270

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i270:                                     ; preds = %if.end65
  %cmp1.i.not = icmp eq ptr %sdesc, null
  br i1 %cmp1.i.not, label %do.body8.i, label %do.end14.i, !prof !63

do.body8.i:                                       ; preds = %do.body.i270
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 768, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.end14.i:                                       ; preds = %do.body.i270
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div71263, i32 8) #10
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %do.end14.i.if.then19.i_crit_edge, label %if.end7.i.i.i, !prof !63

do.end14.i.if.then19.i_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.end7.i.i.i:                                    ; preds = %do.end14.i
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #14
  %tobool18.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i.i.if.then19.i_crit_edge, label %cleanup.thread

if.end7.i.i.i.if.then19.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i.i.if.then19.i_crit_edge, %do.end14.i.if.then19.i_crit_edge
  %52 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef %add.i, ptr noundef nonnull %call.i.i268, i32 noundef %53, i32 noundef 0) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i.i.i, ptr %sdesc, align 4
  %desc77 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %55 = ptrtoint ptr %desc77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i268, ptr %desc77, align 4
  %56 = ptrtoint ptr %size55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size55, align 4
  %div83264 = lshr i32 %57, 3
  %58 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stat_len, align 4
  %div85265 = lshr i32 %59, 6
  %add86 = add nuw nsw i32 %div85265, %div83264
  %or88 = mul nuw nsw i32 %3, 4160
  %or91 = or i32 %or88, 6
  %iqns_to_fl0congen = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 10
  %60 = ptrtoint ptr %iqns_to_fl0congen to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or91, ptr %iqns_to_fl0congen, align 8
  %61 = and i32 %37, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %61)
  %cmp92 = icmp ult i32 %61, 96
  %conv101 = select i1 %cmp92, i16 432, i16 32
  %fl0dcaen_to_fl0cidxfthresh = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 11
  %62 = ptrtoint ptr %fl0dcaen_to_fl0cidxfthresh to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv101, ptr %fl0dcaen_to_fl0cidxfthresh, align 4
  %conv102 = trunc i32 %add86 to i16
  %fl0size = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 12
  %63 = ptrtoint ptr %fl0size to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv102, ptr %fl0size, align 2
  %64 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr, align 4
  %conv104 = zext i32 %65 to i64
  %fl0addr = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 13
  %66 = ptrtoint ptr %fl0addr to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv104, ptr %fl0addr, align 8
  br label %if.end105

cleanup:                                          ; preds = %if.then19.i, %if.end65.cleanup_crit_edge
  %desc77291 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %67 = ptrtoint ptr %desc77291 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %desc77291, align 4
  br label %err

if.end105:                                        ; preds = %cleanup.thread, %if.end13.if.end105_crit_edge
  %flsz.1 = phi i32 [ 0, %if.end13.if.end105_crit_edge ], [ %add86, %cleanup.thread ]
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool107.not = icmp eq i32 %call.i, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.err_crit_edge

if.end105.err_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end109:                                        ; preds = %if.end105
  call void @netif_napi_add(ptr noundef %dev, ptr noundef %rspq, ptr noundef nonnull @napi_rx_handler, i32 noundef 64) #10
  %68 = ptrtoint ptr %desc287 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc287, align 4
  %cur_desc = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 1
  %70 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %cur_desc, align 8
  %cidx = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 2
  %71 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %cidx, align 4
  %gen = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 3
  %72 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %gen, align 8
  %intr_params = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 7
  %73 = ptrtoint ptr %intr_params to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %intr_params, align 4
  %next_intr_params = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 4
  %75 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %next_intr_params, align 1
  %iqid = getelementptr inbounds %struct.fw_iq_cmd, ptr %rpl, i32 0, i32 3
  %76 = ptrtoint ptr %iqid to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %iqid, align 2
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 10
  %78 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %cntxt_id, align 8
  %conv112 = zext i16 %77 to i32
  %bar2_qid = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i) #10
  %79 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 -1, ptr %bar2_qoffset.i, align 8, !annotation !89
  %call.i273 = call i32 @t4vf_bar2_sge_qregs(ptr noundef %adapter, i32 noundef %conv112, i32 noundef 1, ptr noundef nonnull %bar2_qoffset.i, ptr noundef %bar2_qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i274 = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i274, label %if.end.i, label %if.end109.bar2_address.exit_crit_edge

if.end109.bar2_address.exit_crit_edge:            ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %bar2_address.exit

if.end.i:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %bar2.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %80 = ptrtoint ptr %bar2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bar2.i, align 4
  %82 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %bar2_qoffset.i, align 8
  %idx.ext.i = trunc i64 %83 to i32
  %add.ptr.i275 = getelementptr i8, ptr %81, i32 %idx.ext.i
  br label %bar2_address.exit

bar2_address.exit:                                ; preds = %if.end.i, %if.end109.bar2_address.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i275, %if.end.i ], [ null, %if.end109.bar2_address.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i) #10
  %bar2_addr = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 14
  %84 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %retval.0.i, ptr %bar2_addr, align 4
  %physiqid = getelementptr inbounds %struct.fw_iq_cmd, ptr %rpl, i32 0, i32 2
  %85 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %physiqid, align 8
  %abs_id114 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 11
  %87 = ptrtoint ptr %abs_id114 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %abs_id114, align 2
  %88 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size, align 8
  %dec = add i32 %89, -1
  store i32 %dec, ptr %size, align 8
  %adapter116 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 18
  %90 = ptrtoint ptr %adapter116 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %adapter, ptr %adapter116, align 4
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 19
  %91 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev, ptr %netdev, align 8
  %handler = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 20
  %92 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %hnd, ptr %handler, align 4
  %cond118 = sext i1 %tobool52.not to i32
  %offset = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 5
  %93 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cond118, ptr %offset, align 4
  br i1 %tobool52.not, label %bar2_address.exit.cleanup155_crit_edge, label %if.then120

bar2_address.exit.cleanup155_crit_edge:           ; preds = %bar2_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.then120:                                       ; preds = %bar2_address.exit
  %fl0id = getelementptr inbounds %struct.fw_iq_cmd, ptr %rpl, i32 0, i32 4
  %94 = ptrtoint ptr %fl0id to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %fl0id, align 4
  %conv121 = zext i16 %95 to i32
  %cntxt_id122 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %96 = ptrtoint ptr %cntxt_id122 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv121, ptr %cntxt_id122, align 4
  %bar2_qid125 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 14
  %97 = call ptr @memset(ptr %fl, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i276) #10
  %98 = ptrtoint ptr %bar2_qoffset.i276 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 -1, ptr %bar2_qoffset.i276, align 8, !annotation !89
  %call.i277 = call i32 @t4vf_bar2_sge_qregs(ptr noundef %adapter, i32 noundef %conv121, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i276, ptr noundef %bar2_qid125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool.not.i278 = icmp eq i32 %call.i277, 0
  br i1 %tobool.not.i278, label %if.end.i282, label %if.then120.bar2_address.exit284_crit_edge

if.then120.bar2_address.exit284_crit_edge:        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %bar2_address.exit284

if.end.i282:                                      ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  %bar2.i279 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %99 = ptrtoint ptr %bar2.i279 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bar2.i279, align 4
  %101 = ptrtoint ptr %bar2_qoffset.i276 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %bar2_qoffset.i276, align 8
  %idx.ext.i280 = trunc i64 %102 to i32
  %add.ptr.i281 = getelementptr i8, ptr %100, i32 %idx.ext.i280
  br label %bar2_address.exit284

bar2_address.exit284:                             ; preds = %if.end.i282, %if.then120.bar2_address.exit284_crit_edge
  %retval.0.i283 = phi ptr [ %add.ptr.i281, %if.end.i282 ], [ null, %if.then120.bar2_address.exit284_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i276) #10
  %bar2_addr127 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %103 = ptrtoint ptr %bar2_addr127 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i283, ptr %bar2_addr127, align 4
  %size.i = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size.i, align 4
  %sub.i285 = add i32 %105, -8
  call fastcc void @refill_fl(ptr noundef %adapter, ptr noundef nonnull %fl, i32 noundef %sub.i285, i32 noundef 3264)
  br label %cleanup155

err:                                              ; preds = %if.end105.err_crit_edge, %cleanup
  %ret.1 = phi i32 [ -12, %cleanup ], [ %call.i, %if.end105.err_crit_edge ]
  %flsz.2 = phi i32 [ 0, %cleanup ], [ %flsz.1, %if.end105.err_crit_edge ]
  %106 = ptrtoint ptr %desc287 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %desc287, align 4
  %tobool132.not = icmp eq ptr %107, null
  br i1 %tobool132.not, label %err.if.end141_crit_edge, label %if.then133

err.if.end141_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then133:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev_dev, align 4
  %110 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size, align 8
  %112 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %iqe_len, align 4
  %mul137 = mul i32 %113, %111
  %114 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phys_addr, align 8
  call void @dma_free_attrs(ptr noundef %109, i32 noundef %mul137, ptr noundef nonnull %107, i32 noundef %115, i32 noundef 0) #10
  %116 = ptrtoint ptr %desc287 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %desc287, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then133, %err.if.end141_crit_edge
  br i1 %tobool52.not, label %if.end141.cleanup155_crit_edge, label %land.lhs.true143

if.end141.cleanup155_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

land.lhs.true143:                                 ; preds = %if.end141
  %desc144 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %117 = ptrtoint ptr %desc144 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %desc144, align 4
  %tobool145.not = icmp eq ptr %118, null
  br i1 %tobool145.not, label %land.lhs.true143.cleanup155_crit_edge, label %if.then146

land.lhs.true143.cleanup155_crit_edge:            ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.then146:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  %sdesc147 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %119 = ptrtoint ptr %sdesc147 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sdesc147, align 4
  call void @kfree(ptr noundef %120) #10
  %121 = ptrtoint ptr %sdesc147 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %sdesc147, align 4
  %122 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev_dev, align 4
  %mul150 = shl i32 %flsz.2, 6
  %124 = ptrtoint ptr %desc144 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %desc144, align 4
  %addr152 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %126 = ptrtoint ptr %addr152 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr152, align 4
  call void @dma_free_attrs(ptr noundef %123, i32 noundef %mul150, ptr noundef %125, i32 noundef %127, i32 noundef 0) #10
  %128 = ptrtoint ptr %desc144 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %desc144, align 4
  br label %cleanup155

cleanup155:                                       ; preds = %if.then146, %land.lhs.true143.cleanup155_crit_edge, %if.end141.cleanup155_crit_edge, %bar2_address.exit284, %bar2_address.exit.cleanup155_crit_edge, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ 0, %bar2_address.exit284 ], [ 0, %bar2_address.exit.cleanup155_crit_edge ], [ %ret.1, %if.then146 ], [ %ret.1, %land.lhs.true143.cleanup155_crit_edge ], [ %ret.1, %if.end141.cleanup155_crit_edge ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @napi_rx_handler(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %gl.i = alloca %struct.pkt_gl, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not289.i = icmp eq i32 %budget, 0
  br i1 %tobool.not289.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i, !prof !63

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %0 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1.i, align 4
  %cur_desc.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 1
  %iqe_len.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 16
  %gen.i.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 3
  %handler137.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 20
  %offset.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 5
  %fl.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %gl.i, i32 0, i32 3
  %sdesc68.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 10
  %cidx.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 2
  %fl_pg_order.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 15
  %size.i.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 9
  %nfrags.i = getelementptr inbounds %struct.pkt_gl, ptr %gl.i, i32 0, i32 2
  %offset97.i = getelementptr inbounds %struct.page_frag, ptr %gl.i, i32 0, i32 1
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %gl.i, i32 0, i32 1
  %fl_align.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 18
  %cidx.i265.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 2
  %size.i267.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 17
  %desc.i.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %budget_left.0290.i = phi i32 [ %budget, %while.body.lr.ph.i ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_desc.i, align 8
  %4 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iqe_len.i, align 4
  %sub.i = add i32 %5, -16
  %add.ptr4.i = getelementptr i8, ptr %3, i32 %sub.i
  %6 = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr4.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 8
  %9 = lshr i8 %8, 7
  %10 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gen.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.i.i = icmp eq i8 %9, %11
  br i1 %cmp.i.i, label %if.end.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %6, align 8
  %14 = lshr i8 %13, 4
  %trunc.i = trunc i8 %14 to i2
  %15 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i2 %trunc.i, label %if.end173.thread.i [
    i2 0, label %if.then12.i
    i2 1, label %if.then136.i
  ], !prof !91

if.then12.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %gl.i) #10
  %16 = call ptr @memset(ptr %gl.i, i32 255, i32 148)
  %pldbuflen_qid.i = getelementptr inbounds %struct.rsp_ctrl, ptr %add.ptr4.i, i32 0, i32 1
  %17 = ptrtoint ptr %pldbuflen_qid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pldbuflen_qid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool14.not.i = icmp sgt i32 %18, -1
  br i1 %tobool14.not.i, label %if.then12.i.if.end30.i_crit_edge, label %if.then15.i

if.then12.i.if.end30.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then15.i:                                      ; preds = %if.then12.i
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp16.i = icmp sgt i32 %20, 0
  br i1 %cmp16.i, label %if.then24.i, label %if.then15.i.if.end27.i_crit_edge, !prof !65

if.then15.i.if.end27.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter1.i, align 4
  call fastcc void @free_rx_bufs(ptr noundef %22, ptr noundef %fl.i, i32 noundef 1) #10
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %offset.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.then15.i.if.end27.i_crit_edge
  %and29.i = and i32 %18, 2147483647
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end27.i, %if.then12.i.if.end30.i_crit_edge
  %len.0.i = phi i32 [ %and29.i, %if.end27.i ], [ %18, %if.then12.i.if.end30.i_crit_edge ]
  %24 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len.0.i, ptr %tot_len.i, align 4
  %25 = ptrtoint ptr %fl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %fl.i, align 8
  br label %do.body47.i

do.body40.i:                                      ; preds = %unmap_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1805, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.body47.i:                                      ; preds = %unmap_rx_buf.exit.i.do.body47.i_crit_edge, %if.end30.i
  %26 = phi i32 [ %.pr.i, %if.end30.i ], [ %dec.i.i, %unmap_rx_buf.exit.i.do.body47.i_crit_edge ]
  %len.1288.i = phi i32 [ %len.0.i, %if.end30.i ], [ %sub81.i, %unmap_rx_buf.exit.i.do.body47.i_crit_edge ]
  %frag.0287.i = phi i32 [ 0, %if.end30.i ], [ %inc.i, %unmap_rx_buf.exit.i.do.body47.i_crit_edge ]
  %fp.0286.i = phi ptr [ %gl.i, %if.end30.i ], [ %incdec.ptr.i, %unmap_rx_buf.exit.i.do.body47.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49.i = icmp eq i32 %26, 0
  br i1 %cmp49.i, label %do.body58.i, label %do.end66.i, !prof !63

do.body58.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1806, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

do.end66.i:                                       ; preds = %do.body47.i
  %27 = ptrtoint ptr %sdesc68.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdesc68.i, align 8
  %29 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cidx.i, align 8
  %arrayidx.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30
  %31 = ptrtoint ptr %fl_pg_order.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fl_pg_order.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp.not.i.i, label %do.end66.i.get_buf_size.exit.i_crit_edge, label %land.lhs.true.i.i

do.end66.i.get_buf_size.exit.i_crit_edge:         ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_buf_size.exit.i

land.lhs.true.i.i:                                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30, i32 1
  %33 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i.i, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %shl.i.i = shl i32 4096, %32
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 4096, i32 %shl.i.i
  br label %get_buf_size.exit.i

get_buf_size.exit.i:                              ; preds = %land.lhs.true.i.i, %do.end66.i.get_buf_size.exit.i_crit_edge
  %cond.i.i = phi i32 [ 4096, %do.end66.i.get_buf_size.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %fp.0286.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %fp.0286.i, align 4
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i, align 4
  %conv73.i = trunc i32 %39 to i16
  %offset74.i = getelementptr inbounds %struct.page_frag, ptr %fp.0286.i, i32 0, i32 1
  %40 = ptrtoint ptr %offset74.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv73.i, ptr %offset74.i, align 4
  %41 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 %len.1288.i) #10
  %conv78.i = trunc i32 %41 to i16
  %size.i = getelementptr inbounds %struct.page_frag, ptr %fp.0286.i, i32 0, i32 2
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv78.i, ptr %size.i, align 2
  %conv80.i = and i32 %41, 65535
  %sub81.i = sub i32 %len.1288.i, %conv80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81.i)
  %tobool82.not.i = icmp eq i32 %sub81.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.end84.i

if.end84.i:                                       ; preds = %get_buf_size.exit.i
  %dma_addr.i.i.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30, i32 1
  %43 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr.i.i.i, align 4
  %and.i.i.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.end84.i.unmap_rx_buf.exit.i_crit_edge

if.end84.i.unmap_rx_buf.exit.i_crit_edge:         ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_rx_buf.exit.i

if.then.i.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter1.i, align 4
  %pdev_dev.i.i = getelementptr inbounds %struct.adapter, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %pdev_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev_dev.i.i, align 4
  %and.i18.i.i = and i32 %44, -4
  %fl_pg_order.i.i.i = getelementptr inbounds %struct.adapter, ptr %46, i32 0, i32 10, i32 15
  %49 = ptrtoint ptr %fl_pg_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fl_pg_order.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not.i.i.i = icmp eq i32 %50, 0
  %and.i20.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %and.i20.i.i, 0
  %shl.i.i.i = shl i32 4096, %50
  %51 = select i1 %cmp.not.i.i.i, i1 true, i1 %tobool.not.i21.i.i
  %cond.i.i.i = select i1 %51, i32 4096, i32 %shl.i.i.i
  call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %and.i18.i.i, i32 noundef %cond.i.i.i, i32 noundef 2, i32 noundef 0) #10
  br label %unmap_rx_buf.exit.i

unmap_rx_buf.exit.i:                              ; preds = %if.then.i.i, %if.end84.i.unmap_rx_buf.exit.i_crit_edge
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i, align 4
  %53 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cidx.i, align 4
  %inc.i.i = add i32 %54, 1
  %55 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %56)
  %cmp.i262.i = icmp eq i32 %inc.i.i, %56
  %spec.store.select.i.i = select i1 %cmp.i262.i, i32 0, i32 %inc.i.i
  %57 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.store.select.i.i, ptr %cidx.i, align 4
  %58 = ptrtoint ptr %fl.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fl.i, align 4
  %dec.i.i = add i32 %59, -1
  store i32 %dec.i.i, ptr %fl.i, align 4
  %inc.i = add nuw nsw i32 %frag.0287.i, 1
  %incdec.ptr.i = getelementptr %struct.page_frag, ptr %fp.0286.i, i32 1
  %exitcond.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.i, label %do.body40.i, label %unmap_rx_buf.exit.i.do.body47.i_crit_edge, !prof !63

unmap_rx_buf.exit.i.do.body47.i_crit_edge:        ; preds = %unmap_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47.i

for.end.i:                                        ; preds = %get_buf_size.exit.i
  %size.i.le = getelementptr inbounds %struct.page_frag, ptr %fp.0286.i, i32 0, i32 2
  %add.i = add nuw nsw i32 %frag.0287.i, 1
  %60 = ptrtoint ptr %nfrags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %nfrags.i, align 4
  %61 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter1.i, align 4
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev_dev.i, align 4
  %dma_addr.i263.i = getelementptr %struct.rx_sw_desc, ptr %28, i32 %30, i32 1
  %65 = ptrtoint ptr %dma_addr.i263.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_addr.i263.i, align 4
  %and.i264.i = and i32 %66, -4
  %67 = ptrtoint ptr %size.i.le to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %size.i.le, align 2
  %conv90.i = zext i16 %68 to i32
  call void @dma_sync_single_for_cpu(ptr noundef %64, i32 noundef %and.i264.i, i32 noundef %conv90.i, i32 noundef 2) #10
  %69 = ptrtoint ptr %gl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gl.i, align 4
  %call94.i = call ptr @page_address(ptr noundef %70) #10
  %71 = ptrtoint ptr %offset97.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %offset97.i, align 4
  %conv98.i = zext i16 %72 to i32
  %add.ptr99.i = getelementptr i8, ptr %call94.i, i32 %conv98.i
  %73 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr99.i, ptr %va.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr99.i) #10, !srcloc !94
  %74 = ptrtoint ptr %handler137.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %handler137.i, align 4
  %76 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur_desc.i, align 8
  %call102.i = call i32 %75(ptr noundef %napi, ptr noundef %77, ptr noundef nonnull %gl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %cmp103.i = icmp eq i32 %call102.i, 0
  br i1 %cmp103.i, label %if.then111.i, label %if.else.i, !prof !65

if.then111.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %size.i.le to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %size.i.le, align 2
  %conv113.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %fl_align.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fl_align.i, align 4
  %conv115.i = and i32 %81, 65535
  %sub116.i = add nsw i32 %conv113.i, -1
  %add117.i = add nsw i32 %sub116.i, %conv115.i
  %neg.i = sub nsw i32 0, %conv115.i
  %and122.i = and i32 %add117.i, %neg.i
  %82 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset.i, align 4
  %add124.i = add i32 %and122.i, %83
  store i32 %add124.i, ptr %offset.i, align 4
  br label %if.end126.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @restore_rx_bufs(ptr noundef nonnull %gl.i, ptr noundef %fl.i, i32 noundef %frag.0287.i) #10
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.else.i, %if.then111.i
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %gl.i) #10
  br label %if.end173.i

if.then136.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %handler137.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handler137.i, align 4
  %86 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur_desc.i, align 8
  %call139.i = call i32 %85(ptr noundef %napi, ptr noundef %87, ptr noundef null) #10
  br label %if.end173.i

if.end173.thread.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1843, i32 noundef 9, ptr noundef null) #10
  br label %if.end182.i

if.end173.i:                                      ; preds = %if.then136.i, %if.end126.i
  %ret.0.i = phi i32 [ %call102.i, %if.end126.i ], [ %call139.i, %if.then136.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool174.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool174.not.i, label %if.end173.i.if.end182.i_crit_edge, label %if.then181.i, !prof !65

if.end173.i.if.end182.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182.i

if.then181.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #12
  %next_intr_params.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 4
  %88 = ptrtoint ptr %next_intr_params.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 10, ptr %next_intr_params.i, align 1
  br label %while.end.i

if.end182.i:                                      ; preds = %if.end173.i.if.end182.i_crit_edge, %if.end173.thread.i
  %89 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur_desc.i, align 8
  %91 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iqe_len.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 %92
  store ptr %add.ptr.i.i, ptr %cur_desc.i, align 8
  %93 = ptrtoint ptr %cidx.i265.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cidx.i265.i, align 4
  %inc.i266.i = add i32 %94, 1
  store i32 %inc.i266.i, ptr %cidx.i265.i, align 4
  %95 = ptrtoint ptr %size.i267.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.i267.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i266.i, i32 %96)
  %cmp.i268.i = icmp eq i32 %inc.i266.i, %96
  br i1 %cmp.i268.i, label %if.then.i270.i, label %if.end182.i.cleanup.i_crit_edge, !prof !63

if.end182.i.cleanup.i_crit_edge:                  ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then.i270.i:                                   ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %cidx.i265.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %cidx.i265.i, align 4
  %98 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %gen.i.i, align 8
  %100 = xor i8 %99, 1
  store i8 %100, ptr %gen.i.i, align 8
  %101 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %desc.i.i, align 4
  %103 = ptrtoint ptr %cur_desc.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %cur_desc.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i270.i, %if.end182.i.cleanup.i_crit_edge
  %dec.i = add i32 %budget_left.0290.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge, !prof !63

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.then181.i, %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %budget_left.0285.i = phi i32 [ %budget_left.0290.i, %if.then181.i ], [ 0, %entry.while.end.i_crit_edge ], [ %budget_left.0290.i, %while.body.i.while.end.i_crit_edge ], [ 0, %cleanup.i.while.end.i_crit_edge ]
  %offset185.i = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 5
  %104 = ptrtoint ptr %offset185.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset185.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp186.i = icmp sgt i32 %105, -1
  br i1 %cmp186.i, label %land.lhs.true.i, label %while.end.i.process_responses.exit_crit_edge

while.end.i.process_responses.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_responses.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %fl188.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1
  %size.i271.i = getelementptr inbounds %struct.sge_eth_rxq, ptr %napi, i32 0, i32 1, i32 9
  %106 = ptrtoint ptr %size.i271.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %size.i271.i, align 4
  %sub.i.i = add i32 %107, -8
  %108 = ptrtoint ptr %fl188.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fl188.i, align 8
  %sub192.i = sub i32 %sub.i.i, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub192.i)
  %cmp193.i = icmp ugt i32 %sub192.i, 15
  br i1 %cmp193.i, label %if.then195.i, label %land.lhs.true.i.process_responses.exit_crit_edge

land.lhs.true.i.process_responses.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_responses.exit

if.then195.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter1.i, align 4
  %112 = call i32 @llvm.umin.i32(i32 %sub192.i, i32 16) #10
  call fastcc void @refill_fl(ptr noundef %111, ptr noundef %fl188.i, i32 noundef %112, i32 noundef 2592) #10
  br label %process_responses.exit

process_responses.exit:                           ; preds = %if.then195.i, %land.lhs.true.i.process_responses.exit_crit_edge, %while.end.i.process_responses.exit_crit_edge
  %sub199.i = sub i32 %budget, %budget_left.0285.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub199.i, i32 %budget)
  %cmp = icmp slt i32 %sub199.i, %budget
  br i1 %cmp, label %if.then, label %process_responses.exit.if.end_crit_edge, !prof !65

process_responses.exit.if.end_crit_edge:          ; preds = %process_responses.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %process_responses.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %sub199.i) #10
  %next_intr_params = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 4
  %113 = ptrtoint ptr %next_intr_params to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %next_intr_params, align 1
  %conv = zext i8 %114 to i32
  %intr_params3 = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 7
  %115 = ptrtoint ptr %intr_params3 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %intr_params3, align 4
  store i8 %116, ptr %next_intr_params, align 1
  %phi.bo = shl nuw nsw i32 %conv, 12
  br label %if.end

if.end:                                           ; preds = %if.then, %process_responses.exit.if.end_crit_edge
  %intr_params.0 = phi i32 [ %phi.bo, %if.then ], [ 57344, %process_responses.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %budget_left.0285.i, i32 %budget)
  %cmp5 = icmp eq i32 %budget_left.0285.i, %budget
  br i1 %cmp5, label %if.then13, label %if.end.if.end14_crit_edge, !prof !63

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %unhandled_irqs = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 6
  %117 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %unhandled_irqs, align 8
  %inc = add i32 %118, 1
  store i32 %inc, ptr %unhandled_irqs, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %or = or i32 %intr_params.0, %sub199.i
  %bar2_addr = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 14
  %119 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bar2_addr, align 4
  %tobool16.not = icmp eq ptr %120, null
  br i1 %tobool16.not, label %if.then25, label %do.body, !prof !63

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %adapter1.i, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 10
  %123 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %cntxt_id, align 8
  %conv26 = zext i16 %124 to i32
  %shl27 = shl nuw i32 %conv26, 16
  %or28 = or i32 %shl27, %or
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @arm_heavy_mb() #10
  %125 = call i32 @llvm.bswap.i32(i32 %or28) #10
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %122, align 128
  %add.ptr.i = getelementptr i8, ptr %127, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %125) #10, !srcloc !71
  br label %if.end37

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %bar2_qid = getelementptr inbounds %struct.sge_rspq, ptr %napi, i32 0, i32 15
  %128 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bar2_qid, align 8
  %shl30 = shl i32 %129, 16
  %or31 = or i32 %shl30, %or
  %130 = call i32 @llvm.bswap.i32(i32 %or31)
  %131 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bar2_addr, align 4
  %add.ptr33 = getelementptr i8, ptr %132, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %130) #10, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  br label %if.end37

if.end37:                                         ; preds = %do.body, %if.then25
  ret i32 %sub199.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_fl(ptr noundef %adapter, ptr nocapture noundef %fl, i32 noundef %n, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl, align 4
  %desc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %pidx = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 3
  %sdesc1 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %add = add i32 %1, %n
  %size = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ugt i32 %add, %sub
  br i1 %cmp, label %do.body6, label %do.end11, !prof !63

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 619, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

do.end11:                                         ; preds = %entry
  %4 = ptrtoint ptr %sdesc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdesc1, align 4
  %6 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pidx, align 4
  %arrayidx3 = getelementptr %struct.rx_sw_desc, ptr %5, i32 %7
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr i64, ptr %9, i32 %7
  %fl_pg_order = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 15
  %10 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fl_pg_order, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool60.not21 = icmp eq i32 %n, 0
  br i1 %cmp12, label %alloc_small_pages, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end11
  br i1 %tobool60.not21, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %or.i = or i32 %gfp, 401408
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %while.body.lr.ph
  %sdesc.018 = phi ptr [ %arrayidx3, %while.body.lr.ph ], [ %sdesc.1, %if.end57.while.body_crit_edge ]
  %d.017 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %d.1, %if.end57.while.body_crit_edge ]
  %n.addr.016 = phi i32 [ %n, %while.body.lr.ph ], [ %dec, %if.end57.while.body_crit_edge ]
  %12 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fl_pg_order, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i, i32 noundef %13, i32 noundef 0, ptr noundef null) #10
  %tobool17.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool17.not, label %alloc_small_pages.thread39, label %if.end27, !prof !63

alloc_small_pages.thread39:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %large_alloc_failed = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 5
  %14 = ptrtoint ptr %large_alloc_failed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %large_alloc_failed, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %large_alloc_failed, align 4
  br label %while.body61.lr.ph

if.end27:                                         ; preds = %while.body
  %16 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev_dev, align 4
  %18 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fl_pg_order, align 8
  %shl30 = shl i32 4096, %19
  %call31 = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef %shl30, i32 noundef 2, i32 noundef 0) #10
  %20 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %call31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31)
  %cmp.i.not = icmp eq i32 %call31, -1
  br i1 %cmp.i.not, label %if.then41, label %if.end43, !prof !63

if.then41:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fl_pg_order, align 8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef %23) #10
  br label %out

if.end43:                                         ; preds = %if.end27
  %or44 = or i32 %call31, 1
  %conv = zext i32 %or44 to i64
  %incdec.ptr = getelementptr i64, ptr %d.017, i32 1
  %24 = ptrtoint ptr %d.017 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %d.017, align 8
  %25 = ptrtoint ptr %sdesc.018 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38.i.i.i, ptr %sdesc.018, align 4
  %dma_addr2.i = getelementptr inbounds %struct.rx_sw_desc, ptr %sdesc.018, i32 0, i32 1
  %26 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or44, ptr %dma_addr2.i, align 4
  %incdec.ptr45 = getelementptr %struct.rx_sw_desc, ptr %sdesc.018, i32 1
  %27 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fl, align 4
  %inc47 = add i32 %28, 1
  store i32 %inc47, ptr %fl, align 4
  %29 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pidx, align 4
  %inc49 = add i32 %30, 1
  store i32 %inc49, ptr %pidx, align 4
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc49, i32 %32)
  %cmp51 = icmp eq i32 %inc49, %32
  br i1 %cmp51, label %if.then53, label %if.end43.if.end57_crit_edge

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pidx, align 4
  %34 = ptrtoint ptr %sdesc1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdesc1, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end43.if.end57_crit_edge
  %d.1 = phi ptr [ %37, %if.then53 ], [ %incdec.ptr, %if.end43.if.end57_crit_edge ]
  %sdesc.1 = phi ptr [ %35, %if.then53 ], [ %incdec.ptr45, %if.end43.if.end57_crit_edge ]
  %dec = add i32 %n.addr.016, -1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %if.end57.out_crit_edge, label %if.end57.while.body_crit_edge

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

alloc_small_pages:                                ; preds = %do.end11
  br i1 %tobool60.not21, label %alloc_small_pages.out_crit_edge, label %alloc_small_pages.while.body61.lr.ph_crit_edge

alloc_small_pages.while.body61.lr.ph_crit_edge:   ; preds = %alloc_small_pages
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61.lr.ph

alloc_small_pages.out_crit_edge:                  ; preds = %alloc_small_pages
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body61.lr.ph:                               ; preds = %alloc_small_pages.while.body61.lr.ph_crit_edge, %alloc_small_pages.thread39
  %sdesc.246 = phi ptr [ %sdesc.018, %alloc_small_pages.thread39 ], [ %arrayidx3, %alloc_small_pages.while.body61.lr.ph_crit_edge ]
  %d.245 = phi ptr [ %d.017, %alloc_small_pages.thread39 ], [ %arrayidx, %alloc_small_pages.while.body61.lr.ph_crit_edge ]
  %n.addr.144 = phi i32 [ %n.addr.016, %alloc_small_pages.thread39 ], [ %n, %alloc_small_pages.while.body61.lr.ph_crit_edge ]
  %or.i.i = or i32 %gfp, 401408
  %pdev_dev75 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  br label %while.body61

while.body61:                                     ; preds = %if.end102.while.body61_crit_edge, %while.body61.lr.ph
  %dec5924.in = phi i32 [ %n.addr.144, %while.body61.lr.ph ], [ %dec5924, %if.end102.while.body61_crit_edge ]
  %sdesc.323 = phi ptr [ %sdesc.246, %while.body61.lr.ph ], [ %sdesc.4, %if.end102.while.body61_crit_edge ]
  %d.322 = phi ptr [ %d.245, %while.body61.lr.ph ], [ %d.4, %if.end102.while.body61_crit_edge ]
  %dec5924 = add i32 %dec5924.in, -1
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool63.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool63.not, label %if.then72, label %if.end74, !prof !63

if.then72:                                        ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_failed = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 4
  %38 = ptrtoint ptr %alloc_failed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alloc_failed, align 4
  %inc73 = add i32 %39, 1
  store i32 %inc73, ptr %alloc_failed, align 4
  br label %out

if.end74:                                         ; preds = %while.body61
  %40 = ptrtoint ptr %pdev_dev75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev_dev75, align 4
  %call76 = tail call i32 @dma_map_page_attrs(ptr noundef %41, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %42 = ptrtoint ptr %pdev_dev75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev_dev75, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %43, i32 noundef %call76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call76)
  %cmp.i1.not = icmp eq i32 %call76, -1
  br i1 %cmp.i1.not, label %if.then86, label %if.end87, !prof !63

if.then86:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i)
  br label %out

if.end87:                                         ; preds = %if.end74
  %conv88 = zext i32 %call76 to i64
  %incdec.ptr89 = getelementptr i64, ptr %d.322, i32 1
  %44 = ptrtoint ptr %d.322 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv88, ptr %d.322, align 8
  %45 = ptrtoint ptr %sdesc.323 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call38.i.i.i.i, ptr %sdesc.323, align 4
  %dma_addr2.i3 = getelementptr inbounds %struct.rx_sw_desc, ptr %sdesc.323, i32 0, i32 1
  %46 = ptrtoint ptr %dma_addr2.i3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call76, ptr %dma_addr2.i3, align 4
  %incdec.ptr90 = getelementptr %struct.rx_sw_desc, ptr %sdesc.323, i32 1
  %47 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fl, align 4
  %inc92 = add i32 %48, 1
  store i32 %inc92, ptr %fl, align 4
  %49 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pidx, align 4
  %inc94 = add i32 %50, 1
  store i32 %inc94, ptr %pidx, align 4
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc94, i32 %52)
  %cmp96 = icmp eq i32 %inc94, %52
  br i1 %cmp96, label %if.then98, label %if.end87.if.end102_crit_edge

if.end87.if.end102_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then98:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %pidx, align 4
  %54 = ptrtoint ptr %sdesc1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdesc1, align 4
  %56 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end87.if.end102_crit_edge
  %d.4 = phi ptr [ %57, %if.then98 ], [ %incdec.ptr89, %if.end87.if.end102_crit_edge ]
  %sdesc.4 = phi ptr [ %55, %if.then98 ], [ %incdec.ptr90, %if.end87.if.end102_crit_edge ]
  %tobool60.not = icmp eq i32 %dec5924, 0
  br i1 %tobool60.not, label %if.end102.out_crit_edge, label %if.end102.while.body61_crit_edge

if.end102.while.body61_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end102.out_crit_edge, %if.then86, %if.then72, %alloc_small_pages.out_crit_edge, %if.end57.out_crit_edge, %if.then41, %while.cond.preheader.out_crit_edge
  %58 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fl, align 4
  %sub105 = sub i32 %59, %1
  %pend_cred = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 1
  %60 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pend_cred, align 4
  %add106 = add i32 %61, %sub105
  store i32 %add106, ptr %pend_cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add106)
  %cmp.i4 = icmp ugt i32 %add106, 7
  br i1 %cmp.i4, label %if.then.i, label %out.ring_fl_db.exit_crit_edge

out.ring_fl_db.exit_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %ring_fl_db.exit

if.then.i:                                        ; preds = %out
  %arch.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5
  %62 = ptrtoint ptr %arch.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arch.i, align 4
  %div.pn.i = lshr i32 %add106, 3
  %val.0.i = or i32 %63, %div.pn.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %bar2_addr.i = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %64 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bar2_addr.i, align 4
  %cmp8.i = icmp eq ptr %65, null
  br i1 %cmp8.i, label %if.then11.i, label %do.body15.i, !prof !63

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id.i = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %66 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cntxt_id.i, align 4
  %shl12.i = shl i32 %67, 15
  %or13.i = or i32 %shl12.i, %val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #10
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #10, !srcloc !71
  br label %if.end24.i

do.body15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @arm_heavy_mb() #10
  %bar2_qid.i = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 14
  %71 = ptrtoint ptr %bar2_qid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bar2_qid.i, align 4
  %shl18.i = shl i32 %72, 15
  %or19.i = or i32 %shl18.i, %val.0.i
  %73 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #10
  %74 = ptrtoint ptr %bar2_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bar2_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %73) #10, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body15.i, %if.then11.i
  %76 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pend_cred, align 4
  %rem.i = and i32 %77, 7
  store i32 %rem.i, ptr %pend_cred, align 4
  br label %ring_fl_db.exit

ring_fl_db.exit:                                  ; preds = %if.end24.i, %out.ring_fl_db.exit_crit_edge
  %78 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fl, align 4
  %80 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pend_cred, align 4
  %sub.i = sub i32 %79, %81
  %fl_starve_thres.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 19
  %82 = ptrtoint ptr %fl_starve_thres.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fl_starve_thres.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %83)
  %cmp.i6.not = icmp ugt i32 %sub.i, %83
  br i1 %cmp.i6.not, label %ring_fl_db.exit.if.end122_crit_edge, label %do.end118, !prof !65

ring_fl_db.exit.if.end122_crit_edge:              ; preds = %ring_fl_db.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

do.end118:                                        ; preds = %ring_fl_db.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %cntxt_id = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %84 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cntxt_id, align 4
  %starving_fl = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7
  tail call void @_set_bit(i32 noundef %85, ptr noundef %starving_fl) #10
  br label %if.end122

if.end122:                                        ; preds = %do.end118, %ring_fl_db.exit.if.end122_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_sge_alloc_eth_txq(ptr noundef %adapter, ptr noundef %txq, ptr nocapture noundef readonly %dev, ptr noundef %devq, i32 noundef %iqid) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i = alloca i64, align 8
  %cmd = alloca %struct.fw_eq_eth_cmd, align 8
  %rpl = alloca %struct.fw_eq_eth_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rpl) #10
  %2 = call ptr @memset(ptr %rpl, i32 255, i32 48)
  %size = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 16
  %5 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat_len, align 4
  %div105 = lshr i32 %6, 6
  %add = add i32 %div105, %4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %7 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev_dev, align 4
  %phys_addr = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 11
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 9
  %mul.i = shl i32 %4, 6
  %add.i = add i32 %mul.i, %6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %add.i, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.alloc_ring.exit.thread_crit_edge, label %do.body.i

entry.alloc_ring.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_ring.exit.thread

do.body.i:                                        ; preds = %entry
  %cmp1.i.not = icmp eq ptr %sdesc, null
  br i1 %cmp1.i.not, label %do.body8.i, label %do.end14.i, !prof !63

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 768, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.end14.i:                                       ; preds = %do.body.i
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 8) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %do.end14.i.if.then19.i_crit_edge, label %if.end7.i.i.i, !prof !63

do.end14.i.if.then19.i_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.end7.i.i.i:                                    ; preds = %do.end14.i
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #14
  %tobool18.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i.i.if.then19.i_crit_edge, label %if.end

if.end7.i.i.i.if.then19.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i.i.if.then19.i_crit_edge, %do.end14.i.if.then19.i_crit_edge
  %12 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %call.i.i, i32 noundef %13, i32 noundef 0) #10
  br label %alloc_ring.exit.thread

alloc_ring.exit.thread:                           ; preds = %if.then19.i, %entry.alloc_ring.exit.thread_crit_edge
  %desc110 = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 8
  %14 = ptrtoint ptr %desc110 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %desc110, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i.i
  %15 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i.i, ptr %sdesc, align 4
  %desc = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 8
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %desc, align 4
  %17 = getelementptr inbounds i8, ptr %cmd, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 313524224, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1879048189, ptr %alloc_to_len16, align 4
  %viid = getelementptr i8, ptr %dev, i32 2312
  %21 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %viid, align 4
  %conv = zext i16 %22 to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 1073741824
  %autoequiqe_to_viid = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %autoequiqe_to_viid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %autoequiqe_to_viid, align 8
  %port_id = getelementptr i8, ptr %dev, i32 2326
  %24 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_id, align 2
  %conv10 = zext i8 %25 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %shl11, %iqid
  %or14 = or i32 %or12, 2097152
  %fetchszm_to_iqid = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 4
  %26 = ptrtoint ptr %fetchszm_to_iqid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or14, ptr %fetchszm_to_iqid, align 8
  %27 = and i32 %1, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %27)
  %cmp = icmp ult i32 %27, 96
  %or18 = select i1 %cmp, i32 20250624, i32 3473408
  %or20 = or i32 %add, %or18
  %dcaen_to_eqsize = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %dcaen_to_eqsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or20, ptr %dcaen_to_eqsize, align 4
  %29 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys_addr, align 4
  %conv23 = zext i32 %30 to i64
  %eqaddr = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 6
  %31 = ptrtoint ptr %eqaddr to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv23, ptr %eqaddr, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull %rpl, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdesc, align 4
  call void @kfree(ptr noundef %33) #10
  %34 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sdesc, align 4
  %35 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev_dev, align 4
  %mul = shl i32 %add, 6
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc, align 4
  %39 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %36, i32 noundef %mul, ptr noundef %38, i32 noundef %40, i32 noundef 0) #10
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %desc, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %42 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %txq, align 4
  %cidx = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 2
  %43 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cidx, align 4
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 3
  %44 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pidx, align 4
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc, align 4
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %46, i32 %48
  %stat = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 10
  %49 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx, ptr %stat, align 4
  %eqid_pkd = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %rpl, i32 0, i32 2
  %50 = ptrtoint ptr %eqid_pkd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eqid_pkd, align 8
  %and48 = and i32 %51, 1048575
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 6
  %52 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and48, ptr %cntxt_id, align 4
  %bar2_qid = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i) #10
  %53 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %bar2_qoffset.i, align 8, !annotation !89
  %call.i106 = call i32 @t4vf_bar2_sge_qregs(ptr noundef %adapter, i32 noundef %and48, i32 noundef 0, ptr noundef nonnull %bar2_qoffset.i, ptr noundef %bar2_qid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end.i, label %if.end38.bar2_address.exit_crit_edge

if.end38.bar2_address.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %bar2_address.exit

if.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %bar2.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %54 = ptrtoint ptr %bar2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bar2.i, align 4
  %56 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %bar2_qoffset.i, align 8
  %idx.ext.i = trunc i64 %57 to i32
  %add.ptr.i108 = getelementptr i8, ptr %55, i32 %idx.ext.i
  br label %bar2_address.exit

bar2_address.exit:                                ; preds = %if.end.i, %if.end38.bar2_address.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i108, %if.end.i ], [ null, %if.end38.bar2_address.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i) #10
  %bar2_addr = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 12
  %58 = ptrtoint ptr %bar2_addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i, ptr %bar2_addr, align 4
  %physeqid_pkd = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %rpl, i32 0, i32 3
  %59 = ptrtoint ptr %physeqid_pkd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %physeqid_pkd, align 4
  %and56 = and i32 %60, 1048575
  %abs_id = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 7
  %61 = ptrtoint ptr %abs_id to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and56, ptr %abs_id, align 4
  %txq58 = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 1
  %62 = ptrtoint ptr %txq58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %devq, ptr %txq58, align 4
  %tso = getelementptr inbounds %struct.sge_eth_txq, ptr %txq, i32 0, i32 2
  %stops = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 4
  %63 = ptrtoint ptr %stops to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %stops, align 4
  %restarts = getelementptr inbounds %struct.sge_txq, ptr %txq, i32 0, i32 5
  %64 = ptrtoint ptr %restarts to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %restarts, align 4
  %65 = call ptr @memset(ptr %tso, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %bar2_address.exit, %if.then26, %alloc_ring.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.then26 ], [ 0, %bar2_address.exit ], [ -12, %alloc_ring.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rpl) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4vf_free_sge_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_evtq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %intrq2 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %ethqsets = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 11
  %0 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ethqsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp64.not = icmp eq i16 %1, 0
  br i1 %cmp64.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ethrxq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %stat_len.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %qs.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %txq.067 = phi ptr [ %sge, %for.body.lr.ph ], [ %incdec.ptr15, %for.inc.for.body_crit_edge ]
  %rxq.065 = phi ptr [ %ethrxq, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %desc = getelementptr inbounds %struct.sge_rspq, ptr %rxq.065, i32 0, i32 12
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %fl = getelementptr inbounds %struct.sge_eth_rxq, ptr %rxq.065, i32 0, i32 1
  tail call fastcc void @free_rspq_fl(ptr noundef %adapter, ptr noundef %rxq.065, ptr noundef %fl)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %desc6 = getelementptr inbounds %struct.sge_txq, ptr %txq.067, i32 0, i32 8
  %4 = ptrtoint ptr %desc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %txq.067, i32 0, i32 6
  %6 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntxt_id, align 4
  %call = tail call i32 @t4vf_eth_eq_free(ptr noundef %adapter, i32 noundef %7) #10
  %8 = ptrtoint ptr %txq.067 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txq.067, align 4
  tail call fastcc void @free_tx_desc(ptr noundef %adapter, ptr noundef %txq.067, i32 noundef %9)
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %txq.067, i32 0, i32 9
  %10 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev_dev.i, align 4
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %txq.067, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %mul.i = shl i32 %15, 6
  %16 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_len.i, align 4
  %add.i = add i32 %mul.i, %17
  %18 = ptrtoint ptr %desc6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc6, align 4
  %phys_addr.i = getelementptr inbounds %struct.sge_txq, ptr %txq.067, i32 0, i32 11
  %20 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %add.i, ptr noundef %19, i32 noundef %21, i32 noundef 0) #10
  %22 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cntxt_id, align 4
  %23 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sdesc, align 4
  %24 = ptrtoint ptr %desc6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %desc6, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %qs.069, 1
  %incdec.ptr = getelementptr %struct.sge_eth_rxq, ptr %rxq.065, i32 1
  %incdec.ptr15 = getelementptr %struct.sge_eth_txq, ptr %txq.067, i32 1
  %25 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ethqsets, align 2
  %conv = zext i16 %26 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %desc16 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 12
  %27 = ptrtoint ptr %desc16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc16, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id1.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 10
  %29 = ptrtoint ptr %cntxt_id1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cntxt_id1.i, align 8
  %conv.i = zext i16 %30 to i32
  %call.i = tail call i32 @t4vf_iq_free(ptr noundef %adapter, i32 noundef 0, i32 noundef %conv.i, i32 noundef 65535, i32 noundef 65535) #10
  %pdev_dev.i46 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %31 = ptrtoint ptr %pdev_dev.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev_dev.i46, align 4
  %size.i47 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 17
  %33 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i47, align 8
  %add.i48 = add i32 %34, 1
  %iqe_len.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 16
  %35 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iqe_len.i, align 4
  %mul.i49 = mul i32 %add.i48, %36
  %37 = ptrtoint ptr %desc16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc16, align 4
  %phys_addr.i51 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 13
  %39 = ptrtoint ptr %phys_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys_addr.i51, align 8
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %mul.i49, ptr noundef %38, i32 noundef %40, i32 noundef 0) #10
  tail call void @__netif_napi_del(ptr noundef %fw_evtq) #10
  tail call void @synchronize_net() #10
  %netdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 19
  %41 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %netdev.i, align 8
  %42 = ptrtoint ptr %cntxt_id1.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %cntxt_id1.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end.if.end19_crit_edge
  %desc20 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 12
  %43 = ptrtoint ptr %desc20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc20, align 4
  %tobool21.not = icmp eq ptr %44, null
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id1.i52 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 10
  %45 = ptrtoint ptr %cntxt_id1.i52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cntxt_id1.i52, align 8
  %conv.i53 = zext i16 %46 to i32
  %call.i54 = tail call i32 @t4vf_iq_free(ptr noundef %adapter, i32 noundef 0, i32 noundef %conv.i53, i32 noundef 65535, i32 noundef 65535) #10
  %pdev_dev.i55 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %47 = ptrtoint ptr %pdev_dev.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev_dev.i55, align 4
  %size.i56 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 17
  %49 = ptrtoint ptr %size.i56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i56, align 8
  %add.i57 = add i32 %50, 1
  %iqe_len.i58 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 16
  %51 = ptrtoint ptr %iqe_len.i58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iqe_len.i58, align 4
  %mul.i59 = mul i32 %add.i57, %52
  %53 = ptrtoint ptr %desc20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc20, align 4
  %phys_addr.i61 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 13
  %55 = ptrtoint ptr %phys_addr.i61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phys_addr.i61, align 8
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef %mul.i59, ptr noundef %54, i32 noundef %56, i32 noundef 0) #10
  tail call void @__netif_napi_del(ptr noundef %intrq2) #10
  tail call void @synchronize_net() #10
  %netdev.i62 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5, i32 19
  %57 = ptrtoint ptr %netdev.i62 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %netdev.i62, align 8
  %58 = ptrtoint ptr %cntxt_id1.i52 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %cntxt_id1.i52, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_rspq_fl(ptr noundef %adapter, ptr noundef %rspq, ptr noundef %fl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fl, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cntxt_id = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %0 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cntxt_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 65535, %entry.cond.end_crit_edge ]
  %cntxt_id1 = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 10
  %2 = ptrtoint ptr %cntxt_id1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cntxt_id1, align 8
  %conv = zext i16 %3 to i32
  %call = tail call i32 @t4vf_iq_free(ptr noundef %adapter, i32 noundef 0, i32 noundef %conv, i32 noundef %cond, i32 noundef 65535) #10
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev_dev, align 4
  %size = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 17
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %add = add i32 %7, 1
  %iqe_len = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 16
  %8 = ptrtoint ptr %iqe_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iqe_len, align 4
  %mul = mul i32 %add, %9
  %desc = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 12
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %phys_addr = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 13
  %12 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %mul, ptr noundef %11, i32 noundef %13, i32 noundef 0) #10
  tail call void @__netif_napi_del(ptr noundef %rspq) #10
  tail call void @synchronize_net() #10
  %netdev = getelementptr inbounds %struct.sge_rspq, ptr %rspq, i32 0, i32 19
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %netdev, align 8
  %15 = ptrtoint ptr %cntxt_id1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %cntxt_id1, align 8
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fl, align 4
  tail call fastcc void @free_rx_bufs(ptr noundef %adapter, ptr noundef nonnull %fl, i32 noundef %17)
  %18 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev_dev, align 4
  %size6 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %20 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size6, align 4
  %mul7 = shl i32 %21, 3
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 16
  %22 = ptrtoint ptr %stat_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stat_len, align 4
  %add8 = add i32 %mul7, %23
  %desc9 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %24 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc9, align 4
  %addr = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %add8, ptr noundef %25, i32 noundef %27, i32 noundef 0) #10
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %28 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sdesc, align 4
  %cntxt_id11 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %31 = ptrtoint ptr %cntxt_id11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cntxt_id11, align 4
  %32 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_eth_eq_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_tx_desc(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %tq, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cidx1 = getelementptr inbounds %struct.sge_txq, ptr %tq, i32 0, i32 2
  %0 = ptrtoint ptr %cidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx1, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev_dev, align 4
  %sdesc3 = getelementptr inbounds %struct.sge_txq, ptr %tq, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool4.not2 = icmp eq i32 %n, 0
  br i1 %tobool4.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %sdesc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdesc3, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %5, i32 %1
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %tq, i32 0, i32 10
  %desc49.i = getelementptr inbounds %struct.sge_txq, ptr %tq, i32 0, i32 8
  %size = getelementptr inbounds %struct.sge_txq, ptr %tq, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %dec6.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec6, %if.end14.while.body_crit_edge ]
  %cidx.05 = phi i32 [ %1, %while.body.lr.ph ], [ %cidx.1, %if.end14.while.body_crit_edge ]
  %sdesc.03 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %sdesc.1, %if.end14.while.body_crit_edge ]
  %dec6 = add i32 %dec6.in, -1
  %6 = ptrtoint ptr %sdesc.03 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdesc.03, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %while.body.if.end11_crit_edge, label %if.then7

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %while.body
  %sgl = getelementptr inbounds %struct.tx_sw_desc, ptr %sdesc.03, i32 0, i32 1
  %8 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgl, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %13 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %tobool.not.i = icmp eq i32 %15, %17
  %addr05.i = getelementptr inbounds %struct.ulptx_sgl, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %addr05.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr05.i, align 8
  %conv6.i = trunc i64 %19 to i32
  %len07.i = getelementptr inbounds %struct.ulptx_sgl, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %len07.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len07.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv6.i, i32 noundef %21, i32 noundef 1, i32 noundef 0) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.if.end.i_crit_edge, !prof !63

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %conv.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then7.if.end.i_crit_edge
  %nfrags.0.i = phi i32 [ %dec.i, %if.else.i ], [ %conv.i, %if.then7.if.end.i_crit_edge ]
  %sge.i = getelementptr inbounds %struct.ulptx_sgl, ptr %9, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nfrags.0.i)
  %cmp127.i = icmp ugt i32 %nfrags.0.i, 1
  br i1 %cmp127.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.0129.i = phi ptr [ %p.2.i, %for.inc.i.for.body.i_crit_edge ], [ %sge.i, %if.end.i.for.body.i_crit_edge ]
  %nfrags.1128.i = phi i32 [ %sub.i, %for.inc.i.for.body.i_crit_edge ], [ %nfrags.0.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.ulptx_sge_pair, ptr %p.0129.i, i32 1
  %22 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stat.i, align 4
  %cmp9.not.i = icmp ugt ptr %add.ptr.i, %23
  br i1 %cmp9.not.i, label %if.else25.i, label %for.body.i.unmap.i_crit_edge, !prof !63

for.body.i.unmap.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap.i

unmap.i:                                          ; preds = %if.then29.i, %for.body.i.unmap.i_crit_edge
  %p.1.i = phi ptr [ %p.0129.i, %for.body.i.unmap.i_crit_edge ], [ %33, %if.then29.i ]
  %addr.i = getelementptr inbounds %struct.ulptx_sge_pair, ptr %p.1.i, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %addr.i, align 8
  %conv18.i = trunc i64 %25 to i32
  %26 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p.1.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv18.i, i32 noundef %27, i32 noundef 1, i32 noundef 0) #10
  %arrayidx21.i = getelementptr %struct.ulptx_sge_pair, ptr %p.1.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx21.i, align 8
  %conv22.i = trunc i64 %29 to i32
  %arrayidx24.i = getelementptr [2 x i32], ptr %p.1.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv22.i, i32 noundef %31, i32 noundef 1, i32 noundef 0) #10
  %incdec.ptr.i = getelementptr %struct.ulptx_sge_pair, ptr %p.1.i, i32 1
  br label %for.inc.i

if.else25.i:                                      ; preds = %for.body.i
  %cmp27.i = icmp eq ptr %p.0129.i, %23
  br i1 %cmp27.i, label %if.then29.i, label %if.else30.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %desc49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc49.i, align 4
  br label %unmap.i

if.else30.i:                                      ; preds = %if.else25.i
  %add.ptr31.i = getelementptr i8, ptr %p.0129.i, i32 8
  %cmp33.i = icmp eq ptr %add.ptr31.i, %23
  %34 = ptrtoint ptr %desc49.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc49.i, align 4
  br i1 %cmp33.i, label %if.then35.i, label %if.else47.i

if.then35.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %conv39.i = trunc i64 %37 to i32
  %38 = ptrtoint ptr %p.0129.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p.0129.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv39.i, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  %arrayidx42.i = getelementptr i64, ptr %35, i32 1
  %40 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx42.i, align 8
  %conv43.i = trunc i64 %41 to i32
  %arrayidx45.i = getelementptr [2 x i32], ptr %p.0129.i, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx45.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv43.i, i32 noundef %43, i32 noundef 1, i32 noundef 0) #10
  %arrayidx46.i = getelementptr i64, ptr %35, i32 2
  br label %for.inc.i

if.else47.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr31.i, align 8
  %conv52.i = trunc i64 %45 to i32
  %46 = ptrtoint ptr %p.0129.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p.0129.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv52.i, i32 noundef %47, i32 noundef 1, i32 noundef 0) #10
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %35, align 8
  %conv56.i = trunc i64 %49 to i32
  %arrayidx58.i = getelementptr [2 x i32], ptr %p.0129.i, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx58.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv56.i, i32 noundef %51, i32 noundef 1, i32 noundef 0) #10
  %arrayidx59.i = getelementptr i64, ptr %35, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else47.i, %if.then35.i, %unmap.i
  %p.2.i = phi ptr [ %incdec.ptr.i, %unmap.i ], [ %arrayidx46.i, %if.then35.i ], [ %arrayidx59.i, %if.else47.i ]
  %sub.i = add i32 %nfrags.1128.i, -2
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %nfrags.1.lcssa.i = phi i32 [ %nfrags.0.i, %if.end.i.for.end.i_crit_edge ], [ %sub.i, %for.inc.i.for.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %sge.i, %if.end.i.for.end.i_crit_edge ], [ %p.2.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfrags.1.lcssa.i)
  %tobool63.not.i = icmp eq i32 %nfrags.1.lcssa.i, 0
  br i1 %tobool63.not.i, label %for.end.i.unmap_sgl.exit_crit_edge, label %if.then64.i

for.end.i.unmap_sgl.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_sgl.exit

if.then64.i:                                      ; preds = %for.end.i
  %52 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stat.i, align 4
  %cmp67.i = icmp eq ptr %p.0.lcssa.i, %53
  br i1 %cmp67.i, label %if.then69.i, label %if.then64.i.if.end71.i_crit_edge

if.then64.i.if.end71.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then69.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %desc49.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc49.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then69.i, %if.then64.i.if.end71.i_crit_edge
  %p.3.i = phi ptr [ %55, %if.then69.i ], [ %p.0.lcssa.i, %if.then64.i.if.end71.i_crit_edge ]
  %add.ptr72.i = getelementptr i8, ptr %p.3.i, i32 16
  %cmp74.not.i = icmp ugt ptr %add.ptr72.i, %53
  br i1 %cmp74.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr76.i = getelementptr inbounds %struct.ulptx_sge_pair, ptr %p.3.i, i32 0, i32 1
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %desc49.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc49.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %addr76.i, %cond.true.i ], [ %57, %cond.false.i ]
  %58 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %cond.i = load i64, ptr %cond.in.i, align 8
  %conv79.i = trunc i64 %cond.i to i32
  %59 = ptrtoint ptr %p.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p.3.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv79.i, i32 noundef %60, i32 noundef 1, i32 noundef 0) #10
  br label %unmap_sgl.exit

unmap_sgl.exit:                                   ; preds = %cond.end.i, %for.end.i.unmap_sgl.exit_crit_edge
  %61 = ptrtoint ptr %sdesc.03 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdesc.03, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %62, i32 noundef 0) #10
  %63 = ptrtoint ptr %sdesc.03 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %sdesc.03, align 4
  br label %if.end11

if.end11:                                         ; preds = %unmap_sgl.exit, %while.body.if.end11_crit_edge
  %incdec.ptr = getelementptr %struct.tx_sw_desc, ptr %sdesc.03, i32 1
  %inc = add i32 %cidx.05, 1
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %65)
  %cmp = icmp eq i32 %inc, %65
  br i1 %cmp, label %if.then12, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %sdesc3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdesc3, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  %sdesc.1 = phi ptr [ %67, %if.then12 ], [ %incdec.ptr, %if.end11.if.end14_crit_edge ]
  %cidx.1 = phi i32 [ 0, %if.then12 ], [ %inc, %if.end11.if.end14_crit_edge ]
  %tobool4.not = icmp eq i32 %dec6, 0
  br i1 %tobool4.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %entry.while.end_crit_edge
  %cidx.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %cidx.1, %if.end14.while.end_crit_edge ]
  %68 = ptrtoint ptr %cidx1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cidx.0.lcssa, ptr %cidx1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4vf_sge_start(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtxq_rover = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 12
  %0 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ethtxq_rover, align 4
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 50
  %call = tail call i32 @mod_timer(ptr noundef %rx_timer, i32 noundef %add) #10
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add3 = add i32 %2, 50
  %call4 = tail call i32 @mod_timer(ptr noundef %tx_timer, i32 noundef %add3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4vf_sge_stop(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %rx_timer) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %function2 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9, i32 2
  %2 = ptrtoint ptr %function2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %call6 = tail call i32 @del_timer_sync(ptr noundef %tx_timer) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_sge_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sge_fl_buffer_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 8
  %0 = ptrtoint ptr %sge_fl_buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sge_fl_buffer_size, align 4
  %arrayidx2 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not = icmp ugt i32 %3, %1
  %spec.store.select = select i1 %cmp.not, i32 %3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp4.not = icmp eq i32 %1, 4096
  %4 = tail call i32 @llvm.ctpop.i32(i32 %spec.store.select), !range !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp5.not = icmp ult i32 %4, 2
  %or.cond = select i1 %cmp4.not, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %5 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %spec.store.select) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sge, align 4
  %and8 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev14 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %9 = ptrtoint ptr %pdev_dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %if.end15.if.end24_crit_edge, label %cond.end21

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cond.end21:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i32 @llvm.ctlz.i32(i32 %spec.store.select, i1 true) #10, !range !87
  %sub23 = sub nsw i32 19, %11
  %fl_pg_order = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 15
  %12 = ptrtoint ptr %fl_pg_order to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub23, ptr %fl_pg_order, align 8
  br label %if.end24

if.end24:                                         ; preds = %cond.end21, %if.end15.if.end24_crit_edge
  %and26 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, i32 64, i32 128
  %stat_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 16
  %13 = ptrtoint ptr %stat_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond28, ptr %stat_len, align 4
  %shr = lshr i32 %8, 10
  %and30 = and i32 %shr, 7
  %pktshift = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 17
  %14 = ptrtoint ptr %pktshift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and30, ptr %pktshift, align 16
  %call31 = tail call i32 @t4vf_fl_pkt_align(ptr noundef %adapter) #10
  %fl_align = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 18
  %15 = ptrtoint ptr %fl_align to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call31, ptr %fl_align, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %shr33 = lshr i32 %17, 4
  %and34 = and i32 %shr33, 15
  %18 = zext i32 %and34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and34, label %sw.default [
    i32 4, label %if.end24.sw.epilog_crit_edge
    i32 5, label %sw.bb37
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %if.end24.sw.epilog_crit_edge
  %.sink96 = phi i32 [ 16, %sw.default ], [ 14, %sw.bb37 ], [ 8, %if.end24.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 255, %sw.default ], [ 63, %sw.bb37 ], [ 63, %if.end24.sw.epilog_crit_edge ]
  %sge_congestion_control43 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 10
  %19 = ptrtoint ptr %sge_congestion_control43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sge_congestion_control43, align 4
  %shr44 = lshr i32 %20, %.sink96
  %and45 = and i32 %shr44, %.sink
  %fl_starve_thres47 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 19
  %mul = shl nuw nsw i32 %and45, 1
  %add = or i32 %mul, 1
  %21 = ptrtoint ptr %fl_starve_thres47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %fl_starve_thres47, align 8
  %rx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8
  tail call void @init_timer_key(ptr noundef %rx_timer, ptr noundef nonnull @sge_rx_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @t4vf_sge_init.__key) #10
  %tx_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  tail call void @init_timer_key(ptr noundef %tx_timer, ptr noundef nonnull @sge_tx_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @t4vf_sge_init.__key.11) #10
  %intrq_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %intrq_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @t4vf_sge_init.__key.13, i16 noundef signext 3) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_fl_pkt_align(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_rx_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %starving_fl = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %starving_fl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %starving_fl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not37 = icmp eq i32 %1, 0
  br i1 %tobool.not37, label %entry.for.end19_crit_edge, label %for.body2.lr.ph

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.body2.lr.ph:                                  ; preds = %entry
  %egr_map = getelementptr i8, ptr %t, i32 148
  %fl_starve_thres.i = getelementptr i8, ptr %t, i32 136
  br label %for.body2

for.body2:                                        ; preds = %if.end16.for.body2_crit_edge, %for.body2.lr.ph
  %m.038 = phi i32 [ %1, %for.body2.lr.ph ], [ %and, %if.end16.for.body2_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %m.038, i1 true) #10, !range !87
  %arrayidx3 = getelementptr [16 x ptr], ptr %egr_map, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  tail call void @_clear_bit(i32 noundef %2, ptr noundef %starving_fl) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %pend_cred.i = getelementptr inbounds %struct.sge_fl, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %pend_cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pend_cred.i, align 4
  %sub.i = sub i32 %6, %8
  %9 = ptrtoint ptr %fl_starve_thres.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fl_starve_thres.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %10)
  %cmp.i.not = icmp ugt i32 %sub.i, %10
  br i1 %cmp.i.not, label %for.body2.if.end16_crit_edge, label %if.then

for.body2.if.end16_crit_edge:                     ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %for.body2
  %add.ptr11 = getelementptr i8, ptr %4, i32 -288
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %add.ptr11) #10
  br i1 %call.i, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %add.ptr11) #10
  %starving = getelementptr inbounds %struct.sge_fl, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %starving to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %starving, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %starving, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %2, ptr noundef %starving_fl) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13, %for.body2.if.end16_crit_edge
  %sub = add i32 %m.038, -1
  %and = and i32 %sub, %m.038
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end16.for.end19_crit_edge, label %if.end16.for.body2_crit_edge

if.end16.for.body2_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body2

if.end16.for.end19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.end19:                                        ; preds = %if.end16.for.end19_crit_edge, %entry.for.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add20 = add i32 %13, 50
  %call21 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add20) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_tx_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4992
  %sge = getelementptr i8, ptr %t, i32 -4480
  %ethtxq_rover = getelementptr i8, ptr %t, i32 52
  %0 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ethtxq_rover, align 4
  %conv = zext i16 %1 to i32
  %ethqsets = getelementptr i8, ptr %t, i32 50
  br label %do.body

do.body:                                          ; preds = %cleanup21.thread.do.body_crit_edge, %entry
  %i.0 = phi i32 [ %conv, %entry ], [ %spec.store.select, %cleanup21.thread.do.body_crit_edge ]
  %budget.0 = phi i32 [ 100, %entry ], [ %budget.1, %cleanup21.thread.do.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %i.0
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %2 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat.i, align 4
  %cidx.i = getelementptr inbounds %struct.sge_qstat, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cidx.i, align 4
  %conv.i = zext i16 %5 to i32
  %cidx1.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cidx1.i, align 4
  %sub.i = sub i32 %conv.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.reclaimable.exit_crit_edge

do.body.reclaimable.exit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %reclaimable.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %add.i = add i32 %9, %sub.i
  br label %reclaimable.exit

reclaimable.exit:                                 ; preds = %if.then.i, %do.body.reclaimable.exit_crit_edge
  %reclaimable.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %do.body.reclaimable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reclaimable.0.i)
  %tobool.not = icmp eq i32 %reclaimable.0.i, 0
  br i1 %tobool.not, label %reclaimable.exit.cleanup21.thread_crit_edge, label %land.lhs.true

reclaimable.exit.cleanup21.thread_crit_edge:      ; preds = %reclaimable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21.thread

land.lhs.true:                                    ; preds = %reclaimable.exit
  %txq1 = getelementptr inbounds %struct.sge_eth_txq, ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txq1, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 10
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup21.thread_crit_edge, label %if.then, !prof !63

land.lhs.true.cleanup21.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21.thread

if.then:                                          ; preds = %land.lhs.true
  %12 = tail call i32 @llvm.read_register.i32(metadata !53) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %15, ptr %xmit_lock_owner.i, align 4
  %17 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stat.i, align 4
  %cidx.i57 = getelementptr inbounds %struct.sge_qstat, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cidx.i57 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cidx.i57, align 4
  %conv.i58 = zext i16 %20 to i32
  %21 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cidx1.i, align 4
  %sub.i60 = sub i32 %conv.i58, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i60)
  %cmp.i61 = icmp slt i32 %sub.i60, 0
  br i1 %cmp.i61, label %if.then.i64, label %if.then.reclaimable.exit66_crit_edge

if.then.reclaimable.exit66_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %reclaimable.exit66

if.then.i64:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %size.i62 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %size.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i62, align 4
  %add.i63 = add i32 %24, %sub.i60
  br label %reclaimable.exit66

reclaimable.exit66:                               ; preds = %if.then.i64, %if.then.reclaimable.exit66_crit_edge
  %reclaimable.0.i65 = phi i32 [ %add.i63, %if.then.i64 ], [ %sub.i60, %if.then.reclaimable.exit66_crit_edge ]
  %25 = tail call i32 @llvm.umin.i32(i32 %reclaimable.0.i65, i32 %budget.0)
  tail call fastcc void @free_tx_desc(ptr noundef %add.ptr, ptr noundef %arrayidx, i32 noundef %25)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %27, %25
  store i32 %sub, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txq1, align 4
  %xmit_lock_owner.i67 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %xmit_lock_owner.i67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -1, ptr %xmit_lock_owner.i67, align 4
  %_xmit_lock.i68 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i68) #10
  %sub11 = sub i32 %budget.0, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %tobool12.not = icmp eq i32 %sub11, 0
  br i1 %tobool12.not, label %do.end.thread, label %reclaimable.exit66.cleanup21.thread_crit_edge

reclaimable.exit66.cleanup21.thread_crit_edge:    ; preds = %reclaimable.exit66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21.thread

do.end.thread:                                    ; preds = %reclaimable.exit66
  call void @__sanitizer_cov_trace_pc() #12
  %conv2879 = trunc i32 %i.0 to i16
  %31 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv2879, ptr %ethtxq_rover, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  br label %39

cleanup21.thread:                                 ; preds = %reclaimable.exit66.cleanup21.thread_crit_edge, %land.lhs.true.cleanup21.thread_crit_edge, %reclaimable.exit.cleanup21.thread_crit_edge
  %budget.1 = phi i32 [ %sub11, %reclaimable.exit66.cleanup21.thread_crit_edge ], [ %budget.0, %reclaimable.exit.cleanup21.thread_crit_edge ], [ %budget.0, %land.lhs.true.cleanup21.thread_crit_edge ]
  %inc = add i32 %i.0, 1
  %33 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ethqsets, align 2
  %conv16 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv16)
  %cmp17.not = icmp ult i32 %inc, %conv16
  %spec.store.select = select i1 %cmp17.not, i32 %inc, i32 0
  %35 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ethtxq_rover, align 4
  %conv25 = zext i16 %36 to i32
  %cmp26.not = icmp eq i32 %spec.store.select, %conv25
  br i1 %cmp26.not, label %do.end, label %cleanup21.thread.do.body_crit_edge

cleanup21.thread.do.body_crit_edge:               ; preds = %cleanup21.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %cleanup21.thread
  %conv28 = trunc i32 %spec.store.select to i16
  %37 = ptrtoint ptr %ethtxq_rover to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv28, ptr %ethtxq_rover, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1)
  %tobool30.not = icmp eq i32 %budget.1, 0
  br i1 %tobool30.not, label %do.end._crit_edge, label %do.end._crit_edge85

do.end._crit_edge85:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %41

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %39

39:                                               ; preds = %do.end._crit_edge, %do.end.thread
  %40 = phi i32 [ %32, %do.end.thread ], [ %38, %do.end._crit_edge ]
  br label %41

41:                                               ; preds = %39, %do.end._crit_edge85
  %42 = phi i32 [ %40, %39 ], [ %38, %do.end._crit_edge85 ]
  %43 = phi i32 [ 2, %39 ], [ 50, %do.end._crit_edge85 ]
  %add = add i32 %42, %43
  %call31 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_frags(ptr nocapture noundef %skb, ptr nocapture noundef readonly %gl, i32 noundef %offset) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl, align 4
  %offset3 = getelementptr inbounds %struct.page_frag, ptr %gl, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset3, align 4
  %conv = zext i16 %3 to i32
  %add = add i32 %conv, %offset
  %size = getelementptr inbounds %struct.page_frag, ptr %gl, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 2
  %conv6 = zext i16 %5 to i32
  %sub = sub i32 %conv6, %offset
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 2
  %9 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 1
  %10 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %bv_len.i.i, align 4
  %11 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i8.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_fill_page_desc.exit

if.then.i:                                        ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %nfrags = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %21 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nfrags, align 4
  %conv7 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7, ptr %nr_frags, align 2
  %26 = load i32, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp68 = icmp ugt i32 %26, 1
  br i1 %cmp68, label %for.body.lr.ph, label %__skb_fill_page_desc.exit.for.end_crit_edge

__skb_fill_page_desc.exit.for.end_crit_edge:      ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %__skb_fill_page_desc.exit
  %pfmemalloc.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %__skb_fill_page_desc.exit60.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %__skb_fill_page_desc.exit60.for.body_crit_edge ]
  %arrayidx11 = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %i.069
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 4
  %offset15 = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %i.069, i32 1
  %29 = ptrtoint ptr %offset15 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %offset15, align 4
  %conv16 = zext i16 %30 to i32
  %size19 = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %i.069, i32 2
  %31 = ptrtoint ptr %size19 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size19, align 2
  %conv20 = zext i16 %32 to i32
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i44 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069
  %35 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %arrayidx.i44, align 4
  %bv_offset.i45 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069, i32 2
  %36 = ptrtoint ptr %bv_offset.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv16, ptr %bv_offset.i45, align 4
  %bv_len.i.i46 = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.069, i32 1
  %37 = ptrtoint ptr %bv_len.i.i46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv20, ptr %bv_len.i.i46, align 4
  %38 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i47 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %and.i.i47, 0
  br i1 %tobool.not.i.i48, label %if.end.i.i51, label %if.then.i.i50, !prof !65

if.then.i.i50:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i49 = add i32 %40, -1
  br label %_compound_head.exit.i55

if.end.i.i51:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i55

_compound_head.exit.i55:                          ; preds = %if.end.i.i51, %if.then.i.i50
  %retval.0.i.i52 = phi i32 [ %sub.i.i49, %if.then.i.i50 ], [ %41, %if.end.i.i51 ]
  %42 = inttoptr i32 %retval.0.i.i52 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i8.i53 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i53)
  %tobool.i.not.i54 = icmp eq i32 %and.i8.i53, 0
  br i1 %tobool.i.not.i54, label %_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge, label %if.then.i59

_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge: ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_fill_page_desc.exit60

if.then.i59:                                      ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %pfmemalloc.i56 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i57 = load i8, ptr %pfmemalloc.i56, align 2
  %bf.set.i58 = or i8 %bf.load.i57, 2
  store i8 %bf.set.i58, ptr %pfmemalloc.i56, align 2
  br label %__skb_fill_page_desc.exit60

__skb_fill_page_desc.exit60:                      ; preds = %if.then.i59, %_compound_head.exit.i55.__skb_fill_page_desc.exit60_crit_edge
  %inc = add nuw i32 %i.069, 1
  %48 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nfrags, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %__skb_fill_page_desc.exit60.for.body_crit_edge, label %__skb_fill_page_desc.exit60.for.end_crit_edge

__skb_fill_page_desc.exit60.for.end_crit_edge:    ; preds = %__skb_fill_page_desc.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

__skb_fill_page_desc.exit60.for.body_crit_edge:   ; preds = %__skb_fill_page_desc.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %__skb_fill_page_desc.exit60.for.end_crit_edge, %__skb_fill_page_desc.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %26, %__skb_fill_page_desc.exit.for.end_crit_edge ], [ %49, %__skb_fill_page_desc.exit60.for.end_crit_edge ]
  %sub23 = add i32 %.lcssa, -1
  %arrayidx24 = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %sub23
  %50 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx24, align 4
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i61 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i65, label %if.then.i.i64, !prof !65

if.then.i.i64:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i63 = add i32 %54, -1
  br label %_compound_head.exit.i67

if.end.i.i65:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %51 to i32
  br label %_compound_head.exit.i67

_compound_head.exit.i67:                          ; preds = %if.end.i.i65, %if.then.i.i64
  %retval.0.i.i66 = phi i32 [ %sub.i.i63, %if.then.i.i64 ], [ %55, %if.end.i.i65 ]
  %56 = inttoptr i32 %retval.0.i.i66 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %57 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %58, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !63

if.then.i1.i:                                     ; preds = %_compound_head.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i67
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@copy_frags, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !82

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %56, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !65

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !82

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_wr_mbox_core(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_rx_bufs(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %fl, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not26 = icmp eq i32 %n, 0
  br i1 %tobool.not26, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sdesc1 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %cidx = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 2
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %fl_pg_order.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 15
  %size = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.lr.ph
  %dec27.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec27, %put_page.exit.while.body_crit_edge ]
  %dec27 = add i32 %dec27.in, -1
  %0 = ptrtoint ptr %sdesc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc1, align 4
  %2 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cidx, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3
  %dma_addr.i = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3, i32 1
  %4 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 4
  %and.i21 = and i32 %5, -4
  %8 = ptrtoint ptr %fl_pg_order.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_pg_order.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  %and.i23 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  %shl.i = shl i32 4096, %9
  %10 = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i24
  %cond.i = select i1 %10, i32 4096, i32 %shl.i
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %and.i21, i32 noundef %cond.i, i32 noundef 2, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@free_rx_bufs, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !82

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %17) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cidx, align 4
  %inc = add i32 %24, 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %26)
  %cmp = icmp eq i32 %inc, %26
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %27 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %cidx, align 4
  %28 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fl, align 4
  %dec9 = add i32 %29, -1
  store i32 %dec9, ptr %fl, align 4
  %tobool.not = icmp eq i32 %dec27, 0
  br i1 %tobool.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restore_rx_bufs(ptr nocapture noundef readonly %gl, ptr nocapture noundef %fl, i32 noundef %frags) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %tobool.not18 = icmp eq i32 %frags, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cidx = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 2
  %size = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %sdesc4 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec19.in = phi i32 [ %frags, %while.body.lr.ph ], [ %dec19, %if.end.while.body_crit_edge ]
  %dec19 = add i32 %dec19.in, -1
  %0 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %storemerge.in = phi i32 [ %3, %if.then ], [ %1, %while.body.if.end_crit_edge ]
  %storemerge = add i32 %storemerge.in, -1
  %4 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %cidx, align 4
  %5 = ptrtoint ptr %sdesc4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdesc4, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %6, i32 %storemerge
  %arrayidx7 = getelementptr [17 x %struct.page_frag], ptr %gl, i32 0, i32 %dec19
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx, align 4
  %dma_addr = getelementptr %struct.rx_sw_desc, ptr %6, i32 %storemerge, i32 1
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %or = or i32 %11, 2
  store i32 %or, ptr %dma_addr, align 4
  %12 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fl, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %fl, align 4
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_bar2_sge_qregs(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4vf_iq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 1224, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @t4vf_eth_xmit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @t4vf_eth_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 2650, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @t4vf_sge_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @t4vf_sge_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 2656, i32 3}
!15 = !{ptr @t4vf_sge_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @t4vf_sge_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @t4vf_sge_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 2697, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @t4vf_sge_init.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 2698, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @t4vf_sge_init.__key.13, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 2703, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/mm.h", i32 717, i32 2}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 1962, i32 4}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @process_intrq._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @process_intrq._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 1979, i32 4}
!41 = !{ptr @process_intrq._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @process_intrq._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 1985, i32 4}
!45 = !{ptr @process_intrq._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @process_intrq._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/sge.c", i32 1990, i32 4}
!49 = !{ptr @process_intrq._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @process_intrq._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 1, i32 4001}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2159375861, i64 2159376369, i64 2159375898, i64 2159375954, i64 2159375988, i64 2159376012, i64 2159376053, i64 2159376074, i64 2159376102, i64 2159376136}
!67 = !{i64 2159369097, i64 2159369604, i64 2159369134, i64 2159369190, i64 2159369224, i64 2159369248, i64 2159369289, i64 2159369310, i64 2159369338, i64 2159369372}
!68 = !{i64 2154659850, i64 2154660338, i64 2154659887, i64 2154659943, i64 2154659977, i64 2154660001, i64 2154660042, i64 2154660063, i64 2154660091, i64 2154660125}
!69 = !{i64 2159372644}
!70 = !{i64 2159164654}
!71 = !{i64 6104225}
!72 = !{i64 2159166259}
!73 = !{i64 2159166632}
!74 = !{i64 2159373639}
!75 = !{i64 2159374046}
!76 = !{i64 2154641832, i64 2154642320, i64 2154641869, i64 2154641925, i64 2154641959, i64 2154641983, i64 2154642024, i64 2154642045, i64 2154642073, i64 2154642107}
!77 = !{i64 2154644800, i64 2154645288, i64 2154644837, i64 2154644893, i64 2154644927, i64 2154644951, i64 2154644992, i64 2154645013, i64 2154645041, i64 2154645075}
!78 = !{i64 2153364827, i64 2153365310, i64 2153364864, i64 2153364920, i64 2153364954, i64 2153364978, i64 2153365019, i64 2153365040, i64 2153365068, i64 2153365102}
!79 = !{i64 2148517453}
!80 = !{i64 2148432186, i64 2148432218, i64 2148432247, i64 2148432281, i64 2148432312, i64 2148432335}
!81 = !{i64 2148517682}
!82 = !{i64 2148910816, i64 2148910821, i64 2148910834, i64 2148910878, i64 2148910912, i64 2148910933}
!83 = !{i64 2159405253, i64 2159405761, i64 2159405290, i64 2159405346, i64 2159405380, i64 2159405404, i64 2159405445, i64 2159405466, i64 2159405494, i64 2159405528}
!84 = !{i64 2159396411}
!85 = !{i64 2159404329}
!86 = !{i64 2159404749}
!87 = !{i32 0, i32 33}
!88 = !{i64 2159366863, i64 2159367370, i64 2159366900, i64 2159366956, i64 2159366990, i64 2159367014, i64 2159367055, i64 2159367076, i64 2159367104, i64 2159367138}
!89 = !{!"auto-init"}
!90 = !{i64 2159388182}
!91 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!92 = !{i64 2159389003, i64 2159389511, i64 2159389040, i64 2159389096, i64 2159389130, i64 2159389154, i64 2159389195, i64 2159389216, i64 2159389244, i64 2159389278}
!93 = !{i64 2159390667, i64 2159391175, i64 2159390704, i64 2159390760, i64 2159390794, i64 2159390818, i64 2159390859, i64 2159390880, i64 2159390908, i64 2159390942}
!94 = !{i64 926492}
!95 = !{i64 2159395901}
!96 = !{i64 2159396317}
!97 = !{i64 2159361652, i64 2159362159, i64 2159361689, i64 2159361745, i64 2159361779, i64 2159361803, i64 2159361844, i64 2159361865, i64 2159361893, i64 2159361927}
!98 = !{i64 2159360079}
!99 = !{i64 2159360464}
!100 = !{i64 2159360871}
!101 = !{i64 2159363934}
!102 = !{i64 2159408483}
!103 = !{i64 2153388800, i64 2153389284, i64 2153388837, i64 2153388893, i64 2153388927, i64 2153388951, i64 2153388992, i64 2153389013, i64 2153389041, i64 2153389075}
!104 = !{i64 2148429001, i64 2148429027, i64 2148429056, i64 2148429090, i64 2148429121, i64 2148429144}
