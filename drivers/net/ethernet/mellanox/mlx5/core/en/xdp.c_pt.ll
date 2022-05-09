; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.142 }
%struct.atomic_t = type { i32 }
%union.anon.142 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.0 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.0 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.1 }
%struct.anon.1 = type { i8, i8 }
%struct.mlx5e_xmit_data = type { i32, ptr, i32 }
%struct.mlx5e_xdp_info = type { i32, %union.anon.254 }
%union.anon.254 = type { %struct.anon.256 }
%struct.anon.256 = type { ptr, %struct.mlx5e_dma_info }
%struct.mlx5e_dma_info = type { i32, %union.anon.208 }
%union.anon.208 = type { ptr }
%struct.mlx5e_rq = type { %union.anon.206, %struct.anon.221, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.206 = type { %struct.anon.213 }
%struct.anon.213 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.216 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.214 }
%union.anon.214 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.215, i64, i32, [28 x i8] }
%union.anon.215 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.216 = type { %struct.anon.217 }
%struct.anon.217 = type { %struct.anon.218, [0 x %struct.mlx5_mtt] }
%struct.anon.218 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.221 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.235, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.anon.235 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.209, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.212, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.209 = type { %struct.anon.210 }
%struct.anon.210 = type { i8, i8, i16, i32 }
%union.anon.212 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.237, i32 }
%union.anon.237 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.236, i32, i32 }
%union.anon.236 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.197 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { %struct.anon.199, [0 x %struct.sock_filter] }
%struct.anon.199 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.171, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.171 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.195 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.257, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.257 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.140, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.140 = type { %struct.atomic_t }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdp_wqe_info = type { i8, i8 }
%struct.xdp_frame_bulk = type { i32, ptr, [16 x ptr] }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.258, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.anon.258 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.240, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.240 = type { ptr }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.mlx5_err_cqe = type { [32 x i8], i32, [18 x i8], i8, i8, i32, i16, i8, i8 }
%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_eth_seg, [0 x %struct.mlx5_wqe_data_seg] }
%struct.mlx5_wqe_eth_seg = type { i8, i8, i8, i8, i8, i8, i16, i32, %union.anon.251 }
%union.anon.251 = type { i32 }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx5_wqe_inline_seg = type { i32, [0 x i32] }
%struct.anon.252 = type { i16, [2 x i8] }

@mlx5e_xdp_handle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mlx5e_poll_xdpsq_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"netdevice: %s%s: Bad OP in XDPSQ CQE: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_free_xdpsq_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Error cqe on cqn 0x%x, ci 0x%x, qn 0x%x, opcode 0x%x, syndrome 0x%x, vendor syndrome 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 125, i32 26 }
@___asan_gen_.34 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 447, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 613, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 271, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 200, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 28, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4963, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4975, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4976, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4977, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4978, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4979, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4980, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4983, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 4984, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 335, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/mlx5/cq.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 199, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 723, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 326, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.netdev_reg_state], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_xdp_max_mtu(ptr noundef %params, ptr noundef %xsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @mlx5e_get_linear_rq_headroom(ptr noundef %params, ptr noundef %xsk) #12
  %conv = zext i16 %call to i32
  %hard_mtu = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %0 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hard_mtu, align 4
  %2 = add i32 %1, %conv
  %sub2 = sub i32 3840, %2
  ret i32 %sub2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5e_get_linear_rq_headroom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_xdp_handle(ptr noundef %rq, ptr noundef %di, ptr nocapture noundef writeonly %len, ptr noundef %xdp) local_unnamed_addr #0 align 64 {
entry:
  %xdptxd.i = alloca %struct.mlx5e_xmit_data, align 4
  %xdpi.i = alloca %struct.mlx5e_xdp_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog, align 8
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @mlx5e_xdp_handle.__warned, align 1
  br i1 %.b68, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5e_xdp_handle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  tail call void @__cant_migrate(ptr noundef nonnull @.str.3, i32 noundef 613) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@mlx5e_xdp_handle, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !72

if.then.i.i:                                      ; preds = %if.end11
  %call3.i.i = tail call i64 @sched_clock() #12
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %3) #12
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats9.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !73
  %and.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %20 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  %29 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i7.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i9.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !76
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  %48 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i12.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #12
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #12
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %13, align 8
  %inc.i.i.i = add i64 %57, 1
  store i64 %inc.i.i.i, ptr %13, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %58 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %59
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %55) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !81
  %and.i.i.i3.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !82

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #12, !srcloc !83
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %64) #12
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@mlx5e_xdp_handle, %l_yes.i.i)) #12
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !72

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %65 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rxq.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb13_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb13_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 15
  %71 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %72, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb13_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb13_crit_edge:     ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #12
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %73 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb13_crit_edge
    i32 4, label %sw.bb20
    i32 0, label %bpf_prog_run_xdp.exit.xdp_abort_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb40_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb40_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

bpf_prog_run_xdp.exit.xdp_abort_crit_edge:        ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xdp_abort

bpf_prog_run_xdp.exit.sw.bb13_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %74 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_end, align 4
  %76 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %77 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %78 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.ptr.sub, ptr %len, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %bpf_prog_run_xdp.exit.sw.bb13_crit_edge, %netif_is_bond_slave.exit.i.sw.bb13_crit_edge, %land.lhs.true.i.sw.bb13_crit_edge
  %xdpsq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 22
  %79 = ptrtoint ptr %xdpsq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xdpsq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xdptxd.i) #12
  %81 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd.i, i32 0, i32 1
  %82 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xdpi.i) #12
  %83 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi.i, i32 0, i32 1
  %84 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi.i, i32 0, i32 1, i32 0, i32 1
  %rxq.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %85 = call ptr @memset(ptr %xdpi.i, i32 255, i32 16)
  %86 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rxq.i.i, align 4
  %mem.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp.i.i = icmp eq i32 %89, 3
  br i1 %cmp.i.i, label %if.then.i.i71, label %if.end.i.i

if.then.i.i71:                                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #12
  br label %xdp_convert_buff_to_frame.exit.i

if.end.i.i:                                       ; preds = %sw.bb13
  %data_hard_start.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %90 = ptrtoint ptr %data_hard_start.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data_hard_start.i.i, align 4
  %92 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %data_meta.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %94 = ptrtoint ptr %data_meta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data_meta.i.i.i, align 4
  %sub.ptr.rhs.cast3.i.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub4.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast3.i.i.i
  %96 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i.i, i32 0) #12
  %sub.i.i.i = sub i32 %sub.ptr.sub.i.i.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %sub.i.i.i, 24
  br i1 %cmp5.i.i.i, label %if.end.i.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge, label %if.end.i.i.i, !prof !82

if.end.i.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5e_xmit_xdp_buff.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data_end.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %97 = ptrtoint ptr %data_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data_end.i.i.i, align 4
  %frame_sz.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %99 = ptrtoint ptr %frame_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %frame_sz.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 %100
  %add.ptr8.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 -256
  %cmp9.i.i.i = icmp ugt ptr %98, %add.ptr8.i.i.i
  br i1 %cmp9.i.i.i, label %if.then16.i.i.i, label %if.end5.i.i, !prof !82

if.then16.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xdp_warn(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #12
  br label %mlx5e_xmit_xdp_buff.exit.thread

if.end5.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %93, ptr %91, align 4
  %102 = ptrtoint ptr %data_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data_end.i.i.i, align 4
  %104 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast23.i.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.sub24.i.i.i = sub i32 %sub.ptr.lhs.cast22.i.i.i, %sub.ptr.rhs.cast23.i.i.i
  %conv.i.i.i72 = trunc i32 %sub.ptr.sub24.i.i.i to i16
  %len.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %91, i32 0, i32 1
  %106 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i.i72, ptr %len.i.i.i, align 4
  %107 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv26.i.i.i = add i16 %107, -24
  %headroom27.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %91, i32 0, i32 2
  %108 = ptrtoint ptr %headroom27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv26.i.i.i, ptr %headroom27.i.i.i, align 2
  %metasize28.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %91, i32 0, i32 3
  %109 = ptrtoint ptr %metasize28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load.i.i.i = load i32, ptr %metasize28.i.i.i, align 4
  %bf.shl.i.i.i = shl i32 %96, 24
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, 16777215
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, %bf.shl.i.i.i
  store i32 %bf.set.i.i.i, ptr %metasize28.i.i.i, align 4
  %110 = ptrtoint ptr %frame_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %frame_sz.i.i.i, align 4
  %bf.value32.i.i.i = and i32 %111, 16777215
  %bf.set34.i.i.i = or i32 %bf.value32.i.i.i, %bf.shl.i.i.i
  store i32 %bf.set34.i.i.i, ptr %metasize28.i.i.i, align 4
  %mem6.i.i = getelementptr inbounds %struct.xdp_frame, ptr %91, i32 0, i32 4
  %112 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rxq.i.i, align 4
  %mem8.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %mem8.i.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %115 = load i64, ptr %mem8.i.i, align 4
  %116 = ptrtoint ptr %mem6.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %mem6.i.i, align 4
  br label %xdp_convert_buff_to_frame.exit.i

xdp_convert_buff_to_frame.exit.i:                 ; preds = %if.end5.i.i, %if.then.i.i71
  %retval.0.i.i73 = phi ptr [ %call.i.i, %if.then.i.i71 ], [ %91, %if.end5.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i73, null
  br i1 %tobool.not.i, label %xdp_convert_buff_to_frame.exit.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge, label %if.end.i, !prof !82

xdp_convert_buff_to_frame.exit.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge: ; preds = %xdp_convert_buff_to_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5e_xmit_xdp_buff.exit.thread

if.end.i:                                         ; preds = %xdp_convert_buff_to_frame.exit.i
  %117 = ptrtoint ptr %retval.0.i.i73 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %retval.0.i.i73, align 4
  %119 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %81, align 4
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i.i73, i32 0, i32 1
  %120 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %121 to i32
  %122 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv.i, ptr %82, align 4
  %123 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rxq.i.i, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp.i74 = icmp eq i32 %126, 3
  br i1 %cmp.i74, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %127 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %128, 1
  store i32 %or.i.i, ptr %flags.i, align 4
  %129 = ptrtoint ptr %xdpi.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %xdpi.i, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %80, i32 0, i32 17
  %130 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i, align 8
  %call.i48.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %118) #12
  br i1 %call.i48.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then7.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i49.i, !prof !78

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i

if.then.i49.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %131) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i75 = icmp eq ptr %133, null
  br i1 %tobool.not.i.i.i75, label %if.end.i.i50.i, label %if.then.i49.i.dev_name.exit.i.i_crit_edge

if.then.i49.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i50.i:                                   ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %131, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i50.i, %if.then.i49.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %135, %if.end.i.i50.i ], [ %133, %if.then.i49.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %136 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %137, i32 noundef -1) #12
  br label %if.then14.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then7.i
  tail call void @debug_dma_map_single(ptr noundef %131, ptr noundef %118, i32 noundef %conv.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %138 = load ptr, ptr @mem_map, align 4
  %139 = ptrtoint ptr %118 to i32
  %sub.i.i76 = add i32 %139, 1073741824
  %shr.i.i = lshr i32 %sub.i.i76, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %138, i32 %shr.i.i
  %and.i.i77 = and i32 %139, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %131, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i77, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #12
  %140 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %141, i32 noundef %call41.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i52.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i52.i, label %dma_map_single_attrs.exit.i.if.then14.i_crit_edge, label %if.end15.i

dma_map_single_attrs.exit.i.if.then14.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

if.then14.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then14.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @xdp_return_frame(ptr noundef nonnull %retval.0.i.i73) #12
  br label %mlx5e_xmit_xdp_buff.exit.thread

if.end15.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %xdptxd.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call41.i.i, ptr %xdptxd.i, align 4
  %143 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %retval.0.i.i73, ptr %83, align 4
  %144 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call41.i.i, ptr %84, align 4
  br label %mlx5e_xmit_xdp_buff.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %xdpi.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %xdpi.i, align 4
  %146 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %di, align 4
  %148 = ptrtoint ptr %retval.0.i.i73 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %retval.0.i.i73, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %149 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %retval.0.i.i73 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %147
  %pdev21.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %80, i32 0, i32 17
  %150 = ptrtoint ptr %pdev21.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev21.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %151, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 1) #12
  %152 = ptrtoint ptr %xdptxd.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add.i, ptr %xdptxd.i, align 4
  %153 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %rq, ptr %83, align 4
  %154 = ptrtoint ptr %di to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %di, align 4
  %156 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %84, align 4
  br label %mlx5e_xmit_xdp_buff.exit

mlx5e_xmit_xdp_buff.exit.thread:                  ; preds = %if.then14.i, %xdp_convert_buff_to_frame.exit.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge, %if.then16.i.i.i, %if.end.i.i.mlx5e_xmit_xdp_buff.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xdptxd.i) #12
  br label %xdp_abort

mlx5e_xmit_xdp_buff.exit:                         ; preds = %if.else.i, %if.end15.i
  %xmit_xdp_frame.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %80, i32 0, i32 13
  %157 = ptrtoint ptr %xmit_xdp_frame.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %xmit_xdp_frame.i, align 8
  %call27.i = call zeroext i1 %158(ptr noundef %80, ptr noundef nonnull %xdptxd.i, ptr noundef nonnull %xdpi.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xdptxd.i) #12
  br i1 %call27.i, label %if.end19, label %mlx5e_xmit_xdp_buff.exit.xdp_abort_crit_edge, !prof !78

mlx5e_xmit_xdp_buff.exit.xdp_abort_crit_edge:     ; preds = %mlx5e_xmit_xdp_buff.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xdp_abort

if.end19:                                         ; preds = %mlx5e_xmit_xdp_buff.exit
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %159 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags, align 4
  %or.i = or i32 %160, 1
  store i32 %or.i, ptr %flags, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %161 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %netdev, align 8
  %call21 = tail call i32 @xdp_do_redirect(ptr noundef %162, ptr noundef %xdp, ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end30, label %sw.bb20.xdp_abort_crit_edge, !prof !78

sw.bb20.xdp_abort_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %xdp_abort

if.end30:                                         ; preds = %sw.bb20
  %flags31 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %163 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flags31, align 4
  %or.i70 = or i32 %164, 3
  store i32 %or.i70, ptr %flags31, align 4
  %rxq = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %165 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rxq, align 4
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %168)
  %cmp.not = icmp eq i32 %168, 3
  br i1 %cmp.not, label %if.end30.if.end36_crit_edge, label %if.then35

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5e_page_dma_unmap(ptr noundef %rq, ptr noundef %di) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %169 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %stats, align 4
  %xdp_redirect = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %170, i32 0, i32 19
  %171 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %xdp_redirect, align 8
  %inc = add i64 %172, 1
  store i64 %inc, ptr %xdp_redirect, align 8
  br label %cleanup

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #14
  %netdev37 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %173 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %netdev37, align 8
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %174, ptr noundef nonnull %1, i32 noundef %act.0.i) #12
  br label %xdp_abort

xdp_abort:                                        ; preds = %sw.default, %sw.bb20.xdp_abort_crit_edge, %mlx5e_xmit_xdp_buff.exit.xdp_abort_crit_edge, %mlx5e_xmit_xdp_buff.exit.thread, %bpf_prog_run_xdp.exit.xdp_abort_crit_edge
  %act.0.i79 = phi i32 [ %act.0.i, %sw.default ], [ %act.0.i, %bpf_prog_run_xdp.exit.xdp_abort_crit_edge ], [ 4, %sw.bb20.xdp_abort_crit_edge ], [ 3, %mlx5e_xmit_xdp_buff.exit.xdp_abort_crit_edge ], [ 3, %mlx5e_xmit_xdp_buff.exit.thread ]
  %netdev39 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %175 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %netdev39, align 8
  call fastcc void @trace_xdp_exception(ptr noundef %176, ptr noundef nonnull %1, i32 noundef %act.0.i79)
  br label %sw.bb40

sw.bb40:                                          ; preds = %xdp_abort, %bpf_prog_run_xdp.exit.sw.bb40_crit_edge
  %stats41 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %177 = ptrtoint ptr %stats41 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %stats41, align 4
  %xdp_drop = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %178, i32 0, i32 18
  %179 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %xdp_drop, align 8
  %inc42 = add i64 %180, 1
  store i64 %inc42, ptr %xdp_drop, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb40, %if.end36, %if.end19, %sw.bb, %do.end7.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.bb40 ], [ true, %if.end36 ], [ true, %if.end19 ], [ false, %sw.bb ], [ false, %do.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_page_dma_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !72

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !84
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 51, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #12
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_xdp_mpwqe_complete(ptr nocapture noundef %sq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mpwqe = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6
  %0 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpwqe, align 4
  %ds_count2 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %ds_count2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ds_count2, align 4
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pc, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i, align 4
  %8 = trunc i32 %7 to i16
  %conv1.i = and i16 %5, %8
  %db = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14
  %9 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %db, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %10, i32 %idxprom
  %conv4 = zext i16 %5 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, 41
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %1, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 16
  %12 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sqn, align 4
  %shl5 = shl i32 %13, 8
  %conv6 = zext i8 %3 to i32
  %or7 = or i32 %shl5, %conv6
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or7, ptr %qpn_ds, align 4
  %sub = add nuw nsw i32 %conv6, 3
  %div32 = lshr i32 %sub, 2
  %conv9 = trunc i32 %div32 to i8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %arrayidx, align 1
  %pkt_count = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %pkt_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pkt_count, align 1
  %num_pkts = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %10, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %num_pkts to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %num_pkts, align 1
  %19 = load i16, ptr %pc, align 4
  %20 = trunc i32 %div32 to i16
  %conv15 = add i16 %19, %20
  store i16 %conv15, ptr %pc, align 4
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 5
  %21 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %doorbell_cseg, align 8
  store ptr null, ptr %mpwqe, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_poll_xdpsq_cq(ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  %bq = alloca %struct.xdp_frame_bulk, align 4
  %xsk_frames = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bq) #12
  %0 = call ptr @memset(ptr %bq, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xsk_frames) #12
  %1 = ptrtoint ptr %xsk_frames to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %xsk_frames, align 4
  %xa.i = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 1
  %2 = ptrtoint ptr %xa.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa.i, align 4
  %add.ptr = getelementptr i8, ptr %cq, i32 -256
  %state = getelementptr i8, ptr %cq, i32 340
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !82

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cc.i.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %5 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cc.i.i, align 4
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 1
  %7 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %8, %6
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 3
  %9 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %add.i.i.i = add i32 %and.i.i.i, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 6
  %11 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %12 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %13 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %14, i32 %shr.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 2
  %17 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %18 to i32
  %and.i.i15.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 5
  %19 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %20 to i32
  %shl.i.i.i = shl i32 %and.i.i15.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 7
  %conv2.i.i = zext i1 %cmp.i.i to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 %conv2.i.i
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %21 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %op_own.i, align 1
  %23 = and i8 %22, 1
  %log_sz.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 4
  %24 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i = zext i8 %25 to i32
  %shr.i.i18.i = lshr i32 %6, %conv.i.i17.i
  %conv5.i = and i32 %shr.i.i18.i, 1
  %conv6.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %conv5.i, %conv6.i
  br i1 %cmp.not.i, label %mlx5_cqwq_get_cqe.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_cqwq_get_cqe.exit:                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge, label %if.end7

mlx5_cqwq_get_cqe.exit.cleanup_crit_edge:         ; preds = %mlx5_cqwq_get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %mlx5_cqwq_get_cqe.exit
  %cc = getelementptr i8, ptr %cq, i32 -252
  %26 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cc, align 4
  %sz_m1.i = getelementptr i8, ptr %cq, i32 264
  %db = getelementptr i8, ptr %cq, i32 300
  %wq13.le = getelementptr i8, ptr %cq, i32 260
  %channel = getelementptr i8, ptr %cq, i32 384
  %sqn = getelementptr i8, ptr %cq, i32 324
  br label %do.body

do.body:                                          ; preds = %mlx5_cqwq_get_cqe.exit176.do.body_crit_edge, %if.end7
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc, %mlx5_cqwq_get_cqe.exit176.do.body_crit_edge ]
  %sqcc.0 = phi i16 [ %27, %if.end7 ], [ %add, %mlx5_cqwq_get_cqe.exit176.do.body_crit_edge ]
  %cqe.0 = phi ptr [ %add.ptr.i.i, %if.end7 ], [ %add.ptr.i.i166, %mlx5_cqwq_get_cqe.exit176.do.body_crit_edge ]
  %28 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cc.i.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %cc.i.i, align 4
  %wqe_counter9 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 21
  %30 = ptrtoint ptr %wqe_counter9 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %wqe_counter9, align 4
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.body
  %sqcc.1 = phi i16 [ %sqcc.0, %do.body ], [ %add, %do.body10.do.body10_crit_edge ]
  %cmp.not = icmp eq i16 %sqcc.1, %31
  %32 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sz_m1.i, align 4
  %34 = trunc i32 %33 to i16
  %conv1.i = and i16 %sqcc.1, %34
  %35 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %36, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %38 to i16
  %add = add i16 %sqcc.1, %conv15
  call fastcc void @mlx5e_free_xdpsq_desc(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %xsk_frames, i1 noundef zeroext true, ptr noundef nonnull %bq)
  br i1 %cmp.not, label %do.end, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

do.end:                                           ; preds = %do.body10
  %op_own.i144 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 23
  %39 = ptrtoint ptr %op_own.i144 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %op_own.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %40)
  %cmp23.not = icmp ult i8 %40, 16
  br i1 %cmp23.not, label %do.end.if.end86_crit_edge, label %land.end, !prof !78

do.end.if.end86_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.end:                                         ; preds = %do.end
  %.b143 = load i1, ptr @mlx5e_poll_xdpsq_cq.__already_done, align 1
  br i1 %.b143, label %land.end.if.end75_crit_edge, label %if.then43, !prof !78

land.end.if.end75_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then43:                                        ; preds = %land.end
  store i1 true, ptr @mlx5e_poll_xdpsq_cq.__already_done, align 1
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel, align 128
  %netdev = getelementptr inbounds %struct.mlx5e_channel, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.then43.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then43.netdev_name.exit_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call ptr @strchr(ptr noundef %44, i32 noundef 37) #12
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %44, ptr @.str.8
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then43.netdev_name.exit_crit_edge
  %retval.0.i145 = phi ptr [ @.str.8, %if.then43.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call59 = call fastcc ptr @netdev_reg_state(ptr noundef %44)
  %47 = ptrtoint ptr %op_own.i144 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %op_own.i144, align 1
  %49 = lshr i8 %48, 4
  %conv61 = zext i8 %49 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i145, ptr noundef nonnull %call59, i32 noundef %conv61) #12
  br label %if.end75

if.end75:                                         ; preds = %netdev_name.exit, %land.end.if.end75_crit_edge
  %50 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sqn, align 4
  call fastcc void @mlx5e_dump_error_cqe(ptr noundef %cq, i32 noundef %51, ptr noundef %cqe.0)
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx, align 1
  call void @mlx5_wq_cyc_wqe_dump(ptr noundef %wq13.le, i16 noundef zeroext %conv1.i, i8 noundef zeroext %53) #12
  br label %if.end86

if.end86:                                         ; preds = %if.end75, %do.end.if.end86_crit_edge
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 127
  br i1 %exitcond.not, label %if.end86.do.end95_crit_edge, label %land.rhs90

if.end86.do.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

land.rhs90:                                       ; preds = %if.end86
  %54 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cc.i.i, align 4
  %56 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i149 = and i32 %57, %55
  %58 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i151 = zext i16 %59 to i32
  %add.i.i.i152 = add i32 %and.i.i.i149, %conv.i.i.i151
  %60 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i154 = zext i8 %61 to i32
  %shr.i.i.i155 = lshr i32 %add.i.i.i152, %conv1.i.i.i154
  %62 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i156 = getelementptr %struct.mlx5_buf_list, ptr %63, i32 %shr.i.i.i155
  %64 = ptrtoint ptr %arrayidx.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i156, align 4
  %66 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i158 = zext i16 %67 to i32
  %and.i.i15.i159 = and i32 %add.i.i.i152, %conv2.i.i.i158
  %68 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i161 = zext i8 %69 to i32
  %shl.i.i.i162 = shl i32 %and.i.i15.i159, %conv3.i.i.i161
  %add.ptr.i.i.i163 = getelementptr i8, ptr %65, i32 %shl.i.i.i162
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %69)
  %cmp.i.i164 = icmp eq i8 %69, 7
  %conv2.i.i165 = zext i1 %cmp.i.i164 to i32
  %add.ptr.i.i166 = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i163, i32 %conv2.i.i165
  %op_own.i167 = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i166, i32 0, i32 23
  %70 = ptrtoint ptr %op_own.i167 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %op_own.i167, align 1
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i169 = zext i8 %74 to i32
  %shr.i.i18.i170 = lshr i32 %55, %conv.i.i17.i169
  %conv5.i171 = and i32 %shr.i.i18.i170, 1
  %conv6.i172 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i171, i32 %conv6.i172)
  %cmp.not.i173 = icmp eq i32 %conv5.i171, %conv6.i172
  br i1 %cmp.not.i173, label %mlx5_cqwq_get_cqe.exit176, label %land.rhs90.do.end95_crit_edge

land.rhs90.do.end95_crit_edge:                    ; preds = %land.rhs90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

mlx5_cqwq_get_cqe.exit176:                        ; preds = %land.rhs90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %tobool93.not = icmp eq ptr %add.ptr.i.i166, null
  br i1 %tobool93.not, label %mlx5_cqwq_get_cqe.exit176.do.end95_crit_edge, label %mlx5_cqwq_get_cqe.exit176.do.body_crit_edge

mlx5_cqwq_get_cqe.exit176.do.body_crit_edge:      ; preds = %mlx5_cqwq_get_cqe.exit176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

mlx5_cqwq_get_cqe.exit176.do.end95_crit_edge:     ; preds = %mlx5_cqwq_get_cqe.exit176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

do.end95:                                         ; preds = %mlx5_cqwq_get_cqe.exit176.do.end95_crit_edge, %land.rhs90.do.end95_crit_edge, %if.end86.do.end95_crit_edge
  %inc.lcssa = phi i32 [ %inc, %land.rhs90.do.end95_crit_edge ], [ 128, %if.end86.do.end95_crit_edge ], [ %inc, %mlx5_cqwq_get_cqe.exit176.do.end95_crit_edge ]
  call void @xdp_flush_frame_bulk(ptr noundef nonnull %bq) #12
  %75 = ptrtoint ptr %xsk_frames to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xsk_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool96.not = icmp eq i32 %76, 0
  br i1 %tobool96.not, label %do.end95.if.end98_crit_edge, label %if.then97

do.end95.if.end98_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then97:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  %xsk_pool = getelementptr i8, ptr %cq, i32 256
  %77 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xsk_pool, align 128
  call void @xsk_tx_completed(ptr noundef %78, i32 noundef %76) #12
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %do.end95.if.end98_crit_edge
  %conv99 = sext i32 %inc.lcssa to i64
  %stats = getelementptr i8, ptr %cq, i32 288
  %79 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stats, align 32
  %cqes = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %cqes to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %cqes, align 128
  %add100 = add i64 %82, %conv99
  store i64 %add100, ptr %cqes, align 128
  %83 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cc.i.i, align 4
  %and.i = and i32 %84, 16777215
  %db.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 1
  %85 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %db.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and.i, ptr %86, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %cc to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add, ptr %cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc.lcssa)
  %cmp106 = icmp eq i32 %inc.lcssa, 128
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp106, %if.end98 ], [ false, %entry.cleanup_crit_edge ], [ false, %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xsk_frames) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bq) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_free_xdpsq_desc(ptr nocapture noundef readonly %sq, ptr nocapture noundef readonly %wi, ptr nocapture noundef %xsk_frames, i1 noundef zeroext %recycle, ptr noundef %bq) unnamed_addr #0 align 64 {
entry:
  %xdpi = alloca %struct.mlx5e_xdp_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xdpi_fifo1 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1
  %num_pkts = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, ptr %wi, i32 0, i32 1
  %0 = ptrtoint ptr %num_pkts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_pkts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp48.not = icmp eq i8 %1, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi, i32 0, i32 1, i32 0, i32 1
  %cc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 1
  %mask.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 3
  %pdev = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i16 [ 0, %for.body.lr.ph ], [ %inc42, %sw.epilog.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xdpi) #12
  %4 = call ptr @memset(ptr %xdpi, i32 255, i32 16)
  %5 = ptrtoint ptr %xdpi_fifo1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xdpi_fifo1, align 4, !noalias !90
  %7 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cc.i, align 4, !noalias !90
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4, !noalias !90
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %8, align 4, !noalias !90
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4, !noalias !90
  %and.i = and i32 %12, %10
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_info, ptr %6, i32 %and.i
  %13 = call ptr @memcpy(ptr %xdpi, ptr %arrayidx.i, i32 16)
  %14 = ptrtoint ptr %xdpi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xdpi, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %land.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len, align 4
  %conv4 = zext i16 %24 to i32
  call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %20, i32 noundef %conv4, i32 noundef 1, i32 noundef 0) #12
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  call void @xdp_return_frame_bulk(ptr noundef %26, ptr noundef %bq) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  call void @mlx5e_page_release_dynamic(ptr noundef %28, ptr noundef %3, i1 noundef zeroext %recycle) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %xsk_frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xsk_frames, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %xsk_frames, align 4
  br label %sw.epilog

land.end:                                         ; preds = %for.body
  %.b47 = load i1, ptr @mlx5e_free_xdpsq_desc.__already_done, align 1
  br i1 %.b47, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !78

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5e_free_xdpsq_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %sw.bb7, %sw.bb6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi) #12
  %inc42 = add nuw nsw i16 %i.049, 1
  %31 = ptrtoint ptr %num_pkts to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_pkts, align 1
  %33 = zext i8 %32 to i16
  %cmp = icmp ult i16 %inc42, %33
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !78

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %dev, i32 noundef %bf.cast21) #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.17, %if.then ], [ @.str.17, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_dump_error_cqe(ptr nocapture noundef readonly %cq, i32 noundef %qn, ptr noundef %err_cqe) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cc = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc, align 4
  %sub = add i32 %1, -1
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %and.i = and i32 %3, %sub
  %netdev = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %mcq = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3
  %6 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcq, align 32
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %err_cqe, i32 0, i32 23
  %8 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %op_own.i, align 1
  %10 = lshr i8 %9, 4
  %conv = zext i8 %10 to i32
  %syndrome = getelementptr inbounds %struct.mlx5_err_cqe, ptr %err_cqe, i32 0, i32 4
  %11 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %syndrome, align 1
  %conv3 = zext i8 %12 to i32
  %vendor_err_synd = getelementptr inbounds %struct.mlx5_err_cqe, ptr %err_cqe, i32 0, i32 3
  %13 = ptrtoint ptr %vendor_err_synd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vendor_err_synd, align 2
  %conv4 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %7, i32 noundef %and.i, i32 noundef %qn, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #15
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %err_cqe, i32 noundef 64, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_cyc_wqe_dump(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_flush_frame_bulk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_free_xdpsq_descs(ptr nocapture noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %bq = alloca %struct.xdp_frame_bulk, align 4
  %xsk_frames = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bq) #12
  %0 = call ptr @memset(ptr %bq, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xsk_frames) #12
  %1 = ptrtoint ptr %xsk_frames to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %xsk_frames, align 4
  %xa.i = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq, i32 0, i32 1
  %2 = ptrtoint ptr %xa.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 1
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %7 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cc, align 4
  %9 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pc, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not25 = icmp eq i16 %8, %10
  br i1 %cmp.not25, label %rcu_read_lock.exit.while.end_crit_edge, label %while.body.lr.ph

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %rcu_read_lock.exit
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %db = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i16 [ %8, %while.body.lr.ph ], [ %21, %while.body.while.body_crit_edge ]
  %12 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sz_m1.i, align 4
  %14 = trunc i32 %13 to i16
  %conv1.i = and i16 %11, %14
  %15 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %db, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %18 to i16
  %add = add i16 %11, %conv4
  %19 = ptrtoint ptr %cc to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %add, ptr %cc, align 4
  call fastcc void @mlx5e_free_xdpsq_desc(ptr noundef %sq, ptr noundef %arrayidx, ptr noundef nonnull %xsk_frames, i1 noundef zeroext false, ptr noundef nonnull %bq)
  %20 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cc, align 4
  %22 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pc, align 4
  %cmp.not = icmp eq i16 %21, %23
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  call void @xdp_flush_frame_bulk(ptr noundef nonnull %bq) #12
  %call.i16 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i16, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %while.end
  %call1.i17 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  %24 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i23 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %28 = ptrtoint ptr %xsk_frames to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xsk_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %rcu_read_unlock.exit.if.end_crit_edge, label %if.then

rcu_read_unlock.exit.if.end_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %xsk_pool = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 9
  %30 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xsk_pool, align 128
  call void @xsk_tx_completed(ptr noundef %31, i32 noundef %29) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_unlock.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xsk_frames) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bq) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_xdp_xmit(ptr noundef %dev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %xdptxd = alloca %struct.mlx5e_xmit_data, align 4
  %xdpi = alloca %struct.mlx5e_xdp_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup71_crit_edge, label %if.end, !prof !82

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool4.not = icmp ult i32 %flags, 2
  br i1 %tobool4.not, label %if.end12, label %if.end.cleanup71_crit_edge, !prof !78

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.end12:                                         ; preds = %if.end
  %3 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %num = getelementptr i8, ptr %dev, i32 6024
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp ult i32 %6, %8
  br i1 %cmp.not, label %if.end21, label %if.end12.cleanup71_crit_edge, !prof !78

if.end12.cleanup71_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.end21:                                         ; preds = %if.end12
  %channels = getelementptr i8, ptr %dev, i32 6016
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels, align 128
  %arrayidx = getelementptr ptr, ptr %10, i32 %6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %xdpsq = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp23108 = icmp sgt i32 %n, 0
  br i1 %cmp23108, label %for.body.lr.ph, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %13 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 2
  %15 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi, i32 0, i32 1
  %16 = getelementptr inbounds %struct.mlx5e_xdp_info, ptr %xdpi, i32 0, i32 1, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 17
  %xmit_xdp_frame = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc63, %for.inc.for.body_crit_edge ]
  %arrayidx24 = getelementptr ptr, ptr %frames, i32 %i.0110
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xdptxd) #12
  %19 = ptrtoint ptr %xdptxd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %xdptxd, align 4, !annotation !95
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !95
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %14, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xdpi) #12
  %22 = call ptr @memset(ptr %xdpi, i32 255, i32 16)
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %13, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 4
  %conv = zext i16 %27 to i32
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %14, align 4
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !78

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %30) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %30, ptr noundef %24, i32 noundef %conv) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %24 to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i92 = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i93 = and i32 %36, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %30, ptr noundef %add.ptr.i92, i32 noundef %and.i93, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %37 = ptrtoint ptr %xdptxd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %xdptxd, align 4
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup.thread_crit_edge, label %if.end41

dma_map_single_attrs.exit.cleanup.thread_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end41:                                         ; preds = %dma_map_single_attrs.exit
  %40 = ptrtoint ptr %xdpi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %xdpi, align 4
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %18, ptr %15, align 4
  %42 = ptrtoint ptr %xdptxd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xdptxd, align 4
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %16, align 4
  %45 = ptrtoint ptr %xmit_xdp_frame to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xmit_xdp_frame, align 8
  %call45 = call zeroext i1 %46(ptr noundef %xdpsq, ptr noundef nonnull %xdptxd, ptr noundef nonnull %xdpi, i32 noundef 0) #12
  br i1 %call45, label %for.inc, label %if.then55, !prof !78

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %49 = ptrtoint ptr %xdptxd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xdptxd, align 4
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %14, align 4
  call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 1, i32 noundef 0) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then55, %dma_map_single_attrs.exit.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xdptxd) #12
  br label %for.end

for.inc:                                          ; preds = %if.end41
  %inc63 = add nuw nsw i32 %i.0110, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xdptxd) #12
  %exitcond.not = icmp eq i32 %inc63, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %if.end21.for.end_crit_edge
  %nxmit.0104 = phi i32 [ %i.0110, %cleanup.thread ], [ 0, %if.end21.for.end_crit_edge ], [ %n, %for.inc.for.end_crit_edge ]
  %and64 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %for.end.cleanup71_crit_edge, label %if.then66

for.end.cleanup71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.then66:                                        ; preds = %for.end
  %mpwqe = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 6
  %53 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mpwqe, align 4
  %tobool67.not = icmp eq ptr %54, null
  br i1 %tobool67.not, label %if.then66.if.end69_crit_edge, label %if.then68

if.then66.if.end69_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then68:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mpwqe, align 4
  %ds_count2.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 6, i32 2
  %57 = ptrtoint ptr %ds_count2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ds_count2.i, align 4
  %pc.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 4
  %59 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pc.i, align 4
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 10, i32 0, i32 1
  %61 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sz_m1.i.i, align 4
  %63 = trunc i32 %62 to i16
  %conv1.i.i = and i16 %60, %63
  %db.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 14
  %64 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %db.i, align 4
  %idxprom.i = zext i16 %conv1.i.i to i32
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %65, i32 %idxprom.i
  %conv4.i = zext i16 %60 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, 41
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i, ptr %56, align 4
  %sqn.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 16
  %67 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sqn.i, align 4
  %shl5.i = shl i32 %68, 8
  %conv6.i = zext i8 %58 to i32
  %or7.i = or i32 %shl5.i, %conv6.i
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %56, i32 0, i32 1
  %69 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or7.i, ptr %qpn_ds.i, align 4
  %sub.i94 = add nuw nsw i32 %conv6.i, 3
  %div32.i = lshr i32 %sub.i94, 2
  %conv9.i = trunc i32 %div32.i to i8
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %pkt_count.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 6, i32 3
  %71 = ptrtoint ptr %pkt_count.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pkt_count.i, align 1
  %num_pkts.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %65, i32 %idxprom.i, i32 1
  %73 = ptrtoint ptr %num_pkts.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %num_pkts.i, align 1
  %74 = load i16, ptr %pc.i, align 4
  %75 = trunc i32 %div32.i to i16
  %conv15.i = add i16 %74, %75
  store i16 %conv15.i, ptr %pc.i, align 4
  %doorbell_cseg.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 5
  %76 = ptrtoint ptr %doorbell_cseg.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %56, ptr %doorbell_cseg.i, align 8
  store ptr null, ptr %mpwqe, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then66.if.end69_crit_edge
  %doorbell_cseg.i95 = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 5
  %77 = ptrtoint ptr %doorbell_cseg.i95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %doorbell_cseg.i95, align 8
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %if.end69.cleanup71_crit_edge, label %if.then.i97

if.end69.cleanup71_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.then.i97:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %pc.i96 = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 4
  %79 = ptrtoint ptr %pc.i96 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pc.i96, align 4
  %uar_map.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 15
  %81 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %uar_map.i, align 64
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %78, i32 0, i32 4
  %83 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fm_ce_se.i.i, align 1
  %85 = or i8 %84, 8
  store i8 %85, ptr %fm_ce_se.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %conv2.i.i = zext i16 %80 to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 14, i32 10, i32 1
  %86 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %db.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv2.i.i, ptr %87, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %78, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %90) #12, !srcloc !98
  %arrayidx1.i.i.i = getelementptr i32, ptr %78, i32 1
  %91 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %92) #12, !srcloc !98
  %93 = ptrtoint ptr %doorbell_cseg.i95 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %doorbell_cseg.i95, align 8
  br label %cleanup71

cleanup71:                                        ; preds = %if.then.i97, %if.end69.cleanup71_crit_edge, %for.end.cleanup71_crit_edge, %if.end12.cleanup71_crit_edge, %if.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup71_crit_edge ], [ -22, %if.end.cleanup71_crit_edge ], [ -6, %if.end12.cleanup71_crit_edge ], [ %nxmit.0104, %for.end.cleanup71_crit_edge ], [ %nxmit.0104, %if.end69.cleanup71_crit_edge ], [ %nxmit.0104, %if.then.i97 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_xmit_xdp_doorbell(ptr nocapture noundef %sq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 5
  %0 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %doorbell_cseg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pc, align 4
  %uar_map = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 15
  %4 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uar_map, align 64
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fm_ce_se.i, align 1
  %8 = or i8 %7, 8
  store i8 %8, ptr %fm_ce_se.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %conv2.i = zext i16 %3 to i32
  %db.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %db.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2.i, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %13) #12, !srcloc !98
  %arrayidx1.i.i = getelementptr i32, ptr %1, i32 1
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #12, !srcloc !98
  %16 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %doorbell_cseg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_xdp_rx_poll_complete(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xdpsq1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 22
  %0 = ptrtoint ptr %xdpsq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdpsq1, align 4
  %mpwqe = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpwqe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ds_count2.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %ds_count2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ds_count2.i, align 4
  %pc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pc.i, align 4
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 10, i32 0, i32 1
  %8 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sz_m1.i.i, align 4
  %10 = trunc i32 %9 to i16
  %conv1.i.i = and i16 %7, %10
  %db.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %db.i, align 4
  %idxprom.i = zext i16 %conv1.i.i to i32
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %12, i32 %idxprom.i
  %conv4.i = zext i16 %7 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, 41
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %3, align 4
  %sqn.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sqn.i, align 4
  %shl5.i = shl i32 %15, 8
  %conv6.i = zext i8 %5 to i32
  %or7.i = or i32 %shl5.i, %conv6.i
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or7.i, ptr %qpn_ds.i, align 4
  %sub.i = add nuw nsw i32 %conv6.i, 3
  %div32.i = lshr i32 %sub.i, 2
  %conv9.i = trunc i32 %div32.i to i8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %pkt_count.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %pkt_count.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pkt_count.i, align 1
  %num_pkts.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %12, i32 %idxprom.i, i32 1
  %20 = ptrtoint ptr %num_pkts.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %num_pkts.i, align 1
  %21 = load i16, ptr %pc.i, align 4
  %22 = trunc i32 %div32.i to i16
  %conv15.i = add i16 %21, %22
  store i16 %conv15.i, ptr %pc.i, align 4
  %doorbell_cseg.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %doorbell_cseg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %doorbell_cseg.i, align 8
  %24 = ptrtoint ptr %mpwqe to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mpwqe, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %doorbell_cseg.i11 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %doorbell_cseg.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %doorbell_cseg.i11, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.mlx5e_xmit_xdp_doorbell.exit_crit_edge, label %if.then.i

if.end.mlx5e_xmit_xdp_doorbell.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5e_xmit_xdp_doorbell.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pc.i12 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %pc.i12 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pc.i12, align 4
  %uar_map.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uar_map.i, align 64
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fm_ce_se.i.i, align 1
  %33 = or i8 %32, 8
  store i8 %33, ptr %fm_ce_se.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %conv2.i.i = zext i16 %28 to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %1, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv2.i.i, ptr %35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %38) #12, !srcloc !98
  %arrayidx1.i.i.i = getelementptr i32, ptr %26, i32 1
  %39 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %40) #12, !srcloc !98
  %41 = ptrtoint ptr %doorbell_cseg.i11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %doorbell_cseg.i11, align 8
  br label %mlx5e_xmit_xdp_doorbell.exit

mlx5e_xmit_xdp_doorbell.exit:                     ; preds = %if.then.i, %if.end.mlx5e_xmit_xdp_doorbell.exit_crit_edge
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not = icmp eq i32 %44, 0
  br i1 %tobool2.not, label %mlx5e_xmit_xdp_doorbell.exit.if.end6_crit_edge, label %if.then3

mlx5e_xmit_xdp_doorbell.exit.if.end6_crit_edge:   ; preds = %mlx5e_xmit_xdp_doorbell.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %mlx5e_xmit_xdp_doorbell.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xdp_do_flush() #12
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and.i = and i32 %46, -3
  store i32 %and.i, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %mlx5e_xmit_xdp_doorbell.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5e_set_xmit_fp(ptr nocapture noundef writeonly %sq, i1 noundef zeroext %is_mpw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %is_mpw, ptr @mlx5e_xmit_xdp_frame_check_mpwqe, ptr @mlx5e_xmit_xdp_frame_check
  %xmit_xdp_frame_check = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 12
  %0 = ptrtoint ptr %xmit_xdp_frame_check to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cond, ptr %xmit_xdp_frame_check, align 4
  %cond2 = select i1 %is_mpw, ptr @mlx5e_xmit_xdp_frame_mpwqe, ptr @mlx5e_xmit_xdp_frame
  %xmit_xdp_frame = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 13
  %1 = ptrtoint ptr %xmit_xdp_frame to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cond2, ptr %xmit_xdp_frame, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_xmit_xdp_frame_check_mpwqe(ptr nocapture noundef %sq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mpwqe = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6
  %0 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpwqe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge, !prof !82

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  %cc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 1
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cc, align 4
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pc, align 4
  %sub.i = sub i16 %3, %5
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i.i, align 4
  %8 = trunc i32 %7 to i16
  %conv1.i.i = and i16 %sub.i, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %conv1.i.i)
  %cmp.not.i = icmp ugt i16 %conv1.i.i, 30
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp8.i = icmp eq i16 %3, %5
  %spec.select.i = or i1 %cmp8.i, %cmp.not.i
  br i1 %spec.select.i, label %if.then.return_crit_edge, label %if.then13, !prof !78

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5e_xmit_xdp_doorbell(ptr noundef %sq)
  %stats = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 11
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats, align 32
  %full = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %full to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %full, align 32
  %inc = add i64 %12, 1
  store i64 %inc, ptr %full, align 32
  br label %return

return:                                           ; preds = %if.then13, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -16, %if.then13 ], [ 2, %if.then.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_xmit_xdp_frame_check(ptr nocapture noundef %sq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 1
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cc, align 4
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pc, align 4
  %sub.i = sub i16 %1, %3
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sz_m1.i.i, align 4
  %6 = trunc i32 %5 to i16
  %conv1.i.i = and i16 %sub.i, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1.i.i)
  %cmp.not.i = icmp ne i16 %conv1.i.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp8.i = icmp eq i16 %1, %3
  %spec.select.i = or i1 %cmp8.i, %cmp.not.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.then, !prof !78

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5e_xmit_xdp_doorbell(ptr noundef %sq)
  %stats = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 11
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats, align 32
  %full = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %full to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %full, align 32
  %inc = add i64 %10, 1
  store i64 %inc, ptr %full, align 32
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_xmit_xdp_frame_mpwqe(ptr noundef %sq, ptr nocapture noundef readonly %xdptxd, ptr nocapture noundef readonly %xdpi, i32 noundef %check_result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mpwqe = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6
  %stats1 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 11
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  %len = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %hw_mtu = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 21
  %4 = ptrtoint ptr %hw_mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end, !prof !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %err = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %err, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %err, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_result)
  %tobool3.not = icmp eq i32 %check_result, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mpwqe, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.if.end17_crit_edge, !prof !82

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then.i:                                        ; preds = %if.then4
  %cc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 1
  %10 = ptrtoint ptr %cc.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cc.i, align 4
  %pc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %12 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pc.i, align 4
  %sub.i.i = sub i16 %11, %13
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %14 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sz_m1.i.i.i, align 4
  %16 = trunc i32 %15 to i16
  %conv1.i.i.i = and i16 %sub.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %conv1.i.i.i)
  %cmp.not.i.i = icmp ugt i16 %conv1.i.i.i, 30
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp8.i.i = icmp eq i16 %11, %13
  %spec.select.i.i = or i1 %cmp8.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %if.then.i.if.then16_crit_edge, label %if.end5.thread62, !prof !78

if.then.i.if.then16_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end5.thread62:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5e_xmit_xdp_doorbell(ptr noundef %sq) #12
  %17 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats1, align 32
  %full.i = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %full.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %full.i, align 32
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %full.i, align 32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_result)
  %cmp6 = icmp slt i32 %check_result, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end14, !prof !82

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %check_result)
  %cmp15 = icmp eq i32 %check_result, 2
  br i1 %cmp15, label %if.end14.if.then16_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.then.i.if.then16_crit_edge
  %21 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats1, align 32
  %wq1.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10
  %pc.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %23 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pc.i.i, align 4
  %sz_m1.i.i.i41 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %sz_m1.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sz_m1.i.i.i41, align 4
  %27 = trunc i32 %26 to i16
  %conv1.i.i.i42 = and i16 %24, %27
  %conv.i.i.i = zext i16 %conv1.i.i.i42 to i32
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %29 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i.i.i
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 2
  %30 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv1.i.i.i.i = zext i16 %31 to i32
  %or.i.i.i.i = or i32 %add.i.i.i.i, %conv1.i.i.i.i
  %sub.i.i.i.i = sub nsw i32 %or.i.i.i.i, %conv.i.i.i.i
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %26) #12
  %33 = trunc i32 %32 to i16
  %34 = sub i16 1, %conv1.i.i.i42
  %conv2.i.i.i = add i16 %34, %33
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv2.i.i.i)
  %cmp.i.i = icmp ult i16 %conv2.i.i.i, 14
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then16.mlx5e_xdpsq_get_next_pi.exit.i_crit_edge, !prof !82

if.then16.mlx5e_xdpsq_get_next_pi.exit.i_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5e_xdpsq_get_next_pi.exit.i

if.then.i.i:                                      ; preds = %if.then16
  %conv.i.i = zext i16 %conv2.i.i.i to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14
  %35 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %36, i32 %conv.i.i.i
  %add.ptr.i.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %arrayidx.i.i, i32 %conv.i.i
  %cmp73.i.i = icmp ult ptr %arrayidx.i.i, %add.ptr.i.i
  br i1 %cmp73.i.i, label %for.body.lr.ph.i.i, label %if.then.i.i.for.end.i.i_crit_edge

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i
  %sqn.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 16
  %log_frag_strides.i.i.i26.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 6
  %log_stride.i.i.i33.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %wi.04.i.i = phi ptr [ %arrayidx.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %wi.04.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %wi.04.i.i, align 1
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.04.i.i, i32 1
  %38 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 1
  %39 = ptrtoint ptr %sqn.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sqn.i.i, align 4
  %41 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pc.i.i, align 2
  %43 = ptrtoint ptr %sz_m1.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sz_m1.i.i.i41, align 4
  %45 = trunc i32 %44 to i16
  %conv1.i.i21.i = and i16 %42, %45
  %conv.i.i22.i = zext i16 %conv1.i.i21.i to i32
  %46 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i24.i = zext i16 %47 to i32
  %add.i.i.i25.i = add nuw nsw i32 %conv.i.i22.i, %conv.i.i.i24.i
  %48 = ptrtoint ptr %log_frag_strides.i.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %log_frag_strides.i.i.i26.i, align 2
  %conv1.i.i.i27.i = zext i8 %49 to i32
  %shr.i.i.i28.i = lshr i32 %add.i.i.i25.i, %conv1.i.i.i27.i
  %50 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i29.i = getelementptr %struct.mlx5_buf_list, ptr %51, i32 %shr.i.i.i28.i
  %52 = ptrtoint ptr %arrayidx.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i.i29.i, align 4
  %54 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i31.i = zext i16 %55 to i32
  %and.i.i.i32.i = and i32 %add.i.i.i25.i, %conv2.i.i.i31.i
  %56 = ptrtoint ptr %log_stride.i.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %log_stride.i.i.i33.i, align 1
  %conv3.i.i.i34.i = zext i8 %57 to i32
  %shl.i.i.i35.i = shl i32 %and.i.i.i32.i, %conv3.i.i.i34.i
  %add.ptr.i.i.i36.i = getelementptr i8, ptr %53, i32 %shl.i.i.i35.i
  %58 = call ptr @memset(ptr %add.ptr.i.i.i36.i, i32 0, i32 16)
  %59 = load i16, ptr %pc.i.i, align 2
  %conv.i37.i = zext i16 %59 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i37.i, 8
  %60 = ptrtoint ptr %add.ptr.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl.i.i, ptr %add.ptr.i.i.i36.i, align 4
  %shl2.i.i = shl i32 %40, 8
  %or3.i.i = or i32 %shl2.i.i, 1
  %qpn_ds.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i36.i, i32 0, i32 1
  %61 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or3.i.i, ptr %qpn_ds.i.i, align 4
  %62 = load i16, ptr %pc.i.i, align 2
  %inc.i.i = add i16 %62, 1
  store i16 %inc.i.i, ptr %pc.i.i, align 2
  %incdec.ptr.i.i = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %wi.04.i.i, i32 1
  %cmp7.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp7.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %conv11.i.i = zext i16 %conv2.i.i.i to i64
  %63 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stats1, align 32
  %nops.i.i = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %nops.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %nops.i.i, align 8
  %add.i.i = add i64 %66, %conv11.i.i
  store i64 %add.i.i, ptr %nops.i.i, align 8
  %67 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %pc.i.i, align 4
  %69 = ptrtoint ptr %sz_m1.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sz_m1.i.i.i41, align 4
  %71 = trunc i32 %70 to i16
  %conv1.i2.i.i = and i16 %68, %71
  %.pre.i = zext i16 %conv1.i2.i.i to i32
  br label %mlx5e_xdpsq_get_next_pi.exit.i

mlx5e_xdpsq_get_next_pi.exit.i:                   ; preds = %for.end.i.i, %if.then16.mlx5e_xdpsq_get_next_pi.exit.i_crit_edge
  %conv.i.i13.pre-phi.i = phi i32 [ %conv.i.i.i, %if.then16.mlx5e_xdpsq_get_next_pi.exit.i_crit_edge ], [ %.pre.i, %for.end.i.i ]
  %72 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i15.i = zext i16 %73 to i32
  %add.i.i.i16.i = add nuw nsw i32 %conv.i.i13.pre-phi.i, %conv.i.i.i15.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 6
  %74 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i17.i = zext i8 %75 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i16.i, %conv1.i.i.i17.i
  %76 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %77, i32 %shr.i.i.i.i
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %80 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %81 to i32
  %and.i.i.i.i = and i32 %add.i.i.i16.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 5
  %82 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %83 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %79, i32 %shl.i.i.i.i
  %84 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 32)
  %data.i = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  tail call void @llvm.prefetch.p0(ptr %data.i, i32 1, i32 3, i32 1) #12
  %inline_on4.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 4
  %85 = ptrtoint ptr %inline_on4.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %inline_on4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.i = icmp ne i8 %86, 0
  %xdpi_fifo_pc.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 3
  %87 = ptrtoint ptr %xdpi_fifo_pc.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %xdpi_fifo_pc.i.i, align 128
  %89 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sq, align 128
  %sub.i.i43 = sub i32 %88, %90
  %conv2.i.i = and i32 %sub.i.i43, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %conv2.i.i)
  %cmp.i19.i = icmp ult i32 %conv2.i.i, 11
  %or.cond.i.i = select i1 %tobool.i, i1 %cmp.i19.i, i1 false
  br i1 %or.cond.i.i, label %mlx5e_xdpsq_get_next_pi.exit.i.mlx5e_xdp_mpwqe_session_start.exit_crit_edge, label %if.end.i.i

mlx5e_xdpsq_get_next_pi.exit.i.mlx5e_xdp_mpwqe_session_start.exit_crit_edge: ; preds = %mlx5e_xdpsq_get_next_pi.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5e_xdp_mpwqe_session_start.exit

if.end.i.i:                                       ; preds = %mlx5e_xdpsq_get_next_pi.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i.i = and i32 %sub.i.i43, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i.i)
  %cmp7.not.i.i = icmp ne i32 %conv6.i.i, 0
  %not.cur.i.i = xor i1 %tobool.i, true
  %or.cond16.i.i = select i1 %not.cur.i.i, i1 %cmp7.not.i.i, i1 false
  %spec.select.i.i44 = or i1 %tobool.i, %or.cond16.i.i
  br label %mlx5e_xdp_mpwqe_session_start.exit

mlx5e_xdp_mpwqe_session_start.exit:               ; preds = %if.end.i.i, %mlx5e_xdpsq_get_next_pi.exit.i.mlx5e_xdp_mpwqe_session_start.exit_crit_edge
  %retval.0.i.i = phi i1 [ false, %mlx5e_xdpsq_get_next_pi.exit.i.mlx5e_xdp_mpwqe_session_start.exit_crit_edge ], [ %spec.select.i.i44, %if.end.i.i ]
  %conv.i = zext i1 %retval.0.i.i to i8
  %91 = ptrtoint ptr %mpwqe to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i.i.i.i, ptr %mpwqe, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 2
  %93 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 3
  %94 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 1
  %95 = ptrtoint ptr %inline_on4.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv.i, ptr %inline_on4.i, align 2
  %mpwqe6.i = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %22, i32 0, i32 1
  %96 = ptrtoint ptr %mpwqe6.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %mpwqe6.i, align 8
  %inc.i46 = add i64 %97, 1
  store i64 %inc.i46, ptr %mpwqe6.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %mlx5e_xdp_mpwqe_session_start.exit, %if.end14.if.end17_crit_edge, %if.then4.if.end17_crit_edge
  %98 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mpwqe, align 4
  %ds_count.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 2
  %100 = ptrtoint ptr %ds_count.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ds_count.i, align 4
  %conv.i48 = zext i8 %101 to i32
  %add.ptr.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %99, i32 %conv.i48
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %pkt_count.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 3
  %104 = ptrtoint ptr %pkt_count.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pkt_count.i, align 1
  %inc.i49 = add i8 %105, 1
  store i8 %inc.i49, ptr %pkt_count.i, align 1
  %bytes_count.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 1
  %106 = ptrtoint ptr %bytes_count.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bytes_count.i, align 4
  %add.i = add i32 %107, %103
  store i32 %add.i, ptr %bytes_count.i, align 4
  %inline_on.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6, i32 4
  %108 = ptrtoint ptr %inline_on.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %inline_on.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i50 = icmp ne i8 %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %103)
  %cmp.i = icmp ult i32 %103, 253
  %or.cond.i = select i1 %tobool.not.i50, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then.i52, label %if.end.i

if.then.i52:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nuw nsw i32 %103, 19
  %div39.i = lshr i32 %sub.i, 4
  %or.i = or i32 %103, -2147483648
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i, ptr %add.ptr.i, align 4
  %data.i51 = getelementptr inbounds %struct.mlx5_wqe_inline_seg, ptr %add.ptr.i, i32 0, i32 1
  %data8.i = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 1
  %111 = ptrtoint ptr %data8.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data8.i, align 4
  %113 = call ptr @memcpy(ptr %data.i51, ptr %112, i32 %103)
  %114 = ptrtoint ptr %ds_count.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ds_count.i, align 4
  %116 = trunc i32 %div39.i to i8
  %conv13.i = add i8 %115, %116
  store i8 %conv13.i, ptr %ds_count.i, align 4
  %inlnw.i = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %1, i32 0, i32 2
  %117 = ptrtoint ptr %inlnw.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %inlnw.i, align 16
  %inc14.i = add i64 %118, 1
  store i64 %inc14.i, ptr %inlnw.i, align 16
  br label %mlx5e_xdp_mpwqe_add_dseg.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %xdptxd to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %xdptxd, align 4
  %conv15.i = zext i32 %120 to i64
  %addr.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %99, i32 %conv.i48, i32 2
  %121 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv15.i, ptr %addr.i, align 8
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %103, ptr %add.ptr.i, align 8
  %mkey_be.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 18
  %123 = ptrtoint ptr %mkey_be.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mkey_be.i, align 4
  %lkey.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %99, i32 %conv.i48, i32 1
  %125 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %lkey.i, align 4
  %126 = ptrtoint ptr %ds_count.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ds_count.i, align 4
  %inc18.i = add i8 %127, 1
  store i8 %inc18.i, ptr %ds_count.i, align 4
  br label %mlx5e_xdp_mpwqe_add_dseg.exit

mlx5e_xdp_mpwqe_add_dseg.exit:                    ; preds = %if.end.i, %if.then.i52
  %128 = ptrtoint ptr %inline_on.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %inline_on.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i54 = icmp eq i8 %129, 0
  %130 = ptrtoint ptr %ds_count.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ds_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %131)
  %cmp.i55 = icmp ugt i8 %131, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %131)
  %cmp.i.i56 = icmp eq i8 %131, 56
  %retval.0.i = select i1 %tobool.not.i54, i1 %cmp.i.i56, i1 %cmp.i55
  br i1 %retval.0.i, label %if.then25, label %mlx5e_xdp_mpwqe_add_dseg.exit.if.end26_crit_edge, !prof !82

mlx5e_xdp_mpwqe_add_dseg.exit.if.end26_crit_edge: ; preds = %mlx5e_xdp_mpwqe_add_dseg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %mlx5e_xdp_mpwqe_add_dseg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5e_xdp_mpwqe_complete(ptr noundef %sq)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %mlx5e_xdp_mpwqe_add_dseg.exit.if.end26_crit_edge
  %xdpi_fifo = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1
  %pc.i57 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 2
  %132 = ptrtoint ptr %pc.i57 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pc.i57, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %inc.i58 = add i32 %135, 1
  store i32 %inc.i58, ptr %133, align 4
  %mask.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 3
  %136 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %137, %135
  %138 = ptrtoint ptr %xdpi_fifo to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %xdpi_fifo, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_info, ptr %139, i32 %and.i
  %140 = call ptr @memcpy(ptr %arrayidx.i, ptr %xdpi, i32 16)
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %1, align 128
  %inc27 = add i64 %142, 1
  store i64 %inc27, ptr %1, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end5.cleanup_crit_edge, %if.end5.thread62, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end26 ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.end5.thread62 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_xmit_xdp_frame(ptr nocapture noundef %sq, ptr nocapture noundef readonly %xdptxd, ptr nocapture noundef readonly %xdpi, i32 noundef %check_result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wq1 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10
  %pc = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pc, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %conv.i = zext i16 %conv1.i to i32
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 3
  %5 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 6
  %7 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %8 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %9 = ptrtoint ptr %wq1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq1, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %14 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 5
  %15 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %16 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %data = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %xdptxd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xdptxd, align 4
  %len = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %stats4 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 11
  %21 = ptrtoint ptr %stats4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats4, align 32
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %20)
  %cmp = icmp ult i32 %20, 18
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.rhs, !prof !82

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %hw_mtu = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 21
  %23 = ptrtoint ptr %hw_mtu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %20)
  %cmp5 = icmp ult i32 %24, %20
  br i1 %cmp5, label %lor.rhs.if.then_crit_edge, label %if.end, !prof !82

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %err = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %err to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %err, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %err, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_result)
  %tobool7.not = icmp eq i32 %check_result, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %cc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 1
  %27 = ptrtoint ptr %cc.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cc.i, align 4
  %sub.i.i = sub i16 %28, %1
  %29 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sz_m1.i, align 4
  %31 = trunc i32 %30 to i16
  %conv1.i.i.i = and i16 %sub.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1.i.i.i)
  %cmp.not.i.i = icmp ne i16 %conv1.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %1)
  %cmp8.i.i = icmp eq i16 %28, %1
  %spec.select.i.i = or i1 %cmp8.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %if.then8.if.end19_crit_edge, label %if.end10.thread, !prof !78

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end10.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5e_xmit_xdp_doorbell(ptr noundef %sq) #12
  %32 = ptrtoint ptr %stats4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stats4, align 32
  %full.i = getelementptr inbounds %struct.mlx5e_xdpsq_stats, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %full.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %full.i, align 32
  %inc.i = add i64 %35, 1
  store i64 %inc.i, ptr %full.i, align 32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_result)
  %cmp11 = icmp slt i32 %check_result, 0
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end10.if.end19_crit_edge, !prof !82

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end10.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %fm_ce_se, align 1
  %min_inline_mode = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 19
  %37 = ptrtoint ptr %min_inline_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %min_inline_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp20.not = icmp eq i8 %38, 0
  br i1 %cmp20.not, label %if.end19.if.end26_crit_edge, label %if.then22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %39 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i, i32 0, i32 1, i32 8
  %start = getelementptr inbounds %struct.anon.252, ptr %39, i32 0, i32 1
  %data24 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 1
  %40 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data24, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %41, align 1
  %44 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %start, align 2
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 18, ptr %39, align 4
  %46 = load ptr, ptr %data24, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 2
  %47 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 16)
  %sub = add i32 %20, -18
  %add = add i32 %18, 18
  %incdec.ptr = getelementptr %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i, i32 1, i32 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19.if.end26_crit_edge
  %dseg.0 = phi ptr [ %incdec.ptr, %if.then22 ], [ %data, %if.end19.if.end26_crit_edge ]
  %dma_addr.0 = phi i32 [ %add, %if.then22 ], [ %18, %if.end19.if.end26_crit_edge ]
  %dma_len.0 = phi i32 [ %sub, %if.then22 ], [ %20, %if.end19.if.end26_crit_edge ]
  %conv27 = zext i32 %dma_addr.0 to i64
  %addr = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %dseg.0, i32 0, i32 2
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv27, ptr %addr, align 8
  %49 = ptrtoint ptr %dseg.0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dma_len.0, ptr %dseg.0, align 8
  %50 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pc, align 4
  %conv29 = zext i16 %51 to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %or = or i32 %shl, 10
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %add.ptr.i.i, align 4
  %53 = load i16, ptr %pc, align 4
  %inc31 = add i16 %53, 1
  store i16 %inc31, ptr %pc, align 4
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 5
  %54 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i, ptr %doorbell_cseg, align 8
  %xdpi_fifo = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1
  %pc.i69 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 2
  %55 = ptrtoint ptr %pc.i69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pc.i69, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %inc.i70 = add i32 %58, 1
  store i32 %inc.i70, ptr %56, align 4
  %mask.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 3
  %59 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %60, %58
  %61 = ptrtoint ptr %xdpi_fifo to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xdpi_fifo, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_info, ptr %62, i32 %and.i
  %63 = call ptr @memcpy(ptr %arrayidx.i, ptr %xdpi, i32 16)
  %64 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %22, align 128
  %inc32 = add i64 %65, 1
  store i64 %inc32, ptr %22, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end10.cleanup_crit_edge, %if.end10.thread, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end26 ], [ false, %if.end10.cleanup_crit_edge ], [ false, %if.end10.thread ]
  ret i1 %retval.0
}

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
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_bulk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_page_release_dynamic(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c", i32 125, i32 26}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c", i32 447, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/filter.h", i32 613, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/net/xdp.h", i32 200, i32 3}
!14 = !{ptr @__func__.xdp_update_frame_from_buff, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c", i32 396, i32 4}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 335, i32 6}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/mlx5/cq.h", i32 199, i32 17}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!61 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2149063457, i64 2149063462, i64 2149063475, i64 2149063519, i64 2149063553, i64 2149063574}
!73 = !{i64 909892, i64 909953}
!74 = !{i64 2150256514}
!75 = !{i64 2150261448}
!76 = !{i64 2150283166}
!77 = !{i64 2150288060}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2150364587}
!80 = !{i64 2150364912}
!81 = !{i64 912624}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 912909}
!84 = !{i64 2157100993}
!85 = !{i64 2157101208}
!86 = !{i64 2149620776}
!87 = !{i64 2149621812}
!88 = !{i64 2160619513}
!89 = !{i64 2160865464}
!90 = !{!91}
!91 = distinct !{!91, !92, !"mlx5e_xdpi_fifo_pop: %agg.result"}
!92 = distinct !{!92, !"mlx5e_xdpi_fifo_pop"}
!93 = !{i64 2149612217}
!94 = !{i64 2149612483}
!95 = !{!"auto-init"}
!96 = !{i64 2160835648}
!97 = !{i64 2160835842}
!98 = !{i64 6551511}
