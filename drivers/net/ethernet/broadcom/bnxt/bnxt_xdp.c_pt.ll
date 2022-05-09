; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.bnxt_tx_ring_info = type { ptr, i16, i16, i16, i8, %struct.bnxt_db_info, [8 x ptr], ptr, [8 x i32], ptr, i32, i64, i32, %struct.bnxt_ring_struct }
%struct.bnxt_db_info = type { ptr, %union.anon.205 }
%union.anon.205 = type { i64 }
%struct.bnxt_ring_struct = type { %struct.bnxt_ring_mem_info, i16, %union.anon.207, i32, i8 }
%struct.bnxt_ring_mem_info = type { i32, i32, i16, i16, ptr, ptr, ptr, ptr, i32, i32, ptr }
%union.anon.207 = type { i16 }
%struct.bnxt_sw_tx_bd = type { %union.anon, i32, i32, i8, i8, i8, %union.anon.199 }
%union.anon = type { ptr }
%union.anon.199 = type { i16 }
%struct.tx_bd = type { i32, i32, i64 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.166 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.166 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.bnxt_napi = type { %struct.napi_struct, ptr, i32, %struct.bnxt_cp_ring_info, ptr, ptr, ptr, i32, i8, i32, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bnxt_cp_ring_info = type { ptr, i32, %struct.bnxt_db_info, i8, i32, %struct.bnxt_coal, i64, i64, i64, %struct.dim, %union.anon.206, ptr, %struct.bnxt_stats_mem, i32, %struct.bnxt_sw_stats, %struct.bnxt_ring_struct, [2 x ptr] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%union.anon.206 = type { ptr }
%struct.bnxt_sw_stats = type { %struct.bnxt_rx_sw_stats, %struct.bnxt_cmn_sw_stats }
%struct.bnxt_rx_sw_stats = type { i64, i64, i64, i64, i64 }
%struct.bnxt_cmn_sw_stats = type { i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.204, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.204 = type { ptr }
%struct.bnxt_rx_ring_info = type { ptr, i16, i16, i16, i16, %struct.bnxt_db_info, %struct.bnxt_db_info, ptr, [32 x ptr], ptr, [32 x ptr], ptr, ptr, i16, ptr, i32, [32 x i32], [32 x i32], ptr, ptr, %struct.bnxt_ring_struct, %struct.bnxt_ring_struct, [68 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bnxt_sw_rx_bd = type { ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.139 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { %struct.anon.141, [0 x %struct.sock_filter] }
%struct.anon.141 = type {}
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.181, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.181 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.netdev_bpf = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, ptr, ptr }

@bnxt_lhint_arr = external dso_local local_unnamed_addr constant [0 x i16], align 2
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MTU %d larger than largest XDP supported MTU %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ethtool rx/tx channels must be combined to support XDP.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to reserve enough TX rings to support XDP.\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 613, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 271, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 28, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 108, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 326, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 264, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 269, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [49 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 281, i32 20 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bnxt_xmit_bd(ptr nocapture noundef readonly %bp, ptr nocapture noundef %txr, i32 noundef %mapping, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_prod = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %txr, i32 0, i32 1
  %0 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_prod, align 4
  %tx_buf_ring = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %txr, i32 0, i32 7
  %2 = ptrtoint ptr %tx_buf_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf_ring, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.bnxt_sw_tx_bd, ptr %3, i32 %idxprom
  %shr = lshr i32 %idxprom, 8
  %arrayidx1 = getelementptr %struct.bnxt_tx_ring_info, ptr %txr, i32 0, i32 6, i32 %shr
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %and3 = and i32 %idxprom, 255
  %arrayidx4 = getelementptr %struct.tx_bd, ptr %5, i32 %and3
  %shl = shl i32 %len, 16
  %shr6 = lshr i32 %len, 9
  %arrayidx7 = getelementptr [0 x i16], ptr @bnxt_lhint_arr, i32 0, i32 %shr6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %7 to i32
  %or5 = or i32 %shl, %conv8
  %or9 = or i32 %or5, 320
  %8 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx4, align 1
  %tx_bd_opaque = getelementptr %struct.tx_bd, ptr %5, i32 %and3, i32 1
  %10 = ptrtoint ptr %tx_bd_opaque to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %idxprom, ptr %tx_bd_opaque, align 1
  %conv11 = zext i32 %mapping to i64
  %11 = tail call i64 @llvm.bswap.i64(i64 %conv11)
  %tx_bd_haddr = getelementptr %struct.tx_bd, ptr %5, i32 %and3, i32 2
  %12 = ptrtoint ptr %tx_bd_haddr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %tx_bd_haddr, align 1
  %add = add nuw nsw i32 %idxprom, 1
  %tx_ring_mask = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 36
  %13 = ptrtoint ptr %tx_ring_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_ring_mask, align 4
  %and13 = and i32 %14, %add
  %conv14 = trunc i32 %and13 to i16
  %15 = ptrtoint ptr %tx_prod to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv14, ptr %tx_prod, align 4
  ret ptr %arrayidx
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_tx_int_xdp(ptr noundef %bp, ptr nocapture noundef readonly %bnapi, i32 noundef %nr_pkts) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.bnxt_napi, ptr %bnapi, i32 0, i32 5
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %rx_ring = getelementptr inbounds %struct.bnxt_napi, ptr %bnapi, i32 0, i32 4
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 8
  %tx_cons1 = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pkts)
  %cmp41 = icmp sgt i32 %nr_pkts, 0
  br i1 %cmp41, label %for.body.lr.ph, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %tx_cons1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_cons1, align 2
  %tx_buf_ring = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 7
  %pdev4 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %tx_ring_mask = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %last_tx_cons.044 = phi i16 [ %5, %for.body.lr.ph ], [ %last_tx_cons.1, %if.end11.for.body_crit_edge ]
  %tx_cons.043 = phi i16 [ %5, %for.body.lr.ph ], [ %conv13, %if.end11.for.body_crit_edge ]
  %rx_doorbell_needed.0.off042 = phi i1 [ false, %for.body.lr.ph ], [ %rx_doorbell_needed.1.off0, %if.end11.for.body_crit_edge ]
  %6 = ptrtoint ptr %tx_buf_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_buf_ring, align 8
  %idxprom = zext i16 %tx_cons.043 to i32
  %action = getelementptr %struct.bnxt_sw_tx_bd, ptr %7, i32 %idxprom, i32 5
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %action, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %for.body.if.end11_crit_edge [
    i8 4, label %if.then
    i8 3, label %if.then10
  ]

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.bnxt_sw_tx_bd, ptr %7, i32 %idxprom
  %11 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %mapping = getelementptr %struct.bnxt_sw_tx_bd, ptr %7, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mapping, align 4
  %len = getelementptr %struct.bnxt_sw_tx_bd, ptr %7, i32 %idxprom, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void @xdp_return_frame(ptr noundef %18) #10
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %action, align 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end11

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then, %for.body.if.end11_crit_edge
  %rx_doorbell_needed.1.off0 = phi i1 [ %rx_doorbell_needed.0.off042, %if.then ], [ true, %if.then10 ], [ %rx_doorbell_needed.0.off042, %for.body.if.end11_crit_edge ]
  %last_tx_cons.1 = phi i16 [ %last_tx_cons.044, %if.then ], [ %tx_cons.043, %if.then10 ], [ %last_tx_cons.044, %for.body.if.end11_crit_edge ]
  %add = add nuw nsw i32 %idxprom, 1
  %21 = ptrtoint ptr %tx_ring_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_ring_mask, align 4
  %and = and i32 %22, %add
  %conv13 = trunc i32 %and to i16
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %nr_pkts
  br i1 %exitcond.not, label %for.end, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end11
  %conv13.le = trunc i32 %and to i16
  %23 = ptrtoint ptr %tx_cons1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv13.le, ptr %tx_cons1, align 2
  br i1 %rx_doorbell_needed.1.off0, label %if.then15, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_buf_ring16 = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %tx_buf_ring16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf_ring16, align 8
  %idxprom17 = zext i16 %last_tx_cons.1 to i32
  %rx_db = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %3, i32 0, i32 5
  %26 = getelementptr %struct.bnxt_sw_tx_bd, ptr %25, i32 %idxprom17, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 4
  %conv19 = zext i16 %28 to i32
  tail call fastcc void @bnxt_db_write(ptr noundef %bp, ptr noundef %rx_db, i32 noundef %conv19)
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_db_write(ptr noundef %bp, ptr nocapture noundef readonly %db, i32 noundef %idx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = getelementptr inbounds %struct.bnxt_db_info, ptr %db, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db, align 8
  %db_lock.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %db_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %7 = trunc i64 %4 to i32
  %conv.i.i = or i32 %7, %idx
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #10, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i64 %4, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #10, !srcloc !34
  tail call void @_raw_spin_unlock(ptr noundef %db_lock.i) #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %or1 = or i32 %11, %idx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !36
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or1)
  %13 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #10, !srcloc !34
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and4 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end11_crit_edge, label %do.body7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %12) #10, !srcloc !34
  br label %if.end11

if.end11:                                         ; preds = %do.body7, %if.else.if.end11_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bnxt_rx_xdp(ptr noundef %bp, ptr noundef %rxr, i16 noundef zeroext %cons, ptr noundef %page, ptr nocapture noundef %data_ptr, ptr nocapture noundef %len, ptr nocapture noundef %event) local_unnamed_addr #3 align 64 {
entry:
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog1 = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 7
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #10
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %tobool.not = icmp eq ptr %1, null
  %5 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %7 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %pdev2 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %8 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev2, align 8
  %rx_buf_ring = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 9
  %10 = ptrtoint ptr %rx_buf_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf_ring, align 4
  %idxprom = zext i16 %cons to i32
  %rx_offset = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 23
  %12 = ptrtoint ptr %rx_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_offset, align 4
  %conv = zext i16 %13 to i32
  %mapping3 = getelementptr %struct.bnxt_sw_rx_bd, ptr %11, i32 %idxprom, i32 2
  %14 = ptrtoint ptr %mapping3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapping3, align 4
  %rx_dma_offset = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 24
  %16 = ptrtoint ptr %rx_dma_offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_dma_offset, align 2
  %conv4 = zext i16 %17 to i32
  %sub = sub i32 %15, %conv4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %add = add i32 %sub, %conv
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %rx_dir = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 25
  %20 = ptrtoint ptr %rx_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_dir, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %add, i32 noundef %19, i32 noundef %21) #10
  %22 = ptrtoint ptr %rxr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxr, align 128
  %tx_ring = getelementptr inbounds %struct.bnxt_napi, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 4
  %xdp_rxq = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 23
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %6, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %xdp_rxq, ptr %4, align 4
  %28 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_ptr, align 4
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr = getelementptr i8, ptr %29, i32 %idx.neg
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %3, align 4
  %33 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %29, i32 %31
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr2.i, ptr %2, align 4
  %add.ptr3.i = getelementptr i8, ptr %29, i32 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr3.i, ptr %7, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bnxt_rx_xdp, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !38

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #10
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %37) #10
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stats9.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %46, %40
  %47 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %47, i32 0, i32 3
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !39
  %and.i.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %50 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  %54 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %59, ptrtoint (ptr @lockdep_recursion to i32)
  %60 = inttoptr i32 %add.i.i.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %63 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i7.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool20.not.i.i.i.i = icmp eq i32 %62, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %67 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %71 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i9.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %74, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %75 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %78, ptrtoint (ptr @hardirqs_enabled to i32)
  %79 = inttoptr i32 %add47.i.i.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  %82 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i12.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool54.not.i.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !44

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %86 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %47, i32 0, i32 3, i32 0, i32 1
  %88 = call ptr @llvm.returnaddress(i32 0) #10
  %89 = ptrtoint ptr %88 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %89) #10
  %90 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %47, align 8
  %inc.i.i.i = add i64 %91, 1
  store i64 %inc.i.i.i, ptr %47, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %47, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #10
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %92 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %93
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %89) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %94 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %95, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %96 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !47
  %and.i.i.i3.i.i = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !48

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #10, !srcloc !49
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %98) #10
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@bnxt_rx_xdp, %l_yes.i.i)) #10
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !38

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %4, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %104, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_prog_run_xdp.exit

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 15
  %105 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %106, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_prog_run_xdp.exit

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #10
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ 3, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ 3, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %tx_ring_size.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 35
  %107 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_ring_size.i, align 8
  %tx_prod.i = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %25, i32 0, i32 1
  %109 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tx_prod.i, align 4
  %conv.i = zext i16 %110 to i32
  %tx_cons.i = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %25, i32 0, i32 2
  %111 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %tx_cons.i, align 2
  %conv1.i = zext i16 %112 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %tx_ring_mask.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 36
  %113 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_ring_mask.i, align 4
  %and.i = and i32 %sub.i, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not, label %bpf_prog_run_xdp.exit.if.end10_crit_edge, label %if.then7

bpf_prog_run_xdp.exit.if.end10_crit_edge:         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %event, align 1
  %117 = and i8 %116, -2
  store i8 %117, ptr %event, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %bpf_prog_run_xdp.exit.if.end10_crit_edge
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %2, align 4
  %120 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %119 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %121 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %122 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub.ptr.sub, ptr %len, align 4
  %cmp13.not = icmp eq ptr %29, %121
  br i1 %cmp13.not, label %if.end10.if.end22_crit_edge, label %if.then15

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %3, align 4
  %sub.ptr.rhs.cast18 = ptrtoint ptr %124 to i32
  %sub.ptr.sub19 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast18
  %add.ptr21 = getelementptr i8, ptr %124, i32 %sub.ptr.sub19
  %125 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr21, ptr %data_ptr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end10.if.end22_crit_edge
  %offset.0 = phi i32 [ %sub.ptr.sub19, %if.then15 ], [ %conv, %if.end10.if.end22_crit_edge ]
  %126 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %if.end22.cleanup_crit_edge
    i32 3, label %sw.bb23
    i32 4, label %sw.bb37
    i32 0, label %if.end22.sw.bb55_crit_edge
    i32 1, label %if.end22.sw.bb57_crit_edge
  ]

if.end22.sw.bb57_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

if.end22.sw.bb55_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb55

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb23:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %and.i)
  %cmp24 = icmp eq i32 %108, %and.i
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %127 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev27, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %128, ptr noundef nonnull %1, i32 noundef 3)
  call void @bnxt_reuse_rx_data(ptr noundef %rxr, i16 noundef zeroext %cons, ptr noundef %page) #10
  br label %cleanup

if.end28:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %event to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 4, ptr %event, align 1
  %add30 = add i32 %offset.0, %sub
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len, align 4
  %132 = ptrtoint ptr %rx_dir to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_dir, align 8
  call void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %add30, i32 noundef %131, i32 noundef %133) #10
  %134 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len, align 4
  %rx_prod = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 1
  %136 = ptrtoint ptr %rx_prod to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %rx_prod, align 4
  %conv33 = zext i16 %137 to i32
  %add34 = add nuw nsw i32 %conv33, 1
  %rx_ring_mask = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 29
  %138 = ptrtoint ptr %rx_ring_mask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rx_ring_mask, align 8
  %and35 = and i32 %add34, %139
  %conv36 = trunc i32 %and35 to i16
  %140 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %tx_prod.i, align 4
  %tx_buf_ring.i.i = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %25, i32 0, i32 7
  %142 = ptrtoint ptr %tx_buf_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_buf_ring.i.i, align 8
  %idxprom.i.i = zext i16 %141 to i32
  %shr.i.i = lshr i32 %idxprom.i.i, 8
  %arrayidx1.i.i = getelementptr %struct.bnxt_tx_ring_info, ptr %25, i32 0, i32 6, i32 %shr.i.i
  %144 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx1.i.i, align 4
  %and3.i.i = and i32 %idxprom.i.i, 255
  %arrayidx4.i.i = getelementptr %struct.tx_bd, ptr %145, i32 %and3.i.i
  %shl.i.i = shl i32 %135, 16
  %shr6.i.i = lshr i32 %135, 9
  %arrayidx7.i.i = getelementptr [0 x i16], ptr @bnxt_lhint_arr, i32 0, i32 %shr6.i.i
  %146 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %147 to i32
  %or5.i.i = or i32 %shl.i.i, %conv8.i.i
  %or9.i.i = or i32 %or5.i.i, 320
  %148 = call i32 @llvm.bswap.i32(i32 %or9.i.i) #10
  %149 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %arrayidx4.i.i, align 1
  %tx_bd_opaque.i.i = getelementptr %struct.tx_bd, ptr %145, i32 %and3.i.i, i32 1
  %150 = ptrtoint ptr %tx_bd_opaque.i.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %idxprom.i.i, ptr %tx_bd_opaque.i.i, align 1
  %conv11.i.i = zext i32 %add30 to i64
  %151 = call i64 @llvm.bswap.i64(i64 %conv11.i.i) #10
  %tx_bd_haddr.i.i = getelementptr %struct.tx_bd, ptr %145, i32 %and3.i.i, i32 2
  %152 = ptrtoint ptr %tx_bd_haddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %151, ptr %tx_bd_haddr.i.i, align 1
  %add.i.i134 = add nuw nsw i32 %idxprom.i.i, 1
  %153 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_ring_mask.i, align 4
  %and13.i.i = and i32 %154, %add.i.i134
  %conv14.i.i = trunc i32 %and13.i.i to i16
  %155 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv14.i.i, ptr %tx_prod.i, align 4
  %156 = getelementptr %struct.bnxt_sw_tx_bd, ptr %143, i32 %idxprom.i.i, i32 6
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv36, ptr %156, align 4
  %action.i = getelementptr %struct.bnxt_sw_tx_bd, ptr %143, i32 %idxprom.i.i, i32 5
  %158 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %action.i, align 2
  call void @bnxt_reuse_rx_data(ptr noundef %rxr, i16 noundef zeroext %cons, ptr noundef %page) #10
  br label %cleanup

sw.bb37:                                          ; preds = %if.end22
  %159 = ptrtoint ptr %rx_dir to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_dir, align 8
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %sub, i32 noundef 4096, i32 noundef %160, i32 noundef 2) #10
  %rx_prod40 = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 1
  %161 = ptrtoint ptr %rx_prod40 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %rx_prod40, align 4
  %call41 = call i32 @bnxt_alloc_rx_data(ptr noundef %bp, ptr noundef %rxr, i16 noundef zeroext %162, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %dev46 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %163 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev46, align 4
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_xdp_exception(ptr noundef %164, ptr noundef nonnull %1, i32 noundef 4)
  call void @bnxt_reuse_rx_data(ptr noundef %rxr, i16 noundef zeroext %cons, ptr noundef %page) #10
  br label %cleanup

if.end45:                                         ; preds = %sw.bb37
  %call47 = call i32 @xdp_do_redirect(ptr noundef %164, ptr noundef nonnull %xdp, ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev46, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %166, ptr noundef nonnull %1, i32 noundef 4)
  %page_pool = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %rxr, i32 0, i32 24
  %167 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %page_pool, align 128
  call void @page_pool_put_page(ptr noundef %168, ptr noundef %page, i32 noundef -1, i1 noundef zeroext true) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %event, align 1
  %171 = or i8 %170, 8
  store i8 %171, ptr %event, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dev54 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %172 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev54, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %173, ptr noundef nonnull %1, i32 noundef %act.0.i) #10
  br label %sw.bb55

sw.bb55:                                          ; preds = %sw.default, %if.end22.sw.bb55_crit_edge
  %dev56 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %174 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev56, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %175, ptr noundef nonnull %1, i32 noundef %act.0.i)
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb55, %if.end22.sw.bb57_crit_edge
  call void @bnxt_reuse_rx_data(ptr noundef %rxr, i16 noundef zeroext %cons, ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb57, %if.end51, %if.then49, %if.then43, %if.end28, %if.then26, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then43 ], [ true, %if.then49 ], [ true, %if.then26 ], [ true, %if.end28 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end22.cleanup_crit_edge ], [ true, %sw.bb57 ], [ true, %if.end51 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !38

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !44

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !44

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #10
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
declare dso_local void @bnxt_reuse_rx_data(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_alloc_rx_data(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_xdp_xmit(ptr noundef %dev, i32 noundef %num_frames, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %xdp_prog1 = getelementptr i8, ptr %dev, i32 6444
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 4
  %pdev2 = getelementptr i8, ptr %dev, i32 2392
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %state = getelementptr i8, ptr %dev, i32 2660
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %lor.lhs.false

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

lor.lhs.false:                                    ; preds = %entry
  %tx_nr_rings_xdp = getelementptr i8, ptr %dev, i32 2508
  %6 = ptrtoint ptr %tx_nr_rings_xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_nr_rings_xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %tobool6.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %lor.lhs.false.cleanup38_crit_edge, label %if.end

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end:                                           ; preds = %lor.lhs.false
  %8 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %rem = urem i32 %11, %7
  %tx_ring = getelementptr i8, ptr %dev, i32 2416
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_frames)
  %cmp84 = icmp sgt i32 %num_frames, 0
  br i1 %cmp84, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem
  %tobool10.not = icmp eq ptr %arrayidx, null
  %tx_ring_size.i = getelementptr i8, ptr %dev, i32 2488
  %tx_prod.i = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 1
  %tx_cons.i = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 2
  %tx_ring_mask.i = getelementptr i8, ptr %dev, i32 2492
  %bnapi = getelementptr i8, ptr %dev, i32 2408
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %tx_buf_ring.i.i = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr ptr, ptr %frames, i32 %i.086
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  br i1 %tobool10.not, label %for.body.for.end_crit_edge, label %lor.lhs.false11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false11:                                  ; preds = %for.body
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %16 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ring_size.i, align 8
  %18 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_prod.i, align 4
  %conv.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_cons.i, align 2
  %conv1.i = zext i16 %21 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %22 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_ring_mask.i, align 4
  %and.i68 = and i32 %sub.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and.i68)
  %tobool13.not = icmp eq i32 %17, %and.i68
  br i1 %tobool13.not, label %lor.lhs.false11.for.end_crit_edge, label %lor.lhs.false14

lor.lhs.false11.for.end_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %24 = ptrtoint ptr %bnapi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnapi, align 8
  %arrayidx15 = getelementptr ptr, ptr %25, i32 %rem
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx15, align 4
  %flags16 = getelementptr inbounds %struct.bnxt_napi, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags16, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %lor.lhs.false14.for.end_crit_edge, label %if.end19

lor.lhs.false14.for.end_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end19:                                         ; preds = %lor.lhs.false14
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %15, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %15, i32 0, i32 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end19
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !44

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev20) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %34 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev20, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %37, %if.end.i.i ], [ %35, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev20, i32 noundef -1) #10
  br label %for.end

dma_map_single_attrs.exit:                        ; preds = %if.end19
  %conv = zext i16 %33 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev20, ptr noundef %31, i32 noundef %conv) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %38 = load ptr, ptr @mem_map, align 4
  %39 = ptrtoint ptr %31 to i32
  %sub.i69 = add i32 %39, 1073741824
  %shr.i = lshr i32 %sub.i69, 12
  %add.ptr.i70 = getelementptr %struct.page, ptr %38, i32 %shr.i
  %and.i71 = and i32 %39, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev20, ptr noundef %add.ptr.i70, i32 noundef %and.i71, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev20, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.for.end_crit_edge, label %for.inc

dma_map_single_attrs.exit.for.end_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %dma_map_single_attrs.exit
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len, align 4
  %conv28 = zext i16 %41 to i32
  %42 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_prod.i, align 4
  %44 = ptrtoint ptr %tx_buf_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_buf_ring.i.i, align 8
  %idxprom.i.i = zext i16 %43 to i32
  %arrayidx.i.i = getelementptr %struct.bnxt_sw_tx_bd, ptr %45, i32 %idxprom.i.i
  %shr.i.i = lshr i32 %idxprom.i.i, 8
  %arrayidx1.i.i = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 6, i32 %shr.i.i
  %46 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx1.i.i, align 4
  %and3.i.i = and i32 %idxprom.i.i, 255
  %arrayidx4.i.i = getelementptr %struct.tx_bd, ptr %47, i32 %and3.i.i
  %shl.i.i = shl nuw i32 %conv28, 16
  %shr6.i.i = lshr i32 %conv28, 9
  %arrayidx7.i.i = getelementptr [0 x i16], ptr @bnxt_lhint_arr, i32 0, i32 %shr6.i.i
  %48 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %49 to i32
  %or5.i.i = or i32 %shl.i.i, %conv8.i.i
  %or9.i.i = or i32 %or5.i.i, 320
  %50 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #10
  %51 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %arrayidx4.i.i, align 1
  %tx_bd_opaque.i.i = getelementptr %struct.tx_bd, ptr %47, i32 %and3.i.i, i32 1
  %52 = ptrtoint ptr %tx_bd_opaque.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %idxprom.i.i, ptr %tx_bd_opaque.i.i, align 1
  %conv11.i.i = zext i32 %call41.i to i64
  %53 = tail call i64 @llvm.bswap.i64(i64 %conv11.i.i) #10
  %tx_bd_haddr.i.i = getelementptr %struct.tx_bd, ptr %47, i32 %and3.i.i, i32 2
  %54 = ptrtoint ptr %tx_bd_haddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %tx_bd_haddr.i.i, align 1
  %add.i.i = add nuw nsw i32 %idxprom.i.i, 1
  %55 = ptrtoint ptr %tx_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_ring_mask.i, align 4
  %and13.i.i = and i32 %56, %add.i.i
  %conv14.i.i = trunc i32 %and13.i.i to i16
  %57 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv14.i.i, ptr %tx_prod.i, align 4
  %action.i = getelementptr %struct.bnxt_sw_tx_bd, ptr %45, i32 %idxprom.i.i, i32 5
  %58 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %action.i, align 2
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %15, ptr %arrayidx.i.i, align 4
  %mapping1.i = getelementptr %struct.bnxt_sw_tx_bd, ptr %45, i32 %idxprom.i.i, i32 1
  %60 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call41.i, ptr %mapping1.i, align 4
  %len2.i = getelementptr %struct.bnxt_sw_tx_bd, ptr %45, i32 %idxprom.i.i, i32 2
  %61 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %len2.i, align 4
  %inc29 = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc29, %num_frames
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dma_map_single_attrs.exit.for.end_crit_edge, %dma_map_single_attrs.exit.thread, %lor.lhs.false14.for.end_crit_edge, %lor.lhs.false11.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %nxmit.083 = phi i32 [ %i.086, %dma_map_single_attrs.exit.thread ], [ 0, %if.end.for.end_crit_edge ], [ %num_frames, %for.inc.for.end_crit_edge ], [ %i.086, %lor.lhs.false14.for.end_crit_edge ], [ %i.086, %lor.lhs.false11.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ %i.086, %dma_map_single_attrs.exit.for.end_crit_edge ]
  %and30 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.end.cleanup38_crit_edge, label %do.body33

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

do.body33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %tx_db = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 5
  %tx_prod = getelementptr %struct.bnxt_tx_ring_info, ptr %13, i32 %rem, i32 1
  %62 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tx_prod, align 4
  %conv36 = zext i16 %63 to i32
  tail call fastcc void @bnxt_db_write(ptr noundef %add.ptr.i, ptr noundef %tx_db, i32 noundef %conv36)
  br label %cleanup38

cleanup38:                                        ; preds = %do.body33, %for.end.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup38_crit_edge ], [ -22, %entry.cleanup38_crit_edge ], [ %nxmit.083, %do.body33 ], [ %nxmit.083, %for.end.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_xdp(ptr noundef %dev, ptr nocapture noundef readonly %xdp) local_unnamed_addr #3 align 64 {
entry:
  %rx.i = alloca i32, align 4
  %tx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %dev1.i = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3820, i32 %7)
  %cmp.i = icmp ugt i32 %7, 3820
  br i1 %cmp.i, label %if.then.i, label %if.end.thread.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef 3820) #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i
  %flags111.i = getelementptr i8, ptr %dev, i32 2400
  %10 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags111.i, align 8
  %and112.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool5.not113.i = icmp eq i32 %and112.i, 0
  br i1 %tobool5.not113.i, label %if.end.thread.i.if.then6.i_crit_edge, label %if.then9.i

if.end.thread.i.if.then6.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.thread.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.8) #13
  br label %sw.epilog

if.then9.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_nr_rings.i = getelementptr i8, ptr %dev, i32 2480
  %12 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_nr_rings.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %flags114117.i = phi ptr [ %flags111.i, %if.then9.i ], [ %flags.i, %if.end.i.if.end10.i_crit_edge ]
  %tx_xdp.0.i = phi i32 [ %13, %if.then9.i ], [ 0, %if.end.i.if.end10.i_crit_edge ]
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 140
  %14 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool11.not.i = icmp eq i16 %15, 0
  %narrow.i = select i1 %tobool11.not.i, i16 1, i16 %15
  %spec.store.select.i = sext i16 %narrow.i to i32
  %tx_nr_rings_per_tc.i = getelementptr i8, ptr %dev, i32 2504
  %16 = ptrtoint ptr %tx_nr_rings_per_tc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_nr_rings_per_tc.i, align 8
  %rx_nr_rings14.i = getelementptr i8, ptr %dev, i32 2480
  %18 = ptrtoint ptr %rx_nr_rings14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_nr_rings14.i, align 8
  %call15.i = tail call i32 @bnxt_check_rings(ptr noundef %add.ptr.i, i32 noundef %17, i32 noundef %19, i1 noundef zeroext true, i32 noundef %spec.store.select.i, i32 noundef %tx_xdp.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.9) #13
  br label %sw.epilog

if.end18.i:                                       ; preds = %if.end10.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end18.i.if.end22.i_crit_edge, label %if.then20.i

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end22.i_crit_edge
  %xdp_prog.i = getelementptr i8, ptr %dev, i32 6444
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %22 = ptrtoint ptr %3 to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %22, ptr %xdp_prog.i) #10, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool38.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool38.not.i, label %if.end22.i.if.end40.i_crit_edge, label %if.then39.i

if.end22.i.if.end40.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %24) #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.end22.i.if.end40.i_crit_edge
  br i1 %tobool.not.i, label %if.else.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i = tail call i32 @bnxt_set_rx_skb_mode(ptr noundef %add.ptr.i, i1 noundef zeroext true) #10
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx.i) #10
  %25 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %rx.i, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx.i) #10
  %26 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tx.i, align 4, !annotation !59
  %call44.i = tail call i32 @bnxt_set_rx_skb_mode(ptr noundef %add.ptr.i, i1 noundef zeroext false) #10
  %call45.i = call i32 @bnxt_get_max_rings(ptr noundef %add.ptr.i, ptr noundef nonnull %rx.i, ptr noundef nonnull %tx.i, i1 noundef zeroext true) #10
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp46.i = icmp sgt i32 %28, 1
  br i1 %cmp46.i, label %if.then47.i, label %if.else.i.if.end51.i_crit_edge

if.else.i.if.end51.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then47.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %flags114117.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags114117.i, align 8
  %and49.i = and i32 %30, -131073
  store i32 %and49.i, ptr %flags114117.i, align 8
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i, align 4
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hw_features.i, align 8
  %or.i = or i64 %34, 32768
  store i64 %or.i, ptr %hw_features.i, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.else.i.if.end51.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end51.i, %if.then42.i
  %tx_nr_rings_xdp.i = getelementptr i8, ptr %dev, i32 2508
  %35 = ptrtoint ptr %tx_nr_rings_xdp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %tx_xdp.0.i, ptr %tx_nr_rings_xdp.i, align 4
  %36 = ptrtoint ptr %tx_nr_rings_per_tc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_nr_rings_per_tc.i, align 8
  %mul.i = mul i32 %37, %spec.store.select.i
  %add.i = add i32 %mul.i, %tx_xdp.0.i
  %tx_nr_rings.i = getelementptr i8, ptr %dev, i32 2500
  %38 = ptrtoint ptr %tx_nr_rings.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %tx_nr_rings.i, align 4
  %39 = ptrtoint ptr %rx_nr_rings14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_nr_rings14.i, align 8
  %41 = call i32 @llvm.smax.i32(i32 %add.i, i32 %40) #10
  %cp_nr_rings.i = getelementptr i8, ptr %dev, i32 2540
  %42 = ptrtoint ptr %cp_nr_rings.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cp_nr_rings.i, align 4
  call void @bnxt_set_tpa_flags(ptr noundef %add.ptr.i) #10
  call void @bnxt_set_ring_params(ptr noundef %add.ptr.i) #10
  %43 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i109.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i109.i)
  %tobool.i110.not.i = icmp eq i32 %and1.i.i109.i, 0
  br i1 %tobool.i110.not.i, label %if.end52.i.sw.epilog_crit_edge, label %if.then59.i

if.end52.i.sw.epilog_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then59.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %call60.i = call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then59.i, %if.end52.i.sw.epilog_crit_edge, %if.then17.i, %if.then6.i, %if.then.i, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -95, %if.then.i ], [ %call15.i, %if.then17.i ], [ %call60.i, %if.then59.i ], [ -95, %if.then6.i ], [ 0, %if.end52.i.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

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
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_check_rings(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_set_rx_skb_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_max_rings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_set_tpa_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_set_ring_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/filter.h", i32 613, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c", i32 264, i32 20}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c", i32 269, i32 20}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_xdp.c", i32 281, i32 20}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2160061491}
!34 = !{i64 4986324}
!35 = !{i64 2160061864}
!36 = !{i64 2160067403}
!37 = !{i64 2160067803}
!38 = !{i64 2148698034, i64 2148698039, i64 2148698052, i64 2148698096, i64 2148698130, i64 2148698151}
!39 = !{i64 608700, i64 608761}
!40 = !{i64 2149844711}
!41 = !{i64 2149849643}
!42 = !{i64 2149871355}
!43 = !{i64 2149876247}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2149952704}
!46 = !{i64 2149953029}
!47 = !{i64 611432}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 611717}
!50 = !{i64 2160066180}
!51 = !{i64 2157433107}
!52 = !{i64 2157433322}
!53 = !{i64 2150118410}
!54 = !{i64 2150119446}
!55 = !{i64 2160076274}
!56 = !{i64 2160077426}
!57 = !{i64 722987, i64 723004, i64 723028, i64 723054, i64 723072}
!58 = !{i64 2160077772}
!59 = !{!"auto-init"}
