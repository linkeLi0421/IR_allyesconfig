; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_resources.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_resources.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.122, i32, i32, i32 }
%union.anon.122 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.125, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.125 = type { i8 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx4_update_qp_params = type { i8, i8, i32, i16, i16 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Setting RX qp %x tunnel mode to RX tunneled & non-tunneled\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_resources.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_fill_qp_context(ptr noundef %priv, i32 noundef %size, i32 noundef %stride, i32 noundef %is_tx, i32 noundef %rss, i32 noundef %qpn, i32 noundef %cqn, i32 noundef %user_prio, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev2 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %4 = call ptr @memset(ptr %context, i32 0, i32 248)
  %shl = shl i32 %rss, 13
  %or = or i32 %shl, 458752
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %context, align 8
  %priv_pdn = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv_pdn, align 8
  %pd = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 1
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pd, align 4
  %mtu_msgmax = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 2
  %9 = ptrtoint ptr %mtu_msgmax to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %mtu_msgmax, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_tx)
  %tobool.not = icmp eq i32 %is_tx, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss)
  %tobool3.not = icmp eq i32 %rss, 0
  %10 = or i32 %rss, %is_tx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %cond.end6, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end6:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i = icmp eq i32 %size, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #5, !range !12
  %sub.i.op.i = shl nuw nsw i32 %12, 3
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 248
  %shl8 = select i1 %tobool.not.i.i, i32 248, i32 %sub.i.op.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stride)
  %tobool.not.i.i202 = icmp eq i32 %stride, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %stride, i1 true) #5, !range !12
  %sub.i.op.i203.op = sub nsw i32 27, %13
  %sub23 = select i1 %tobool.not.i.i202, i32 251, i32 %sub.i.op.i203.op
  %or24 = or i32 %sub23, %shl8
  %conv25 = trunc i32 %or24 to i8
  %rq_size_stride = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 3
  %14 = ptrtoint ptr %rq_size_stride to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv25, ptr %rq_size_stride, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end6, %entry.if.end_crit_edge
  br i1 %tobool.not, label %if.else, label %cond.end40

cond.end40:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i205 = icmp eq i32 %size, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #5, !range !12
  %sub.i.op.i206 = shl nuw nsw i32 %15, 3
  %sub.i.op.i206.op = xor i32 %sub.i.op.i206, 248
  %shl42 = select i1 %tobool.not.i.i205, i32 248, i32 %sub.i.op.i206.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stride)
  %tobool.not.i.i208 = icmp eq i32 %stride, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %stride, i1 true) #5, !range !12
  %sub.i.op.i209.op = sub nsw i32 27, %16
  %sub57 = select i1 %tobool.not.i.i208, i32 251, i32 %sub.i.op.i209.op
  %or58 = or i32 %sub57, %shl42
  %conv59 = trunc i32 %or58 to i8
  %sq_size_stride = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 4
  %17 = ptrtoint ptr %sq_size_stride to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv59, ptr %sq_size_stride, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %19, i32 0, i32 3, i32 61
  %20 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags2, align 8
  %and = and i64 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool61.not = icmp eq i64 %and, 0
  br i1 %tobool61.not, label %cond.end40.if.end66_crit_edge, label %if.then62

cond.end40.if.end66_crit_edge:                    ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then62:                                        ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #7
  %params2 = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 19
  %22 = ptrtoint ptr %params2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params2, align 8
  %or63 = or i32 %23, 8
  store i32 %or63, ptr %params2, align 8
  br label %if.end66

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sq_size_stride65 = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 4
  %24 = ptrtoint ptr %sq_size_stride65 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %sq_size_stride65, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then62, %cond.end40.if.end66_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %index = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  %uar_page_shift.i = getelementptr inbounds %struct.mlx4_dev, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %uar_page_shift.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %uar_page_shift.i, align 4
  %conv.i = zext i8 %30 to i32
  %sub.i211 = sub nsw i32 12, %conv.i
  %shl.i = shl i32 %28, %sub.i211
  %usr_page = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 6
  %31 = ptrtoint ptr %usr_page to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i, ptr %usr_page, align 4
  %local_qpn = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 7
  %32 = ptrtoint ptr %local_qpn to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %qpn, ptr %local_qpn, align 8
  %pri_path = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9
  %ackto = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9, i32 7
  %33 = ptrtoint ptr %ackto to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %ackto, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %.tr = trunc i32 %35 to i8
  %36 = shl i8 %.tr, 6
  %37 = add i8 %36, 64
  %conv72 = or i8 %37, -125
  %sched_queue = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9, i32 13
  %38 = ptrtoint ptr %sched_queue to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv72, ptr %sched_queue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %user_prio)
  %cmp74 = icmp sgt i32 %user_prio, -1
  br i1 %cmp74, label %land.lhs.true76, label %if.end66.if.end88_crit_edge

if.end66.if.end88_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

land.lhs.true76:                                  ; preds = %if.end66
  %prof = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %39 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prof, align 4
  %num_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %num_up to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp78 = icmp eq i8 %42, 8
  br i1 %cmp78, label %if.then80, label %land.lhs.true76.if.end88_crit_edge

land.lhs.true76.if.end88_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then80:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #7
  %user_prio.tr = trunc i32 %user_prio to i8
  %43 = shl i8 %user_prio.tr, 3
  %conv86 = or i8 %conv72, %43
  %44 = ptrtoint ptr %sched_queue to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv86, ptr %sched_queue, align 8
  %feup = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9, i32 15
  %45 = ptrtoint ptr %feup to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 64, ptr %feup, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %land.lhs.true76.if.end88_crit_edge, %if.end66.if.end88_crit_edge
  %counter_index = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 81
  %46 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %counter_index, align 4
  %conv89 = trunc i32 %47 to i8
  %counter_index91 = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9, i32 4
  %48 = ptrtoint ptr %counter_index91 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv89, ptr %counter_index91, align 4
  %cqn_send = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 14
  %49 = ptrtoint ptr %cqn_send to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cqn, ptr %cqn_send, align 4
  %cqn_recv = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 22
  %50 = ptrtoint ptr %cqn_recv to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cqn, ptr %cqn_recv, align 4
  br i1 %tobool3.not, label %land.lhs.true93, label %if.end88.if.end121_crit_edge

if.end88.if.end121_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

land.lhs.true93:                                  ; preds = %if.end88
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %flags296 = getelementptr inbounds %struct.mlx4_dev, ptr %52, i32 0, i32 3, i32 61
  %53 = ptrtoint ptr %flags296 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %flags296, align 8
  %and97 = and i64 %54, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and97)
  %tobool98.not = icmp eq i64 %and97, 0
  br i1 %tobool98.not, label %land.lhs.true93.if.end121_crit_edge, label %land.lhs.true99

land.lhs.true93.if.end121_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

land.lhs.true99:                                  ; preds = %land.lhs.true93
  %conv102 = and i32 %47, 255
  %max_counters = getelementptr inbounds %struct.mlx4_dev, ptr %52, i32 0, i32 3, i32 79
  %55 = ptrtoint ptr %max_counters to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_counters, align 4
  %sub105 = add i32 %56, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub105, i32 %conv102)
  %cmp106.not = icmp eq i32 %sub105, %conv102
  br i1 %cmp106.not, label %land.lhs.true99.if.end121_crit_edge, label %if.then108

land.lhs.true99.if.end121_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then108:                                       ; preds = %land.lhs.true99
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %57 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features, align 16
  %and109 = and i64 %58, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and109)
  %tobool110.not = icmp eq i64 %and109, 0
  br i1 %tobool110.not, label %if.then111, label %if.then108.if.end116_crit_edge

if.then108.if.end116_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then111:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %pri_path to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pri_path, align 8
  %61 = or i8 %60, 2
  store i8 %61, ptr %pri_path, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.then108.if.end116_crit_edge
  %62 = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %65 = or i8 %64, -128
  store i8 %65, ptr %62, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.end116, %land.lhs.true99.if.end121_crit_edge, %land.lhs.true93.if.end121_crit_edge, %if.end88.if.end121_crit_edge
  %dma = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 26, i32 0, i32 2
  %66 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma, align 4
  %shl122 = shl i32 %67, 2
  %conv123 = zext i32 %shl122 to i64
  %db_rec_addr = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 23
  %68 = ptrtoint ptr %db_rec_addr to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv123, ptr %db_rec_addr, align 8
  %features124 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %69 = ptrtoint ptr %features124 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %features124, align 16
  %and125 = and i64 %70, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and125)
  %tobool126.not = icmp eq i64 %and125, 0
  br i1 %tobool126.not, label %if.then127, label %if.end121.if.end129_crit_edge

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %param3 = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 33
  %71 = ptrtoint ptr %param3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %param3, align 8
  %or128 = or i32 %72, 1073741824
  store i32 %or128, ptr %param3, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end121.if.end129_crit_edge
  br i1 %11, label %land.lhs.true133, label %if.end129.if.end143_crit_edge

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

land.lhs.true133:                                 ; preds = %if.end129
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %74, i32 0, i32 3, i32 89
  %75 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp136 = icmp eq i32 %76, 1
  br i1 %cmp136, label %do.body, label %land.lhs.true133.if.end143_crit_edge

land.lhs.true133.if.end143_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

do.body:                                          ; preds = %land.lhs.true133
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %77 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable, align 8
  %and139 = and i32 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body.do.end_crit_edge, label %if.then141

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then141:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.1, i32 noundef %qpn) #5
  br label %do.end

do.end:                                           ; preds = %if.then141, %do.body.do.end_crit_edge
  %srqn = getelementptr inbounds %struct.mlx4_qp_context, ptr %context, i32 0, i32 25
  %79 = ptrtoint ptr %srqn to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1879048192, ptr %srqn, align 4
  br label %if.end143

if.end143:                                        ; preds = %do.end, %land.lhs.true133.if.end143_crit_edge, %if.end129.if.end143_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_change_mcast_lb(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %qp, i32 noundef %loopback) local_unnamed_addr #0 align 64 {
entry:
  %qp_params = alloca %struct.mlx4_update_qp_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %qp_params) #5
  %0 = call ptr @memset(ptr %qp_params, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopback)
  %tobool.not = icmp eq i32 %loopback, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.mlx4_update_qp_params, ptr %qp_params, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %qpn = getelementptr inbounds %struct.mlx4_qp, ptr %qp, i32 0, i32 1
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 4
  %call = call i32 @mlx4_update_qp(ptr noundef %5, i32 noundef %7, i32 noundef 16, ptr noundef nonnull %qp_params) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %qp_params) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_update_qp(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx4_en_sqp_event(ptr nocapture noundef %qp, i32 noundef %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_resources.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i32 0, i32 33}
